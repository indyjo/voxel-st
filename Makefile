voxel.prg: voxel.o palette.o colors.o height.o tga.o cppal.o interrupt.o
	$(CC) -o voxel.prg voxel.o palette.o colors.o height.o tga.o cppal.o interrupt.o

voxel.s: voxel.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o voxel.s voxel.c

interrupt.s: interrupt.c
	$(CC) $(CFLAGS) -c -S -fverbose-asm -o interrupt.s interrupt.c

voxel.o: voxel.s

interrupt.o: interrupt.s

clean:
	rm -f *.s *.o *.prg

