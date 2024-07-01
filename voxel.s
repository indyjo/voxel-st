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
	move.l 76(%sp),%a1	| out, out
	move.b 95(%sp),%d0	| dither, dither
| voxel.c:116: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	tst.b %d0	| dither
	jne .L19		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:116: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.161
	add.l 80(%sp),%a6	| pixels, ivtmp.161
.L5:
| voxel.c:120: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a6),%d0	| MEM[(const unsigned char *)_74],
	move.w %d0,%a2	|, px
	move.b 1(%a6),%d1	| MEM[(const unsigned char *)_74 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a6),%d0	| MEM[(const unsigned char *)_74 + 2B],
	move.w %d0,%a0	|, px
	move.b 3(%a6),%d7	| MEM[(const unsigned char *)_74 + 3B], px
	move.b 4(%a6),%d6	| MEM[(const unsigned char *)_74 + 4B], px
	move.b 5(%a6),%d5	| MEM[(const unsigned char *)_74 + 5B], px
	move.b 6(%a6),%d4	| MEM[(const unsigned char *)_74 + 6B], px
	move.b 7(%a6),%d3	| MEM[(const unsigned char *)_74 + 7B], px
	move.b 8(%a6),%d2	| MEM[(const unsigned char *)_74 + 8B], px
	move.b 9(%a6),49(%sp)	| MEM[(const unsigned char *)_74 + 9B], %sfp
	move.b 10(%a6),47(%sp)	| MEM[(const unsigned char *)_74 + 10B], %sfp
	move.b 11(%a6),53(%sp)	| MEM[(const unsigned char *)_74 + 11B], %sfp
	move.b 12(%a6),55(%sp)	| MEM[(const unsigned char *)_74 + 12B], %sfp
	move.b 13(%a6),57(%sp)	| MEM[(const unsigned char *)_74 + 13B], %sfp
	move.b 14(%a6),59(%sp)	| MEM[(const unsigned char *)_74 + 14B], %sfp
	move.b 15(%a6),51(%sp)	| MEM[(const unsigned char *)_74 + 15B], %sfp
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:124: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:124: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:124: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:124: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:124: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:124: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:124: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:124: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:124: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:124: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:124: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:124: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:124: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:124: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:124: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:124: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:126: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:126: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:126: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:126: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:126: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:126: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:126: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:126: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:126: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:126: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:126: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:126: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:126: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:126: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:126: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:126: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:134: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:128: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:128: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:128: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:128: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:128: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:128: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:128: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:128: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:128: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:128: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:117: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.161
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L5		|
| voxel.c:116: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:116: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L6		|
.L1:
| voxel.c:137: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L19:
| voxel.c:116: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.193
| voxel.c:116: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.186
	add.l %a2,%a0	| ivtmp.193, ivtmp.186
	lea (160,%a1),%a3	|, out, tmp719
.L9:
| voxel.c:119: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:118: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:118: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:118: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:118: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L8:
| voxel.c:120: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:121: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:121: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L7		|
| voxel.c:122: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:122: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L7:
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:123: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:124: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:125: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:126: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:127: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:128: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:129: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:119: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:119: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L8		|
| voxel.c:131: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:132: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:133: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:134: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:134: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:117: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.186
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:116: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:116: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.193
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.186
	add.l %a2,%a0	| ivtmp.193, ivtmp.186
	lea (160,%a1),%a3	|, out, tmp719
	jra .L9		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L21:
| voxel.c:140: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.199_11]
	cmp.l %d0,%a0	| _3, out
	jne .L21		|
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
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L36		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L32:
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L33		|
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L33:
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L34		|
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L34:
| voxel.c:231: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L35		|
| voxel.c:231: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L35:
| voxel.c:232: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L36:
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d0	| iftmp.11_8
	jra .L32		|
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
	lea (-408,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.335
| voxel.c:241: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:240: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:239: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L49:
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:243: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:245: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:245: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _205
	add.w #60,%d2	|, _205
| voxel.c:245: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.335, ivtmp.324
	move.w #-17920,%a2	|, ivtmp.321
.L50:
| voxel.c:243: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.321,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:245: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:242: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.321
	cmp.w #17920,%a2	|, ivtmp.321
	jne .L50		|
| voxel.c:248: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:250: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:250: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:61: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:253: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:254: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L106		|
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:241: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:241: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.335
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:259: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.312
	clr.b %d2	| max_height_lsm_flag.234
	clr.b %d1	| max_height_lsm.233
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.312, ivtmp.305
.L55:
| voxel.c:262: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:262: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.233, _72
	jls .L54		|
| voxel.c:263: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.233
| voxel.c:262: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.234
.L54:
| voxel.c:261: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.305
	cmp.l %a0,%a1	| ivtmp.305, ivtmp.312
	jne .L55		|
| voxel.c:260: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.305, ivtmp.312
	cmp.l #_combined+524289,%a0	|, ivtmp.305
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.234
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.233, max_height
.L57:
| voxel.c:267: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp254
	move.l %a6,124(%sp)	| tmp254, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:277: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L58:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_94], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_94 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_94 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_94 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_94 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_94 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_94 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_94 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,56(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.285
.L81:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L73		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L73:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L74		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L74:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L75		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L75:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L76		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L76:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L77		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L77:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L78		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L78:
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L79		|
| voxel.c:283: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L79:
| voxel.c:288: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _184
	move.b %d7,%d1	|, _184
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _184,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _184
	move.l %d1,68(%sp)	| _184, %sfp
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _166
	and.l %d0,%d7	| mask, _166
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _166, iftmp.11_167
	lsl.w #8,%d6	|, iftmp.11_167
	swap %d6	| iftmp.11_167
	clr.w %d6	| iftmp.11_167
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _166,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_170
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _166,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_176
| voxel.c:290: 						| pdata_pattern(15, ~mask);
	not.b %d0	| tmp241
	and.l #255,%d0	|, tmp242
	move.l %d0,%d1	| tmp242, tmp244
	lsl.l #8,%d1	|, tmp244
	add.l %d1,%d0	| tmp244, tmp245
	move.l %d0,%d1	| tmp245, tmp246
	swap %d1	| tmp246
	clr.w %d1	| tmp246
	add.l %d1,%d0	| tmp246, tmp245
	move.l %d0,48(%sp)	| tmp245, %sfp
	move.l 72(%sp),%a3	| %sfp, ivtmp.284
| voxel.c:285: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L71:
	move.b %d3,%d5	| color1, _122
	btst #1,%d3	|, color1
	jeq .L59		|
	move.l 64(%sp),%d0	| %sfp, iftmp.12_188
.L60:
	btst #0,%d3	|, color1
	jeq .L61		|
	move.l 60(%sp),%d1	| %sfp, iftmp.11_185
.L62:
	or.l %d1,%d0	| iftmp.11_185, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _122
	jeq .L63		|
	move.l 68(%sp),%d4	| %sfp, iftmp.13_194
.L64:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _122
	jeq .L65		|
	move.b 55(%sp),%d0	| %sfp, _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.276
	neg.l %d2	| ivtmp.276
	move.l %a3,%a0	| ivtmp.284, ivtmp.277
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.276, _54
| voxel.c:228: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _54, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_167, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:229: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _54
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_170,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:230: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _54
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_176,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:231: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _54
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:291: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.276, tmp229
| voxel.c:293: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.285, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:293: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:286: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.276
	lea (-3840,%a0),%a0	|, ivtmp.277
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.276,
	jne .L70		|
| voxel.c:285: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:285: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.284
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:278: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.285
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.285,
	jne .L81		|
| voxel.c:277: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:277: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L58		|
| voxel.c:302: 	short top_envelope[20] = {
	move.l #1048590,116(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,120(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,124(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,128(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,132(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,136(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,140(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655371,144(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #786444,148(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #786444,152(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:308: 	short bottom_envelope[20] = {
	move.l #458758,156(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #327684,160(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #196610,164(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #65537,168(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	clr.l 172(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	clr.l 176(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	clr.l 180(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	clr.l 184(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	clr.l 188(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	clr.l 192(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (116,%sp),%a0	|,, ivtmp.257
	lea _view_min+80,%a6	|, ivtmp.260
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.262
	lea (156,%sp),%a4	|,, ivtmp.264
	lea _view_max+80,%a3	|, ivtmp.267
	lea _view_max,%a2	|, ivtmp.269
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.257, _320
.L82:
| voxel.c:316: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _40
| voxel.c:316: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_294]
| voxel.c:316: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_316]
| voxel.c:317: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _45
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _45
| voxel.c:317: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _45, MEM[(short int *)_318]
| voxel.c:317: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _45, MEM[(short int *)_295]
| voxel.c:315: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.257, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.250
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L83:
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_46],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_190]
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:319: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:320: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L106:
| voxel.c:254: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:256: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:241: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:241: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.335
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.276
	neg.l %d2	| ivtmp.276
| voxel.c:285: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.284, ivtmp.277
	move.l %d7,44(%sp)	| _166, %sfp
	jra .L70		|
.L63:
	moveq #0,%d4	| iftmp.13_194
	jra .L64		|
.L61:
	moveq #0,%d1	| iftmp.11_185
	jra .L62		|
.L59:
	moveq #0,%d0	| iftmp.12_188
	jra .L60		|
	.even
	.globl	_render
_render:
	subq.l #8,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 56(%sp),%a0	| pos, pos
	move.l 68(%sp),%d1	| x, x
	move.l 76(%sp),%d0	| y_max, y_max
	move.l 80(%sp),48(%sp)	| y_min, %sfp
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_80(D)->dirx, _5
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d1,%d2	|, _9
	add.w #-160,%d2	|, _9
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d4	| pos_80(D)->diry, _11
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d5	| _9,
	muls.w %d3,%d5	| _5, tmp159
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp160
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d4,%d5	| _11, tmp161
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp163
	clr.w %d5	| tmp163
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d4,%d2	| _11, tmp164
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp165
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp165, tmp166
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d5	| tmp166, tmp168
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_80(D)->y
	move.w 2(%a0),%d2	| pos_80(D)->y, pos_80(D)->y
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp170
	clr.w %d2	| tmp170
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_80(D)->x, tmp172
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp173
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp174
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp175
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp176
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp177
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp178
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp179
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp180
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d3	|, tmp181
	asr.w #4,%d3	|, tmp181
	move.w %d3,%a0	| tmp181, tmp182
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp182, tmp183
	add.l %a0,%a0	| tmp183, tmp184
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|,
	muls.w #80,%d3	|, tmp185
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp185, tmp187
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp187, tmp187, tmp188
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp190
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp191
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d1.l),%a0	| tmp188, tmp191, tmp192
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:394: 	y_offset -= y_min;
	move.w 74(%sp),%a4	| y_offset, _28
	sub.w 50(%sp),%a4	| %sfp, _28
| voxel.c:396: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:375: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:400: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp195
| voxel.c:400: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:406: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L107		|
	lea _opacity_table+4,%a3	|, ivtmp.370
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a6	|, max_height
	add.l %a6,%a6	| max_height, _72
| voxel.c:397: 	unsigned short z = STEPS_MIN;
	moveq #4,%d6	|, z
| voxel.c:391: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
| voxel.c:414: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	lea _combined,%a5	|, tmp242
.L109:
| voxel.c:408: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d1	|, y
	jgt .L110		|
| voxel.c:408: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w (%a1,%a6.l),%d1	| MEM[(short int *)y_table_shifted_177 + _72 * 1], y
	jle .L131		|
.L110:
| voxel.c:337: 	asm (
#APP
| 337 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:412: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d0	| index_mask, index
| voxel.c:414: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d0.l),%d4	| _36->both, _37
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| _37
	move.b %d4,%d0	| _37, _37
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _37, tmp204
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a4,%d3	| _28, sample_y
	add.w (%a1,%d0.l),%d3	| (*y_table_shifted_177)[_38], sample_y
| voxel.c:471: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:416: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L111		|
| voxel.c:418: 			if (z < FOG_START) {
	cmp.w #39,%d6	|, z
	jhi .L112		|
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp205
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp206
| voxel.c:362: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp207
| voxel.c:362: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a2	|,
	move.l (%a2,%d4.l),%d4	| *_136, _137
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _20
	jlt .L132		|
.L113:
| voxel.c:426: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _20, y
	jlt .L114		|
	sub.w %d3,%d1	| _20, tmp209
	and.l #65535,%d1	|, tmp210
	addq.l #1,%d1	|, tmp211
	move.l %d1,%d0	| tmp211, tmp213
	add.l %d1,%d0	| tmp211, tmp213
	add.l %d0,%d0	| tmp213, tmp214
	add.l %d0,%d1	| tmp214, tmp215
	lsl.l #5,%d1	|, tmp216
	move.l %a0,%d0	| pBlock, _59
	sub.l %d1,%d0	| tmp216, _59
.L115:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _137, pBlock
| 0 "" 2
| voxel.c:428: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:426: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _59, pBlock
	jne .L115		|
	move.w %d3,%d0	| _20, prephitmp_191
	subq.w #1,%d0	|, prephitmp_191
	move.w %d0,%d1	| prephitmp_191, y
.L108:
.L114:
| voxel.c:455: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp234
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:459: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp235
	and.w #15,%d3	|, tmp235
	jne .L119		|
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L118:
| voxel.c:402: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d6	|, z
	jeq .L128		|
.L119:
| voxel.c:406: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.370
	cmp.w #-1,%d1	|, y
	jne .L109		|
.L128:
| voxel.c:471: 	return y + y_min;
	add.w 50(%sp),%d0	| %sfp, <retval>
.L107:
| voxel.c:472: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L132:
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _20
	jra .L113		|
.L112:
	move.w %d3,46(%sp)	| sample_y, %sfp
	jmi .L133		|
.L116:
| voxel.c:366: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d3	|
	move.b (%a3),%d3	| MEM[(unsigned char *)_70],
	move.w %d3,%a2	|, opacity_preshifted
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp219
| voxel.c:366: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d4,%a2	| tmp219, offset
| voxel.c:367: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d4	| _141
	move.w %a2,%d4	| offset, _141
| voxel.c:444: 				while (y >= sample_y) {
	cmp.w 46(%sp),%d1	| %sfp, y
	jlt .L111		|
	move.l %d4,%a2	| _141, tmp237
	add.l #_pdata_table,%a2	|, tmp237
	move.w 46(%sp),%d3	| %sfp, _205
.L117:
| voxel.c:445: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp222
	and.l %d1,%d0	| y, tmp222
	add.l %d0,%d0	| tmp222, tmp223
	add.l %d0,%d0	| tmp223, tmp224
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d0.l),%d0	| *_47, *_47
#APP
| 329 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_47, pBlock
| 0 "" 2
| voxel.c:447: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:448: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:444: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _205
	jle .L117		|
.L111:
| voxel.c:455: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp229
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:459: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp230
	and.w #15,%d3	|, tmp230
	jne .L118		|
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
	jra .L118		|
.L133:
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	clr.w 46(%sp)	| %sfp
	jra .L116		|
.L131:
| voxel.c:471: 	return y + y_min;
	move.w %d1,%d0	| y, <retval>
	add.w 50(%sp),%d0	| %sfp, <retval>
| voxel.c:472: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:476: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:476: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L134		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L136:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:479: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L136		|
.L134:
| voxel.c:481: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:476: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L141		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L142:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:479: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L142		|
.L141:
| voxel.c:486: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:487: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:505: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:506: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:507: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:513: }
	add.w %d1,%d0	| tmp56,
	rts	
.LC1:
	.ascii "Col %02x %02x %02x len2 %d\12\0"
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #16190,-(%sp)	|,
	move.l 48(%sp),%a5	| colors, colors
	lea _palette_vectors,%a4	|, ivtmp.420
	lea ___mulsi3,%a2	|, tmp336
	lea _printf,%a3	|, tmp335
.L151:
| voxel.c:524: 		unsigned char b = *colors++;
	move.b (%a5),%d5	| MEM[(const unsigned char *)colors_342], b
| voxel.c:525: 		unsigned char g = *colors++;
	move.b 1(%a5),%d4	| MEM[(const unsigned char *)colors_342 + 1B], g
| voxel.c:526: 		unsigned char r = *colors++;
	addq.l #3,%a5	|, colors
| voxel.c:526: 		unsigned char r = *colors++;
	move.b -1(%a5),%d3	| MEM[(const unsigned char *)colors_25 + 4294967295B], r
| voxel.c:505: 	signed char c = color - 128;
	move.b %d3,%d1	| r, c
	add.b #-128,%d1	|, c
| voxel.c:506: 	return c >> 1;
	asr.b #1,%d1	|, _45
| voxel.c:505: 	signed char c = color - 128;
	move.b %d4,%d6	| g, c
	add.b #-128,%d6	|, c
| voxel.c:506: 	return c >> 1;
	asr.b #1,%d6	|, _41
| voxel.c:505: 	signed char c = color - 128;
	move.b %d5,%d7	| b, c
	add.b #-128,%d7	|, c
| voxel.c:506: 	return c >> 1;
	asr.b #1,%d7	|, _29
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d6	| _41
	move.w %d6,%d0	| _41,
	muls.w %d6,%d0	| _41, tmp206
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp207
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d7	| _29
	move.w %d7,%d2	| _29,
	muls.w %d7,%d2	| _29, tmp210
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp211
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp211, tmp212
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _45
	move.w %d1,%d2	| _45,
	muls.w %d1,%d2	| _45, tmp215
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp216
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp216, result
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp218
	ext.l %d0	| tmp219
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp220
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a6	|, tmp221
	sub.w %d0,%a6	| tmp220, tmp221
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp221,
	move.l %d0,%a6	|, _256
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _256,
	move.w %d1,%a0	| _45,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp337, _258
	asr.l #7,%d2	|, _258
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _256,
	move.w %d6,%a0	| _41,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp338, _262
	asr.l #7,%d6	|, _262
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _256,
	move.w %d7,%a0	| _29,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d7	| tmp339, _266
	asr.l #7,%d7	|, _266
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _258,
	move.l %d2,-(%sp)	| _258,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp340
	move.l %d0,%a6	| tmp340, tmp236
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _262,
	move.l %d6,-(%sp)	| _262,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp239
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp239, tmp240
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _266,
	move.l %d7,-(%sp)	| _266,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp243
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp243, result
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	lea (-128,%a6),%a6	|, tmp245
	move.w %a6,%d0	| tmp245,
	ext.l %d0	| tmp246
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp247
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a6	|, tmp248
	sub.w %d0,%a6	| tmp247, tmp248
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp248,
	move.l %d0,%a6	|, _314
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _314,
	move.l %d2,-(%sp)	| _258,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp343, _316
	asr.l #7,%d2	|, _316
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _314,
	move.l %d6,-(%sp)	| _262,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp344, _320
	asr.l #7,%d6	|, _320
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _314,
	move.l %d7,-(%sp)	| _266,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d7	| tmp345, _324
	asr.l #7,%d7	|, _324
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _316,
	move.l %d2,-(%sp)	| _316,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp346
	move.l %d0,%a6	| tmp346, tmp257
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _320,
	move.l %d6,-(%sp)	| _320,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp260
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp260, tmp261
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _324,
	move.l %d7,-(%sp)	| _324,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp264
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp264, result
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	lea (-128,%a6),%a6	|, tmp266
	move.w %a6,%d0	| tmp266,
	ext.l %d0	| tmp267
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp268
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a6	|, tmp269
	sub.w %d0,%a6	| tmp268, tmp269
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a6,%a6	| tmp269, _372
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _372,
	move.l %d2,-(%sp)	| _316,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp349, _374
	asr.l #7,%d2	|, _374
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _372,
	move.l %d6,-(%sp)	| _320,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp350, _378
	asr.l #7,%d6	|, _378
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _372,
	move.l %d7,-(%sp)	| _324,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d7	| tmp351, _382
	asr.l #7,%d7	|, _382
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _374,
	move.l %d2,-(%sp)	| _374,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp352
	move.l %d0,%a6	| tmp352, tmp278
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _378,
	move.l %d6,-(%sp)	| _378,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp281
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp281, tmp282
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _382,
	move.l %d7,-(%sp)	| _382,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp285
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%a6	| tmp285, result
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a6,%a6	| result, result
	moveq #-128,%d0	|, tmp288
	add.l %a6,%d0	| result, tmp288
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp289
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a6	|, tmp290
	sub.w %d0,%a6	| tmp289, tmp290
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a6,%a6	| tmp290, _430
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _430,
	move.l %d2,-(%sp)	| _374,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp355, tmp293
	asr.l #7,%d2	|, tmp293
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _430,
	move.l %d6,-(%sp)	| _378,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp356, tmp296
	asr.l #7,%d6	|, tmp296
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a6,-(%sp)	| _430,
	move.l %d7,-(%sp)	| _382,
	jsr (%a2)		| tmp336
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp299
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp293, tmp300
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp301
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d7	|,
	muls.w %d6,%d7	| tmp296, tmp302
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp303
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d1	| tmp303, tmp304
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d7	|,
	muls.w %d0,%d7	| tmp299, tmp305
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp306
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d1	| tmp306, result
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp309
	add.l %a0,%d1	| result, tmp309
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp310
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d7	|, _484
	sub.w %d1,%d7	| tmp310, _484
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d7,%d2	| _484, tmp311
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp312
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d7,%d6	| _484, tmp313
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp314
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d7	| tmp299, tmp315
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp316
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| tmp312, tmp317
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp318
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d1	|,
	muls.w %d6,%d1	| tmp314, tmp319
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp320
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp320, tmp321
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d1	|,
	muls.w %d7,%d1	| tmp316, tmp322
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp323
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp323, result
| voxel.c:530: 		printf("Col %02x %02x %02x len2 %d\n", r, g, b, vec3_dot(v, v));
	move.w %d0,%a0	| result,
	move.l %a0,-(%sp)	|,
	and.l #255,%d5	|, b
	move.l %d5,-(%sp)	| b,
	and.l #255,%d4	|, g
	move.l %d4,-(%sp)	| g,
	and.l #255,%d3	|, r
	move.l %d3,-(%sp)	| r,
	pea .LC1		|
	jsr (%a3)		| tmp335
| voxel.c:531: 		palette_vectors[i].c = v.c;
	swap %d2	| _495
	clr.w %d2	| _495
	move.w %d6,%d2	| tmp314, _495
	move.l %d2,(%a4)	| _495, MEM <vector(2) short int> [(union  *)_361]
	move.w %d7,4(%a4)	| tmp316, MEM <fixp> [(union  *)_361 + 4B]
| voxel.c:523: 	for (int i=0; i<16; i++) {
	addq.l #6,%a4	|, ivtmp.420
	lea (20,%sp),%sp	|,
	cmp.l #_palette_vectors+96,%a4	|, ivtmp.420
	jne .L151		|
| voxel.c:533: }
	movem.l (%sp)+,#31996	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.426
	clr.w %d0	| vect__18.426
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.426
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.426, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:539: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L159		|
	cmp.w #128,%d0	|, val
	jge .L160		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:544: }
	rts	
.L160:
| voxel.c:542: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:544: }
	rts	
.L159:
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:544: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-56	|,
	movem.l #16176,-(%sp)	|,
| voxel.c:549: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d3	| pos.dirx, _4
	neg.w %d3	| _4
	move.w _pos+8,%d4	| pos.diry, _8
	neg.w %d4	| _8
| voxel.c:558: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:560: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:588: 		if (((frame - 3) & 31) < 4) {
	move.l 8(%fp),%d6	| frame, tmp238
	subq.l #3,%d6	|, tmp238
| voxel.c:588: 		if (((frame - 3) & 31) < 4) {
	moveq #28,%d0	|,
	and.l %d6,%d0	| tmp238,
	move.l %d0,%a3	|, _14
| voxel.c:581: 		if ((frame & 31) < 4) {
	moveq #28,%d0	|, tmp239
	and.l 8(%fp),%d0	| frame, tmp239
	lea _palette_vectors+6,%a1	|, ivtmp.457
| voxel.c:560: 	*p++ = 0;
	lea (-45,%fp),%a0	|,, p
	move.l %fp,%d5	|, tmp374
	subq.l #3,%d5	|, tmp374
	tst.l %d0	| tmp239
	jeq .L198		|
	cmp.w #0,%a3	|, _14
	jeq .L174		|
.L173:
| voxel.c:563: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w -54(%fp),%d1	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d2	| normal_lcs.a[2], b$a$2
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _4,
	muls.w %d1,%d0	| b$a$0, tmp240
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp241
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d6	| b$a$2,
	muls.w %d4,%d6	| _8, tmp242
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp243
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d0	| tmp243, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp245
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp247
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d1	| _8, tmp248
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp249
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d6	| _4,
	muls.w %d2,%d6	| b$a$2, tmp250
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp251
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d1	| tmp251, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp253
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp255
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp255, result
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	move.w %d0,%d6	| result, _321
	jmi .L218		|
.L166:
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	muls.w #123,%d1	|, tmp257
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp259
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d2	|, tmp260
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp262
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp262, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L219		|
.L167:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d1	| _321, _208
| voxel.c:542: 	return val < 0 ? 0 : (
	jmi .L199		|
.L223:
	cmp.w #128,%d1	|, _208
	jge .L200		|
	add.b %d1,%d1	| _208, tmp267
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| tmp267, MEM[(unsigned char *)p_297]
| voxel.c:542: 	return val < 0 ? 0 : (
	add.b %d6,%d6	| _321, tmp375
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	lea (3,%a0),%a2	|, p, p
.L169:
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	move.b %d6,1(%a0)	| tmp375, MEM[(unsigned char *)p_297 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d6,-1(%a2)	| tmp375, MEM[(unsigned char *)p_80 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.457
	cmp.l %a2,%d5	| p, tmp374
	jeq .L175		|
	move.l %a2,%a0	| p, p
| voxel.c:563: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w -54(%fp),%d1	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d2	| normal_lcs.a[2], b$a$2
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _4,
	muls.w %d1,%d0	| b$a$0, tmp240
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp241
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d6	| b$a$2,
	muls.w %d4,%d6	| _8, tmp242
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp243
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d0	| tmp243, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp245
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp247
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d1	| _8, tmp248
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp249
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d6	| _4,
	muls.w %d2,%d6	| b$a$2, tmp250
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp251
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d1	| tmp251, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp253
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp255
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp255, result
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	move.w %d0,%d6	| result, _321
	jpl .L166		|
	jra .L218		|
.L211:
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d0	| iftmp.44_217
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.44_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.483
	cmp.l %a0,%d5	| p, tmp374
	jeq .L175		|
.L198:
| voxel.c:563: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_292], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_292], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d7	| normal_lcs.a[2], b$a$2
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp321
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp322
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d7,%d2	| b$a$2, tmp323
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp324
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp324, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp326
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp328
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp329
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp330
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d6	| _8,
	muls.w %d7,%d6	| b$a$2,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|,
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp332, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp334
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp336
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp336, accum$c$y
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	jmi .L220		|
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp338
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp338
	move.l %d2,%a2	| tmp338, tmp340
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d2	| b$a$2,
	muls.w #23,%d2	|, tmp341
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp343
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %a2,%d2	| tmp340, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L221		|
.L188:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d2	| accum$c$y, _545
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d0	| b$a$0
	neg.l %d0	| tmp349
	move.l %d0,%d7	| tmp349, tmp350
	lsl.l #7,%d7	|, tmp350
| voxel.c:580: 		if (c_left < 0) c_left = 0;
	tst.w %d0	| result
	jlt .L222		|
.L189:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d0	| accum$c$y, _426
| voxel.c:588: 		if (((frame - 3) & 31) < 4) {
	cmp.w #0,%a3	|, _14
	jeq .L190		|
.L228:
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jlt .L205		|
	cmp.w #128,%d2	|, _545
	jge .L206		|
	add.b %d2,%d2	| _545, tmp357
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| tmp357, MEM[(unsigned char *)p_287]
.L192:
| voxel.c:542: 	return val < 0 ? 0 : (
	move.b %d1,%d2	|, iftmp.44_221
	add.b %d1,%d2	| accum$c$y, iftmp.44_221
.L196:
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.44_221, MEM[(unsigned char *)p_287 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d0	| _426
	jlt .L211		|
	cmp.w #128,%d0	|, _426
	jge .L212		|
	add.b %d0,%d0	| _426, iftmp.44_217
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.44_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.483
	cmp.l %a0,%d5	| p, tmp374
	jne .L198		|
	jra .L175		|
.L218:
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	clr.w %d6	| _321
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	muls.w #123,%d1	|, tmp257
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp259
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d2	|, tmp260
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp262
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp262, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L167		|
.L219:
	clr.w %d1	| result
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d1	| _321, _208
| voxel.c:542: 	return val < 0 ? 0 : (
	jpl .L223		|
.L199:
	clr.b %d1	| _212
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| _212, MEM[(unsigned char *)p_297]
| voxel.c:542: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, result
	jlt .L170		|
.L230:
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	st 1(%a0)		| MEM[(unsigned char *)p_297 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	st -1(%a0)		| MEM[(unsigned char *)p_203 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.457
	cmp.l %a0,%d5	| p, tmp374
	jne .L173		|
.L175:
| voxel.c:596: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:597: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:599: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:600: }
	addq.l #4,%sp	|,
	movem.l -88(%fp),#3324	|,
	unlk %fp		|
	rts	
.L201:
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_68
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.43_68, MEM[(unsigned char *)p_744]
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_48
	tst.w %d0	| _135
	jlt .L183		|
.L232:
	cmp.w #128,%d0	|, _135
	jlt .L181		|
	st %d2		| iftmp.43_48
.L183:
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.43_48, MEM[(unsigned char *)p_744 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:542: 	return val < 0 ? 0 : (
	cmp.w #128,%d1	|, result
	jlt .L182		|
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	st -1(%a0)		| MEM[(unsigned char *)p_76 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.470
	cmp.l %a0,%d5	| p, tmp374
	jeq .L175		|
.L174:
| voxel.c:563: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp278
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp279
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d6,%d2	| b$a$2, tmp280
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp281
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp281, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp283
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp286
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp287
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d7	| b$a$2,
	muls.w %d4,%d7	| _8, tmp288
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp289
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d2	| tmp289, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp291
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp293
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp293, result
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	move.w %d1,%d7	| result, _153
	jmi .L224		|
.L176:
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp295
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d6	|, tmp298
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp300
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp300, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L225		|
.L177:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d2	| _153, _120
| voxel.c:587: 		if (c_right < 0) c_right = 0;
	tst.w %d0	| result
	jlt .L226		|
.L178:
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d0	| _153, _135
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d2	| _120
	jlt .L201		|
	cmp.w #128,%d2	|, _120
	jge .L202		|
	add.b %d2,%d2	| _120, tmp312
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| tmp312, MEM[(unsigned char *)p_744]
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d0	| _135
	jge .L227		|
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	clr.b 1(%a0)	| MEM[(unsigned char *)p_744 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
.L182:
| voxel.c:542: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.470
	cmp.l %a0,%d5	| p, tmp374
	jeq .L175		|
.L217:
| voxel.c:563: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp278
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp279
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d6,%d2	| b$a$2, tmp280
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp281
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp281, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp283
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp286
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp287
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d7	| b$a$2,
	muls.w %d4,%d7	| _8, tmp288
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp289
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d2	| tmp289, result
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp291
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp293
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp293, result
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	move.w %d1,%d7	| result, _153
	jpl .L176		|
	jra .L224		|
.L220:
	clr.w %d1	| accum$c$y
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp338
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp338
	move.l %d2,%a2	| tmp338, tmp340
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d2	| b$a$2,
	muls.w #23,%d2	|, tmp341
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp343
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %a2,%d2	| tmp340, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L188		|
.L221:
	clr.w %d2	| result
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d2	| accum$c$y, _545
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d0	| b$a$0
	neg.l %d0	| tmp349
	move.l %d0,%d7	| tmp349, tmp350
	lsl.l #7,%d7	|, tmp350
| voxel.c:580: 		if (c_left < 0) c_left = 0;
	tst.w %d0	| result
	jge .L189		|
.L222:
	clr.w %d0	| result
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d0	| accum$c$y, _426
| voxel.c:588: 		if (((frame - 3) & 31) < 4) {
	cmp.w #0,%a3	|, _14
	jne .L228		|
.L190:
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d7	| tmp359
	asr.l #7,%d7	|, tmp360
| voxel.c:587: 		if (c_right < 0) c_right = 0;
	tst.w %d7	| result
	jlt .L229		|
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d1	| result, accum$c$y
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jlt .L207		|
.L231:
	cmp.w #128,%d2	|, _545
	jge .L208		|
	add.b %d2,%d2	| _545, iftmp.44_225
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.44_225, MEM[(unsigned char *)p_287]
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.44_221
	tst.w %d1	| accum$c$y
	jlt .L196		|
.L193:
	cmp.w #128,%d1	|, accum$c$y
	jlt .L192		|
	st %d2		| iftmp.44_221
	jra .L196		|
.L226:
| voxel.c:587: 		if (c_right < 0) c_right = 0;
	clr.w %d0	| result
	jra .L178		|
.L224:
| voxel.c:569: 		if (c_sun < 0) c_sun = 0;
	clr.w %d7	| _153
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp295
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d6	|, tmp298
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp300
| voxel.c:511: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp300, result
| voxel.c:575: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L177		|
.L225:
	clr.w %d2	| result
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d2	| _153, _120
| voxel.c:587: 		if (c_right < 0) c_right = 0;
	tst.w %d0	| result
	jge .L178		|
	jra .L226		|
.L205:
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| _122
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| _122, MEM[(unsigned char *)p_287]
	jra .L193		|
.L200:
| voxel.c:542: 	return val < 0 ? 0 : (
	st %d1		| _212
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| _212, MEM[(unsigned char *)p_297]
| voxel.c:542: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, result
	jge .L230		|
.L170:
	add.b %d6,%d6	| _321, tmp375
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	lea (3,%a0),%a2	|, p, p
	jra .L169		|
.L212:
| voxel.c:542: 	return val < 0 ? 0 : (
	st %d0		| iftmp.44_217
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.44_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.483
	cmp.l %a0,%d5	| p, tmp374
	jne .L198		|
	jra .L175		|
.L206:
| voxel.c:542: 	return val < 0 ? 0 : (
	st %d2		| _122
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| _122, MEM[(unsigned char *)p_287]
	jra .L193		|
.L229:
| voxel.c:587: 		if (c_right < 0) c_right = 0;
	clr.w %d7	| result
| voxel.c:537: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d1	| result, accum$c$y
| voxel.c:542: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jge .L231		|
.L207:
	clr.b %d2	| iftmp.44_225
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.44_225, MEM[(unsigned char *)p_287]
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.44_221
	tst.w %d1	| accum$c$y
	jlt .L196		|
	jra .L193		|
.L208:
	st %d2		| iftmp.44_225
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.44_225, MEM[(unsigned char *)p_287]
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.44_221
	tst.w %d1	| accum$c$y
	jlt .L196		|
	jra .L193		|
.L181:
	add.b %d0,%d0	| _135, tmp314
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	move.b %d0,1(%a0)	| tmp314, MEM[(unsigned char *)p_744 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:542: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.470
	cmp.l %a0,%d5	| p, tmp374
	jne .L217		|
	jra .L175		|
.L202:
| voxel.c:542: 	return val < 0 ? 0 : (
	st %d2		| iftmp.43_68
| voxel.c:592: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.43_68, MEM[(unsigned char *)p_744]
| voxel.c:542: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_48
	tst.w %d0	| _135
	jlt .L183		|
	jra .L232		|
.L227:
	cmp.w #128,%d0	|, _135
	jlt .L181		|
| voxel.c:593: 		*p++ = fixp2color(accum.c.y);
	st 1(%a0)		| MEM[(unsigned char *)p_744 + 1B]
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:542: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:594: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:561: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.470
	cmp.l %a0,%d5	| p, tmp374
	jne .L217		|
	jra .L175		|
.LC2:
	.ascii "\33H\12\0"
.LC3:
	.ascii "Loading colors.tga\0"
.LC4:
	.ascii "colors.tga\0"
.LC5:
	.ascii "Loading height.tga\0"
.LC6:
	.ascii "height.tga\0"
.LC7:
	.ascii "Computing tables\0"
.LC8:
	.ascii "Loading cockpit.tga\0"
.LC9:
	.ascii "cockpit.tga\0"
.LC10:
	.ascii "Rendering took %dms per frame.\12\0"
.LC11:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-148,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:605: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:607: 	Super(0L);
	moveq #0,%d0	| tmp352
#APP
| 607 "voxel.c" 1
	movl	%d0,%sp@-	| tmp352
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:609: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:611: 	lineaa();
	jsr _lineaa		|
| voxel.c:614: 	save_palette(saved_palette);
	pea 160(%sp)		|
	jsr _save_palette		|
| voxel.c:616: 	unsigned short *screen = Physbase();
#APP
| 616 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,74(%sp)	| tmp623, %sfp
| voxel.c:617: 	printf("\33H\n\n");
	pea .LC2		|
	jsr _puts		|
| voxel.c:619: 	printf("Loading colors.tga\n");
	pea .LC3		|
	jsr _puts		|
| voxel.c:620: 	image_t colors = read_tga("colors.tga");
	pea .LC4		|
	lea (134,%sp),%a1	|,,
	lea _read_tga,%a3	|, tmp598
	jsr (%a3)		| tmp598
	move.l 138(%sp),%d2	| colors.pixels, colors$pixels
	move.l 142(%sp),%d3	| colors.colors, colors$colors
| voxel.c:621: 	if (!colors.pixels) goto error;
	lea (16,%sp),%sp	|,
	tst.l %d2	| colors$pixels
	jeq .L235		|
| voxel.c:623: 	set_top_palette(colors.colors);
	move.l %d3,-(%sp)	| colors$colors,
	jsr _set_top_palette		|
| voxel.c:624: 	set_palette_immediately(colors.colors);
	move.l %d3,-(%sp)	| colors$colors,
	jsr _set_palette_immediately		|
| voxel.c:625: 	draw_image2(screen, colors.pixels + (166 * 320) + 96, 512, 200, 1);	
	pea 1.w		|
	pea 200.w		|
	pea 512.w		|
	move.l %d2,%d0	| colors$pixels,
	add.l #53216,%d0	|,
	move.l %d0,-(%sp)	|,
	move.l 94(%sp),-(%sp)	| %sfp,
	lea _draw_image2,%a2	|, tmp606
	jsr (%a2)		| tmp606
	move.l #_combined+1024,%d0	|, ivtmp.630
	move.l #_combined+525312,%d3	|, _728
	lea (28,%sp),%sp	|,
	moveq #0,%d1	| ivtmp.629
.L236:
	move.l %d2,%a1	| colors$pixels, ivtmp.620
	add.l %d1,%a1	| ivtmp.629, ivtmp.620
	move.l %d0,%a0	| ivtmp.630, ivtmp.621
	lea (-1024,%a0),%a0	|, ivtmp.621
.L237:
| voxel.c:628: 			combined[y][x].color = colors.pixels[y*512+x];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_742], MEM <unsigned char> [(union  *)_741]
| voxel.c:627: 		for(int x=0; x<512; x++)
	addq.l #2,%a0	|, ivtmp.621
	cmp.l %d0,%a0	| ivtmp.630, ivtmp.621
	jne .L237		|
| voxel.c:626: 	for (int y=0;y<512; y++)
	add.l #512,%d1	|, ivtmp.629
	add.l #1024,%d0	|, ivtmp.630
	cmp.l %d3,%d0	| _728, ivtmp.630
	jne .L236		|
| voxel.c:629: 	free_image(colors);
	subq.l #2,%sp	|,
	move.l 130(%sp),-(%sp)	| colors,
	move.l 130(%sp),-(%sp)	| colors,
	move.l 130(%sp),-(%sp)	| colors,
	move.w 132(%sp),-(%sp)	| colors,
	lea _free_image,%a4	|, tmp596
	jsr (%a4)		| tmp596
| voxel.c:631: 	printf("Loading height.tga\n");
	pea .LC5		|
	jsr _puts		|
| voxel.c:632: 	image_t height = read_tga("height.tga");
	pea .LC6		|
	lea (156,%sp),%a5	|,, tmp600
	move.l %a5,%a1	| tmp600,
	jsr (%a3)		| tmp598
	move.l 160(%sp),%d2	| height.pixels, height$pixels
| voxel.c:633: 	if (!height.pixels) goto error;
	lea (24,%sp),%sp	|,
	jeq .L235		|
	move.l #_combined+1025,%d0	|, ivtmp.612
	move.l #_combined+525313,%d3	|, _758
	moveq #0,%d1	| ivtmp.611
.L240:
	move.l %d2,%a1	| height$pixels, ivtmp.600
	add.l %d1,%a1	| ivtmp.611, ivtmp.600
	move.l %d0,%a0	| ivtmp.612, ivtmp.601
	lea (-1024,%a0),%a0	|, ivtmp.601
.L241:
| voxel.c:636: 			combined[y][x].height = height.pixels[y*512+x];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_772], MEM <unsigned char> [(union  *)_771]
| voxel.c:635: 		for(int x=0; x<512; x++)
	addq.l #2,%a0	|, ivtmp.601
	cmp.l %d0,%a0	| ivtmp.612, ivtmp.601
	jne .L241		|
| voxel.c:634: 	for (int y=0;y<512; y++)
	add.l #512,%d1	|, ivtmp.611
	add.l #1024,%d0	|, ivtmp.612
	cmp.l %d3,%d0	| _758, ivtmp.612
	jne .L240		|
| voxel.c:637: 	free_image(height);
	lea (-16,%sp),%sp	|,
	move.l %sp,%d0	|, tmp370
	pea 14.w		|
	move.l %a5,-(%sp)	| tmp600,
	move.l %d0,-(%sp)	| tmp370,
	jsr _memcpy		|
	lea (12,%sp),%sp	|,
	jsr (%a4)		| tmp596
| voxel.c:639: 	printf("Computing tables\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:640: 	build_tables();
	jsr _build_tables		|
| voxel.c:641: 	printf("Loading cockpit.tga\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:642: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC9		|
	lea (174,%sp),%a1	|,,
	jsr (%a3)		| tmp598
	move.l 178(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:643: 	if (!cockpit.pixels) goto error;
	lea (28,%sp),%sp	|,
	jeq .L235		|
| voxel.c:644: 	read_palette_vectors(cockpit.colors);
	move.l 154(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 74(%sp),%a0	| %sfp, ivtmp.593
	move.l %a0,%d0	| ivtmp.593, _786
	add.l #32000,%d0	|, _786
	addq.l #4,%sp	|,
.L243:
| voxel.c:140: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.505_853]
	cmp.l %d0,%a0	| _786, ivtmp.593
	jne .L243		|
| voxel.c:476: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a3	|, ivtmp.584
	lea _view_max,%a4	|, ivtmp.587
	move.l #_view_min+80,%d6	|, _180
	clr.w %d4	| ivtmp.585
.L248:
| voxel.c:648: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a3)+,%d1	| MEM[(short int *)_863], _13
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d4,%d3	| ivtmp.585,
	asr.w #4,%d3	|,
	move.w %d3,%a1	| tmp384, tmp385
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp385, tmp386
	add.l %a1,%a1	| tmp386, _219
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%d3	|, tmp389
	lsr.l #3,%d3	|, tmp389
	moveq #1,%d5	|,
	and.l %d5,%d3	|, _224
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%a1.l),%a0	| _219, _219, tmp390
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| _224, tmp391
	add.l 70(%sp),%a0	| %sfp, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _13
	jle .L244		|
	mulu.w #160,%d1	|, tmp392
	add.l %a0,%d1	| pBlock, _845
.L245:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:479: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _845
	jne .L245		|
.L244:
| voxel.c:649: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a4)+,%a0	| MEM[(short int *)_791], _17
| voxel.c:649: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _19
	sub.w %a0,%d1	| _17, _19
| voxel.c:649: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp394
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d5	| tmp394,
	muls.w #80,%d5	|,
	move.l %d5,%a0	|, tmp395
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| _219, tmp397
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp397, tmp398
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d3	| tmp398, tmp399
	move.l 70(%sp),%a0	| %sfp, pBlock
	add.l %d3,%a0	| tmp399, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _19
	jle .L246		|
	mulu.w #160,%d1	|, tmp400
	add.l %a0,%d1	| pBlock, _841
.L247:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:479: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _841
	jne .L247		|
.L246:
| voxel.c:647: 	for (int i=0; i<40; i++) {
	addq.w #8,%d4	|, ivtmp.585
	cmp.l %d6,%a3	| _180, ivtmp.584
	jne .L248		|
| voxel.c:652: 	compute_and_set_bottom_palette(0);
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:653: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:655: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 158(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 90(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr (%a2)		| tmp606
| voxel.c:657: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,138(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.w _pos+2,%d5	| pos.y, _72
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	lea _pos,%a5	|,
	move.w (%a5),%d6	| pos.x, _66
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,98(%sp)	| pos.diry, %sfp
	lea (24,%sp),%sp	|,
| voxel.c:660: 	for(int i=0; i<FRAMES; i++) {
	clr.l 102(%sp)	| %sfp
| voxel.c:658: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,98(%sp)	|, %sfp
	lea _combined,%a4	|, tmp602
.L271:
| voxel.c:106: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.61_238
	move.w (%a0),%d0	| *hw_palette.61_238, _239
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| _72, tmp414
	lsr.w #7,%d0	|, tmp414
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d0	|, tmp415
| voxel.c:148: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d6,%d1	| _66, tmp416
	lsr.w #7,%d1	|, tmp416
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d1	|, tmp417
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp418
	add.l %d1,%d0	| tmp417, tmp419
	add.l %d0,%d0	| tmp419, tmp420
| voxel.c:664: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.b 1(%a4,%d0.l),%d0	| combined[_28][_31].D.2687.height, height_under_player
	and.l #255,%d0	|, height_under_player
| voxel.c:665: 		int player_altitude = height_under_player + 20;
	moveq #20,%d3	|,
	add.l %d3,%d0	|, player_altitude
| voxel.c:667: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 98(%sp),%d1	| %sfp, tmp425
	addq.l #2,%d1	|, tmp425
| voxel.c:667: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp425
	jle .L249		|
	moveq #0,%d1	|, tmp425
	not.b %d1	| tmp425
.L249:
	cmp.l %d0,%d1	| player_altitude, tmp425
	jge .L250		|
	move.l %d1,%d0	| tmp425, player_altitude
.L250:
| voxel.c:668: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 98(%sp),%d1	| %sfp, tmp426
	subq.l #2,%d1	|, tmp426
| voxel.c:668: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,98(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp426
	jle .L251		|
	move.l %d1,98(%sp)	| tmp426, %sfp
.L251:
| voxel.c:671: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.55_35
| voxel.c:672: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 104(%sp),%d0	| %sfp, tmp427
	lsl.w #3,%d0	|, tmp427
	and.w #8,%d0	|, _38
| voxel.c:672: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _38
	move.w %d0,46(%sp)	| _38, %sfp
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a1	| MEM[(short int *)__aline.55_35 + 4294966696B],
	move.l %a1,106(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp428
	add.l %a1,%d0	|, tmp428
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp428
	move.l %d0,78(%sp)	| tmp428, %sfp
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -602(%a0),%a0	| MEM[(short int *)__aline.55_35 + 4294966694B],
	move.l %a0,110(%sp)	|, %sfp
	move.l %a0,%d0	|, tmp429
	add.l #-160,%d0	|, tmp429
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _44
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp431
	clr.w %d5	| tmp431
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d6,%d5	| _66, tmp433
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, tmp433
	move.l %d5,82(%sp)	| tmp433, %sfp
| voxel.c:375: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 100(%sp),%a0	| %sfp, ytable_offset
| voxel.c:400: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp436
| voxel.c:400: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, tmp436
	move.l %a0,90(%sp)	| tmp436, %sfp
| voxel.c:476: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,94(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d0,%d1	| _44,
	lsl.l #4,%d1	|,
	move.l %d1,86(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _44,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp624, %sfp
	add.l %d2,%d2	| x, tmp444
	add.l #_horizon,%d2	|, tmp444
	move.l %d2,52(%sp)	| tmp444, %sfp
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a5	|, max_height
	add.l %a5,%a5	| max_height, max_height
	move.l %a5,48(%sp)	| max_height, %sfp
.L268:
| voxel.c:678: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 46(%sp),%d0	| %sfp, tmp448
	lsr.w #3,%d0	|, tmp448
	and.l #65535,%d0	|, _50
| voxel.c:678: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _50, tmp450
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%d3	| view_max[_50], _907
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 46(%sp),%d1	| %sfp, _328
	add.w #-160,%d1	|, _328
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 76(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _328, tmp451
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp452
| voxel.c:379: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 74(%sp),%d4	| %sfp, tmp453
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp455
	clr.w %d4	| tmp455
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 74(%sp),%d1	| %sfp, tmp456
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp457
| voxel.c:380: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 76(%sp),%d2	| %sfp, tmp458
	sub.w %d1,%d2	| tmp457, tmp458
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d4	| tmp458, tmp460
| voxel.c:168: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	move.l 82(%sp),%d2	| %sfp, tmp461
	add.l %d4,%d2	| delta_vu, tmp461
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp462
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp463
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp464
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp465
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp466
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp467
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp, tmp468
	asr.w #4,%d1	|, tmp468
	ext.l %d1	| tmp469
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp469, tmp470
	add.l %d1,%d1	| tmp470, tmp470
	move.l %d1,62(%sp)	| tmp470, %sfp
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp473
	moveq #1,%d5	|,
	and.l %d1,%d5	| tmp473,
	move.l %d5,66(%sp)	|, %sfp
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	| _907,
	muls.w #80,%d1	|, tmp474
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d1	| %sfp, tmp476
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp476, tmp477
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d1	|, tmp478
	move.l 70(%sp),%a2	| %sfp, pBlock
	add.l %d1,%a2	| tmp478, pBlock
| voxel.c:394: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),56(%sp)	| view_min[_50], %sfp
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:674: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 78(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp625, y_offset
| voxel.c:394: 	y_offset -= y_min;
	sub.w 56(%sp),%a6	| %sfp, _367
| voxel.c:396: 	short y = y_max - y_min;
	move.w %d3,%a0	| _907, _903
	move.w %d3,%d0	| _907, y
	sub.w 56(%sp),%d0	| %sfp, y
| voxel.c:406: 		if (y < 0) goto done;
	jmi .L252		|
	lea _opacity_table+4,%a3	|, ivtmp.543
| voxel.c:400: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.l 90(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:397: 	unsigned short z = STEPS_MIN;
	moveq #4,%d5	|, z
| voxel.c:391: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L254:
| voxel.c:408: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d0	|, y
	jgt .L255		|
| voxel.c:408: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	move.l 48(%sp),%a5	| %sfp,
	cmp.w (%a1,%a5.l),%d0	| MEM[(short int *)y_table_shifted_491 + _815 * 1], y
	jle .L302		|
.L255:
| voxel.c:337: 	asm (
#APP
| 337 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d3, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:412: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:414: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a4,%d1.l),%d7	| _384->both, _385
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| _385
	move.b %d7,%d1	| _385, _385
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| _385, tmp492
| voxel.c:415: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a6,%d3	| _367, sample_y
	add.w (%a1,%d1.l),%d3	| (*y_table_shifted_491)[_387], sample_y
| voxel.c:471: 	return y + y_min;
	move.w %d0,%a0	| y, prephitmp_898
| voxel.c:416: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L256		|
| voxel.c:418: 			if (z < FOG_START) {
	cmp.w #39,%d5	|, z
	jhi .L257		|
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp493
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp493, tmp494
	add.w #224,%d1	|, tmp494
| voxel.c:362: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp495
| voxel.c:362: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|,
	move.l (%a5,%d1.l),%d1	| *_396, _397
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _398
	jlt .L303		|
.L258:
| voxel.c:426: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _398, y
	jlt .L259		|
	sub.w %d3,%d0	| _398, tmp497
	and.l #65535,%d0	|, tmp498
	addq.l #1,%d0	|, tmp499
	move.l %d0,%a0	| tmp499, tmp501
	add.l %d0,%a0	| tmp499, tmp501
	add.l %a0,%a0	| tmp501, tmp502
	move.l %a0,%d7	| tmp502, tmp503
	add.l %d0,%d7	| tmp499, tmp503
	lsl.l #5,%d7	|, tmp504
	move.l %a2,%d0	| pBlock, _805
	sub.l %d7,%d0	| tmp504, _805
.L260:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _397, pBlock
| 0 "" 2
| voxel.c:428: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:426: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _805
	jne .L260		|
	move.w %d3,%a0	| _398, prephitmp_898
	subq.w #1,%a0	|, prephitmp_898
	move.w %a0,%d0	| prephitmp_898, y
.L259:
| voxel.c:455: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp591
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:459: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp592
	and.w #15,%d1	|, tmp592
	jne .L265		|
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp519
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp520
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L264:
| voxel.c:402: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d5	|, z
	jeq .L299		|
.L265:
| voxel.c:406: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.543
	cmp.w #-1,%d0	|, y
	jne .L254		|
.L299:
| voxel.c:471: 	return y + y_min;
	add.w 56(%sp),%a0	| %sfp, _903
	move.w %a0,%d3	| _903, _907
.L252:
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 52(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_834], _282
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d0,%a0	| _282, _283
| voxel.c:485: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp521
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp522
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d0	| %sfp, tmp524
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp524, tmp525
| voxel.c:324: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d0	| %sfp, tmp526
	move.l 70(%sp),%a1	| %sfp, pBlock
	add.l %d0,%a1	| tmp526, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _283,
	jge .L266		|
	move.w %a0,%d1	| _283,
	mulu.w #160,%d1	|,
	lea (%a1,%d1.l),%a0	| pBlock, tmp527, _798
	move.l 94(%sp),%d0	| %sfp, movep_data
.L267:
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 329 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:479: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:477: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%a0	| pBlock, _798
	jne .L267		|
.L266:
| voxel.c:486: 	horizon[x] = y;
	move.l 52(%sp),%a0	| %sfp,
	move.w %d3,(%a0)	| _907, MEM[(short int *)_834]
| voxel.c:672: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:672: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 86(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,52(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L268		|
| voxel.c:682: 		compute_and_set_bottom_palette(i);
	move.l 102(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:683: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d0	| pos.speed, _60
| voxel.c:683: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _61
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d6	| _61,
	muls.w %d0,%d6	| _60, tmp532
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp533
| voxel.c:683: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d6	| pos.x, _66
	move.w %d6,(%a0)	| _66, pos.x
| voxel.c:684: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d3	| pos.diry, _67
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%a0	| _67, _240
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d5	| _67,
	muls.w %d0,%d5	| _60, tmp537
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp538
| voxel.c:684: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d5	| pos.y, _72
| voxel.c:686: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d1	|, tmp540
	sub.l 110(%sp),%d1	| %sfp, tmp540
| voxel.c:686: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d1	|, tmp541
| voxel.c:686: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d1,%d0	| tmp541, _78
| voxel.c:687: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _78, tmp542
	asr.w #3,%d1	|, tmp542
| voxel.c:687: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _78, tmp543
	asr.w #4,%d4	|, tmp543
| voxel.c:687: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d1	| tmp543, tmp544
| voxel.c:687: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, _85
| voxel.c:688: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _78
	jle .L269		|
| voxel.c:688: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| _85, _88
| voxel.c:684: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d5,_pos+2	| _72, pos.y
| voxel.c:688: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _88, pos.speed
| voxel.c:690: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d4	|, tmp547
	not.b %d4	| tmp547
	sub.l 110(%sp),%d4	| %sfp, tmp547
| voxel.c:690: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d4	|, _94
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a0,-(%sp)	| _240,
	move.l %d4,-(%sp)	| _94,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp550
| voxel.c:691: 		pos.dirx += fixp_mul(rot, pos.diry);
	add.w %d0,%d2	| tmp550, _98
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _94,
	move.w %d2,%a1	| _98,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp554
| voxel.c:692: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w %d3,%d1	| _67, _102
	sub.w %d0,%d1	| tmp554, _102
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _98,
	muls.w %d2,%d0	| _98, tmp555
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp556
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _102,
	muls.w %d1,%d3	| _102, tmp557
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp558
| voxel.c:695: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d0	| tmp558, tmp559
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp559, tmp560
	moveq #-128,%d0	|, tmp561
	add.l %a0,%d0	| tmp560, tmp561
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp562
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _259
	sub.w %d0,%d3	| tmp562, _259
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _259,
	muls.w %d2,%d0	| _98, tmp563
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp564
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,76(%sp)	| tmp564, %sfp
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d1	| _259, tmp565
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp566
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,74(%sp)	| tmp566, %sfp
| voxel.c:696: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| _249
	clr.w %d0	| _249
	move.w %d1,%d0	| tmp566, _249
	move.l %d0,_pos+6	| _249, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:660: 	for(int i=0; i<FRAMES; i++) {
	addq.l #1,102(%sp)	|, %sfp
| voxel.c:660: 	for(int i=0; i<FRAMES; i++) {
	cmp.l #800,102(%sp)	|, %sfp
	jne .L271		|
.L305:
| voxel.c:703: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:704: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 114(%sp),%a0	| %sfp, tmp574
| voxel.c:704: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp574, tmp576
	add.l %a0,%d0	| tmp574, tmp576
	add.l %d0,%d0	| tmp576, tmp577
| voxel.c:705: 	unsigned long millis_per_frame = millis / FRAMES;
	move.l 102(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:706: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp628,
	pea .LC10		|
	jsr _printf		|
| voxel.c:707: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
	addq.l #8,%sp	|,
.L235:
| voxel.c:710: 	printf("Press any key to exit to TOS.\n");
	pea .LC11		|
	jsr _puts		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.63_181
	move.l 4(%a0),%d0	| stdin.63_181->__bufp, _179
	addq.l #4,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.63_181->__get_limit, _179
	jcc .L272		|
	addq.l #1,%d0	|, _179
	move.l %d0,4(%a0)	| _179, stdin.63_181->__bufp
| voxel.c:712: 	install_palette(saved_palette);
	pea 160(%sp)		|
	jsr _install_palette		|
| voxel.c:714: }
	addq.l #4,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (148,%sp),%sp	|,
	rts	
.L272:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.63_181,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:712: 	install_palette(saved_palette);
	pea 160(%sp)		|
	jsr _install_palette		|
| voxel.c:714: }
	addq.l #4,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (148,%sp),%sp	|,
	rts	
.L303:
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _398
	jra .L258		|
.L302:
| voxel.c:471: 	return y + y_min;
	move.w 56(%sp),%a0	| %sfp, _903
	add.w %d0,%a0	| y, _903
	move.w %a0,%d3	| _903, _907
	jra .L252		|
.L257:
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _917
	jlt .L304		|
.L262:
| voxel.c:366: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a3),%d1	| MEM[(unsigned char *)_813], opacity_preshifted
| voxel.c:361: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _385
| voxel.c:366: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%d1	| tmp507, offset
| voxel.c:367: 	return (unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _410
| voxel.c:444: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _917
	jgt .L256		|
	move.l %d1,%a5	| _410, tmp607
	add.l #_pdata_table,%a5	|, tmp607
.L263:
| voxel.c:445: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp510
	and.l %d0,%d1	| y, tmp510
	add.l %d1,%d1	| tmp510, tmp511
	add.l %d1,%d1	| tmp511, tmp512
| voxel.c:329: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a5,%d1.l),%d1	| *_417, *_417
#APP
| 329 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_417, pBlock
| 0 "" 2
| voxel.c:447: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:448: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a0	| y, prephitmp_898
| voxel.c:444: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _917
	jle .L263		|
.L256:
| voxel.c:455: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp517
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:459: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp518
	and.w #15,%d1	|, tmp518
	jne .L264		|
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp519
| voxel.c:172: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp520
| voxel.c:466: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
	jra .L264		|
.L304:
| voxel.c:425: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _917
	jra .L262		|
.L269:
| voxel.c:689: 		else pos.speed += drag;
	add.w %d1,%d0	| _85, _88
| voxel.c:684: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d5,_pos+2	| _72, pos.y
| voxel.c:688: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _88, pos.speed
| voxel.c:690: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d4	|, tmp547
	not.b %d4	| tmp547
	sub.l 110(%sp),%d4	| %sfp, tmp547
| voxel.c:690: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d4	|, _94
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a0,-(%sp)	| _240,
	move.l %d4,-(%sp)	| _94,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp550
| voxel.c:691: 		pos.dirx += fixp_mul(rot, pos.diry);
	add.w %d0,%d2	| tmp550, _98
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _94,
	move.w %d2,%a1	| _98,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp554
| voxel.c:692: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w %d3,%d1	| _67, _102
	sub.w %d0,%d1	| tmp554, _102
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _98,
	muls.w %d2,%d0	| _98, tmp555
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp556
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _102,
	muls.w %d1,%d3	| _102, tmp557
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp558
| voxel.c:695: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d0	| tmp558, tmp559
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp559, tmp560
	moveq #-128,%d0	|, tmp561
	add.l %a0,%d0	| tmp560, tmp561
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp562
| voxel.c:164: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _259
	sub.w %d0,%d3	| tmp562, _259
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _259,
	muls.w %d2,%d0	| _98, tmp563
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp564
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,76(%sp)	| tmp564, %sfp
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d1	| _259, tmp565
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp566
| voxel.c:156: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,74(%sp)	| tmp566, %sfp
| voxel.c:696: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| _249
	clr.w %d0	| _249
	move.w %d1,%d0	| tmp566, _249
	move.l %d0,_pos+6	| _249, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:660: 	for(int i=0; i<FRAMES; i++) {
	addq.l #1,102(%sp)	|, %sfp
| voxel.c:660: 	for(int i=0; i<FRAMES; i++) {
	cmp.l #800,102(%sp)	|, %sfp
	jne .L271		|
	jra .L305		|
	.globl	_palette_vectors
	.bss
	.even
_palette_vectors:
	.skip 96
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
