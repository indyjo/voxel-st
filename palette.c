void install_palette(unsigned short *palette) {
	volatile unsigned short *reg = (unsigned short*) 0xff8240;
        for (short n=0; n<16; n++) *reg++ = *palette++;
}

void save_palette(unsigned short *palette) {
	volatile unsigned short *reg = (unsigned short*) 0xff8240;
        for (short n=0; n<16; n++) *palette++ = *reg++;
}
