#ifndef C2P_H
#define C2P_H

void init_c2p_table();
void c2p(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd);
void c2p_x2(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned char odd);
void c2p_skip(unsigned char *out, const unsigned char *in, unsigned short pixels, unsigned long skip, unsigned char odd);

#endif // C2P_H