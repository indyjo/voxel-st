#include "particles.h"

#define MAX_PARTICLES 256

typedef struct {
    unsigned long pixels;
    unsigned short byte_ofs;
} restore_t;

static restore_t restore_buffers[MAX_PARTICLES];
static short num_restore_buffers = 0;

inline void movep_write(unsigned char *p, unsigned long data) {
	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
}

inline unsigned long movep_read(unsigned char *p) {
    unsigned long data;
	asm ("movep.l 0(%1), %0" : "=d" (data) : "a" (p));
    return data;
}

void particles_draw_one(void *screen, short x, short y) {
    if (num_restore_buffers == MAX_PARTICLES) {
        return;
    }

    unsigned short byte_ofs = y * 160 + ((x >> 4) << 3) + ((x >> 3) & 1);
    restore_buffers[num_restore_buffers].byte_ofs = byte_ofs;
    unsigned char *addr = (unsigned char*) screen + byte_ofs;
    unsigned long pixels = movep_read(addr);
    restore_buffers[num_restore_buffers].pixels = pixels;
    pixels |= 0x80808080 >> (x & 7);
    movep_write(addr, pixels);
    num_restore_buffers++;
}

void particles_clear_all(void *screen) {
    while (num_restore_buffers > 0) {
        num_restore_buffers--;
        unsigned char *addr = (unsigned char*) screen + restore_buffers[num_restore_buffers].byte_ofs;
        movep_write(addr, restore_buffers[num_restore_buffers].pixels);
    }
}
