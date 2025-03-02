#include <mint/linea.h>
#include <mint/osbind.h>
#include <mint/sysvars.h>
#include "interrupt.h"
#include "joystick.h"
#include "palette.h"
#include "tga.h"

// The fixpoint format was chosen so that exactly 512 integral values exist, with 7 bit fractional part.
// This way, the integral part maps directly to a coordinate from the 512x512 heightfield.
#define FIXP_PRECISION 7
#define FIXP_FRACT_MASK ((1 << FIXP_PRECISION) - 1)
#define FIXP_FACTOR (1<<FIXP_PRECISION)
#define FIXP(_r,_f) ((((_r) << FIXP_PRECISION) & ~FIXP_FRACT_MASK) | (_f & FIXP_FRACT_MASK))
typedef signed short fixp;
typedef unsigned int fixp_2in1;

// Should mouse control be active?
#define INTERACTIVE

// If defined, background color is used to measure performance
//#define COLORBAR_PROFILING

// Heightfield dimensions
#define WIDTH 512
#define HEIGHT 512

// Can be used to display a narrower viewport
#define VIEWPORT_MIN 0
#define VIEWPORT_MAX 320

// Draw every nth line
#define LINES_SKIP 1

// Whether to stop sampling occluded terrain
//#define OCCLUSION_CULLING
// Above which pixel height to start checking whether to apply occlusion culling.
#define OCCLUSION_THRESHOLD_Y 100

// Whether to draw faraway samples with a stipple pattern by default (toggled with D key in interactive mode)
#define FOG_ENABLED_INITIALLY 1

// First and last sample
#define STEPS_MIN 4
#define STEPS_MAX 64

#define FOG_START (STEPS_MAX*5/8)

// Uncomment to introduce some curvature towards the horizon, like on a spherical planet
#define CURVED_TERRAIN

// Uncomment to enable progressing step size
#define PROGRESSIVE_STEPSIZE

// Progression should happen every 2^N steps
#define TRIGGERS_PROGRESSION(z) (((z) & ((1<<4)-1)) == 0)
#define TRIGGERS_MIPMAP(z) (((z) & ((1<<4)-1)) == 0)

// Draw only every second column?
#define INTERLACE_COLUMNS 0

#define USE_LIBCMINI 1

static void print(const char *s) {
	while (*s) {
		Bconout(_CON, *s);
		s++;
	}
}

static void printnum(long n) {
	char neg = n < 0;
	if (neg) n = -n;
	char buf[16];
	char *p=buf+15;
	*p=0;
	while (n > 0) {
		*(--p)='0' + (n % 10);
		n /= 10;
	}
	if (neg) *(--p)='-';
	print(p);
}


#if USE_LIBCMINI
__LINEA *__aline;
__FONT  **__fonts;
short  (**__funcs) (void);

#define LINEA_OPCODE_BASE 0xa000
#define ASM_LINEA3(opcode) ".word	" #opcode
#define ASM_LINEA2(opcode) ASM_LINEA3(opcode)
#define ASM_LINEA(n) ASM_LINEA2(LINEA_OPCODE_BASE+n)

void linea0(void)
{
	register __LINEA *__xaline __asm__("a0");
	register __FONT **__xfonts __asm__("a1");
	register short (**__xfuncs)(void) __asm__("a2");

	__asm__ volatile(
		ASM_LINEA(0x0)
		: "=g"(__xaline), "=g"(__xfonts), "=g"(__xfuncs)											  /* outputs */
		:																							  /* inputs  */
		: __CLOBBER_RETURN("a0") __CLOBBER_RETURN("a1") __CLOBBER_RETURN("a2") "d0", "d1", "d2", "cc" /* clobbered regs */
		  AND_MEMORY);

	__aline = __xaline;
	__fonts = __xfonts;
	__funcs = __xfuncs;
}

void lineaa(void)
{
	__asm__ volatile(
		ASM_LINEA(0xa)
		:										   /* outputs */
		:										   /* inputs  */
		: "d0", "d1", "d2", "a0", "a1", "a2", "cc" /* clobbered regs */
		  AND_MEMORY);
}

#endif // USE_LIBCMINI

static fixp progression(fixp x) {
	return x + x;
}

// Each sample consists of color and height.
// Actually, the height component stores 2*height because it will be used to index into
// an array of shorts and this way no shift operation is necessary.
typedef union {
	unsigned short both;
	struct {
		unsigned char color;
		unsigned char height;
	};
} sample_t;

// Instead of having a byte array for height and a byte array for color,
// it's more efficient to have a unified word array since the ST reads a word anyway.
sample_t combined[HEIGHT][WIDTH];

// The maximum height occuring in the heightfield.
unsigned char max_height;

#define HEIGHT_VALUES (256+256)
// y_table[z][h] contains the y coordinate of a point at height h at a distance of z, observed from a height of 256.
signed short y_table[STEPS_MAX][HEIGHT_VALUES];

#define FOG_BITS 3
#define FOG_STEPS (1<<FOG_BITS)
#define FOG_MASK -(1<<(8-FOG_BITS))

// pdata_table[color][fog][y] contains pixel data prepared for movep.
// 3 bit of fog are encoded into a stipple pattern that mixes color 15 with the given color.
unsigned int pdata_table[256][FOG_STEPS][8];

// Maps step index to (preshifted) fog.
unsigned char fog_table[STEPS_MAX];

// In order to save us from overwriting blue sky with blue sky, we save the horizon's y coordinate of every column;
signed short horizon[320];

// For every column, the view window starts at view_max (bottom) and ends at view_min (top); 
short view_min[40], view_max[40];

// Utility functions for profiling by setting palette color 0
volatile unsigned short *hw_palette = (unsigned short *) 0xff8240;

// RGB of the color of the sky
unsigned char sky_color[3];

static unsigned short get_color() {
	return *hw_palette;
}

static void set_color(unsigned short rgb) {
#ifdef COLORBAR_PROFILING
	*hw_palette = rgb;
#endif
} 

static void draw_image2(unsigned short *out, const unsigned char *pixels, int width, int height, char dither) {
	for (int y=0; y<height; y++) {
		for (int chunk=0; chunk<20; chunk++) {
			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
			for (int x=0; x<16; x++) {
				unsigned char register px = pixels[y*width + 16*chunk + x];
				if (dither && ((x & 1) != (y & 1)))
					px = ((px & 15) + (px >> 4)) & 15;
				plane0 = (plane0 << 1) | (px & 1);
				px >>= 1;
				plane1 = (plane1 << 1) | (px & 1);
				px >>= 1;
				plane2 = (plane2 << 1) | (px & 1);
				px >>= 1;
				plane3 = (plane3 << 1) | (px & 1);
			}
			*out++ = plane0;
			*out++ = plane1;
			*out++ = plane2;
			*out++ = plane3;
		}
	}
}

static void clear_screen(unsigned short *out) {
	for (int i=0; i<16000; i++) *out++ = 0;
}

typedef struct position {
	fixp x,y,z,dirx,diry,speed;
} position;

static signed short fixp_int(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

static unsigned short fixp_uint(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

static fixp fixp_mul(fixp a, fixp b) {
	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
}

// First-order approximation of 1/sqrt(x) around x0=1
static fixp fixp_sqrt_inv(fixp x) {
	// f(1) = 1/sqrt(1)
	// f'(x) = -0.5 * sqrt(x^(-3/2)) = -0.5 * sqrt(1/x^(3/2))
	// f'(1) = -0.5
	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
}

static fixp_2in1 make_2in1(fixp a, fixp b) {
	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
}

static fixp_2in1 add_2in1(fixp_2in1 a, fixp_2in1 b) {
	return (a + b) & 0xfffefffe;
}

static fixp get_2in1_upper(fixp_2in1 val) {
	return val >> 16;
}

static fixp get_2in1_lower(fixp_2in1 val) {
	return val & 0xffff;
}

// Draw a pixel in the specified color at x/y relative to out
static void put_pixel(unsigned short *out, unsigned char color, unsigned short x, unsigned short y) {
	//printf("put_pixel %p %d %d %d\n", out, color, x, y);
	if (x < 0 || x >= 320 || y < 0 || y >= 200) return;
	out += (y << 6) + (y << 4);
	out += (x >> 4) << 2;
	x &= 0xf;
	unsigned short px = 1 << (15-x);
	unsigned short register mask = ~px;
	unsigned short register data = *out;
	data &= mask;
	data |= (color & 1) << (15-x);
	*out++ = data;
	data = *out;
	data &= mask;
	data |= ((color & 2) >> 1) << (15-x);
	*out++ = data;
	data = *out;
	data &= mask;
	data |= ((color & 4) >> 2) << (15-x);
	*out++ = data;
	data = *out;
	data &= mask;
	data |= ((color & 8) >> 3) << (15-x);
	*out = data;
	//printf("put_pixel done.\n"); 
}

// ORs a pixel with the specified color at x/y relative to out.
// This is a tiny bit faster that put_pixel if the pixel was previously cleared.
static void or_pixel(unsigned short *out, unsigned char color, unsigned short x, unsigned short y) {
	//printf("put_pixel %p %d %d %d\n", out, color, x, y);
	out += y << 6;
	out += y << 4;
	out += (x >> 4) << 2;
	x &= 0xf;
	*out++ |= (color & 1) << (15-x);;
	*out++ |= ((color & 2) >> 1) << (15-x);
	*out++ |= ((color & 4) >> 2) << (15-x);
	*out++ |= ((color & 8) >> 3) << (15-x);
	//printf("put_pixel done.\n"); 
}

static unsigned int pdata_pattern(unsigned char color, unsigned char pattern) {
	return 0
		| ((color&1) ? pattern << 24 : 0)
		| ((color&2) ? pattern << 16 : 0)
		| ((color&4) ? pattern <<  8 : 0)
		| ((color&8) ? pattern <<  0 : 0);
}

// Prepares look-up tables
static void build_tables() {
	// Prepare distance-dependent lookup tables.
	// An opacity table that maps distance z to an opacity value.
	// A y table table that associates a heightfield sample h and a distance z with a screen y coordinate.
	fixp dist = FIXP(1,0);
	fixp step = FIXP(1,0);
	for (int z=1; z<STEPS_MAX; z++) {
		for (int h=0; h<256+256; h++) {
			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
#ifdef CURVED_TERRAIN
			y_table[z][h] += 70 * fixp_int(dist) / 400;
#endif
		}
		dist += step;
#ifdef PROGRESSIVE_STEPSIZE
		if (TRIGGERS_PROGRESSION(z))
			step = progression(step);
#endif
		int rel_dist = z - FOG_START;
		if (rel_dist < 0) rel_dist = 0;
		int max_dist = STEPS_MAX - FOG_START;
		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	}

	max_height = 0;
	for (int y=0; y<HEIGHT; y++) {
		for (int x=0; x<WIDTH; x++) {
			if (combined[y][x].height > max_height)
				max_height = combined[y][x].height;
		}
	}
	// Divide by two since combined[y][x].height actually stores 2*height.
	max_height >>= 1;
	
	int bayer[8][8] = {
		{0, 32, 8,40, 2,34,10,42},
		{48,16,56,24,50,18,58,26},
		{12,44, 4,36,14,46, 6,38},
		{60,28,52,20,62,30,54,22},
		{ 3,35,11,43, 1,33, 9,41},
		{51,19,59,27,49,17,57,25},
		{15,47, 7,39,13,45, 5,37},
		{63,31,55,23,61,29,53,21}
	};
	for (int y = 0; y < 8; y++) {
		for (int fog = 0; fog < FOG_STEPS; fog++) {
			unsigned int odd = 0x55555555;
			unsigned int evn = 0xaaaaaaaa;
			unsigned char mask = 0;
			for (int x=0; x<8; x++) {
				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
			}
			for (int color1 = 0; color1 < 16; color1++) {
				for (int color2 = 0; color2 <= color1; color2++) {
					unsigned int pdata = 0
						| pdata_pattern(color1, mask & evn)
						| pdata_pattern(color2, mask & odd)
						| pdata_pattern(15, ~mask);
					int index1 = ((color2 - color1) & 15) * 16 + color1;
					int index2 = ((color1 - color2) & 15) * 16 + color2;
					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
				}

			}
		}
	}


	// These arrays shape the contours of the cockpit windshield.
	short top_envelope[20] = {
		16, 14, 12, 11, 10,
		9, 9, 8, 8, 8,
		8, 8, 8, 9, 10,
		11, 12, 12, 12, 12
	};
	short bottom_envelope[20] = {
		7, 6, 5, 4, 3,
		2, 1, 1, 0, 0,
		0, 0, 0, 0, 0,
		0, 0, 0, 0, 0,
	};
	
	for (int i=0; i<20; i++) {
		view_min[i] = view_min[39-i] = top_envelope[i];
		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	}
	// Snap to nearest multiple of LINES_SKIP.
	for (int i=0; i<40; i++) {
		view_min[i] -= view_min[i] % LINES_SKIP;
		view_max[i] -= view_max[i] % LINES_SKIP;
	}
	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
}

// Pointer to the first of the 8 bytes of memory in pixel buffer out which contain the pixel at line y, column x
static unsigned char* pixel_block_address(unsigned short *out, short x, short y) {
	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
}

// Quickly fill a sequence of 8 pixels.
static void move_p(unsigned char *p, unsigned int data) {
	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
}

// Given a pair of fixpoint coordinates u and v (as a combined value), returns a byte offset into
// the (combined) sample buffer.
// This requires a lot of bit fiddling and is tricky to get right, performance-wise, on an m68k.
// This code leaves bits 19..31 uncleared, so another AND operation is needed (which happens anyway with index_mask)
static unsigned long to_offset(fixp_2in1 uv) {
	asm (
		// Use a word-size operation to shift only the v coordinate to the right so that only 9 digits remain
		"lsr.w #7, %[uv]\n\t"
		// Swap words so that the v bits are in msb position
		"swap %[uv]\n\t"
		// Adjust to 19 bits (9 v-bits + 9 u-bits + 1 extra bit because word-sized entries in sample buffer)
		"lsr.l #6, %[uv]"
	: [uv] "+&d" (uv) : : "cc");
	return uv;
}

// Returns a sample_t using the given UV position and index mask
static sample_t sample_terrain(fixp_2in1 sample_uv, unsigned int index_mask) {
		unsigned int index = to_offset(sample_uv) & index_mask;
		sample_t sample = *(sample_t*)((char*)combined + index);
		return sample;
}

/// @brief Shift the index mask one position to the left and clear bits 2, and 11.
/// @param index_mask The previous index mask
/// @return The index mask corresponding to the next MIP level.
static unsigned int next_mip_level(unsigned int index_mask) {
	return (index_mask << 1) & 0x7fbfd;
}

static unsigned int get_pdata(sample_t sample, unsigned short opacity_preshifted, short y) {
	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	return *(unsigned int *)((char*)pdata_table + offset);
}

static unsigned int *pdata_offset(sample_t sample, unsigned short opacity_preshifted) {
	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	return (unsigned int *)((char*)pdata_table + offset);
}

typedef struct {
	/// @brief Pointer to y values corresponding to heights wrt observer height and current z.
	short (*y_table_shifted)[HEIGHT_VALUES];
	/// @brief Pointer to pre-shifted fog value corresponding to current z.
	unsigned char *fog_table_shifted;
	/// @brief Position in the terrain to sample next
	fixp_2in1 sample_uv;
	/// @brief Pointer to the pixels to draw next
	unsigned char *pixel;
	/// @brief Y value of the pixels to draw next
	short y;
} render_state_t;

/// @brief Render a column of pixels of a heightfield containing combined height and color values.
/// @param state The sampler state to start with (including start position and next pixel y)
/// @param z_begin The z index to start with (inclusive)
/// @param z_end The z index to stop at (exclusive)
/// @param delta_uv The delta to add to sample_uv per iteration
/// @param y_min The y value to stop at (inclusive)
/// @param index_mask Bitmask to apply to sampling position (poor man's mip mapping)
/// @param fog Whether to apply fog
/// @return The render state with which to initialize the next render.
static render_state_t render(render_state_t state, short z_begin, short z_end, fixp_2in1 delta_uv, short y_min, unsigned int index_mask, char fog) {
	fixp_2in1 sample_uv = state.sample_uv;
	unsigned char * pBlock = state.pixel;
	short y = state.y;
	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	unsigned char *fog_table_shifted = state.fog_table_shifted;

	// Skip the loop if the column is already filled.
	if (y < y_min) goto finish;

	// Advance the fog_table once by the proper amount if fog is disabled for this z interval.
	if (!fog) fog_table_shifted += z_end - z_begin;

	// Initialize z to a negative value and increment until 0.
	for(short z = z_begin - z_end; z < 0; z++) {
		sample_t sample = sample_terrain(sample_uv, index_mask);
		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
		if (sample_y <= y) {
			// Found a sample to display.
			if (sample_y <= y_min) {
				// Make sure we don't paint over the top of the allowed area.
				sample_y = y_min;
				// Exit the loop on next iteration.
				z = 0;
			}
			if (!fog) {
				// Use movep to write 8 pixels at once. Since there is no fog, it is sufficient to fetch this
				// pixel data once from the table.
				unsigned int movep_data = get_pdata(sample, 0, 0);
				do {
					move_p(pBlock, movep_data);
					pBlock -= 160*LINES_SKIP;
					y -= LINES_SKIP;
				} while (sample_y <= y);
			} else {
				// Use movep to write 8 pixels at once. Take pixel data from a table that also contains
				// a stipple pattern for emulating fog.
				unsigned int* pdata_entry = pdata_offset(sample, *fog_table_shifted);
				do {
					unsigned int movep_data = pdata_entry[y&7];
					move_p(pBlock, movep_data);
					pBlock -= 160*LINES_SKIP;
					y -= LINES_SKIP;
				} while (sample_y <= y);
			}
		}

		// Try the next sample.
		y_table_shifted++;
		if (fog) fog_table_shifted++;
		sample_uv = add_2in1(sample_uv, delta_uv);
	}
finish:
	render_state_t result = {
		.y_table_shifted = y_table_shifted,
		.fog_table_shifted = fog_table_shifted,
		.sample_uv = sample_uv,
		.pixel = pBlock,
		.y = y,
	};
	return result;
}


// Finds the maximum elevation (in pixels) at which a ray will hit terrain.
// sample_uv specifies the xy (uv) position from which to shoot the ray.
// delta_uv is the direction (in terrain coordinates) into which the ray shoots.
// start_height is the height (in terrain elevation units) from which the ray starts.
// Returns the minimum y value encountered.
static short ray_elevation(fixp_2in1 sample_uv, fixp_2in1 delta_uv, short start_height) {
	short ytable_offset = 256 - start_height;
	// Shift y_table by ytable_offset and z.
	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);

	// ANDed with the UV position when sampling the terrain to avoid aliasing in the distance.
	unsigned int index_mask = 0x7fffe;

	short min_y = 0x7fff;
	unsigned short z = 0;
	while(z < STEPS_MAX) {
		if (z >= STEPS_MIN) {
			sample_t sample = sample_terrain(sample_uv, index_mask);
			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
			if (sample_y < min_y) {
				min_y = sample_y;
			}
		}
		z++;
		y_table_shifted++;
		sample_uv = add_2in1(sample_uv, delta_uv);
#ifdef PROGRESSIVE_STEPSIZE
		if (TRIGGERS_PROGRESSION(z)) {
			delta_uv = add_2in1(delta_uv, delta_uv);
		}
#endif
		if (TRIGGERS_MIPMAP(z)) {
			index_mask = next_mip_level(index_mask);
		}
	}

	return min_y;
}

static void fill_column(unsigned short *out, short x, short y, short height, unsigned char color) {
	unsigned char * pBlock = pixel_block_address(out, x, y);
	unsigned int movep_data = pdata_table[color][0][0];
	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
		move_p(pBlock, movep_data);
		pBlock += 160*LINES_SKIP;
	}
}


static short patch_sky(unsigned short *out, short x, short y) {
	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	horizon[x] = y;
}

position pos = {
	.x = FIXP(145, 0),
	.y = FIXP(340, 0),
	.z = FIXP(40, 0),
	.dirx = FIXP(-1, -49),
	.diry = FIXP(-1, -118),
	.speed = FIXP(1, 0),
};

typedef union {
	struct { fixp x, y, z; } c;
	fixp a[3];
} vec3_t;
vec3_t palette_vectors[16];

static fixp col2fixp(unsigned char color) {
	signed char c = color - 128;
	return c >> 1;
}

static fixp vec3_dot(vec3_t a, vec3_t b) {
	fixp result = 0;
	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	return result;
}

static vec3_t vec3_scale(fixp factor, vec3_t val) {
	vec3_t result;
	for (int i=0; i< 3; i++) result.a[i] = fixp_mul(factor, val.a[i]);
	return result;
}

// Reads a flat palette of (byte-sized) BGR colors and converts each color into a direction vector.
static void read_palette_vectors(const unsigned char *colors) {
	for (int i=0; i<16; i++) {
		unsigned char b = *colors++;
		unsigned char g = *colors++;
		unsigned char r = *colors++;
		vec3_t v = { .c = { col2fixp(r), col2fixp(g),  col2fixp(b) } };
		for (int j=0; j<5; j++)
			v = vec3_scale(fixp_sqrt_inv(vec3_dot(v, v)), v);
		//printf("Col %02x %02x %02x len2 %d\n", r, g, b, vec3_dot(v, v));
		palette_vectors[i].c = v.c;
	}
}

static vec3_t vec3_add(vec3_t a, vec3_t b) {
	vec3_t result;
	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	return result;
}

static unsigned char fixp2color(fixp val) {
	return val < 0 ? 0 : (
		val >= FIXP(1,0) ? 255 : val << 1);
}

static void compute_and_set_bottom_palette(int frame, fixp sunlight_factor) {
	vec3_t sun = { .c = { -FIXP(24, 0)/25, 0, FIXP(7, 0)/25 }};
	
	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	vec3_t view_y = { .c = { 0, FIXP(1, 0), 0 }};
	vec3_t view_x = { .c = { view_z.c.z, 0, view_z.c.x }};
	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	fixp full = FIXP(1,0);
	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	vec3_t red = { FIXP(1,0), 0, 0 };

	unsigned char dst[3*16];
	unsigned char *p = dst;
	*p++ = 0;
	*p++ = 0;
	*p++ = 0;
	for (int i=1; i<15; i++) {
		vec3_t accum = { 0, 0, 0 };
		vec3_t normal_lcs = palette_vectors[i];
		vec3_t normal_gcs = { .c = {
			vec3_dot(view_x, normal_lcs),
			vec3_dot(view_y, normal_lcs),
			vec3_dot(view_z, normal_lcs)}};
		fixp c_sun = vec3_dot(sun, normal_gcs);
		c_sun = fixp_mul(c_sun, sunlight_factor);
		if (c_sun < 0) c_sun = 0;
		// Add some scattered fraction of direct sunlight
		c_sun += sunlight_factor >> 3;
		vec3_t sunlight = vec3_scale(c_sun, sun_color);
		accum = vec3_add(accum, sunlight);

		vec3_t sky = { 0, FIXP(1, 0), 0 };
		fixp c_sky = vec3_dot(sky, normal_lcs);
		if (c_sky < 0) c_sky = 0;
		accum = vec3_add(accum, vec3_scale(c_sky, blue));

		vec3_t cabinlight = { 0, -FIXP(1, 0), FIXP(1, 0) };
		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
		if (c_cabinlight < 0) c_cabinlight = 0;
		accum = vec3_add(accum, vec3_scale(c_cabinlight, red));

		*p++ = fixp2color(accum.c.z);
		*p++ = fixp2color(accum.c.y);
		*p++ = fixp2color(accum.c.x);
	}
	*p++ = 255;
	*p++ = 255;
	*p++ = 255;
	set_bottom_palette(dst);
}

static int load_voxel_data() {
	unsigned char buf[8192];
	print("Loading colors.tga\r\n");
	long file1 = Fopen("colors.tga", S_READ);
	if (file1 < 0) {
		print("Error reading colors.tga\r\n");
		goto error0;
	}
	image_t texture = read_tga_header(file1);
	if (!texture.width) goto error1;

	sky_color[0] = texture.colors[15*3 + 2];
	sky_color[1] = texture.colors[15*3 + 1];
	sky_color[2] = texture.colors[15*3 + 0];

	set_top_palette(texture.colors);
	set_palette_immediately(texture.colors);

	size_t n, remaining = 512*512;
	unsigned char *p = &combined[0][0].color;
	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
		remaining -= n;
		print(".");
		for (size_t i=0; i<n; i++) {
			*p = buf[i];
			p += 2;
		}
	}
	print("\r\n");
	free_image(&texture);

	print("Loading height.tga\r\n");
	long file2 = Fopen("height.tga", S_READ);
	if (file2 < 0) {
		print("Error reading height.tga\r\n");
		goto error1;
	}
	image_t height = read_tga_header(file2);
	if (!height.width) goto error2;
	p = &combined[0][0].height;
	remaining = 512*512;
	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
		remaining -= n;
		print(".");
		for (size_t i=0; i<n; i++) {
			// Don't actually store height, store 2*height because we'll be using that as an index into
			// an array of shorts.
			*p = buf[i]*2;
			p += 2;
		}
	}
	print("\r\n");
	free_image(&height);

	Fclose(file1);
	Fclose(file2);
	return 1; // success

error2:
	Fclose(file2);
error1:
	Fclose(file1);
error0:
	return 0;
}

static unsigned char get_key() {
	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
}

static void wait_for_key() {
	while (Bconstat(_CON))
		;
	while (!Bconstat(_CON))
		;
	Bconin(_CON);
}

static void probe_available_memory() {
	long size = Malloc(-1);
	print("TOS reports ");
	printnum(size);
	print(" bytes free.\r\n");
}

#define FRAMES 800

int main(int argc, char **argv) {
	// Set cursor to home and stop blinking.
	Bconout(_CON, '\33');
	Bconout(_CON, 'H');
	Bconout(_CON, '\33');
	Bconout(_CON, 'f');

	// Enter supervisor mode so we can use HW registers
	Super(0L);
	// Initialize LINEA functions
	linea0();
	// Hide mouse cursor
	lineaa();

	unsigned short saved_palette[16];
	save_palette(saved_palette);
	
	unsigned short *screen = Physbase();
	// Disable key click
	*conterm &= ~1;

	if (!load_voxel_data()) {
		print("Failed to load voxel data.\r\n");
		goto error;
	}

	print("Loading cockpit.tga\r\n");
	image_t cockpit = read_tga("cockpit.tga");
	probe_available_memory();
	print("Computing tables\r\n");
	build_tables();
	if (!cockpit.pixels) goto error;
	read_palette_vectors(cockpit.colors);
	
	clear_screen(screen);
	for (int i=0; i<40; i++) {
		fill_column(screen, i*8, 0, view_min[i], 0);
		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	}

	compute_and_set_bottom_palette(0, 0);
	install_joystick_handler();
	install_interrupts();

	int cockpit_y = 120;
	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);

	char fog_enabled = FOG_ENABLED_INITIALLY;

	unsigned long t0 = *_hz_200;
	unsigned long t_render = 0;
	// If < 0, then auto-hover is inactive
	fixp desired_height = FIXP(20, 0);

	int frames = 0;
#ifdef INTERACTIVE
	for(int i=0; ; i++) {
		unsigned char key = get_key();
		if (key == 1)
			break;
#else
	for(int i=0; i<FRAMES; i++) {
#endif
		frames++;
		unsigned short saved_color = get_color();
		set_color(0x003);

		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
		fixp player_height = pos.z - terrain_height;
		if (desired_height >= 0) {
			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
			pos.z += altitude_delta;
			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
		}

		short mouse_x = GCURX, mouse_y = GCURY;
		fixp_2in1 player_uv = make_2in1(pos.x, pos.y);

		unsigned long t_render_0 = *_hz_200;
		set_color(0x030);
#if INTERLACE_COLUMNS
		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
#else
		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
#endif

#ifdef INTERACTIVE
			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
			y_offset -= y_offset % LINES_SKIP;
#else
			int y_offset = 0;
#endif
			fixp_2in1 delta_uv = make_2in1(
				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
			
			fixp_2in1 sample_uv = player_uv;
			for (int i=0; i<STEPS_MIN; i++) {
				sample_uv = add_2in1(sample_uv, delta_uv);
			}
			short height = fixp_int(pos.z);
			render_state_t state = {
				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
				.fog_table_shifted = fog_table + STEPS_MIN,
				.sample_uv = sample_uv,
				.y = view_max[x >> 3] - y_offset,
				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
			};
			unsigned int index_mask = 0x7fffe;

			short y_min = view_min[x >> 3] - y_offset;
#ifdef PROGRESSIVE_STEPSIZE
			state = render(state, STEPS_MIN, 16, delta_uv, y_min, index_mask, 0);
			delta_uv = add_2in1(delta_uv, delta_uv);
			state = render(state, 16, 24, delta_uv, y_min, index_mask, 0);
			index_mask = next_mip_level(index_mask);
			state = render(state, 24, 32, delta_uv, y_min, index_mask, 0);
			delta_uv = add_2in1(delta_uv, delta_uv);
			state = render(state, 32, FOG_START, delta_uv, y_min, index_mask, 0);
			index_mask = next_mip_level(index_mask);
			state = render(state, FOG_START, 48, delta_uv, y_min, index_mask, fog_enabled);
			delta_uv = add_2in1(delta_uv, delta_uv);
			state = render(state, 48, 56, delta_uv, y_min, index_mask, fog_enabled);
			index_mask = next_mip_level(index_mask);
			state = render(state, 56, STEPS_MAX, delta_uv, y_min, index_mask, fog_enabled);
#else
			state = render(state, STEPS_MIN, FOG_START, delta_uv, y_min, index_mask, 0);
			state = render(state, FOG_START, STEPS_MAX, delta_uv, y_min, index_mask, fog_enabled);
#endif
			state.y += y_offset;
			patch_sky(screen, x, state.y);
		}
		set_color(0x700);
		unsigned long t_render_1 = *_hz_200;
		t_render += t_render_1 - t_render_0;
		// Compute the elevation of the terrain in the direction of the sun to find out by what factor
		// the direct sunlight is obscured by terrain.
		//short elev_to_sun = ray_elevation(pos.x, pos.y, -FIXP(1, 0), FIXP(0, 0), fixp_int(pos.z));
		short elev_to_sun = ray_elevation(player_uv, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
		fixp sunlight;
		if (elev_to_sun < -40) {
			sunlight = 0;
		} else if (elev_to_sun >= -8) {
			sunlight = FIXP(1, 0);
		} else {
			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
		}
		set_color(0x300);
		compute_and_set_bottom_palette(i, sunlight);
		set_color(0x007);
		pos.x += fixp_mul(pos.dirx, pos.speed);
		pos.y += fixp_mul(pos.diry, pos.speed);
#ifdef INTERACTIVE
		pos.speed += (100 - mouse_y) >> 2;
		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
		if (pos.speed > 0) pos.speed -= drag;
		else pos.speed += drag;
		fixp rot = 160 - mouse_x;
		pos.dirx += (rot * pos.diry) >> 11;
		pos.diry -= (rot * pos.dirx) >> 11;
		
		// renormalize dirx, diry using a first-order approximation of the inverse square root, f(x) = 1/sqrt(x);
		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
		pos.dirx = fixp_mul(factor, pos.dirx);
		pos.diry = fixp_mul(factor, pos.diry);

		if (pressed_keys.up) {
			if (desired_height < FIXP(0, 0)) {
				desired_height = player_height;
			}
			desired_height += FIXP(1, 0);
			if (desired_height > FIXP(254, 0)) {
				desired_height = FIXP(254, 0);
			}
		}
		if (pressed_keys.down) {
			if (desired_height < FIXP(0, 0)) {
				desired_height = player_height;
			}
			desired_height -= FIXP(1, 0);
			if (desired_height < FIXP(0, 0)) {
				desired_height = FIXP(0, 0);
			}
		}
		if (key == 0x23) {
			// H key => toggle auto-hover
			if (desired_height < 0) {
				desired_height = player_height;
			} else {
				desired_height = -1;
			}
		} else if (key == 0x20) {
			// D key => toggle fog
			fog_enabled = !fog_enabled;
		}
		
#endif
		set_color(0x777);
		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
		
		set_color(saved_color);
		//printf("len: %d, factor: %d\n", fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry), factor);
		//Vsync();
	}
	unsigned long t1 = *_hz_200;
	unsigned long millis = (t1 - t0) * 5;
	unsigned long millis_per_frame = millis / frames;
	print("Total time per frame: ");
	printnum(millis_per_frame);
	print("\r\nTime spent rendering terrain: ");
	printnum(t_render * 5 / frames);
	print("\r\n");
	uninstall_interrupts();
	uninstall_joystick_handler();
	
error:
	print("Press any key to exit to TOS.\r\n");
	wait_for_key();
	install_palette(saved_palette);
	return 0;
}

