#include "c2p.h"

static void move_p_ofs(unsigned char *p, unsigned int data, unsigned char ofs) {
	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
}

static unsigned long c2p_table[2][256];

// [even/odd][color][pixel 0...3]
static unsigned long c2p_x2_table[2][256][4];

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
                if ((pixel & 1) == 1) c2p_x2_table[odd][i][inpixel] = pdata;
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
    unsigned long (*table)[256][4] = c2p_x2_table + (odd & 1);
	while (pixels > 15) {
		unsigned int pdata; // 8 pixel data for use with movep
		for (int j=0; j<2; j++) {
			pdata = 0;
			for(int i=0; i<4; i++) {
                unsigned char color = *in++;
				pdata |= (*table)[color][i];
			}
			move_p_ofs(out, pdata, j);
		}
		pixels -= 16;
		out += 8;
	}
}


void c2p_skip(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned long skip, unsigned char odd) {
	const unsigned long *table = c2p_table[odd & 1];
	const unsigned long *other = c2p_table[!odd & 1];
    unsigned short groups = pixels >> 4;
	while (groups-- > 0) {
		for (int j=0; j<2; j++) {
			unsigned int pdata = 0; // 8 pixel data for use with movep
			for(int i=0; i<8; i++) {
				pdata <<= 1;
				pdata |= table[*in];
				in += skip;
				const unsigned long *temp = table;
				table = other;
				other = temp;
			}
			move_p_ofs(out, pdata, j);
		}
		out += 8;
	}
}

#define ASSEMBLER 1
#if ASSEMBLER

void c2p_w4_2x2_vertical(unsigned char *out, const unsigned short *in, unsigned short groups, long outskip, unsigned char phase) {
	const unsigned long (*table1)[256][4] = c2p_x2_table + (phase & 1);
	const unsigned long (*table2)[256][4] = c2p_x2_table + ((phase + 1) & 1);
    while (groups-- > 0) {
        unsigned long pdata; // 32 bits of planar pixel data
        asm volatile (
            // Read four consecutive pixels from buffer, each stored in a word
            "movem.w    (%[in])+, %%d0-%%d3             \n\t"

            // Write 8 planar pixels (even line)
            "move.l     (%[table1],%%d0.w), %[pdata]    \n\t"
            "or.l       4(%[table1],%%d1.w), %[pdata]   \n\t"
            "or.l       8(%[table1],%%d2.w), %[pdata]   \n\t"
            "or.l       12(%[table1],%%d3.w), %[pdata]  \n\t"
            "movep.l    %[pdata], 0(%[out])             \n\t"
            "lea        (%[out],%[outskip].l), %[out]   \n\t"

            // Write 8 planar pixels (odd line)
            "move.l     (%[table2],%%d0.w), %[pdata]    \n\t"
            "or.l       4(%[table2],%%d1.w), %[pdata]   \n\t"
            "or.l       8(%[table2],%%d2.w), %[pdata]   \n\t"
            "or.l       12(%[table2],%%d3.w), %[pdata]  \n\t"
            "movep.l    %[pdata], 0(%[out])             \n\t"
            "lea        (%[out],%[outskip].l), %[out]   \n\t"
            
            // Outputs
            : [in] "+a" (in)
            , [out] "+a" (out)
            , [pdata] "=d" (pdata)
            
            // Inputs
            : [table1] "a" (table1)
            , [table2] "a" (table2)
            , [outskip] "d" (outskip)
            
            // Clobbers
            : "d0", "d1", "d2", "d3"
        );
    }
}

#else

void c2p_w4_2x2_vertical(unsigned char *out, const unsigned short *in, unsigned short groups, long outskip, unsigned char phase) {
	const unsigned long (*table)[4][256] = c2p_x2_table + (phase & 1);
	const unsigned long (*other)[4][256] = c2p_x2_table + ((phase + 1) & 1);
    while (groups-- > 0) {
        unsigned long pdata1 = 0, pdata2 = 0;
        for (unsigned short pixel = 0; pixel < 4; pixel++) {
            unsigned short color = *in++;
            pdata1 |= *(unsigned long*)(((char *)(*table)[pixel]) + color);
            pdata2 |= *(unsigned long*)(((char *)(*other)[pixel]) + color);
        }
        move_p_ofs(out, pdata1, 0);
        out += outskip;
        move_p_ofs(out, pdata2, 0);
        out += outskip;
        in += 4;
    }
}

#endif