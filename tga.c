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
	image_t image = {
		.width = 0,
		.height = 0,
		.pixels = 0,
		.colors = 0,
		.numColors = 0,
	};
	FILE *file = fopen(filename, "rb");
	if (!file) {
		printf("Couldn't open file: %s\n", filename);
		goto err_final;
	}
	struct HEADER header;
	size_t n = fread(&header, 1, 18, file);
	if (n != 18) {
		printf("Read %d bytes from tga\n", n);
		goto err_close;
	}
	header.colourmaporigin = le16toh(header.colourmaporigin);
	header.colourmaplength = le16toh(header.colourmaplength);
	header.x_origin = le16toh(header.x_origin);
	header.y_origin = le16toh(header.y_origin);
	header.width = le16toh(header.width);
	header.height = le16toh(header.height);
	dump_header(&header);
	if (header.datatypecode != 1) {
		printf("Wrong tga type %d\n", header.datatypecode);
		goto err_close;
	}
	if (header.colourmaplength != 16) {
		printf("Wrong number of colors: %d\n", header.colourmaplength);
		goto err_close;
	}
	if (header.colourmapdepth != 24) {
		printf("Wrong color map depth %d\n", header.colourmapdepth);
		goto err_close;
	}
	

	if (0 != fseek(file, header.idlength, SEEK_CUR)) {
		goto err_close;
	}

	image.colors = calloc(header.colourmaplength, 3);
	if (!image.colors) {
		goto err_free;
	}

	image.pixels = malloc(header.width * header.height);
	if (!image.pixels) {
		goto err_free;
	}

	image.numColors = header.colourmaplength;
	image.width = header.width;
	image.height = header.height;

	n = fread(image.colors, 3, image.numColors, file);
	if (n != image.numColors) {
		printf("Couldn't read palette, only %d colors\n", n);
		goto err_free;
	}

	n = fread(image.pixels, image.width, image.height, file);
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
	
err_close:
	fclose(file);

err_final:
done:
	return image;
}

void free_image(image_t image) {
	free(image.colors);
	free(image.pixels);
}

