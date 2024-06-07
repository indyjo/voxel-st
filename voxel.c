#include <mint/linea.h>
#include <mint/osbind.h>
#include <mint/sysvars.h>
#include <stdio.h>

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
#define OCCLUSION_CULLING
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

// Uncomment to enable adaptive step width sampling
//#define ADAPTIVE_SAMPLING

// Uncomment to enable progressing step size
#define PROGRESSIVE_STEPSIZE

// Progression should happen every 2^N steps
#define TRIGGERS_PROGRESSION(z) (((z) & ((1<<4)-1)) == 0)

inline fixp progression(fixp x) {
	return x + x;
}

// Generated data (see other .c files)
extern void set_palette();
extern unsigned char colors[512][512];
extern unsigned char height[512][512];

// Instead of having a byte array for height and a byte array for color,
// it's more efficient to have a unified word array since the ST reads a word anyway.
unsigned short combined[HEIGHT][WIDTH];

// Linear adressing can be more efficient.
const unsigned short *combined_lin = &combined[0][0];

// The maximum height occuring in the heightfield.
unsigned char max_height;

#define HEIGHT_VALUES (256+256)
// y_table[z][h] contains the y coordinate of a point at height h at a distance of z, observed from a height of 256.
signed short y_table[STEPS_MAX][HEIGHT_VALUES];

// pdata_table[y][opacity][color] contains pixel data prepared for movep.
// 3 bit of opacity are encoded into a stipple pattern that mixes color 0 with the given color.
unsigned int pdata_table[8][8][256];

// An opacity value between 0 and 7 for each distance step.
unsigned char opacity_table[STEPS_MAX];

// In order to save us from overwriting blue sky with blue sky, we save the horizon's y coordinate of every column;
signed short horizon[320];

// Utility functions for profiling by setting palette color 0
unsigned short *hw_palette = (unsigned short *) 0xff8240;

unsigned short get_color() {
	return *hw_palette;
}

void set_color(unsigned short rgb) {
#ifdef COLORBAR_PROFILING
	*hw_palette = rgb;
#endif
} 

void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	for (int y=0; y<200; y++) {
		for (int chunk=0; chunk<20; chunk++) {
			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
			for (int x=0; x<16; x++) {
				unsigned char register px = pixels[y][16*chunk+x];
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

// Prepares look-up tables
void build_tables() {
	// Prepare distance-dependent lookup tables.
	// An opacity table that maps distance z to an opacity value.
	// A y table table that associates a heightfield sample h and a distance z with a screen y coordinate.
	fixp dist = FIXP(1,0);
	fixp step = FIXP(1,0);
	for (int z=1; z<STEPS_MAX; z++) {
		for (int h=0; h<256+256; h++) {
			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
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
		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	}

	// Combine color and height arrays into a single array.
	max_height = 0;
	for (int y=0; y<HEIGHT; y++) {
		for (int x=0; x<WIDTH; x++) {
			combined[y][x] = (colors[y][x] << 8) | height[y][x];
			if (height[y][x] > max_height)
				max_height = height[y][x];
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
		for (int opacity = 0; opacity < 8; opacity++) {
			unsigned int odd = 0x55555555;
			unsigned int evn = 0xaaaaaaaa;
			unsigned int mask = 0;
			for (int x=0; x<8; x++) {
				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
			}
			for (int color1 = 0; color1 < 16; color1++) {
				for (int color2 = 0; color2 <= color1; color2++) {
					int bits = mask & evn;
					int index = ((color2 - color1) & 15) * 16 + color1;
					pdata_table[y][opacity][index] = 0
						| ((color1&1) ? bits << 24 : 0)
						| ((color1&2) ? bits << 16 : 0)
						| ((color1&4) ? bits <<  8 : 0)
						| ((color1&8) ? bits <<  0 : 0);
					bits = mask & odd;
					pdata_table[y][opacity][index] |= 0
						| ((color2&1) ? bits << 24 : 0)
						| ((color2&2) ? bits << 16 : 0)
						| ((color2&4) ? bits <<  8 : 0)
						| ((color2&8) ? bits <<  0 : 0);
					int index2 = ((color1 - color2) & 15) * 16 + color2;
					pdata_table[y][opacity][index2] = pdata_table[y][opacity][index];
				}

			}
		}
	}

	for (int x=0; x<320; x++) horizon[x] = -1;
}

// Erase every nth pixel (starting at x0) within the containing 16px-aligned 16px column of the screen.
// It turned out to be efficient to first use this function to clear all to-be-filled pixel in the column
// and later apply color using or_pixel(...).
inline void erase_column(unsigned short *out, int x0, int nth) {
	unsigned short mask = 0;
	out += (x0 >> 4) << 2;
	x0 = x0 & 15;
	for (int x=x0; x<16; x+=nth) {
		mask |= 1 << (15-x);
	}
	mask = ~mask;
	for (int y=0; y<200; y++) {
		*out++ &= mask;
		*out++ &= mask;
		*out++ &= mask;
		*out++ &= mask;
		out += 76;
	}
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
// the (combined_lin) sample buffer.
// This requires a lot of bit fiddling and is tricky to get right, performance-wise, on an m68k.
inline unsigned long to_offset(fixp_2in1 vu) {
	unsigned long result, tmp;
	asm (
		"move.l %2, %1\n\t"
		// We want the 'u' coordinate in bits 2..10.
		// Starting form bit 16, we need a shift of 6 bits to the right.
		"lsr.l #6, %1\n\t"
		"move.l %1, %0\n\t"
		"and.l #0x0003fe, %1\n\t"
		// We want the 'v' coordinate in bits 11..19.
		// Starting from bit 26, we need a shift of 7 bits to the right.
		"lsr.l #7, %0\n\t"
		"and.l #0x07fc00, %0\n\t"
		"or.l %1,%0"
	: "=d" (result), "=d" (tmp)
	: "d" (vu)
	: "cc");
	return result;
}

// Render a column of pixels of a heightfield containing combined height and color values.
// The viewer's position is assumed to be at `pos`.
// Returns the first y position that wasn't filled.
short render(const position *pos, unsigned short *out, short player_height, short x, short y_offset) {
	set_color(0xff0);
	short ytable_offset = 256 - player_height;

	// Add ytable_offset now instead of per sample.
        // y_table_with_offset works like y_table but increased by a constant so that it adjusts for player height.
	short (*y_table_with_offset)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);

	fixp_2in1 sample_vu = make_2in1(pos->y, pos->x);
	fixp_2in1 delta_vu = make_2in1(
		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
		pos->dirx - ((short)(x - 160) * pos->diry >> 8));

	//printf("d_u: %x d_v: %x l2: %x\n", delta_u, delta_v, fixp_mul(delta_u, delta_u) + fixp_mul(delta_v, delta_v));
	for (int i=0; i<STEPS_MIN; i++) {
		sample_vu = add_2in1(sample_vu, delta_vu);
	}

	short sample_y = 200;
#ifdef ADAPTIVE_SAMPLING
	short prev_sample_y = 200;
	short prev_prev_sample_y = 200;
	fixp_2in1 prev_sample_vu = 0;
#ifdef PROGRESSIVE_STEPSIZE
	fixp_2in1 prev_delta_vu = 0;
#endif
	int prev_z = 0;
#endif
	
	int step_size = 1;
	int z = STEPS_MIN;

	unsigned short color = 0;

	// Pointer to the first of the 8 bytes of memory which contain the pixel at line 199, column x
	unsigned char * pBlock = pixel_block_address(out, x, 199);

	// ANDed with the UV position when sampling the terrain to avoid aliasing in the distance.
	unsigned int index_mask = 0x7ffff;

	short y = 199;
	while(y >= 0 && z < STEPS_MAX) {
		// Find the next sample to display.
		if (y < sample_y) {
			// We haven't yet found the terrain sample that covers the pixel. Try the next sample.

			set_color(0x00f);
			//put_pixel(out, 15, get_2in1_lower(sample_vu) >> 9, get_2in1_upper(sample_vu) >> 9);
#ifdef OCCLUSION_CULLING
			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
				z = STEPS_MAX;
				//for (int xp=x; xp<x+8; xp++) put_pixel(out, 15, xp, y);
				break;
			}
#endif
			unsigned int index = to_offset(sample_vu) & index_mask;
			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
			short h = height_color & 0xff;
			sample_y = y_table_with_offset[z][h] + y_offset;
			color = height_color >> 8;

#ifdef ADAPTIVE_SAMPLING				
			// Adaptive step size handling
			if (sample_y < prev_sample_y - 4) {
				// Make smaller steps if the current step size causes large pixel steps
				if (step_size > 1) {
					step_size = step_size >> 1;
					// If this sample is visible, backtrack
					if (sample_y <= y) {
						z = prev_z;
						sample_vu = prev_sample_vu;
						sample_y = prev_sample_y;
						prev_sample_y = prev_prev_sample_y;
#ifdef PROGRESSIVE_STEPSIZE
						delta_vu = prev_delta_vu;
#endif
					}
				}
				
			} else if (sample_y + 3 >= prev_sample_y) {
				// Make larger steps if the current step size causes small or negative pixel steps
				step_size += step_size + (step_size >> 2) + 1;
			}

			prev_sample_vu = sample_vu;
#ifdef PROGRESSIVE_STEPSIZE
			prev_delta_vu = delta_vu;
#endif
			prev_z = z;
#endif

			for(int i=0; i<step_size; i++) {
				z++;
				sample_vu = add_2in1(sample_vu, delta_vu);
#ifdef PROGRESSIVE_STEPSIZE
				if (TRIGGERS_PROGRESSION(z)) {
					delta_vu = add_2in1(delta_vu, delta_vu);
					// shift the index mask one position to the left and clear bits
					// 2, and 11.
					index_mask = (index_mask << 1) & 0x7fbfd;
				}
#endif
			}

			
			// remember y for next sample
#ifdef ADAPTIVE_SAMPLING
			prev_prev_sample_y = prev_sample_y;
			prev_sample_y = sample_y;
#endif
		} else {
			// We found a terrain sample that covers the current y.
			set_color(0xf00);

			// Use movep to write 8 pixels at once. Take pixel data from a table that also contains
			// a stipple pattern for emulating fog. If full opacity, optimize by recycling the
			// pixel data along the full pixel height of the sample.
#if DISTANCE_FOG
			unsigned char opacity = opacity_table[z];
#else
			unsigned char opacity = 7;
#endif
			unsigned int movep_data = pdata_table[y&7][opacity][color];
			move_p(pBlock, movep_data);
			pBlock -= 160*LINES_SKIP;
			y -= LINES_SKIP;
			// Is full opacity? Then also draw rest of the column in a tight loop.
			if (opacity == 7) {
				if (sample_y < 0) sample_y = 0;
				while (y >= sample_y) {
					move_p(pBlock, movep_data);
					pBlock -= 160*LINES_SKIP;
					y -= LINES_SKIP;
				}
			}
		}
	}
	return y;
}


short patch_sky(unsigned short *out, short x, short y) {
	unsigned char * pBlock = pixel_block_address(out, x, y);
	short remaining_lines = y - horizon[x];
	unsigned int movep_data = 0;
	while (remaining_lines > 0) {
		move_p(pBlock, movep_data);
		pBlock -= 160 * LINES_SKIP;
		remaining_lines -= LINES_SKIP;
	}
	horizon[x] = y;
}

position pos = {
	.x = FIXP(145, 0),
	.y = FIXP(340, 0),
	.z = FIXP(100, 0),
	.dirx = FIXP(-1, -49),
	.diry = FIXP(-1, -118),
	.speed = FIXP(1, 0),
};


#define FRAMES 800

int main(int argc, char **argv) {
	// Enter supervisor mode so we can use HW registers
	Super(0L);
	// Initialize LINEA functions
	linea0();
	// Hide mouse cursor
	lineaa();
	build_tables();
	printf("Tables computed.\n");
        set_palette();
	unsigned short *screen = Physbase();
	draw_image2(screen, colors);
	clear_screen(screen);
	unsigned long t0 = *_hz_200;
	int last_player_altitude = 40;
	for(int i=0; i<FRAMES; i++) {
		unsigned short saved_color = get_color();
		set_color(0x700);

		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
		int player_altitude = height_under_player + 20;
		if (player_altitude > 255) player_altitude = 255;
		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
		last_player_altitude = player_altitude;

		short mouse_x = GCURX, mouse_y = GCURY;
		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
#ifdef INTERACTIVE
			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
#else
			int y_offset = 0;
#endif
			short y = render(&pos, screen, player_altitude, x, y_offset);
			patch_sky(screen, x, y);
		}
		set_color(saved_color);
		pos.x += fixp_mul(pos.dirx, pos.speed);
		pos.y += fixp_mul(pos.diry, pos.speed);
#ifdef INTERACTIVE
		pos.speed += (100 - mouse_y) >> 2;
		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
		if (pos.speed > 0) pos.speed -= drag;
		else pos.speed += drag;
		fixp rot = (160 - mouse_x) >> 3;
		pos.dirx += fixp_mul(rot, pos.diry);
		pos.diry -= fixp_mul(rot, pos.dirx);
		
		// renormalize dirx, diry using a first-order approximation of the inverse square root, f(x) = 1/sqrt(x);
		// f(1) = 1/sqrt(1)
		// f'(x) = -0.5 * sqrt(x^(-3/2)) = -0.5 * sqrt(1/x^(3/2))
		// f'(1) = -0.5
		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
		pos.dirx = fixp_mul(factor, pos.dirx);
		pos.diry = fixp_mul(factor, pos.diry);
#endif
		
		//printf("len: %d, factor: %d\n", fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry), factor);
		//Vsync();
	}
	unsigned long t1 = *_hz_200;
	unsigned long millis = (t1 - t0) * 5;
	unsigned long millis_per_frame = millis / FRAMES;
	printf("Rendering took %dms per frame.\n", millis_per_frame);
	
	getchar();
	return 0;
}

