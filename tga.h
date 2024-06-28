#ifndef TGA_H
#define TGA_H

typedef struct {
	short width, height;
	unsigned char *pixels;
	unsigned char *colors;
	unsigned char numColors;
} image_t;

image_t read_tga(const char *filename);
void free_image(image_t image);

#endif

