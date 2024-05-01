#include <mint/osbind.h>
#include <stdio.h>

// The fixpoint format was chosen so that exactly 512 integral values exist, with 7 bit fractional part.
// This way, the integral part maps directly to a coordinate from the 512x512 heightfield.
#define FIXP_PRECISION 7
#define FIXP_FRACT_MASK ((1 << FIXP_PRECISION) - 1)
#define FIXP_FACTOR (1<<FIXP_PRECISION)
#define FIXP(_r,_f) ((((_r) << FIXP_PRECISION) & ~FIXP_FRACT_MASK) | (_f & FIXP_FRACT_MASK))
typedef signed short fixp;

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

// First and last sample
#define STEPS_MIN 15
#define STEPS_MAX 128

// Uncomment to introduce some curvature towards the horizon, like on a spherical planet
//#define CURVED_TERRAIN

// Uncomment to enable adaptive step width sampling
//#define ADAPTIVE_SAMPLING

// Uncomment to enable progressing step size
//#define PROGRESSIVE_STEPSIZE

// Generated data (see other .c files)
extern void set_palette();
extern unsigned char colors[512][512];
extern unsigned char height[512][512];

// Instead of having a byte array for height and a byte array for color,
// it's more efficient to have a unified word array since the ST reads a word anyway.
unsigned short combined[512][512];

// y_table[h][z] contains the y coordinate of a point at height h at a distance of z.
signed short y_table[256][STEPS_MAX];

// pdata_table[y][opacity][color] contains pixel data prepared for movep.
// 3 bit of opacity are encoded into a stipple pattern that mixes color 0 with the given color.
unsigned int pdata_table[8][8][16];

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
	fixp x,y,z,dirx,diry;
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

inline fixp progression(fixp x) {
	return x + (x >> 6);
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
	// Map height and distance along z axis to an y screen coordinate
	for (int h=0; h<256; h++) {
		fixp dist = FIXP(1,0);
		fixp step = FIXP(1,0);
		for (int z=1; z<STEPS_MAX; z++) {
			y_table[h][z] = 100 - 70 * (h - 100) / fixp_int(dist);
#ifdef CURVED_TERRAIN
			y_table[h][z] += 70 * fixp_int(dist) / 400;
#endif
			dist += step;
#ifdef PROGRESSIVE_STEPSIZE
			step = progression(step);
#endif
		}
	}
	// Combine color and height arrays into a single array.
	for (int y=0; y<HEIGHT; y++) {
		for (int x=0; x<WIDTH; x++) {
			combined[y][x] = (colors[y][x] << 8) | height[y][x];
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
			unsigned int bits = 0;
			for (int x=0; x<8; x++) {
				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
			}
			for (int color = 0; color < 16; color++) {
				pdata_table[y][opacity][color] = 0
					| ((color&1) ? bits << 24 : 0)
					| ((color&2) ? bits << 16 : 0)
					| ((color&4) ? bits <<  8 : 0)
					| ((color&8) ? bits <<  0 : 0);
			}
		}
	}

	for (int x=0; x<32; x++) horizon[x] = -1;
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

// Render every nth pixel column (starting at x0) of a heightfield containing combined height and color values.
// The viewer's position is assumed to be at `pos`.
void render(const position *pos, unsigned short *out, const unsigned short combined[][WIDTH], int x0, int nth) {
	for (unsigned short x=x0; x<VIEWPORT_MAX; x+=nth) {
		fixp sample_u = pos->x;
		fixp sample_v = pos->y;
		fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
		fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;

		//printf("d_u: %x d_v: %x l2: %x\n", delta_u, delta_v, fixp_mul(delta_u, delta_u) + fixp_mul(delta_v, delta_v));
#ifdef PROGRESSIVE_STEPSIZE
		for (int z = 1; z < STEPS_MIN; z++) {
			sample_u += delta_u;
			sample_v += delta_v;
			delta_u = progression(delta_u);
			delta_v = progression(delta_v);
		}
#else
		sample_u += STEPS_MIN * delta_u;
		sample_v += STEPS_MIN * delta_v;
#endif

		short sample_y = 200;
		short prev_sample_y = 200;
		
		int step_size = 1;
		int z = STEPS_MIN;

		unsigned short color = 0;

		// Pointer to the first of the 8 bytes of memory which contain the pixel at line 199, column x
		unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
		short horizon_y = 0;
		for(short y=199; y >= 0; y-=LINES_SKIP) {
			set_color(0x00f);
			while (z < STEPS_MAX && y < sample_y) {
				//put_pixel(out, 15, fixp_uint(sample_u)/4, fixp_uint(sample_v)/4); 
				unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
				short h = height_color & 0xff;
				sample_y = y_table[h][z];
				color = height_color >> 8;
				
				z += step_size;
				sample_u += delta_u;
				sample_v += delta_v;
#ifdef PROGRESSIVE_STEPSIZE
				delta_u = progression(delta_u);
				delta_v = progression(delta_v);
#endif
#ifdef ADAPTIVE_SAMPLING				
				// Adaptive step size handling
				if (sample_y < prev_sample_y - 4) {
					// Make smaller steps if the current step size causes large pixel steps
					if (step_size > 2) step_size = step_size >> 1;
				} else if (sample_y + 1 >= prev_sample_y) {
					// Make larger steps if the current step size causes small or negative pixel steps
					step_size += step_size + (step_size >> 2) + 1;
				}
#endif				
				// remember y for next sample
				prev_sample_y = sample_y;
			}
			set_color(0xf00);
			
			if (z >= STEPS_MAX) {
				// Maximum view distance reached, fill the rest of the screen with color 0.
				color = 0;
				// Record the first line (highest y) on which sky was visible
				if (y > horizon_y) {
					horizon_y = y;
				}
				// Once we know that we're painting over sky left from previous frame, break the loop
				if (y <= horizon[x]) {
					break;
				}
			}

			// Use movep to write 8 pixels at once
			int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
			register unsigned int movep_data = pdata_table[y&7][opacity][color];
			asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
			pBlock -= 160*LINES_SKIP;
		}
		// Save the horizon's y position.
		horizon[x] = horizon_y - 1;
	} 
}


position pos = {
	.x = FIXP(456, 0),
	.y = FIXP(-44, 0),
	.z = FIXP(100, 0),
	.dirx = FIXP(-1, -118),
	.diry = FIXP(0, 49), 
};


int main(int argc, char **argv) {
	Super(0L);
	build_tables();
	printf("Tables computed.\n");
        set_palette();
	draw_image2(Physbase(), colors);
	clear_screen(Physbase());
	for(int i=0; i<800; i++) {
		unsigned short saved_color = get_color();
		set_color(0x700);
		render(&pos, Physbase(), combined, VIEWPORT_MIN + 4 + ((i&1)<<3), 16);
		set_color(saved_color);
		pos.x += 1*pos.dirx;
		pos.y += 1*pos.diry;
		//Vsync();
	}
	getchar();
	return 0;
}

