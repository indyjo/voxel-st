#include <mint/linea.h>
#include <mint/osbind.h>
#include <mint/sysvars.h>
#include <stdio.h>
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

// Whether to draw faraway samples with a stipple pattern
#define DISTANCE_FOG 1

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


inline fixp progression(fixp x) {
	return x + x;
}

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

#define OPACITY_BITS 3
#define OPACITY_STEPS (1<<OPACITY_BITS)
#define OPACITY_MASK -(1<<(8-OPACITY_BITS))
#define MAX_OPACITY (OPACITY_STEPS-1)
#define MAX_OPACITY_PRESHIFTED (0xff & OPACITY_MASK)

// pdata_table[color][opacity][y] contains pixel data prepared for movep.
// 3 bit of opacity are encoded into a stipple pattern that mixes color 0 with the given color.
unsigned int pdata_table[256][OPACITY_STEPS][8];

// An opacity value between 0 and 255 for each distance step, with lower bits 0.
unsigned char opacity_table[STEPS_MAX];

// In order to save us from overwriting blue sky with blue sky, we save the horizon's y coordinate of every column;
signed short horizon[320];

// For every column, the view window starts at view_max (bottom) and ends at view_min (top); 
short view_min[40], view_max[40];

// Utility functions for profiling by setting palette color 0
volatile unsigned short *hw_palette = (unsigned short *) 0xff8240;

// RGB of the color of the sky
unsigned char sky_color[3];

inline unsigned short get_color() {
	return *hw_palette;
}

inline void set_color(unsigned short rgb) {
#ifdef COLORBAR_PROFILING
	*hw_palette = rgb;
#endif
} 

void draw_image2(unsigned short *out, const unsigned char *pixels, int width, int height, char dither) {
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

void clear_screen(unsigned short *out) {
	for (int i=0; i<16000; i++) *out++ = 0;
}

typedef struct position {
	fixp x,y,z,dirx,diry,speed;
} position;

signed short fixp_int(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

unsigned short fixp_uint(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

fixp fixp_mul(fixp a, fixp b) {
	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
}

// First-order approximation of 1/sqrt(x) around x0=1
inline fixp fixp_sqrt_inv(fixp x) {
	// f(1) = 1/sqrt(1)
	// f'(x) = -0.5 * sqrt(x^(-3/2)) = -0.5 * sqrt(1/x^(3/2))
	// f'(1) = -0.5
	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
}

inline fixp_2in1 make_2in1(fixp a, fixp b) {
	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
}

inline fixp_2in1 add_2in1(fixp_2in1 a, fixp_2in1 b) {
	return (a + b) & 0xfffefffe;
}

inline fixp get_2in1_upper(fixp_2in1 val) {
	return val >> 16;
}

inline fixp get_2in1_lower(fixp_2in1 val) {
	return val & 0xffff;
}

// Draw a pixel in the specified color at x/y relative to out
inline void put_pixel(unsigned short *out, unsigned char color, unsigned short x, unsigned short y) {
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
inline void or_pixel(unsigned short *out, unsigned char color, unsigned short x, unsigned short y) {
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

unsigned int pdata_pattern(unsigned char color, unsigned char pattern) {
	return 0
		| ((color&1) ? pattern << 24 : 0)
		| ((color&2) ? pattern << 16 : 0)
		| ((color&4) ? pattern <<  8 : 0)
		| ((color&8) ? pattern <<  0 : 0);
}

// Prepares look-up tables
void build_tables() {
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
		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	}

	max_height = 0;
	for (int y=0; y<HEIGHT; y++) {
		for (int x=0; x<WIDTH; x++) {
			if (combined[y][x].height > max_height)
				max_height = combined[y][x].height;
		}
	}
	
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
		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
			unsigned int odd = 0x55555555;
			unsigned int evn = 0xaaaaaaaa;
			unsigned char mask = 0;
			for (int x=0; x<8; x++) {
				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
			}
			for (int color1 = 0; color1 < 16; color1++) {
				for (int color2 = 0; color2 <= color1; color2++) {
					unsigned int pdata = 0
						| pdata_pattern(color1, mask & evn)
						| pdata_pattern(color2, mask & odd)
						| pdata_pattern(15, ~mask);
					int index1 = ((color2 - color1) & 15) * 16 + color1;
					int index2 = ((color1 - color2) & 15) * 16 + color2;
					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
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
	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
}

// Pointer to the first of the 8 bytes of memory in pixel buffer out which contain the pixel at line y, column x
inline unsigned char* pixel_block_address(unsigned short *out, short x, short y) {
	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
}

// Quickly fill a sequence of 8 pixels.
inline void move_p(unsigned char *p, unsigned int data) {
	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
}

// Given a pair of fixpoint coordinates (as a combined value), returns a byte offset into
// the (combined) sample buffer.
// This requires a lot of bit fiddling and is tricky to get right, performance-wise, on an m68k.
inline unsigned long to_offset(fixp_2in1 vu) {
	unsigned long result, tmp;
	asm (
		// Initialize tmp with a bitmask that preserves the most-significant 9 bits of the lo-word.
		"moveq #0xffffff80, %1\n\t"

		// We want the 'v' coordinate in bits 11..19.
		// Instead of (slowly) shifting by 13 bits to the right, we swap and shift 3 bits to the left.
		"move.l %2, %0\n\t"
		"swap %0\n\t"
		"and.w %1, %0\n\t"
		"lsl.l #3, %0\n\t"

		// We want the 'u' coordinate in bits 2..10.
		// Starting from bit 16, we need a shift of 6 bits to the right.
		// We can use word-sized instructions for this.
		"and.w %2, %1\n\t"
		"lsr.w #6, %1\n\t"
		"or.w %1,%0"
	: "=d" (result), "=d" (tmp)
	: "d" (vu)
	: "cc");
	return result;
}

inline unsigned int get_pdata(sample_t sample, unsigned short opacity_preshifted, short y) {
	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	return *(unsigned int *)((char*)pdata_table + offset);
}

inline unsigned int *pdata_offset(sample_t sample, unsigned short opacity_preshifted) {
	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	return (unsigned int *)((char*)pdata_table + offset);
}

// Render a column of pixels of a heightfield containing combined height and color values.
// The viewer's position is assumed to be at `pos`.
// Returns the first y position that wasn't filled.
short render(const position *pos, unsigned short *out, short player_height, short x, short y_offset, short y_max, short y_min) {
	set_color(0xff0);
	short ytable_offset = 256 - player_height;

	fixp_2in1 sample_vu = make_2in1(pos->y, pos->x);
	fixp_2in1 delta_vu = make_2in1(
		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
		pos->dirx - ((short)(x - 160) * pos->diry >> 8));

	//printf("d_u: %x d_v: %x l2: %x\n", delta_u, delta_v, fixp_mul(delta_u, delta_u) + fixp_mul(delta_v, delta_v));
	for (int i=0; i<STEPS_MIN; i++) {
		sample_vu = add_2in1(sample_vu, delta_vu);
	}

	// Pointer to the first of the 8 bytes of memory which contain the pixel at line 199, column x
	unsigned char * pBlock = pixel_block_address(out, x, y_max);

	// ANDed with the UV position when sampling the terrain to avoid aliasing in the distance.
	unsigned int index_mask = 0x7ffff;

	// Offset the y coordinate system so that y_min is at 0, so that y_min is no longer needed in a register.
	y_offset -= y_min;
	// y coordinate of the pixel currently being filled in the column.
	short y = y_max - y_min;
	unsigned short z = STEPS_MIN;

	// Shift y_table by ytable_offset and z.
	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);

	while(z < STEPS_MAX /*&& y >= y_min*/) {
		set_color(0x00f);

		//put_pixel(out, 15, get_2in1_lower(sample_vu) >> 9, get_2in1_upper(sample_vu) >> 9);
		if (y < 0) goto done;
#ifdef OCCLUSION_CULLING
		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
			goto done;
		}
#endif
		unsigned int index = to_offset(sample_vu) & index_mask;
		sample_t sample;
		sample.both = ((sample_t*)((char*)combined + index))->both;
		short sample_y = y_table_shifted[0][sample.height] + y_offset;
		if (sample_y <= y) {
			// Found a sample to display. Depending on z, the sample is in the foggy region or not.
			if (z < FOG_START) {
				// We found a terrain sample that covers the current y, and it is not foggy.
				set_color(0xf30);

				// Use movep to write 8 pixels at once. Since there is no fog, it is sufficient to fetch this
				// pixel data once from the table.
				register unsigned int movep_data = get_pdata(sample, MAX_OPACITY_PRESHIFTED, 0);
				if (sample_y < 0) sample_y = 0;
				while (y >= sample_y) {
					move_p(pBlock, movep_data);
					pBlock -= 160*LINES_SKIP;
					y -= LINES_SKIP;
				}
			} else {
				// We found a terrain sample that covers the current y, and it is in the foggy distance region.
				set_color(0x0ff);

				// Use movep to write 8 pixels at once. Take pixel data from a table that also contains
				// a stipple pattern for emulating fog.
#if DISTANCE_FOG
				unsigned char opacity_preshifted = opacity_table[z];
#else
				unsigned char opacity_preshifted = MAX_OPACITY_PRESHIFTED;
#endif
				unsigned int* pdata_entry = pdata_offset(sample, opacity_preshifted);
				if (sample_y < 0) sample_y = 0;
				while (y >= sample_y) {
					unsigned int movep_data = pdata_entry[y&7];
					move_p(pBlock, movep_data);
					pBlock -= 160*LINES_SKIP;
					y -= LINES_SKIP;
				}
			}
		}

		// Try the next sample.
		set_color(0x33f);
		z++;
		y_table_shifted++;
		sample_vu = add_2in1(sample_vu, delta_vu);
#ifdef PROGRESSIVE_STEPSIZE
		if (TRIGGERS_PROGRESSION(z)) {
			delta_vu = add_2in1(delta_vu, delta_vu);
		}
#endif
		if (TRIGGERS_MIPMAP(z)) {
			// shift the index mask one position to the left and clear bits
			// 2, and 11.
			index_mask = (index_mask << 1) & 0x7fbfd;
		}
	}

done:
	return y + y_min;
}

void fill_column(unsigned short *out, short x, short y, short height, unsigned char color) {
	unsigned char * pBlock = pixel_block_address(out, x, y);
	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
		move_p(pBlock, movep_data);
		pBlock += 160*LINES_SKIP;
	}
}


short patch_sky(unsigned short *out, short x, short y) {
	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
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

fixp col2fixp(unsigned char color) {
	signed char c = color - 128;
	return c >> 1;
}

fixp vec3_dot(vec3_t a, vec3_t b) {
	fixp result = 0;
	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	return result;
}

inline vec3_t vec3_scale(fixp factor, vec3_t val) {
	vec3_t result;
	for (int i=0; i< 3; i++) result.a[i] = fixp_mul(factor, val.a[i]);
	return result;
}

// Reads a flat palette of (byte-sized) BGR colors and converts each color into a direction vector.
void read_palette_vectors(const unsigned char *colors) {
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

vec3_t vec3_add(vec3_t a, vec3_t b) {
	vec3_t result;
	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	return result;
}

unsigned char fixp2color(fixp val) {
	return val < 0 ? 0 : (
		val >= FIXP(1,0) ? 255 : val << 1);
}

void compute_and_set_bottom_palette(int frame) {
	vec3_t sun = { .c = { -FIXP(24, 0)/25, 0, FIXP(7, 0)/25 }};
	
	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	vec3_t view_y = { .c = { 0, FIXP(1, 0), 0 }};
	vec3_t view_x = { .c = { view_z.c.z, 0, view_z.c.x }};
	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	vec3_t sun_color = { FIXP(1,0) - blue.a[0], FIXP(1,0) - blue.a[1],  FIXP(1,0) - blue.a[2]};
	vec3_t red = { FIXP(1,0), 0, 0 };
	vec3_t green = { 0, FIXP(1,0), 0 };

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
		if (c_sun < 0) c_sun = 0;
		vec3_t sunlight = vec3_scale(c_sun, sun_color);
		accum = vec3_add(accum, sunlight);

		vec3_t cabinlight = { 0, FIXP(0, 123), FIXP(0, 23) };
		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs);
		if (c_cabinlight < 0) c_cabinlight = 0;
		accum = vec3_add(accum, vec3_scale(c_cabinlight, blue));

		vec3_t left = { -FIXP(1,0), 0, 0 };
		fixp c_left = vec3_dot(left, normal_lcs);
		if (c_left < 0) c_left = 0;
		if ((frame & 31) < 4) {
			accum = vec3_add(accum, vec3_scale(c_left, red));
		}
		
		vec3_t right = { FIXP(1,0), 0, 0 };
		fixp c_right = vec3_dot(right, normal_lcs);
		if (c_right < 0) c_right = 0;
		if (((frame - 3) & 31) < 4) {
			accum = vec3_add(accum, vec3_scale(c_right, green));
		}

		*p++ = fixp2color(accum.c.z);
		*p++ = fixp2color(accum.c.y);
		*p++ = fixp2color(accum.c.x);
	}
	*p++ = 255;
	*p++ = 255;
	*p++ = 255;
	set_bottom_palette(dst);
}

int load_voxel_data() {
	unsigned char buf[8192];
	printf("Loading colors.tga\n");
	FILE *file1 = fopen("colors.tga", "rb");
	if (!file1) {
		perror("colors.tga");
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
	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
		remaining -= n;
		printf(".");
		fflush(stdout);
		for (size_t i=0; i<n; i++) {
			*p = buf[i];
			p += 2;
		}
	}
	printf("\n");
	free_image(&texture);

	printf("Loading height.tga\n");
	FILE *file2 = fopen("height.tga", "rb");
	if (!file2) {
		perror("height.tga");
		goto error1;
	}
	image_t height = read_tga_header(file2);
	if (!height.width) goto error2;
	p = &combined[0][0].height;
	remaining = 512*512;
	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
		remaining -= n;
		printf(".");
		fflush(stdout);
		for (size_t i=0; i<n; i++) {
			*p = buf[i];
			p += 2;
		}
	}
	printf("\n");
	free_image(&height);

	fclose(file1);
	fclose(file2);
	return 1; // success

error2:
	fclose(file2);
error1:
	fclose(file1);
error0:
	return 0;
}

unsigned char get_key() {
	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
}

void wait_for_key() {
	while (Bconstat(_CON))
		;
	while (!Bconstat(_CON))
		;
	Bconin(_CON);
}

#define FRAMES 800

int main(int argc, char **argv) {
	// Enter supervisor mode so we can use HW registers
	Super(0L);
	// Initialize LINEA functions
	linea0();
	// Hide mouse cursor
	lineaa();

	unsigned short saved_palette[16];
	save_palette(saved_palette);
	
	unsigned short *screen = Physbase();
	// Set cursor to home and stop blinking.
	printf("\33H\33f\n\n");
	// Disable key click
	*conterm &= ~1;

	if (!load_voxel_data()) {
		printf("Failed to load voxel data.\n");
		goto error;
	}

	printf("Computing tables\n");
	build_tables();
	printf("Loading cockpit.tga\n");
	image_t cockpit = read_tga("cockpit.tga");
	if (!cockpit.pixels) goto error;
	read_palette_vectors(cockpit.colors);
	
	clear_screen(screen);
	for (int i=0; i<40; i++) {
		fill_column(screen, i*8, 0, view_min[i], 0);
		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	}

	compute_and_set_bottom_palette(0);
	install_joystick_handler();
	install_interrupts();

	int cockpit_y = 120;
	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);

	unsigned long t0 = *_hz_200;
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
		set_color(0x700);

		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
		fixp player_height = pos.z - terrain_height;
		if (desired_height >= 0) {
			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
			pos.z += altitude_delta;
			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
		}

		short mouse_x = GCURX, mouse_y = GCURY;
		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
#ifdef INTERACTIVE
			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
#else
			int y_offset = 0;
#endif
			short y = render(&pos, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
			patch_sky(screen, x, y);
		}
		set_color(saved_color);
		compute_and_set_bottom_palette(i);
		pos.x += fixp_mul(pos.dirx, pos.speed);
		pos.y += fixp_mul(pos.diry, pos.speed);
#ifdef INTERACTIVE
		pos.speed += (100 - mouse_y) >> 2;
		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
		if (pos.speed > 0) pos.speed -= drag;
		else pos.speed += drag;
		fixp rot = (160 - mouse_x) >> 4;
		pos.dirx += fixp_mul(rot, pos.diry);
		pos.diry -= fixp_mul(rot, pos.dirx);
		
		// renormalize dirx, diry using a first-order approximation of the inverse square root, f(x) = 1/sqrt(x);
		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
		pos.dirx = fixp_mul(factor, pos.dirx);
		pos.diry = fixp_mul(factor, pos.diry);

		if (pressed_keys.up) {
			desired_height += FIXP(1, 0);
			if (desired_height > FIXP(254, 0)) {
				desired_height = FIXP(254, 0);
			}
		}
		if (pressed_keys.down) {
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
		}
		
#endif

		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
		
		//printf("len: %d, factor: %d\n", fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry), factor);
		//Vsync();
	}
	unsigned long t1 = *_hz_200;
	unsigned long millis = (t1 - t0) * 5;
	unsigned long millis_per_frame = millis / frames;
	printf("Rendering took %dms per frame.\n", millis_per_frame);
	uninstall_interrupts();
	uninstall_joystick_handler();
	
error:
	printf("Press any key to exit to TOS.\n");
	wait_for_key();
	install_palette(saved_palette);
	return 0;
}

