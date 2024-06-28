| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_draw_image2
_draw_image2:
	lea (-28,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:118: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	move.l 76(%sp),%d0	| out,
	add.l #160,%d0	|,
	move.l %d0,60(%sp)	|, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:118: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L3:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.92
	add.l 80(%sp),%a6	| pixels, ivtmp.92
.L4:
| voxel.c:122: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a6),%d1	| MEM[(const unsigned char *)_174],
	move.w %d1,%a2	|, px
	move.b 1(%a6),%d0	| MEM[(const unsigned char *)_174 + 1B],
	move.w %d0,%a1	|, px
	move.b 2(%a6),%d1	| MEM[(const unsigned char *)_174 + 2B],
	move.w %d1,%a0	|, px
	move.b 3(%a6),%d7	| MEM[(const unsigned char *)_174 + 3B], px
	move.b 4(%a6),%d6	| MEM[(const unsigned char *)_174 + 4B], px
	move.b 5(%a6),%d5	| MEM[(const unsigned char *)_174 + 5B], px
	move.b 6(%a6),%d4	| MEM[(const unsigned char *)_174 + 6B], px
	move.b 7(%a6),%d3	| MEM[(const unsigned char *)_174 + 7B], px
	move.b 8(%a6),%d2	| MEM[(const unsigned char *)_174 + 8B], px
	move.b 9(%a6),49(%sp)	| MEM[(const unsigned char *)_174 + 9B], %sfp
	move.b 10(%a6),47(%sp)	| MEM[(const unsigned char *)_174 + 10B], %sfp
	move.b 11(%a6),53(%sp)	| MEM[(const unsigned char *)_174 + 11B], %sfp
	move.b 12(%a6),55(%sp)	| MEM[(const unsigned char *)_174 + 12B], %sfp
	move.b 13(%a6),57(%sp)	| MEM[(const unsigned char *)_174 + 13B], %sfp
	move.b 14(%a6),59(%sp)	| MEM[(const unsigned char *)_174 + 14B], %sfp
	move.b 15(%a6),51(%sp)	| MEM[(const unsigned char *)_174 + 15B], %sfp
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp367
	add.w %d1,%a5	| tmp367, tmp368
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp368,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp371
	add.w %d0,%a3	| tmp371, tmp372
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp372,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp375
	add.w %d0,%a5	| tmp375, tmp376
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp376,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp379
	add.w %d0,%a3	| tmp379, tmp380
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp380,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp383
	add.w %d0,%a5	| tmp383, tmp384
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp384,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp387
	add.w %d0,%a3	| tmp387, tmp388
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp388,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp391
	add.w %d0,%a5	| tmp391, tmp392
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp392,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp395
	add.w %d0,%a3	| tmp395, tmp396
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp396,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp399
	add.w %d0,%a5	| tmp399, tmp400
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp400,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp403
	add.w %d0,%a3	| tmp403, tmp404
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp404,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp407
	add.w %d0,%a5	| tmp407, tmp408
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp408,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp411
	add.w %d0,%a3	| tmp411, tmp412
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp412,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp415
	add.w %d0,%a5	| tmp415, tmp416
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp416,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp419
	add.w %d0,%a3	| tmp419, tmp420
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp420,
	or.w %d1,%d0	|,
	move.w %d0,(%a4)	|, MEM[(short unsigned int *)out_71]
| voxel.c:124: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp426
| voxel.c:124: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp430
	add.w %d1,%a5	| tmp430, tmp431
| voxel.c:124: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp431,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp435
	add.w %d0,%a5	| tmp435, tmp436
| voxel.c:124: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp436,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp440
	add.w %d1,%a5	| tmp440, tmp441
| voxel.c:124: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp441,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp445
	add.w %d0,%a5	| tmp445, tmp446
| voxel.c:124: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp450
	add.w %d1,%a5	| tmp450, tmp451
| voxel.c:124: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp451,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp455
	add.w %d0,%a5	| tmp455, tmp456
| voxel.c:124: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp456,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp460
	add.w %d1,%a5	| tmp460, tmp461
| voxel.c:124: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp461,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp465
	add.w %d0,%a5	| tmp465, tmp466
| voxel.c:124: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp470
	add.w %d1,%a5	| tmp470, tmp471
| voxel.c:124: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp471,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp475
	add.w %d0,%a5	| tmp475, tmp476
| voxel.c:124: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp476,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp480
	add.w %d1,%a5	| tmp480, tmp481
| voxel.c:124: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp481,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp485
	add.w %d0,%a5	| tmp485, tmp486
| voxel.c:124: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp486,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp490
	add.w %d1,%a3	| tmp490, tmp491
| voxel.c:124: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp491,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp495
	add.w %d0,%a5	| tmp495, tmp496
| voxel.c:124: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp496,
	or.w %d0,%d1	|,
	move.w %d1,2(%a4)	|, MEM[(short unsigned int *)out_71 + 2B]
| voxel.c:126: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp503
| voxel.c:126: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp503,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp507
	add.w %d0,%a5	| tmp507, tmp508
| voxel.c:126: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp508,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp512
	add.w %d1,%a5	| tmp512, tmp513
| voxel.c:126: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp513,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp517
	add.w %d0,%a5	| tmp517, tmp518
| voxel.c:126: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp518,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp522
	add.w %d1,%a5	| tmp522, tmp523
| voxel.c:126: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp523,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp527
	add.w %d0,%a5	| tmp527, tmp528
| voxel.c:126: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp528,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp532
	add.w %d1,%a5	| tmp532, tmp533
| voxel.c:126: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp533,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp537
	add.w %d0,%a5	| tmp537, tmp538
| voxel.c:126: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp538,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp542
	add.w %d1,%a5	| tmp542, tmp543
| voxel.c:126: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp543,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp547
	add.w %d0,%a5	| tmp547, tmp548
| voxel.c:126: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp548,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp552
	add.w %d1,%a5	| tmp552, tmp553
| voxel.c:126: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp553,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp557
	add.w %d0,%a5	| tmp557, tmp558
| voxel.c:126: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp558,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp562
	add.w %d1,%a3	| tmp562, tmp563
| voxel.c:126: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp563,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp567
	add.w %d0,%a5	| tmp567, tmp568
| voxel.c:126: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp568,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp572
	add.w %d1,%a3	| tmp572, tmp573
| voxel.c:126: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp573,
	or.w %d1,%d0	|,
	move.w %d0,4(%a4)	|, MEM[(short unsigned int *)out_71 + 4B]
| voxel.c:134: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:128: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a2	|, tmp580
| voxel.c:128: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	| tmp580,
	or.w %d0,%d1	|,
	move.w %d1,%a1	|, tmp584
	add.w %d1,%a1	| tmp584, tmp585
| voxel.c:128: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	| tmp585,
	or.w %d1,%d0	|,
	move.w %d0,%a0	|, tmp589
	add.w %d0,%a0	| tmp589, tmp590
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp593
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	| tmp590,
	or.w %d0,%d7	|, tmp594
	add.w %d7,%d7	| tmp594, tmp595
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp598
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp595, tmp599
	add.w %d6,%d6	| tmp599, tmp600
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp603
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp600, tmp604
	add.w %d5,%d5	| tmp604, tmp605
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp608
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp605, tmp609
	add.w %d4,%d4	| tmp609, tmp610
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp613
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp610, tmp614
	add.w %d3,%d3	| tmp614, tmp615
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp618
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp615, tmp619
	add.w %d2,%d2	| tmp619, tmp620
| voxel.c:128: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp623
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp620, tmp624
	add.w %d1,%d1	| tmp624, tmp625
| voxel.c:128: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp628
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp628, tmp629
	add.w %d1,%d1	| tmp629, tmp630
| voxel.c:128: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp633
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp633, tmp634
	add.w %d1,%d1	| tmp634, tmp635
| voxel.c:128: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp638
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp638, tmp639
	add.w %d1,%d1	| tmp639, tmp640
| voxel.c:128: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp643
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp643, tmp644
	add.w %d1,%d1	| tmp644, tmp645
| voxel.c:128: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp648
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp645, tmp649
	add.w %d0,%d0	| tmp649, tmp650
| voxel.c:128: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp653
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp650, tmp653
	move.w %d1,-2(%a4)	| tmp653, MEM[(short unsigned int *)out_50 + 4294967294B]
| voxel.c:119: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.92
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L4		|
| voxel.c:118: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:118: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d1	| width,
	add.l %d1,68(%sp)	|, %sfp
	move.l 88(%sp),%d0	| height,
	cmp.l 64(%sp),%d0	| %sfp,
	jne .L3		|
.L1:
| voxel.c:137: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L9:
| voxel.c:140: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.105_11]
	cmp.l %d0,%a0	| _3, out
	jne .L9		|
| voxel.c:141: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:149: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:153: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:157: }
	rts	
	.data
	.even
.LC0:
	.long	0
	.long	32
	.long	8
	.long	40
	.long	2
	.long	34
	.long	10
	.long	42
	.long	48
	.long	16
	.long	56
	.long	24
	.long	50
	.long	18
	.long	58
	.long	26
	.long	12
	.long	44
	.long	4
	.long	36
	.long	14
	.long	46
	.long	6
	.long	38
	.long	60
	.long	28
	.long	52
	.long	20
	.long	62
	.long	30
	.long	54
	.long	22
	.long	3
	.long	35
	.long	11
	.long	43
	.long	1
	.long	33
	.long	9
	.long	41
	.long	51
	.long	19
	.long	59
	.long	27
	.long	49
	.long	17
	.long	57
	.long	25
	.long	15
	.long	47
	.long	7
	.long	39
	.long	13
	.long	45
	.long	5
	.long	37
	.long	63
	.long	31
	.long	55
	.long	23
	.long	61
	.long	29
	.long	53
	.long	21
	.text
	.even
	.globl	_build_tables
_build_tables:
	lea (-404,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.244
| voxel.c:225: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:224: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:223: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp235
	lea _opacity_table,%a5	|, tmp238
.L20:
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _184
	lsr.w #7,%d0	|, _184
| voxel.c:227: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _184, _3
| voxel.c:229: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp185
| voxel.c:229: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp185,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _226
	add.w #60,%d2	|, _226
| voxel.c:229: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.244, ivtmp.233
	move.w #-17920,%a2	|, ivtmp.230
.L21:
| voxel.c:227: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.230,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:229: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _226,
	sub.w %d0,%d1	| tmp264,
	move.w %d1,(%a3)+	|, MEM[(short int *)_369]
| voxel.c:226: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.230
	cmp.w #17920,%a2	|, ivtmp.230
	jne .L21		|
| voxel.c:232: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:234: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp169
	and.l %d4,%d0	| z, tmp169
| voxel.c:234: 		if (TRIGGERS_PROGRESSION(z))
	jne .L22		|
| voxel.c:57: 	return x + x;
	add.w %d7,%d7	| step, step
.L22:
| voxel.c:237: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:238: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L79		|
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp173
	sub.l %a0,%d0	| rel_dist, tmp173
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp174
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp174,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _371 * 1]
| voxel.c:225: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:225: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.244
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
.L24:
| voxel.c:244: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_height+512,%d3	|, ivtmp.220
	move.l #_combined,%d6	|, ivtmp.222
	move.l #_colors,%d5	|, ivtmp.223
	clr.b %d4	| max_height_lsm_flag.137
	clr.b %d2	| max_height_lsm.136
.L27:
	move.l %d3,%a1	| ivtmp.220, ivtmp.207
	lea (-512,%a1),%a1	|, ivtmp.207
	move.l %d5,%a2	| ivtmp.223, ivtmp.210
	move.l %d6,%a0	| ivtmp.222, ivtmp.208
.L26:
| voxel.c:247: 			combined[y][x].height = height[y][x];
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_167], _358
| voxel.c:247: 			combined[y][x].height = height[y][x];
	move.b %d0,1(%a0)	| _358, MEM <unsigned char> [(union  *)_75 + 1B]
| voxel.c:248: 			combined[y][x].color = colors[y][x];
	move.b (%a2)+,%d1	| MEM[(unsigned char *)_315], _360
| voxel.c:249: 			if (height[y][x] > max_height)
	cmp.b %d2,%d0	| max_height_lsm.136, _358
	jls .L25		|
| voxel.c:250: 				max_height = height[y][x];
	move.b %d0,%d2	| _358, max_height_lsm.136
| voxel.c:249: 			if (height[y][x] > max_height)
	moveq #1,%d4	|, max_height_lsm_flag.137
.L25:
| voxel.c:248: 			combined[y][x].color = colors[y][x];
	move.b %d1,(%a0)	| _360, MEM <unsigned char> [(union  *)_75]
| voxel.c:246: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.208
	cmp.l %a1,%d3	| ivtmp.207, ivtmp.220
	jne .L26		|
| voxel.c:245: 	for (int y=0; y<HEIGHT; y++) {
	move.l %a1,%d3	| ivtmp.207, ivtmp.220
	add.l #512,%d3	|, ivtmp.220
	add.l #1024,%d6	|, ivtmp.222
	add.l #512,%d5	|, ivtmp.223
	cmp.l #_height+262144,%a1	|, ivtmp.207
	jne .L27		|
	tst.b %d4	| max_height_lsm_flag.137
	jeq .L28		|
	move.b %d2,_max_height	| max_height_lsm.136, max_height
.L28:
| voxel.c:254: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp197
	add.l #192,%d2	|, tmp197
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp197,
	jsr _memcpy		|
	move.l %d2,84(%sp)	| tmp197, %sfp
	lea _pdata_table,%a5	|, tmp236
	move.l %a5,120(%sp)	| tmp236, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:264: 	for (int y = 0; y < 8; y++) {
	sub.l %a6,%a6	| y
.L29:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 72(%sp),%a0	| %sfp,
	move.l (%a0),76(%sp)	| MEM[(int *)_110], %sfp
	move.l 4(%a0),80(%sp)	| MEM[(int *)_110 + 4B], %sfp
	move.l 8(%a0),84(%sp)	| MEM[(int *)_110 + 8B], %sfp
	move.l 12(%a0),88(%sp)	| MEM[(int *)_110 + 12B], %sfp
	move.l 16(%a0),92(%sp)	| MEM[(int *)_110 + 16B], %sfp
	move.l 20(%a0),96(%sp)	| MEM[(int *)_110 + 20B], %sfp
	move.l 24(%a0),100(%sp)	| MEM[(int *)_110 + 24B], %sfp
	move.l 28(%a0),104(%sp)	| MEM[(int *)_110 + 28B], %sfp
	move.l 108(%sp),68(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,52(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.186
.L53:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 76(%sp),%d1	| %sfp,
	sgt %d6		| tmp229
	ext.w %d6	| tmp230
	ext.l %d6	| tmp228
	neg.l %d6	| mask
	cmp.l 80(%sp),%d1	| %sfp,
	jle .L45		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #2,%d0	|,
	or.l %d0,%d6	|, mask
.L45:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 84(%sp),%d1	| %sfp,
	jle .L46		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d6	|, mask
.L46:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L47		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #8,%d0	|,
	or.l %d0,%d6	|, mask
.L47:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 92(%sp),%d1	| %sfp,
	jle .L48		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d6	|, mask
.L48:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 96(%sp),%d1	| %sfp,
	jle .L49		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #32,%d0	|,
	or.l %d0,%d6	|, mask
.L49:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 100(%sp),%d1	| %sfp,
	jle .L50		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d6	|, mask
.L50:
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L51		|
| voxel.c:270: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #127,%d0	|,
	not.b %d0	|
	or.l %d0,%d6	|, mask
.L51:
| voxel.c:274: 					int bits = mask & evn;
	move.l %d6,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:277: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:278: 						| ((color1&2) ? bits << 16 : 0)
	move.l 48(%sp),%d0	| %sfp,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,60(%sp)	|, %sfp
| voxel.c:279: 						| ((color1&4) ? bits <<  8 : 0)
	move.l 48(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,64(%sp)	|, %sfp
| voxel.c:281: 					bits = mask & odd;
	and.l #1431655765,%d6	|, bits
| voxel.c:283: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d6,%d0	| bits,
	lsl.w #8,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a2	|, iftmp.18_162
| voxel.c:284: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d6,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a1	|, iftmp.19_163
| voxel.c:285: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d6,%d7	| bits, iftmp.20_164
	lsl.l #8,%d7	|, iftmp.20_164
	move.l 68(%sp),%a3	| %sfp, ivtmp.185
| voxel.c:272: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
	move.l %d7,%d0	| iftmp.20_164, iftmp.20_164
	move.l %a2,%d7	| iftmp.18_162, iftmp.18_162
	move.l %d0,%a2	| iftmp.20_164, iftmp.20_164
.L43:
	btst #1,%d4	|, color1
	jeq .L30		|
	move.l 60(%sp),%d5	| %sfp, iftmp.15_158
.L31:
	btst #0,%d4	|, color1
	jeq .L32		|
	move.l 56(%sp),%d0	| %sfp, iftmp.14_157
.L33:
	or.l %d0,%d5	| iftmp.14_157, tmp207
	btst #2,%d4	|, color1
	jeq .L34		|
	move.l 64(%sp),%d0	| %sfp, iftmp.16_159
.L35:
	or.l %d0,%d5	| iftmp.16_159, tmp211
	btst #3,%d4	|, color1
	jeq .L36		|
	move.l 48(%sp),%d0	| %sfp, bits
	or.l %d0,%d5	| bits, _286
	move.l %d4,%d2	| color1, ivtmp.178
	neg.l %d2	| ivtmp.178
| voxel.c:280: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a3,%a0	| ivtmp.185, ivtmp.179
	move.l %d6,44(%sp)	| bits, %sfp
.L42:
	move.l %d4,%d3	| color1, _377
	add.l %d2,%d3	| ivtmp.178, _377
| voxel.c:275: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp215
	and.l %d2,%d0	| ivtmp.178, tmp215
| voxel.c:275: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp216
| voxel.c:275: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:283: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _377
	jeq .L57		|
	move.l %d7,%d1	| iftmp.18_162, prephitmp_70
	or.l %d5,%d1	| _286, prephitmp_70
.L38:
| voxel.c:284: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _377
	jeq .L39		|
	move.l %a1,%d6	| iftmp.19_163,
	or.l %d6,%d1	|, prephitmp_70
.L39:
| voxel.c:285: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _377
	jeq .L40		|
	move.l %a2,%d6	| iftmp.20_164,
	or.l %d6,%d1	|, prephitmp_70
.L40:
| voxel.c:286: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _377
	jeq .L41		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_70
.L41:
| voxel.c:282: 					pdata_table[index][opacity][y] |= 0
	lsl.l #3,%d0	|, tmp222
	add.l %a4,%d0	| ivtmp.186, tmp223
	lsl.l #3,%d0	|, tmp224
	add.l %a6,%d0	| y, tmp225
	add.l %d0,%d0	| tmp225, tmp226
	add.l %d0,%d0	| tmp226, tmp227
	move.l %d1,(%a5,%d0.l)	| prephitmp_70, pdata_table[index_170][opacity_217][y_216]
| voxel.c:288: 					pdata_table[index2][opacity][y] = pdata_table[index][opacity][y];
	move.l %d1,(%a0)	| prephitmp_70, MEM[(unsigned int *)_231]
| voxel.c:273: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.178
	lea (-3840,%a0),%a0	|, ivtmp.179
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.178,
	jne .L42		|
| voxel.c:272: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d6	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:272: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.185
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L43		|
| voxel.c:265: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.186
	addq.l #8,52(%sp)	|, %sfp
	moveq #32,%d6	|,
	add.l %d6,68(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a4,%d0	| ivtmp.186,
	jne .L53		|
| voxel.c:264: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a6	|, y
| voxel.c:264: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d6	|,
	add.l %d6,72(%sp)	|, %sfp
	addq.l #4,108(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a6,%d0	| y,
	jne .L29		|
| voxel.c:297: 	short top_envelope[20] = {
	move.l #1048590,112(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,116(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,120(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,124(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,128(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,132(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,136(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655371,140(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #786444,144(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #786444,148(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:303: 	short bottom_envelope[20] = {
	move.l #458758,152(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #327684,156(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #196610,160(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #65537,164(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	clr.l 168(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	clr.l 172(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	clr.l 176(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	clr.l 180(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	clr.l 184(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	clr.l 188(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (112,%sp),%a0	|,, ivtmp.160
	lea _view_min+80,%a6	|, ivtmp.163
	lea _view_min,%a1	|, tmp237
	move.l %a1,%a5	| tmp237, ivtmp.165
	lea (152,%sp),%a4	|,, ivtmp.167
	lea _view_max+80,%a3	|, ivtmp.170
	lea _view_max,%a2	|, ivtmp.172
	moveq #40,%d1	|, _281
	add.l %a0,%d1	| ivtmp.160, _281
.L54:
| voxel.c:311: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_201], _53
| voxel.c:311: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _53, MEM[(short int *)_275]
| voxel.c:311: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _53, MEM[(short int *)_276]
| voxel.c:312: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _58
	sub.w (%a4)+,%d0	| MEM[(short int *)_277], _58
| voxel.c:312: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _58, MEM[(short int *)_327]
| voxel.c:312: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _58, MEM[(short int *)_279]
| voxel.c:310: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.160, _281
	jne .L54		|
	lea _horizon,%a0	|, ivtmp.153
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L55:
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp233
	asr.l #3,%d0	|, tmp233
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp233, tmp234
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_59],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_11]
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:314: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L55		|
| voxel.c:315: }
	movem.l (%sp)+,#31996	|,
	lea (404,%sp),%sp	|,
	rts	
.L79:
| voxel.c:238: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp173
	sub.l %a0,%d0	| rel_dist, tmp173
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp174
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp174,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:240: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _371 * 1]
| voxel.c:225: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:225: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.244
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
	jra .L24		|
.L57:
| voxel.c:283: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _286, prephitmp_70
	jra .L38		|
.L36:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _286
	move.l %d4,%d2	| color1, ivtmp.178
	neg.l %d2	| ivtmp.178
| voxel.c:280: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a3,%a0	| ivtmp.185, ivtmp.179
	move.l %d6,44(%sp)	| bits, %sfp
	jra .L42		|
.L34:
	moveq #0,%d0	| iftmp.16_159
	jra .L35		|
.L32:
	moveq #0,%d0	| iftmp.14_157
	jra .L33		|
.L30:
	moveq #0,%d5	| iftmp.15_158
	jra .L31		|
	.even
	.globl	_render
_render:
	subq.l #8,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 56(%sp),%a0	| pos, pos
	move.l 68(%sp),%d1	| x, x
	move.l 76(%sp),%d0	| y_max, y_max
	move.l 80(%sp),48(%sp)	| y_min, %sfp
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_80(D)->dirx, _5
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d1,%d2	|, _9
	add.w #-160,%d2	|, _9
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d4	| pos_80(D)->diry, _11
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d5	| _9,
	muls.w %d3,%d5	| _5, tmp159
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp160
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d4,%d5	| _11, tmp161
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp163
	clr.w %d5	| tmp163
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d4,%d2	| _11, tmp164
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp165
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp165, tmp166
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d5	| tmp166, tmp168
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_80(D)->y
	move.w 2(%a0),%d2	| pos_80(D)->y, pos_80(D)->y
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp170
	clr.w %d2	| tmp170
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_80(D)->x, tmp172
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp173
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp174
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp175
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp176
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp177
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp178
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp179
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp180
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d3	|, tmp181
	asr.w #4,%d3	|, tmp181
	move.w %d3,%a0	| tmp181, tmp182
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp182, tmp183
	add.l %a0,%a0	| tmp183, tmp184
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|,
	muls.w #80,%d3	|, tmp185
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp185, tmp187
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp187, tmp187, tmp188
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp190
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp191
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d1.l),%a0	| tmp188, tmp191, tmp192
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:389: 	y_offset -= y_min;
	move.w 74(%sp),%a4	| y_offset, _28
	sub.w 50(%sp),%a4	| %sfp, _28
| voxel.c:391: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:370: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:395: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp195
| voxel.c:395: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:401: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L80		|
	lea _opacity_table+4,%a3	|, ivtmp.279
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a6	|, max_height
	add.l %a6,%a6	| max_height, _72
| voxel.c:392: 	unsigned short z = STEPS_MIN;
	moveq #4,%d6	|, z
| voxel.c:386: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
| voxel.c:409: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	lea _combined,%a5	|, tmp242
.L82:
| voxel.c:403: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d1	|, y
	jgt .L83		|
| voxel.c:403: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w (%a1,%a6.l),%d1	| MEM[(short int *)y_table_shifted_177 + _72 * 1], y
	jle .L104		|
.L83:
| voxel.c:332: 	asm (
#APP
| 332 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:407: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d0	| index_mask, index
| voxel.c:409: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d0.l),%d4	| _36->both, _37
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| _37
	move.b %d4,%d0	| _37, _37
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _37, tmp204
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a4,%d3	| _28, sample_y
	add.w (%a1,%d0.l),%d3	| (*y_table_shifted_177)[_38], sample_y
| voxel.c:464: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:411: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L84		|
| voxel.c:413: 			if (z < FOG_START) {
	cmp.w #39,%d6	|, z
	jhi .L85		|
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp205
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp206
| voxel.c:357: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp207
| voxel.c:357: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a2	|,
	move.l (%a2,%d4.l),%d4	| *_136, _137
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _20
	jlt .L105		|
.L86:
| voxel.c:421: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _20, y
	jlt .L87		|
	sub.w %d3,%d1	| _20, tmp209
	and.l #65535,%d1	|, tmp210
	addq.l #1,%d1	|, tmp211
	move.l %d1,%d0	| tmp211, tmp213
	add.l %d1,%d0	| tmp211, tmp213
	add.l %d0,%d0	| tmp213, tmp214
	add.l %d0,%d1	| tmp214, tmp215
	lsl.l #5,%d1	|, tmp216
	move.l %a0,%d0	| pBlock, _61
	sub.l %d1,%d0	| tmp216, _61
.L88:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _137, pBlock
| 0 "" 2
| voxel.c:423: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:421: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _61, pBlock
	jne .L88		|
	move.w %d3,%d0	| _20, prephitmp_191
	subq.w #1,%d0	|, prephitmp_191
	move.w %d0,%d1	| prephitmp_191, y
.L81:
.L87:
| voxel.c:450: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:451: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp234
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:454: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp235
	and.w #15,%d3	|, tmp235
	jne .L92		|
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L91:
| voxel.c:397: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d6	|, z
	jeq .L101		|
.L92:
| voxel.c:401: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.279
	cmp.w #-1,%d1	|, y
	jne .L82		|
.L101:
| voxel.c:464: 	return y + y_min;
	add.w 50(%sp),%d0	| %sfp, <retval>
.L80:
| voxel.c:465: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L105:
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _20
	jra .L86		|
.L85:
	move.w %d3,46(%sp)	| sample_y, %sfp
	jmi .L106		|
.L89:
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d3	|
	move.b (%a3),%d3	| MEM[(unsigned char *)_70],
	move.w %d3,%a2	|, opacity_preshifted
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp219
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d4,%a2	| tmp219, offset
| voxel.c:362: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d4	| _141
	move.w %a2,%d4	| offset, _141
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w 46(%sp),%d1	| %sfp, y
	jlt .L84		|
	move.l %d4,%a2	| _141, tmp237
	add.l #_pdata_table,%a2	|, tmp237
	move.w 46(%sp),%d3	| %sfp, _205
.L90:
| voxel.c:440: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp222
	and.l %d1,%d0	| y, tmp222
	add.l %d0,%d0	| tmp222, tmp223
	add.l %d0,%d0	| tmp223, tmp224
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d0.l),%d0	| *_47, *_47
#APP
| 324 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_47, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:443: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _205
	jle .L90		|
.L84:
| voxel.c:450: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:451: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp229
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:454: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp230
	and.w #15,%d3	|, tmp230
	jne .L91		|
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
	jra .L91		|
.L106:
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	clr.w 46(%sp)	| %sfp
	jra .L89		|
.L104:
| voxel.c:464: 	return y + y_min;
	move.w %d1,%d0	| y, <retval>
	add.w 50(%sp),%d0	| %sfp, <retval>
| voxel.c:465: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:469: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:469: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L107		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L109:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:472: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L109		|
.L107:
| voxel.c:474: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	addq.w #1,%a0	|, tmp62
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:469: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d4	| pdata_table[0][7][0], movep_data
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L114		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L115:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:472: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L115		|
.L114:
| voxel.c:479: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:480: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC1:
	.ascii "Computing tables\0"
.LC2:
	.ascii "Loading cockpit.tga\0"
.LC3:
	.ascii "cockpit.tga\0"
.LC4:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-108,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:494: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:496: 	Super(0L);
	moveq #0,%d0	| tmp318
#APP
| 496 "voxel.c" 1
	movl	%d0,%sp@-	| tmp318
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:498: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:500: 	lineaa();
	jsr _lineaa		|
| voxel.c:502: 	set_palette();
	jsr _set_palette		|
| voxel.c:503: 	unsigned short *screen = Physbase();
#APP
| 503 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,74(%sp)	| tmp559, %sfp
| voxel.c:504: 	draw_image2(screen, (unsigned char *)colors, 512, 200);
	pea 200.w		|
	pea 512.w		|
	pea _colors		|
	move.l %d0,-(%sp)	| tmp559,
	lea _draw_image2,%a2	|, tmp541
	jsr (%a2)		| tmp541
| voxel.c:506: 	printf("Computing tables\n");
	pea .LC1		|
	lea _puts,%a3	|, tmp323
	jsr (%a3)		| tmp323
| voxel.c:507: 	build_tables();
	jsr _build_tables		|
| voxel.c:508: 	printf("Loading cockpit.tga\n");
	pea .LC2		|
	jsr (%a3)		| tmp323
| voxel.c:509: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC3		|
	lea (166,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 102(%sp),%a0	| %sfp, ivtmp.410
	move.l %a0,%d0	| ivtmp.410, _850
	add.l #32000,%d0	|, _850
	lea (28,%sp),%sp	|,
.L120:
| voxel.c:140: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.319_926]
	cmp.l %d0,%a0	| _850, ivtmp.410
	jne .L120		|
| voxel.c:469: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+480,%d0	| pdata_table[1][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.401
	lea _view_max,%a3	|, ivtmp.404
	clr.w %d2	| ivtmp.402
.L125:
| voxel.c:513: 		fill_column(screen, i*8, 0, view_min[i], 1);
	move.w (%a1)+,%d1	| MEM[(short int *)_858], _1
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d4	| ivtmp.402, tmp329
	asr.w #4,%d4	|, tmp329
	ext.l %d4	| tmp330
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d4	| tmp330, tmp331
	add.l %d4,%d4	| tmp331, _172
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%d3	|, tmp334
	lsr.l #3,%d3	|, tmp334
	moveq #1,%d5	|,
	and.l %d5,%d3	|, _177
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%a0	| _172, tmp335
	add.l %d4,%a0	| _172, tmp335
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| _177, tmp336
	add.l 74(%sp),%a0	| %sfp, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _1
	jle .L121		|
	mulu.w #160,%d1	|, tmp337
	add.l %a0,%d1	| pBlock, _129
.L122:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:472: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _129, pBlock
	jne .L122		|
.L121:
| voxel.c:514: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w (%a3)+,%a0	| MEM[(short int *)_855], _5
| voxel.c:514: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w #199,%d1	|, _7
	sub.w %a0,%d1	| _5, _7
| voxel.c:514: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	addq.w #1,%a0	|, tmp339
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d5	| tmp339,
	muls.w #80,%d5	|,
	move.l %d5,%a0	|, tmp340
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _172, tmp342
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp342, tmp343
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d3	| tmp343, tmp344
	move.l 74(%sp),%a0	| %sfp, pBlock
	add.l %d3,%a0	| tmp344, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _7
	jle .L123		|
	mulu.w #160,%d1	|, tmp345
	add.l %a0,%d1	| pBlock, _920
.L124:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:472: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _920
	jne .L124		|
.L123:
| voxel.c:512: 	for (int i=0; i<40; i++) {
	addq.w #8,%d2	|, ivtmp.402
	cmp.l #_view_min+80,%a1	|, ivtmp.401
	jne .L125		|
| voxel.c:517: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:519: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y);
	pea 80.w		|
	move.w 142(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l 150(%sp),-(%sp)	| cockpit.pixels,
	move.l 86(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr (%a2)		| tmp541
| voxel.c:521: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,150(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:108: 	return *hw_palette;
	move.l _hw_palette,146(%sp)	| hw_palette, %sfp
| voxel.c:535: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,138(%sp)	| __aline, %sfp
| voxel.c:469: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,110(%sp)	| pdata_table[0][7][0], %sfp
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.w _pos+2,126(%sp)	| pos.y, %sfp
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	lea _pos,%a5	|,
	move.w (%a5),116(%sp)	| pos.x, %sfp
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,88(%sp)	| pos.dirx, %sfp
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,86(%sp)	| pos.diry, %sfp
| voxel.c:546: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,122(%sp)	| pos.speed, %sfp
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a5	|, max_height
	add.l %a5,%a5	| max_height, max_height
	move.l %a5,64(%sp)	| max_height, %sfp
	lea (16,%sp),%sp	|,
	clr.w 112(%sp)	| %sfp
| voxel.c:522: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,102(%sp)	|, %sfp
	lea _combined,%a4	|, tmp534
	moveq #0,%d4	| val.9_187
	move.w 100(%sp),%d4	| %sfp, val.9_187
.L148:
| voxel.c:108: 	return *hw_palette;
	move.l 130(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| *hw_palette.49_191, _192
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 110(%sp),%d0	| %sfp, tmp363
	lsr.w #7,%d0	|, tmp363
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d0	|, tmp364
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 100(%sp),%d1	| %sfp, tmp365
	lsr.w #7,%d1	|, tmp365
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d1	|, tmp366
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp367
	add.l %d1,%d0	| tmp366, tmp368
	add.l %d0,%d0	| tmp368, tmp369
| voxel.c:528: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.b 1(%a4,%d0.l),%d0	| combined[_16][_18].D.2679.height, height_under_player
	and.l #255,%d0	|, height_under_player
| voxel.c:529: 		int player_altitude = height_under_player + 20;
	moveq #20,%d5	|,
	add.l %d5,%d0	|, player_altitude
| voxel.c:531: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 102(%sp),%d1	| %sfp, tmp374
	addq.l #2,%d1	|, tmp374
| voxel.c:531: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp374
	jle .L126		|
	moveq #0,%d1	|, tmp374
	not.b %d1	| tmp374
.L126:
	cmp.l %d0,%d1	| player_altitude, tmp374
	jge .L127		|
	move.l %d1,%d0	| tmp374, player_altitude
.L127:
| voxel.c:532: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 102(%sp),%d1	| %sfp, tmp375
	subq.l #2,%d1	|, tmp375
| voxel.c:532: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,102(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp375
	jle .L128		|
	move.l %d1,102(%sp)	| tmp375, %sfp
.L128:
| voxel.c:536: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 112(%sp),%d0	| %sfp, _25
	and.w #8,%d0	|, _25
| voxel.c:536: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _25
	move.w %d0,46(%sp)	| _25, %sfp
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 122(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.43_22 + 4294966696B],
	move.l %a0,114(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp376
	add.l %a0,%d0	|, tmp376
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp376
	move.l %d0,78(%sp)	| tmp376, %sfp
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 122(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.43_22 + 4294966694B],
	move.l %a1,118(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp377
	add.l #-160,%d0	|, tmp377
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _31
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 110(%sp),%d1	| %sfp,
	swap %d1	| tmp379
	clr.w %d1	| tmp379
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.9_187, tmp381
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp381
	move.l %d1,82(%sp)	| tmp381, %sfp
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 70(%sp),%a5	| %sfp,
	move.l %a5,126(%sp)	|, %sfp
| voxel.c:370: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 104(%sp),%a0	| %sfp, ytable_offset
| voxel.c:395: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp384
| voxel.c:395: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, tmp384
	move.l %a0,90(%sp)	| tmp384, %sfp
	move.l %d0,%d1	| _31,
	lsl.l #4,%d1	|,
	move.l %d1,86(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _31,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp560, %sfp
	add.l %d2,%d2	| x, tmp391
	add.l #_horizon,%d2	|, tmp391
	move.l %d2,52(%sp)	| tmp391, %sfp
.L145:
| voxel.c:542: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 46(%sp),%d0	| %sfp, tmp392
	lsr.w #3,%d0	|, tmp392
	and.l #65535,%d0	|, _37
| voxel.c:542: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _37, tmp394
	lea _view_max,%a1	|,
	move.w (%a1,%d0.l),%d3	| view_max[_37], _948
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 46(%sp),%d1	| %sfp, _277
	add.w #-160,%d1	|, _277
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 72(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _277, tmp395
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp396
| voxel.c:374: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 70(%sp),%d4	| %sfp, tmp397
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp399
	clr.w %d4	| tmp399
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 70(%sp),%d1	| %sfp, tmp400
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp401
| voxel.c:375: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 72(%sp),%d2	| %sfp, tmp402
	sub.w %d1,%d2	| tmp401, tmp402
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d4	| tmp402, tmp404
| voxel.c:160: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	move.l 82(%sp),%d2	| %sfp, tmp405
	add.l %d4,%d2	| delta_vu, tmp405
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp406
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp407
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp408
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp409
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp410
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp411
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp, tmp412
	asr.w #4,%d1	|, tmp412
	ext.l %d1	| tmp413
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp413, tmp414
	add.l %d1,%d1	| tmp414, tmp414
	move.l %d1,62(%sp)	| tmp414, %sfp
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp417
	moveq #1,%d5	|,
	and.l %d1,%d5	| tmp417,
	move.l %d5,66(%sp)	|, %sfp
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	| _948,
	muls.w #80,%d1	|, tmp418
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d1	| %sfp, tmp420
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp420, tmp421
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d1	|, tmp422
	move.l 74(%sp),%a2	| %sfp, pBlock
	add.l %d1,%a2	| tmp422, pBlock
| voxel.c:389: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),56(%sp)	| view_min[_37], %sfp
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:538: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 78(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp561, y_offset
| voxel.c:389: 	y_offset -= y_min;
	sub.w 56(%sp),%a6	| %sfp, _316
| voxel.c:391: 	short y = y_max - y_min;
	move.w %d3,%a0	| _948, _944
	move.w %d3,%d0	| _948, y
	sub.w 56(%sp),%d0	| %sfp, y
| voxel.c:401: 		if (y < 0) goto done;
	jmi .L129		|
	lea _opacity_table+4,%a3	|, ivtmp.360
| voxel.c:395: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.l 90(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:392: 	unsigned short z = STEPS_MIN;
	moveq #4,%d5	|, z
| voxel.c:386: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L131:
| voxel.c:403: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d0	|, y
	jgt .L132		|
| voxel.c:403: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	move.l 48(%sp),%a5	| %sfp,
	cmp.w (%a1,%a5.l),%d0	| MEM[(short int *)y_table_shifted_416 + _886 * 1], y
	jle .L171		|
.L132:
| voxel.c:332: 	asm (
#APP
| 332 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d3, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:407: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:409: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a4,%d1.l),%d7	| _333->both, _334
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| _334
	move.b %d7,%d1	| _334, _334
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| _334, tmp436
| voxel.c:410: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a6,%d3	| _316, sample_y
	add.w (%a1,%d1.l),%d3	| (*y_table_shifted_416)[_336], sample_y
| voxel.c:464: 	return y + y_min;
	move.w %d0,%a0	| y, prephitmp_939
| voxel.c:411: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L133		|
| voxel.c:413: 			if (z < FOG_START) {
	cmp.w #39,%d5	|, z
	jhi .L134		|
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp437
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp437, tmp438
	add.w #224,%d1	|, tmp438
| voxel.c:357: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp439
| voxel.c:357: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|,
	move.l (%a5,%d1.l),%d1	| *_345, _346
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _347
	jlt .L172		|
.L135:
| voxel.c:421: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _347, y
	jlt .L136		|
	sub.w %d3,%d0	| _347, tmp441
	and.l #65535,%d0	|, tmp442
	addq.l #1,%d0	|, tmp443
	move.l %d0,%a0	| tmp443, tmp445
	add.l %d0,%a0	| tmp443, tmp445
	add.l %a0,%a0	| tmp445, tmp446
	move.l %a0,%d7	| tmp446, tmp447
	add.l %d0,%d7	| tmp443, tmp447
	lsl.l #5,%d7	|, tmp448
	move.l %a2,%d0	| pBlock, _876
	sub.l %d7,%d0	| tmp448, _876
.L137:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _346, pBlock
| 0 "" 2
| voxel.c:423: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:421: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _876
	jne .L137		|
	move.w %d3,%a0	| _347, prephitmp_939
	subq.w #1,%a0	|, prephitmp_939
	move.w %a0,%d0	| prephitmp_939, y
.L136:
| voxel.c:450: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:451: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp532
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:454: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp533
	and.w #15,%d1	|, tmp533
	jne .L142		|
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp463
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp464
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L141:
| voxel.c:397: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d5	|, z
	jeq .L168		|
.L142:
| voxel.c:401: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.360
	cmp.w #-1,%d0	|, y
	jne .L131		|
.L168:
| voxel.c:464: 	return y + y_min;
	add.w 56(%sp),%a0	| %sfp, _944
	move.w %a0,%d3	| _944, _948
.L129:
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.l 52(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_905], _231
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	sub.w %d0,%a0	| _231, _232
| voxel.c:478: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	addq.w #1,%d0	|, tmp465
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp466
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d0	| %sfp, tmp468
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp468, tmp469
| voxel.c:319: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d0	| %sfp, tmp470
	move.l 74(%sp),%a1	| %sfp, pBlock
	add.l %d0,%a1	| tmp470, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _232,
	jge .L143		|
	move.w %a0,%d1	| _232,
	mulu.w #160,%d1	|,
	lea (%a1,%d1.l),%a0	| pBlock, tmp471, _869
	move.l 94(%sp),%d0	| %sfp, movep_data
.L144:
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 324 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:472: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:470: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%a0	| pBlock, _869
	jne .L144		|
.L143:
| voxel.c:479: 	horizon[x] = y;
	move.l 52(%sp),%a0	| %sfp,
	move.w %d3,(%a0)	| _948, MEM[(short int *)_905]
| voxel.c:536: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:536: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 86(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,52(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L145		|
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 106(%sp),%d0	| %sfp,
	muls.w 72(%sp),%d0	| %sfp, tmp473
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp474
| voxel.c:546: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,100(%sp)	| tmp474, %sfp
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 106(%sp),%d0	| %sfp,
	muls.w 70(%sp),%d0	| %sfp, tmp475
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp476
| voxel.c:547: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 110(%sp),%d0	| %sfp, _58
| voxel.c:546: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.9_187
	move.w 100(%sp),%d4	| %sfp, val.9_187
	move.w 100(%sp),%d1	| %sfp,
	swap %d1	| _58
	clr.w %d1	| _58
	move.w %d0,%d1	| _58, _58
| voxel.c:547: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,110(%sp)	| _58, %sfp
| voxel.c:549: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp482
	sub.l 114(%sp),%d0	| %sfp, tmp482
| voxel.c:549: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp483
| voxel.c:549: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 106(%sp),%d0	| %sfp, _65
| voxel.c:550: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _65, tmp484
	asr.w #3,%d2	|, tmp484
| voxel.c:550: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _65, tmp485
	asr.w #4,%d3	|, tmp485
| voxel.c:550: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d2	| tmp485, tmp486
| voxel.c:550: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, tmp487
| voxel.c:551: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _65
	jle .L146		|
| voxel.c:551: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| tmp487, _65
	move.w %d0,106(%sp)	| _65, %sfp
| voxel.c:546: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _58, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:551: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 106(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:553: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp490
	not.b %d2	| tmp490
	sub.l 118(%sp),%d2	| %sfp, tmp490
| voxel.c:553: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _81
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 126(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _81,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp493
| voxel.c:554: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 72(%sp),%d3	| %sfp, _85
	add.w %d0,%d3	| tmp493, _85
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _81,
	move.w %d3,%a1	| _85,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp497
| voxel.c:555: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d1	| %sfp, _89
	sub.w %d0,%d1	| tmp497, _89
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _85,
	muls.w %d3,%d0	| _85, tmp498
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp499
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _89,
	muls.w %d1,%d2	| _89, tmp501
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp502
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp502, tmp503
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp505
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp506
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp506, factor
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp507
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp508
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,72(%sp)	| tmp508, %sfp
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _89, tmp509
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp510
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,70(%sp)	| tmp510, %sfp
| voxel.c:562: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _202
	clr.w %d3	| _202
	move.w %d0,%d3	| tmp510, _202
	move.l %d3,_pos+6	| _202, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:524: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,112(%sp)	|, %sfp
	cmp.w #6400,112(%sp)	|, %sfp
	jne .L148		|
.L174:
| voxel.c:569: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:570: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 134(%sp),%a0	| %sfp, tmp518
| voxel.c:570: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp518, tmp520
	add.l %a0,%d0	| tmp518, tmp520
	add.l %d0,%d0	| tmp520, tmp521
| voxel.c:571: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:572: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp564,
	pea .LC4		|
	jsr _printf		|
| voxel.c:573: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.51_147
	move.l 4(%a0),%d0	| stdin.51_147->__bufp, _145
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.51_147->__get_limit, _145
	jcc .L149		|
	addq.l #1,%d0	|, _145
	move.l %d0,4(%a0)	| _145, stdin.51_147->__bufp
| voxel.c:577: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (108,%sp),%sp	|,
	rts	
.L172:
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _347
	jra .L135		|
.L171:
| voxel.c:464: 	return y + y_min;
	move.w 56(%sp),%a0	| %sfp, _944
	add.w %d0,%a0	| y, _944
	move.w %a0,%d3	| _944, _948
	jra .L129		|
.L134:
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _976
	jlt .L173		|
.L139:
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a3),%d1	| MEM[(unsigned char *)_884], opacity_preshifted
| voxel.c:356: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _334
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%d1	| tmp451, offset
| voxel.c:362: 	return (unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _359
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _976
	jgt .L133		|
	move.l %d1,%a5	| _359, tmp536
	add.l #_pdata_table,%a5	|, tmp536
.L140:
| voxel.c:440: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp454
	and.l %d0,%d1	| y, tmp454
	add.l %d1,%d1	| tmp454, tmp455
	add.l %d1,%d1	| tmp455, tmp456
| voxel.c:324: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a5,%d1.l),%d1	| *_366, *_366
#APP
| 324 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_366, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:443: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a0	| y, prephitmp_939
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _976
	jle .L140		|
.L133:
| voxel.c:450: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:451: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp461
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:454: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp462
	and.w #15,%d1	|, tmp462
	jne .L141		|
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp463
| voxel.c:164: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp464
| voxel.c:458: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
	jra .L141		|
.L173:
| voxel.c:420: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _976
	jra .L139		|
.L146:
| voxel.c:552: 		else pos.speed += drag;
	add.w %d2,%d0	| tmp487, _65
	move.w %d0,106(%sp)	| _65, %sfp
| voxel.c:546: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _58, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:551: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 106(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:553: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp490
	not.b %d2	| tmp490
	sub.l 118(%sp),%d2	| %sfp, tmp490
| voxel.c:553: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _81
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 126(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _81,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp493
| voxel.c:554: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 72(%sp),%d3	| %sfp, _85
	add.w %d0,%d3	| tmp493, _85
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _81,
	move.w %d3,%a1	| _85,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp497
| voxel.c:555: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d1	| %sfp, _89
	sub.w %d0,%d1	| tmp497, _89
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _85,
	muls.w %d3,%d0	| _85, tmp498
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp499
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _89,
	muls.w %d1,%d2	| _89, tmp501
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp502
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp502, tmp503
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp505
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp506
| voxel.c:561: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp506, factor
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp507
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp508
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,72(%sp)	| tmp508, %sfp
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _89, tmp509
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp510
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,70(%sp)	| tmp510, %sfp
| voxel.c:562: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _202
	clr.w %d3	| _202
	move.w %d0,%d3	| tmp510, _202
	move.l %d3,_pos+6	| _202, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:524: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,112(%sp)	|, %sfp
	cmp.w #6400,112(%sp)	|, %sfp
	jne .L148		|
	jra .L174		|
.L149:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.51_147,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:577: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (108,%sp),%sp	|,
	rts	
	.globl	_pos
	.data
	.even
_pos:
| x:
	.word	18560
| y:
	.word	-22016
| z:
	.word	12800
| dirx:
	.word	-49
| diry:
	.word	-118
| speed:
	.word	128
	.globl	_hw_palette
	.even
_hw_palette:
	.long	16745024
	.globl	_view_max
	.bss
	.even
_view_max:
	.skip 80
	.globl	_view_min
	.even
_view_min:
	.skip 80
	.globl	_horizon
	.even
_horizon:
	.skip 640
	.globl	_opacity_table
_opacity_table:
	.skip 64
	.globl	_pdata_table
	.even
_pdata_table:
	.skip 65536
	.globl	_y_table
	.even
_y_table:
	.skip 65536
	.globl	_max_height
_max_height:
	.skip 1
	.globl	_combined
	.even
_combined:
	.skip 524288
