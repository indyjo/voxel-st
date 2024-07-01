voxel.tos: voxel.o tga.o interrupt.o palette.o
	$(CC) -o $@ $+

voxel.s: voxel.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o voxel.s voxel.c

voxel.o: voxel.s

clean:
	rm -f *.s *.o *.tos

