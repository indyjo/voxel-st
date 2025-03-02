#include <osbind.h>
#include <endian.h>
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

static void print(const char *s) {
	while (*s) {
		Bconout(_CON, *s);
		s++;
	}
}

image_t read_tga(const char *filename) {
	long file = Fopen(filename, S_READ);
	if (file < 0) {
		print("Couldn't open file: ");
		print(filename);
		print("\r\n");
		goto err_final;
	}

	image_t image = read_tga_header(file);
	if (image.width == 0 || image.height == 0) {
		print("Failed to read TGA header.\r\n");
		goto err_free;
	}

	image.pixels = (unsigned char *)Malloc(image.width * image.height);
	if (!image.pixels) {
		print("Failed to allocate memory for pixels\r\n");
		goto err_free;
	}

	size_t n = Fread(file, image.width*image.height, image.pixels);
	if (n != image.width*image.height) {
		print("Read insufficient lines\r\n");
		goto err_free;
	}

	goto done;

err_free:
	Mfree(image.colors);
	Mfree(image.pixels);
	image.colors = image.pixels = NULL;
	image.width = image.height = 0;
	image.numColors = 0;
	
done:
err_close:
	Fclose(file);

err_final:
	return image;
}

void free_image(image_t *image) {
	Mfree(image->colors);
	image->colors = 0;
	Mfree(image->pixels);
	image->pixels = 0;
}

image_t read_tga_header(long file) {
	image_t image = {
		.width = 0,
		.height = 0,
		.pixels = 0,
		.colors = 0,
		.numColors = 0,
	};
	struct HEADER header;
	size_t n = Fread(file, 18, &header);
	if (n != 18) {
		print("Read insufficient bytes from tga\r\n");
		goto error;
	}
	header.colourmaporigin = le16toh(header.colourmaporigin);
	header.colourmaplength = le16toh(header.colourmaplength);
	header.x_origin = le16toh(header.x_origin);
	header.y_origin = le16toh(header.y_origin);
	header.width = le16toh(header.width);
	header.height = le16toh(header.height);
	if (header.datatypecode != 1 && header.datatypecode != 3) {
		print("Wrong tga type\r\n");
		goto error;
	}
	if (header.datatypecode == 1 && header.colourmapdepth != 24) {
		print("Wrong color map depth\r\n");
		goto error;
	}
	
	if (0 > Fseek(file, header.idlength, SEEK_CUR)) {
		goto error;
	}

	if (header.datatypecode == 1) {
		image.colors = (unsigned char *)Malloc(header.colourmaplength * 3);
		if (!image.colors) {
			print("Failed to allocate palette buffer\r\n");
			goto error;
		}
	}

	image.numColors = (header.datatypecode == 1 ? header.colourmaplength : 0);
	image.width = header.width;
	image.height = header.height;

	n = Fread(file, 3 * image.numColors, image.colors);
	if (n != 3 * image.numColors) {
		print("Couldn't read palette\r\n");
		goto error;
	}

	return image;

error:
	Mfree(image.colors);
	image.colors = 0;
	image.width = image.height = 0;
	image.numColors = 0;
	return image;
}
