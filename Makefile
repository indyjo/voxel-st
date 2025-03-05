assembly = start.o voxel.o

voxel.tos: start.o voxel.o tga.o interrupt.o joystick.o palette.o
	$(CC) $(LDFLAGS) -nostartfiles -o $@ $+

%.s: %.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o $@ $<

$(assembly): %.o: %.s

clean:
	rm -f *.s *.o *.tos

