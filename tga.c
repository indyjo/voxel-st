#include <endian.h>
#include <stdio.h>
#include <stdlib.h>
#include "tga.h"

struct HEADER {
   char  idlength;
   char  colourmaptype;
   char  datatypecode;
   short int colourmaporigin;
   short int colourmaplength;
   char  colourmapdepth;
   short int x_origin;
   short int y_origin;
   short width;
   short height;
   char  bitsperpixel;
   char  imagedescriptor;
} __attribute((packed))__;

/*
typedef struct {
        short width, height;
        unsigned char *pixels;
        unsigned char *colors;
        unsigned char numColors;
} image_t;
*/

void dump_header(const struct HEADER *h) {
	printf("idlength: %d\n", h->idlength);
	printf("colourmaptype: %d\n", h->colourmaptype);
	printf("datatypecode: %d\n", h->datatypecode);
	printf("colourmaporigin: %d\n", h->colourmaporigin);
	printf("colourmaplength: %d\n", h->colourmaplength);
	printf("colourmapdepth: %d\n", h->colourmapdepth);
	printf("x_origin: %d\n", h->x_origin);
	printf("y_origin: %d\n", h->y_origin);
	printf("width: %d\n", h->width);
	printf("height: %d\n", h->height);
	printf("bitpsperpixel: %d\n", h->bitsperpixel);
	printf("imagedescriptor: %d\n", h->imagedescriptor);
}

image_t read_tga(const char *filename) {
	FILE *file = fopen(filename, "rb");
	if (!file) {
		printf("Couldn't open file: %s\n", filename);
		goto err_final;
	}

	image_t image = read_tga_header(file);
	if (image.width == 0 || image.height == 0) {
		printf("Failed to read TGA header.\n");
		goto err_free;
	}

	image.pixels = malloc(image.width * image.height);
	if (!image.pixels) {
		printf("Failed to allocate %dB of pixels\n", image.width * image.height);
		goto err_free;
	}

	size_t n = fread(image.pixels, image.width, image.height, file);
	if (n != image.height) {
		printf("Read only %d lines\n", n);
		goto err_free;
	}

	goto done;

err_free:
	free(image.colors);
	free(image.pixels);
	image.colors = image.pixels = NULL;
	image.width = image.height = 0;
	image.numColors = 0;
	
done:
err_close:
	fclose(file);

err_final:
	return image;
}

void free_image(image_t *image) {
	free(image->colors);
	image->colors = 0;
	free(image->pixels);
	image->pixels = 0;
}

image_t read_tga_header(FILE *file) {
	image_t image = {
		.width = 0,
		.height = 0,
		.pixels = 0,
		.colors = 0,
		.numColors = 0,
	};
	struct HEADER header;
	size_t n = fread(&header, 1, 18, file);
	if (n != 18) {
		printf("Read %d bytes from tga\n", n);
		goto error;
	}
	header.colourmaporigin = le16toh(header.colourmaporigin);
	header.colourmaplength = le16toh(header.colourmaplength);
	header.x_origin = le16toh(header.x_origin);
	header.y_origin = le16toh(header.y_origin);
	header.width = le16toh(header.width);
	header.height = le16toh(header.height);
	//dump_header(&header);
	if (header.datatypecode != 1 && header.datatypecode != 3) {
		printf("Wrong tga type %d\n", header.datatypecode);
		goto error;
	}
	if (header.datatypecode == 1 && header.colourmapdepth != 24) {
		printf("Wrong color map depth %d\n", header.colourmapdepth);
		goto error;
	}
	
	if (0 != fseek(file, header.idlength, SEEK_CUR)) {
		goto error;
	}

	if (header.datatypecode == 1) {
		image.colors = calloc(header.colourmaplength, 3);
		if (!image.colors) {
			printf("Failed to allocate palette buffer\n");
			goto error;
		}
	}

	image.numColors = (header.datatypecode == 1 ? header.colourmaplength : 0);
	image.width = header.width;
	image.height = header.height;

	n = fread(image.colors, 3, image.numColors, file);
	if (n != image.numColors) {
		printf("Couldn't read palette, only %d colors\n", n);
		goto error;
	}

	return image;

error:
	free(image.colors);
	image.colors = 0;
	image.width = image.height = 0;
	image.numColors = 0;
	return image;
}
