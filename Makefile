voxel.prg: voxel.o palette.o colors.o height.o
	$(CC) -o voxel.prg voxel.o palette.o colors.o height.o

voxel.s: voxel.c
	$(CC) $(CFLAGS) -c -S -o voxel.s voxel.c

voxel.o: voxel.s

clean:
	rm *.s *.o *.prg

