assembly = voxel.o

LIBCMINI_PATH ?= ~/opt/libcmini/lib

voxel.tos: voxel.o tga.o interrupt.o joystick.o palette.o
	$(CC) -nostdlib $(LIBCMINI_PATH)/crt0.o -o $@ $+ -L $(LIBCMINI_PATH) -lcmini -lgcc

voxelbig.tos: voxel.o tga.o interrupt.o joystick.o palette.o
	$(CC) $(LDFLAGS) -o $@ $+

%.s: %.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o $@ $<

$(assembly): %.o: %.s

clean:
	rm -f *.s *.o *.tos

