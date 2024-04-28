voxel.prg: voxel.o palette.o colors.o height.o
	$(CC) -o voxel.prg hello.o palette.o colors.o height.o

