#ifndef TGA_H
#define TGA_H

#include <stdio.h>
typedef struct {
	short width, height;
	unsigned char *pixels;
	unsigned char *colors;
	unsigned short numColors;
} image_t;

image_t read_tga(const char *filename);
void free_image(image_t *image);
image_t read_tga_header(long file);

#endif

