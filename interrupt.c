#include "palette.h"

void **const timer_b_vector = (void*)0x120;
void **const level4_vector = (void*)0x70;
volatile unsigned char *const interrupt_enable_a = (unsigned char*)0xfffa07;
volatile unsigned char *const interrupt_in_service_a = (unsigned char*)0xfffa0f;
volatile unsigned char *const interrupt_mask_a = (unsigned char*)0xfffa13;
volatile unsigned char *const timer_b_ctrl = (unsigned char *)0xfffa1b;
volatile unsigned char *const timer_b_data = (unsigned char *)0xfffa21;
unsigned short palette1[16], palette2[16], top_palette[16];
unsigned short *palette_curr = palette1, *palette_next = palette2;

void on_vblank() {
	*timer_b_ctrl = 0;
	*timer_b_data = 119;
	*timer_b_ctrl = 8;
	
	install_palette(top_palette);
}

void __attribute__((interrupt)) timer_b_handler() {
	install_palette(palette_curr);
	*interrupt_in_service_a &= ~1;
}

extern void *vsync_handler;
extern struct { const short op; void *target; } jmp_old_handler;
asm (
	".globl  _vsync_handler\n"
"_vsync_handler:\n\t"
        "movem.l %d0-%d7/%a0-%a6,-(%sp)\n\t"
        "jsr _on_vblank\n\t"
        "movem.l (%sp)+,%d0-%d7/%a0-%a6\n"
"_jmp_old_handler:\n\t"
        "jmp 0.l"
);

void install_interrupts() {
	*timer_b_vector = &timer_b_handler;
	*interrupt_enable_a |= 1;
	*interrupt_mask_a |= 1;
	*timer_b_ctrl = 0;

	jmp_old_handler.target = *level4_vector;
	*level4_vector = &vsync_handler;
}

void uninstall_interrupts() {
	*interrupt_enable_a &= ~1;
	*interrupt_mask_a &= ~1;
	*timer_b_vector = 0;
	*level4_vector = jmp_old_handler.target;
}

void convert_palette(const unsigned char *colors, unsigned short *out_palette) {
	for (short n = 0; n < 16; n++) {
		short entry = 0;
		for (short c = 0; c < 3; c++) {
			unsigned char v = *colors++;
			entry = entry >> 4;
			entry |= (v & 0xe0) << 3; // Bits 7,6,5 shifted to 2,1,0
			entry |= (v & 0x10) << 7; // STe color bit
		}
		out_palette[n] = entry;
	}
}

void set_top_palette(const unsigned char *colors) {
	convert_palette(colors, top_palette);
}

void set_bottom_palette(const unsigned char *colors) {
	convert_palette(colors, palette_next);
	unsigned short *tmp = palette_next;
	palette_next = palette_curr;
	palette_curr = tmp;
}

void set_palette_immediately(const unsigned char *colors) {
	unsigned short p[16];
	convert_palette(colors, p);
	install_palette(p);
}
