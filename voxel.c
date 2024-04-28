#include <mint/osbind.h>
#include <stdio.h>

// The fixpoint format was chosen so that exactly 512 integral values exist, with 7 bit fractional part.
// This way, the integral part maps directly to a coordinate from the 512x512 heightfield.
#define FIXP_PRECISION 7
#define FIXP_FRACT_MASK ((1 << FIXP_PRECISION) - 1)
#define FIXP_FACTOR (1<<FIXP_PRECISION)
#define FIXP(_r,_f) ((((_r) << FIXP_PRECISION) & ~FIXP_FRACT_MASK) | (_f & FIXP_FRACT_MASK))
typedef signed short fixp;

// Heightfield dimensions
#define WIDTH 512
#define HEIGHT 512

// Can be used to display a narrower viewport
#define VIEWPORT_MIN 0
#define VIEWPORT_MAX 320

// Generated data (see other .c files)
extern void set_palette();
extern unsigned char colors[512][512];
extern unsigned char height[512][512];

// Instead of having a byte array for height and a byte array for color,
// it's more efficient to have a unified word array since the ST reads a word anyway.
unsigned short combined[512][512];

// y_table[h][z] contains the y coordinate of a point at height h at a distance of z.
signed short y_table[256][256];

// Utility functions for profiling by setting palette color 0
unsigned short *hw_palette = (unsigned short *) 0xff8240;

unsigned short get_color() {
	return *hw_palette;
}

void set_color(unsigned short rgb) {
	//*hw_palette = rgb;
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



typedef struct position {
	fixp x,y,z,dirx,diry;
} position;

signed short fixp_int(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

fixp fixp_mul(fixp a, fixp b) {
	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
}

// Draw a pixel in the specified color at x/y relative to out
inline void put_pixel(unsigned short *out, unsigned char color, unsigned short x, unsigned short y) {
	//printf("put_pixel %p %d %d %d\n", out, color, x, y);
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
		for (int z=0; z<256; z++) {
			y_table[h][z] = 80 - 70 * (h - 85) / z + 70 * z / 400;
		}
	}
	// Combine color and height arrays into a single array.
	for (int y=0; y<HEIGHT; y++) {
		for (int x=0; x<WIDTH; x++) {
			combined[y][x] = (colors[y][x] << 8) | height[y][x];
		}
	}
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
	fixp delta_eye_z = FIXP(1, 0);

	for (unsigned short x=x0; x<VIEWPORT_MAX; x+=nth) {
		if ((x & 15) < nth) {
			set_color(0x0f0);
			erase_column(out, x, nth);
			set_color(0xf00);
		}
		fixp sample_x = pos->x;
		fixp sample_y = pos->y;
		fixp delta_x = pos->dirx - (x - 160) * pos->diry / 320;
		fixp delta_y = pos->diry + (x - 160) * pos->dirx / 320;
		
		//printf("delta_x: %x delta_y: %x\n", delta_x, delta_y);
		sample_x += 15*delta_x;
		sample_y += 15*delta_y;

		short min_y = 200;
		short prev_y = 200;
		
		int step_size = 1;

		for(int z=15, next_step = z; z<240; z++) {
			if (z == next_step) {
				unsigned short height_color = combined[fixp_int(sample_y)][fixp_int(sample_x)];
				short h = height_color & 0xff;
				//printf("Sampled height: %d\n", h);
				// short h = height[fixp_int(sample_y)][fixp_int(sample_x)];
				register short y = y_table[h][z];
				//if (y < 0) printf("h: %d -> computed y: %d z: %d\n", h, y, fixp_int(eye_z));

				if (y < prev_y - 3) {
					if (step_size > 1) step_size -= 1;
				} else if (y >= prev_y) {
					step_size = step_size + (step_size >> 2) + 1;
				}
				prev_y = y;

				if (y < 0) {
					y = 0;
				}

				if (y < min_y) {
					//unsigned char c = color[fixp_int(sample_y)][fixp_int(sample_x)];
					unsigned char c = height_color >> 8;
					for (short yl = y; yl < min_y; yl++) {
						or_pixel(out, c, x, yl);
						
					}
					//put_pixel(out, 15, x, y);
	
					min_y = y;
				}
				next_step = z + step_size;
			
				//if (fixp_int(sample_y) < 200 && fixp_int(sample_x) < 320)
				//	put_pixel(out, 15, fixp_int(sample_x), fixp_int(sample_y));
			}

			sample_x += delta_x;
			sample_y += delta_y;
			//eye_z += delta_eye_z;


		}
		//for (int yl = 0; yl < prev_y; yl++)
		//	put_pixel(out, 0, x, yl); 
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
	char c[16];
	//gets(c);
	for(int i=0; i<800; i++) {
		unsigned short saved_color = get_color();
		set_color(0x700);
		render(&pos, Physbase(), combined, VIEWPORT_MIN + (i&1), 2);
		set_color(saved_color);
		pos.x += 4*pos.dirx;
		pos.y += 4*pos.diry;
		Vsync();
	}
	gets(c);
	return 0;
}

