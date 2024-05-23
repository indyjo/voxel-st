#include <mint/linea.h>
#include <mint/osbind.h>
#include <mint/sysvars.h>
#include <stdio.h>
#include <stdlib.h>

// The fixpoint format was chosen so that exactly 512 integral values exist, with 7 bit fractional part.
// This way, the integral part maps directly to a coordinate from the 512x512 heightfield.
#define FIXP_PRECISION 7
#define FIXP_FRACT_MASK ((1 << FIXP_PRECISION) - 1)
#define FIXP_FACTOR (1<<FIXP_PRECISION)
#define FIXP(_r,_f) ((((_r) << FIXP_PRECISION) & ~FIXP_FRACT_MASK) | (_f & FIXP_FRACT_MASK))
typedef signed short fixp;

// Should mouse control be active?
#define INTERACTIVE

// If defined, background color is used to measure performance
//#define COLORBAR_PROFILING

// Heightfield dimensions
#define WIDTH 512
#define HEIGHT 512
#define DIM_BITS 9

// Can be used to display a narrower viewport
#define VIEWPORT_MIN 0
#define VIEWPORT_MAX 320

// Draw every nth line
#define LINES_SKIP 1

// Whether to stop sampling occluded terrain
#define OCCLUSION_CULLING
// Above which pixel height to start checking whether to apply occlusion culling.
#define OCCLUSION_THRESHOLD_Y 100

// First and last sample
#define STEPS_MIN 4
#define STEPS_MAX 64

// Uncomment to introduce some curvature towards the horizon, like on a spherical planet
#define CURVED_TERRAIN

// Mipmap progression should happen every 2^N steps
#define TRIGGERS_MIPMAP_CHANGE(z) (((z) & ((1<<4)-1)) == 0)

inline fixp progression(fixp x) {
	return x + x;
}

// Generated data (see other .c files)
extern void set_palette();
extern unsigned char colors[512][512];
extern unsigned char height[512][512];

// An array of DIM_BITS+1 pointers, each pointing to an array of shorts (color and height information).
// The entry with index N points to an array of M*M shorts, where M = 1 << N.
unsigned short *combined_mip[DIM_BITS+1];

// The maximum height occuring in the heightfield.
unsigned char max_height;

// y_table[z][h] contains the y coordinate of a point at height h at a distance of z, observed from a height of 256.
signed short y_table[STEPS_MAX][256+256];

// pdata_table[y][opacity][color] contains pixel data prepared for movep.
// 3 bit of opacity are encoded into a stipple pattern that mixes color 0 with the given color.
unsigned int pdata_table[8][8][16];

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
		if (TRIGGERS_MIPMAP_CHANGE(z))
			step <<= 1;
		int rel_dist = z - STEPS_MAX/2;
		if (rel_dist < 0) rel_dist = 0;
		int max_dist = STEPS_MAX - STEPS_MAX/2;
		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	}

	// Combine color and height arrays into a single array.
	max_height = 0;
	for (int i=DIM_BITS; i>= 0; i--) {
		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
		unsigned short *pCombined = combined_mip[i];
		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
				*pCombined++ = (colors[y][x] << 8) | height[y][x];
				if (i==DIM_BITS && height[y][x] > max_height)
					max_height = height[y][x];
			}
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

inline int to_index(unsigned short u, unsigned short v, unsigned char mip_index) {
	int idx;
	if (mip_index > 8) {
		idx = v << (2*mip_index - 16);
	} else {
		idx = v >> (16 - 2*mip_index);
	}
	idx &= ~((1<<mip_index)-1);
	idx |= u >> (16 - mip_index);
	return idx;
}

// Render a column of pixels of a heightfield containing combined height and color values.
// The viewer's position is assumed to be at `pos`.
// Returns the first y position that wasn't filled.
short render(const position *pos, unsigned short *out, short player_height, short x, short y_offset) {
	short ytable_offset = 256 - player_height;
	short max_height_ytable_index = max_height + ytable_offset;
	set_color(0xff0);
	fixp sample_u = pos->x;
	fixp sample_v = pos->y;
	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);

	//printf("d_u: %x d_v: %x l2: %x\n", delta_u, delta_v, fixp_mul(delta_u, delta_u) + fixp_mul(delta_v, delta_v));
	sample_u += STEPS_MIN * delta_u;
	sample_v += STEPS_MIN * delta_v;

	short sample_y = 200;

	int step_size = 1;
	int z = STEPS_MIN;

	unsigned short color = 0;

	// Pointer to the first of the 8 bytes of memory which contain the pixel at line 199, column x
	unsigned char * pBlock = pixel_block_address(out, x, 199);

	unsigned short* combined = combined_mip[DIM_BITS];
	unsigned char mip_index = DIM_BITS;

	short y = 199;
	while(y >= 0 && z < STEPS_MAX) {
		// Find the next sample to display.
		if (y < sample_y) {
			// We haven't yet found the terrain sample that covers the pixel. Try the next sample.

			set_color(0x00f);
			// put_pixel(out, 15, fixp_uint(sample_u)/2, fixp_uint(sample_v)/2); 
#ifdef OCCLUSION_CULLING
			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
				z = STEPS_MAX;
				//for (int xp=x; xp<x+8; xp++) put_pixel(out, 15, xp, y);
				break;
			}
#endif
			unsigned short height_color = combined[to_index(sample_u, sample_v, mip_index)];
			short h = height_color & 0xff;
			sample_y = y_table[z][h + ytable_offset] + y_offset;
			color = height_color >> 8;

			for(int i=0; i<step_size; i++) {
				z++;
				sample_u += delta_u;
				sample_v += delta_v;
				if (TRIGGERS_MIPMAP_CHANGE(z)) {
					delta_u += delta_u;
					delta_v += delta_v;
					mip_index--;
					combined = combined_mip[mip_index];
				}
			}
	} else {
			// We found a terrain sample that covers the current y.
			set_color(0xf00);

			// Use movep to write 8 pixels at once. Take pixel data from a table that also contains
			// a stipple pattern for emulating fog. If full opacity, optimize by recycling the
			// pixel data along the full pixel height of the sample.
			unsigned char opacity = opacity_table[z];
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

unsigned short height_at(fixp x, fixp y) {
	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	return c & 0xff;
}

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

		int height_under_player = height_at(pos.x, pos.y);
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

