assembly = start.o voxel.o c2p.o

voxel.tos: start.o voxel.o tga.o interrupt.o joystick.o palette.o c2p.o
	$(CC) $(LDFLAGS) -nostartfiles -o $@ $+

%.s: %.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o $@ $<

$(assembly): %.o: %.s

clean:
	rm -f *.s *.o *.tos

