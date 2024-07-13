assembly = voxel.o

voxel.tos: voxel.o tga.o interrupt.o joystick.o palette.o
	$(CC) -o $@ $+

%.s: %.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o $@ $<

$(assembly): %.o: %.s

clean:
	rm -f *.s *.o *.tos

