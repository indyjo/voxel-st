#include "c2p.h"

static void move_p_ofs(unsigned char *p, unsigned int data, unsigned char ofs) {
	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
}

static unsigned int c2p_table[2][256];
static unsigned int c2p_x2_table[2][4][256];

void init_c2p_table() {
	for (int i=0; i<256; i++) {
		unsigned int pdata = 0;
		if (i & 1) pdata |= 0x01000000;
		if (i & 2) pdata |= 0x00010000;
		if (i & 4) pdata |= 0x00000100;
		if (i & 8) pdata |= 0x00000001;
		c2p_table[0][i] = pdata;
	}

	for (int i=0; i<256; i++) {
		unsigned int pdata = 0;
		unsigned char c = (i & 0xf) + (i >> 4);
		if (c & 1) pdata |= 0x01000000;
		if (c & 2) pdata |= 0x00010000;
		if (c & 4) pdata |= 0x00000100;
		if (c & 8) pdata |= 0x00000001;
		c2p_table[1][i] = pdata;
	}

    for (int i=0; i<256; i++) {
        unsigned char c1 = i & 0xf;
        unsigned char c2 = (i & 0xf) + (i >> 4);
	    
        for (unsigned char odd = 0; odd < 2; odd++) {
            unsigned int pdata;
            for (unsigned char pixel = 0; pixel < 8; pixel++) {
                unsigned char inpixel = pixel >> 1;
                if ((pixel & 1) == 0) pdata = 0;
                for (unsigned char bitplane = 0; bitplane < 4; bitplane++) {
                    unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
                    if (c & (1 << (3-bitplane))) {
                        pdata |= (1 << (8*bitplane)) << (7-pixel);
                    }
                }
                if ((pixel & 1) == 1) c2p_x2_table[odd][inpixel][i] = pdata;
            }
        }
	}
}

void c2p(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd) {
	while (pixels > 15) {
		unsigned int pdata; // 8 pixel data for use with movep
		for (int j=0; j<2; j++) {
			pdata = 0;
			for(int i=0; i<8; i++) {
				pdata <<= 1;
				pdata |= c2p_table[odd&1][*in++];
				odd = !odd;
			}
			move_p_ofs(out, pdata, j);
		}
		pixels -= 16;
		out += 8;
	}
}

void c2p_x2(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd) {
    unsigned int (*table)[4][256] = c2p_x2_table + (odd & 1);
	while (pixels > 15) {
		unsigned int pdata; // 8 pixel data for use with movep
		for (int j=0; j<2; j++) {
			pdata = 0;
			for(int i=0; i<4; i++) {
                unsigned char color = *in++;
				pdata |= (*table)[i][color];
			}
			move_p_ofs(out, pdata, j);
		}
		pixels -= 16;
		out += 8;
	}
}


void c2p_skip(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned long skip, unsigned char odd) {
	const unsigned int *table = c2p_table[odd & 1];
	const unsigned int *other = c2p_table[!odd & 1];
    unsigned short groups = pixels >> 4;
	while (groups-- > 0) {
		for (int j=0; j<2; j++) {
			unsigned int pdata = 0; // 8 pixel data for use with movep
			for(int i=0; i<8; i++) {
				pdata <<= 1;
				pdata |= table[*in];
				in += skip;
				const unsigned int *temp = table;
				table = other;
				other = temp;
			}
			move_p_ofs(out, pdata, j);
		}
		out += 8;
	}
}
