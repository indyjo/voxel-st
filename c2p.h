#ifndef C2P_H
#define C2P_H

void init_c2p_table();
void c2p(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd);
void c2p_x2(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd);
void c2p_skip(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned long skip, unsigned char odd);

/// @brief Chunky to planar of a sequence of 8-byte chunky pixel groups
/// (each pixel one 16-bit word, each group containingy 4 chunky pixels)
/// to 2x2 planar pixels with `stride` bytes inbetween lines.
/// @param out      The first address of output memory to write planar pixels to.
/// @param in       The first address of input memory to read chunky pixels from.
/// @param groups   How many chunky pixel groups to process.
/// @param outskip  How many bytes to add to out per line.
/// @param phase    The phase of the first group in the dithering cycle
void c2p_w4_2x2_vertical(unsigned char *out, const unsigned short *in, unsigned short groups, long outskip, unsigned char phase);

#endif // C2P_H