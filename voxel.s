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
| voxel.c:117: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	tst.b %d0	| dither
	jne .L19		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:117: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.176
	add.l 80(%sp),%a6	| pixels, ivtmp.176
.L5:
| voxel.c:121: 				unsigned char register px = pixels[y*width + 16*chunk + x];
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
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:125: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:125: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:125: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:125: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:125: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:125: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:125: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:125: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:125: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:125: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:125: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:125: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:125: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:125: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:125: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:125: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:127: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:127: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:127: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:127: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:127: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:127: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:127: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:127: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:127: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:127: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:127: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:127: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:127: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:127: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:127: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:127: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:135: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:129: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:129: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:129: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:129: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:129: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:129: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:129: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:129: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:129: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:129: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:118: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.176
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L5		|
| voxel.c:117: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:117: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L6		|
.L1:
| voxel.c:138: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L19:
| voxel.c:117: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.208
| voxel.c:117: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.201
	add.l %a2,%a0	| ivtmp.208, ivtmp.201
	lea (160,%a1),%a3	|, out, tmp719
.L9:
| voxel.c:120: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:119: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:119: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:119: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:119: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L8:
| voxel.c:121: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:122: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:122: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L7		|
| voxel.c:123: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:123: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L7:
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:124: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:125: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:126: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:127: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:128: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:129: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:130: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:120: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:120: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L8		|
| voxel.c:132: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:133: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:134: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:135: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:135: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:118: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.201
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:117: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:117: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.208
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.201
	add.l %a2,%a0	| ivtmp.208, ivtmp.201
	lea (160,%a1),%a3	|, out, tmp719
	jra .L9		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L21:
| voxel.c:141: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.214_11]
	cmp.l %d0,%a0	| _3, out
	jne .L21		|
| voxel.c:142: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:150: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:154: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:158: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L36		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L32:
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L33		|
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L33:
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L34		|
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L34:
| voxel.c:232: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L35		|
| voxel.c:232: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L35:
| voxel.c:233: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L36:
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
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
	move.l #_y_table+1024,%d6	|, ivtmp.350
| voxel.c:242: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:241: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:240: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L49:
| voxel.c:149: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:244: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:246: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:246: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _205
	add.w #60,%d2	|, _205
| voxel.c:246: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.350, ivtmp.339
	move.w #-17920,%a2	|, ivtmp.336
.L50:
| voxel.c:244: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.336,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:246: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:243: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.336
	cmp.w #17920,%a2	|, ivtmp.336
	jne .L50		|
| voxel.c:249: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:251: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:251: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:62: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:254: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:255: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L106		|
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:242: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:242: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.350
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:260: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.327
	clr.b %d2	| max_height_lsm_flag.249
	clr.b %d1	| max_height_lsm.248
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.327, ivtmp.320
.L55:
| voxel.c:263: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:263: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.248, _72
	jls .L54		|
| voxel.c:264: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.248
| voxel.c:263: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.249
.L54:
| voxel.c:262: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.320
	cmp.l %a0,%a1	| ivtmp.320, ivtmp.327
	jne .L55		|
| voxel.c:261: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.320, ivtmp.327
	cmp.l #_combined+524289,%a0	|, ivtmp.320
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.249
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.248, max_height
.L57:
| voxel.c:268: 	int bayer[8][8] = {
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
| voxel.c:278: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L58:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
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
	sub.l %a4,%a4	| ivtmp.300
.L81:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L73		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L73:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L74		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L74:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L75		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L75:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L76		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L76:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L77		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L77:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L78		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L78:
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L79		|
| voxel.c:284: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L79:
| voxel.c:289: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _184
	move.b %d7,%d1	|, _184
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _184,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _184
	move.l %d1,68(%sp)	| _184, %sfp
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _166
	and.l %d0,%d7	| mask, _166
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _166, iftmp.11_167
	lsl.w #8,%d6	|, iftmp.11_167
	swap %d6	| iftmp.11_167
	clr.w %d6	| iftmp.11_167
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _166,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_170
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _166,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_176
| voxel.c:291: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.299
| voxel.c:286: 			for (int color1 = 0; color1 < 16; color1++) {
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
	move.l %d3,%d2	| color1, ivtmp.291
	neg.l %d2	| ivtmp.291
	move.l %a3,%a0	| ivtmp.299, ivtmp.292
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.291, _54
| voxel.c:229: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _54, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_167, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:230: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _54
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_170,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:231: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _54
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_176,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:232: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _54
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:292: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.291, tmp229
| voxel.c:294: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.300, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:294: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:287: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.291
	lea (-3840,%a0),%a0	|, ivtmp.292
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.291,
	jne .L70		|
| voxel.c:286: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:286: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.299
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:279: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.300
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.300,
	jne .L81		|
| voxel.c:278: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:278: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L58		|
| voxel.c:303: 	short top_envelope[20] = {
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
| voxel.c:309: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.272
	lea _view_min+80,%a6	|, ivtmp.275
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.277
	lea (156,%sp),%a4	|,, ivtmp.279
	lea _view_max+80,%a3	|, ivtmp.282
	lea _view_max,%a2	|, ivtmp.284
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.272, _320
.L82:
| voxel.c:317: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _40
| voxel.c:317: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_294]
| voxel.c:317: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_316]
| voxel.c:318: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _45
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _45
| voxel.c:318: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _45, MEM[(short int *)_318]
| voxel.c:318: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _45, MEM[(short int *)_295]
| voxel.c:316: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.272, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.265
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L83:
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_46],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_190]
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:320: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:321: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L106:
| voxel.c:255: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:257: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:242: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:242: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.350
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.291
	neg.l %d2	| ivtmp.291
| voxel.c:286: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.299, ivtmp.292
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
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_74(D)->dirx, _5
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d1,%d2	|, _9
	add.w #-160,%d2	|, _9
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d4	| pos_74(D)->diry, _11
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d5	| _9,
	muls.w %d3,%d5	| _5, tmp152
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp153
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d4,%d5	| _11, tmp154
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp156
	clr.w %d5	| tmp156
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d4,%d2	| _11, tmp157
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp158
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp158, tmp159
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d5	| tmp159, tmp161
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_74(D)->y
	move.w 2(%a0),%d2	| pos_74(D)->y, pos_74(D)->y
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp163
	clr.w %d2	| tmp163
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_74(D)->x, tmp165
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp166
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp167
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp168
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp169
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp170
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp171
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp172
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp173
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d3	|, tmp174
	asr.w #4,%d3	|, tmp174
	move.w %d3,%a0	| tmp174, tmp175
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp175, tmp176
	add.l %a0,%a0	| tmp176, tmp177
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|,
	muls.w #80,%d3	|, tmp178
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp178, tmp180
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp180, tmp180, tmp181
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp183
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp184
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d1.l),%a0	| tmp181, tmp184, tmp185
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:395: 	y_offset -= y_min;
	move.w 74(%sp),%a4	| y_offset, _25
	sub.w 50(%sp),%a4	| %sfp, _25
| voxel.c:397: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:376: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp188
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:407: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L107		|
	lea _opacity_table+4,%a3	|, ivtmp.385
| voxel.c:398: 	unsigned short z = STEPS_MIN;
	moveq #4,%d6	|, z
| voxel.c:392: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
	lea _combined,%a5	|, tmp227
| voxel.c:363: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp234
.L110:
| voxel.c:338: 	asm (
#APP
| 338 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d0	| index_mask, index
| voxel.c:415: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d0.l),%d4	| _30->both, _31
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| _31
	move.b %d4,%d0	| _31, _31
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _31, tmp194
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a4,%d3	| _25, sample_y
	add.w (%a1,%d0.l),%d3	| (*y_table_shifted_174)[_32], sample_y
| voxel.c:472: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_197
| voxel.c:417: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L111		|
| voxel.c:419: 			if (z < FOG_START) {
	cmp.w #39,%d6	|, z
	jhi .L112		|
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp195
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp196
| voxel.c:363: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp197
| voxel.c:363: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_131, _132
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _88
	jlt .L133		|
.L113:
| voxel.c:427: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _88, y
	jlt .L114		|
	sub.w %d3,%d1	| _88, tmp199
	and.l #65535,%d1	|, tmp200
	addq.l #1,%d1	|, tmp201
	move.l %d1,%d0	| tmp201, tmp203
	add.l %d1,%d0	| tmp201, tmp203
	add.l %d0,%d0	| tmp203, tmp204
	add.l %d0,%d1	| tmp204, tmp205
	lsl.l #5,%d1	|, tmp206
	move.l %a0,%d0	| pBlock, _68
	sub.l %d1,%d0	| tmp206, _68
.L115:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _132, pBlock
| 0 "" 2
| voxel.c:429: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:427: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _68, pBlock
	jne .L115		|
	move.w %d3,%d0	| _88, prephitmp_197
	subq.w #1,%d0	|, prephitmp_197
	move.w %d0,%d1	| prephitmp_197, y
.L108:
.L114:
| voxel.c:456: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:457: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp224
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:460: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp225
	and.w #15,%d3	|, tmp225
	jeq .L120		|
| voxel.c:407: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.385
	cmp.w #-1,%d1	|, y
	jne .L110		|
.L129:
| voxel.c:472: 	return y + y_min;
	add.w 50(%sp),%d0	| %sfp, <retval>
.L107:
| voxel.c:473: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L112:
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	move.w %d3,46(%sp)	| sample_y, %sfp
	jmi .L134		|
.L116:
| voxel.c:367: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d3	|
	move.b (%a3),%d3	| MEM[(unsigned char *)_151],
	move.w %d3,%a2	|, opacity_preshifted
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp209
| voxel.c:367: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d4,%a2	| tmp209, offset
| voxel.c:368: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d4	| _136
	move.w %a2,%d4	| offset, _136
| voxel.c:445: 				while (y >= sample_y) {
	cmp.w 46(%sp),%d1	| %sfp, y
	jlt .L111		|
	move.l %d4,%a2	| _136, tmp228
	add.l #_pdata_table,%a2	|, tmp228
	move.w 46(%sp),%d3	| %sfp, _208
.L117:
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp212
	and.l %d1,%d0	| y, tmp212
	add.l %d0,%d0	| tmp212, tmp213
	add.l %d0,%d0	| tmp213, tmp214
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d0.l),%d0	| *_41, *_41
#APP
| 330 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_41, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_197
| voxel.c:445: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _208
	jle .L117		|
.L111:
| voxel.c:456: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:457: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp219
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:460: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp220
	and.w #15,%d3	|, tmp220
	jne .L118		|
.L120:
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp221
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp222
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L118:
| voxel.c:403: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d6	|, z
	jeq .L129		|
| voxel.c:407: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.385
	cmp.w #-1,%d1	|, y
	jne .L110		|
	jra .L129		|
.L133:
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _88
	jra .L113		|
.L134:
	clr.w 46(%sp)	| %sfp
	jra .L116		|
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L135		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L137:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:480: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L137		|
.L135:
| voxel.c:482: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L142		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L143:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:480: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L143		|
.L142:
| voxel.c:487: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:488: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:506: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:507: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:508: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:514: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.434
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L152:
| voxel.c:525: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:526: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:527: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:506: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:507: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:506: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:507: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:506: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:507: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:532: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:532: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:524: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.434
	cmp.l %d3,%a3	| _445, ivtmp.434
	jne .L152		|
| voxel.c:534: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.440
	clr.w %d0	| vect__18.440
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.440
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.440, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:540: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L160		|
	cmp.w #128,%d0	|, val
	jge .L161		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:545: }
	rts	
.L161:
| voxel.c:543: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:545: }
	rts	
.L160:
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:545: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-56	|,
	movem.l #16176,-(%sp)	|,
| voxel.c:550: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d3	| pos.dirx, _4
	neg.w %d3	| _4
	move.w _pos+8,%d4	| pos.diry, _8
	neg.w %d4	| _8
| voxel.c:559: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:561: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:589: 		if (((frame - 3) & 31) < 4) {
	move.l 8(%fp),%d6	| frame, tmp238
	subq.l #3,%d6	|, tmp238
| voxel.c:589: 		if (((frame - 3) & 31) < 4) {
	moveq #28,%d0	|,
	and.l %d6,%d0	| tmp238,
	move.l %d0,%a3	|, _14
| voxel.c:582: 		if ((frame & 31) < 4) {
	moveq #28,%d0	|, tmp239
	and.l 8(%fp),%d0	| frame, tmp239
	lea _palette_vectors+6,%a1	|, ivtmp.471
| voxel.c:561: 	*p++ = 0;
	lea (-45,%fp),%a0	|,, p
	move.l %fp,%d5	|, tmp374
	subq.l #3,%d5	|, tmp374
	tst.l %d0	| tmp239
	jeq .L199		|
	cmp.w #0,%a3	|, _14
	jeq .L175		|
.L174:
| voxel.c:564: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w -54(%fp),%d1	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d2	| normal_lcs.a[2], b$a$2
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _4,
	muls.w %d1,%d0	| b$a$0, tmp240
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp241
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d6	| b$a$2,
	muls.w %d4,%d6	| _8, tmp242
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp243
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d0	| tmp243, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp245
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp247
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d1	| _8, tmp248
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp249
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d6	| _4,
	muls.w %d2,%d6	| b$a$2, tmp250
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp251
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d1	| tmp251, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp253
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp255
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp255, result
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	move.w %d0,%d6	| result, _321
	jmi .L219		|
.L167:
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	muls.w #123,%d1	|, tmp257
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp259
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d2	|, tmp260
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp262
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp262, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L220		|
.L168:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d1	| _321, _208
| voxel.c:543: 	return val < 0 ? 0 : (
	jmi .L200		|
.L224:
	cmp.w #128,%d1	|, _208
	jge .L201		|
	add.b %d1,%d1	| _208, tmp267
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| tmp267, MEM[(unsigned char *)p_297]
| voxel.c:543: 	return val < 0 ? 0 : (
	add.b %d6,%d6	| _321, tmp375
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	lea (3,%a0),%a2	|, p, p
.L170:
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	move.b %d6,1(%a0)	| tmp375, MEM[(unsigned char *)p_297 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d6,-1(%a2)	| tmp375, MEM[(unsigned char *)p_80 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.471
	cmp.l %a2,%d5	| p, tmp374
	jeq .L176		|
	move.l %a2,%a0	| p, p
| voxel.c:564: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_100], normal_lcs
	move.w -54(%fp),%d1	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d2	| normal_lcs.a[2], b$a$2
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _4,
	muls.w %d1,%d0	| b$a$0, tmp240
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp241
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d6	| b$a$2,
	muls.w %d4,%d6	| _8, tmp242
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp243
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d0	| tmp243, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp245
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp247
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d1	| _8, tmp248
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp249
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d6	| _4,
	muls.w %d2,%d6	| b$a$2, tmp250
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp251
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d1	| tmp251, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp253
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp255
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp255, result
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	move.w %d0,%d6	| result, _321
	jpl .L167		|
	jra .L219		|
.L212:
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d0	| iftmp.43_217
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.43_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.497
	cmp.l %a0,%d5	| p, tmp374
	jeq .L176		|
.L199:
| voxel.c:564: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_292], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_292], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d7	| normal_lcs.a[2], b$a$2
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp321
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp322
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d7,%d2	| b$a$2, tmp323
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp324
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp324, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp326
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp328
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp329
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp330
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d6	| _8,
	muls.w %d7,%d6	| b$a$2,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|,
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp332, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp334
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp336
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp336, accum$c$y
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	jmi .L221		|
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp338
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp338
	move.l %d2,%a2	| tmp338, tmp340
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d2	| b$a$2,
	muls.w #23,%d2	|, tmp341
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp343
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %a2,%d2	| tmp340, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L222		|
.L189:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d2	| accum$c$y, _545
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d0	| b$a$0
	neg.l %d0	| tmp349
	move.l %d0,%d7	| tmp349, tmp350
	lsl.l #7,%d7	|, tmp350
| voxel.c:581: 		if (c_left < 0) c_left = 0;
	tst.w %d0	| result
	jlt .L223		|
.L190:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d0	| accum$c$y, _426
| voxel.c:589: 		if (((frame - 3) & 31) < 4) {
	cmp.w #0,%a3	|, _14
	jeq .L191		|
.L229:
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jlt .L206		|
	cmp.w #128,%d2	|, _545
	jge .L207		|
	add.b %d2,%d2	| _545, tmp357
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| tmp357, MEM[(unsigned char *)p_287]
.L193:
| voxel.c:543: 	return val < 0 ? 0 : (
	move.b %d1,%d2	|, iftmp.43_221
	add.b %d1,%d2	| accum$c$y, iftmp.43_221
.L197:
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.43_221, MEM[(unsigned char *)p_287 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d0	| _426
	jlt .L212		|
	cmp.w #128,%d0	|, _426
	jge .L213		|
	add.b %d0,%d0	| _426, iftmp.43_217
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.43_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.497
	cmp.l %a0,%d5	| p, tmp374
	jne .L199		|
	jra .L176		|
.L219:
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	clr.w %d6	| _321
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	muls.w #123,%d1	|, tmp257
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp259
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d2	|, tmp260
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp262
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp262, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L168		|
.L220:
	clr.w %d1	| result
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d1	| _321, _208
| voxel.c:543: 	return val < 0 ? 0 : (
	jpl .L224		|
.L200:
	clr.b %d1	| _212
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| _212, MEM[(unsigned char *)p_297]
| voxel.c:543: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, result
	jlt .L171		|
.L231:
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	st 1(%a0)		| MEM[(unsigned char *)p_297 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	st -1(%a0)		| MEM[(unsigned char *)p_203 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.471
	cmp.l %a0,%d5	| p, tmp374
	jne .L174		|
.L176:
| voxel.c:597: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:598: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:600: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:601: }
	addq.l #4,%sp	|,
	movem.l -88(%fp),#3324	|,
	unlk %fp		|
	rts	
.L202:
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.42_68
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.42_68, MEM[(unsigned char *)p_744]
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.42_48
	tst.w %d0	| _135
	jlt .L184		|
.L233:
	cmp.w #128,%d0	|, _135
	jlt .L182		|
	st %d2		| iftmp.42_48
.L184:
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.42_48, MEM[(unsigned char *)p_744 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:543: 	return val < 0 ? 0 : (
	cmp.w #128,%d1	|, result
	jlt .L183		|
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	st -1(%a0)		| MEM[(unsigned char *)p_76 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.484
	cmp.l %a0,%d5	| p, tmp374
	jeq .L176		|
.L175:
| voxel.c:564: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp278
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp279
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d6,%d2	| b$a$2, tmp280
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp281
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp281, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp283
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp286
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp287
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d7	| b$a$2,
	muls.w %d4,%d7	| _8, tmp288
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp289
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d2	| tmp289, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp291
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp293
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp293, result
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	move.w %d1,%d7	| result, _153
	jmi .L225		|
.L177:
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp295
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d6	|, tmp298
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp300
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp300, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L226		|
.L178:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d2	| _153, _120
| voxel.c:588: 		if (c_right < 0) c_right = 0;
	tst.w %d0	| result
	jlt .L227		|
.L179:
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d0	| _153, _135
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d2	| _120
	jlt .L202		|
	cmp.w #128,%d2	|, _120
	jge .L203		|
	add.b %d2,%d2	| _120, tmp312
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| tmp312, MEM[(unsigned char *)p_744]
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d0	| _135
	jge .L228		|
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	clr.b 1(%a0)	| MEM[(unsigned char *)p_744 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
.L183:
| voxel.c:543: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.484
	cmp.l %a0,%d5	| p, tmp374
	jeq .L176		|
.L218:
| voxel.c:564: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_294], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| b$a$0,
	muls.w %d4,%d1	| _8, tmp278
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp279
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d6,%d2	| b$a$2, tmp280
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp281
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp281, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp283
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| _4,
	muls.w %d0,%d2	| b$a$0, tmp286
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp287
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d7	| b$a$2,
	muls.w %d4,%d7	| _8, tmp288
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp289
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d7,%d2	| tmp289, result
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp291
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp293
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp293, result
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	move.w %d1,%d7	| result, _153
	jpl .L177		|
	jra .L225		|
.L221:
	clr.w %d1	| accum$c$y
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp338
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp338
	move.l %d2,%a2	| tmp338, tmp340
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d2	| b$a$2,
	muls.w #23,%d2	|, tmp341
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp343
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %a2,%d2	| tmp340, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L189		|
.L222:
	clr.w %d2	| result
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d2	| accum$c$y, _545
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d0	| b$a$0
	neg.l %d0	| tmp349
	move.l %d0,%d7	| tmp349, tmp350
	lsl.l #7,%d7	|, tmp350
| voxel.c:581: 		if (c_left < 0) c_left = 0;
	tst.w %d0	| result
	jge .L190		|
.L223:
	clr.w %d0	| result
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d0	| accum$c$y, _426
| voxel.c:589: 		if (((frame - 3) & 31) < 4) {
	cmp.w #0,%a3	|, _14
	jne .L229		|
.L191:
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d7	| tmp359
	asr.l #7,%d7	|, tmp360
| voxel.c:588: 		if (c_right < 0) c_right = 0;
	tst.w %d7	| result
	jlt .L230		|
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d1	| result, accum$c$y
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jlt .L208		|
.L232:
	cmp.w #128,%d2	|, _545
	jge .L209		|
	add.b %d2,%d2	| _545, iftmp.43_225
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.43_225, MEM[(unsigned char *)p_287]
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_221
	tst.w %d1	| accum$c$y
	jlt .L197		|
.L194:
	cmp.w #128,%d1	|, accum$c$y
	jlt .L193		|
	st %d2		| iftmp.43_221
	jra .L197		|
.L227:
| voxel.c:588: 		if (c_right < 0) c_right = 0;
	clr.w %d0	| result
	jra .L179		|
.L225:
| voxel.c:570: 		if (c_sun < 0) c_sun = 0;
	clr.w %d7	| _153
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp295
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d6	|, tmp298
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d6	|, tmp300
| voxel.c:512: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d2	| tmp300, result
| voxel.c:576: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L178		|
.L226:
	clr.w %d2	| result
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d2	| _153, _120
| voxel.c:588: 		if (c_right < 0) c_right = 0;
	tst.w %d0	| result
	jge .L179		|
	jra .L227		|
.L206:
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| _122
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| _122, MEM[(unsigned char *)p_287]
	jra .L194		|
.L201:
| voxel.c:543: 	return val < 0 ? 0 : (
	st %d1		| _212
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| _212, MEM[(unsigned char *)p_297]
| voxel.c:543: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, result
	jge .L231		|
.L171:
	add.b %d6,%d6	| _321, tmp375
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	lea (3,%a0),%a2	|, p, p
	jra .L170		|
.L213:
| voxel.c:543: 	return val < 0 ? 0 : (
	st %d0		| iftmp.43_217
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d0,-1(%a0)	| iftmp.43_217, MEM[(unsigned char *)p_70 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.497
	cmp.l %a0,%d5	| p, tmp374
	jne .L199		|
	jra .L176		|
.L207:
| voxel.c:543: 	return val < 0 ? 0 : (
	st %d2		| _122
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| _122, MEM[(unsigned char *)p_287]
	jra .L194		|
.L230:
| voxel.c:588: 		if (c_right < 0) c_right = 0;
	clr.w %d7	| result
| voxel.c:538: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d7,%d1	| result, accum$c$y
| voxel.c:543: 	return val < 0 ? 0 : (
	tst.w %d2	| _545
	jge .L232		|
.L208:
	clr.b %d2	| iftmp.43_225
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.43_225, MEM[(unsigned char *)p_287]
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_221
	tst.w %d1	| accum$c$y
	jlt .L197		|
	jra .L194		|
.L209:
	st %d2		| iftmp.43_225
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.43_225, MEM[(unsigned char *)p_287]
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.43_221
	tst.w %d1	| accum$c$y
	jlt .L197		|
	jra .L194		|
.L182:
	add.b %d0,%d0	| _135, tmp314
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	move.b %d0,1(%a0)	| tmp314, MEM[(unsigned char *)p_744 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:543: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.484
	cmp.l %a0,%d5	| p, tmp374
	jne .L218		|
	jra .L176		|
.L203:
| voxel.c:543: 	return val < 0 ? 0 : (
	st %d2		| iftmp.42_68
| voxel.c:593: 		*p++ = fixp2color(accum.c.z);
	move.b %d2,(%a0)	| iftmp.42_68, MEM[(unsigned char *)p_744]
| voxel.c:543: 	return val < 0 ? 0 : (
	clr.b %d2	| iftmp.42_48
	tst.w %d0	| _135
	jlt .L184		|
	jra .L233		|
.L228:
	cmp.w #128,%d0	|, _135
	jlt .L182		|
| voxel.c:594: 		*p++ = fixp2color(accum.c.y);
	st 1(%a0)		| MEM[(unsigned char *)p_744 + 1B]
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:543: 	return val < 0 ? 0 : (
	add.b %d7,%d7	| _153, tmp316
| voxel.c:595: 		*p++ = fixp2color(accum.c.x);
	move.b %d7,-1(%a0)	| tmp316, MEM[(unsigned char *)p_19 + 4294967295B]
| voxel.c:562: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.484
	cmp.l %a0,%d5	| p, tmp374
	jne .L218		|
	jra .L176		|
.LC1:
	.ascii "Loading colors.tga\0"
.LC2:
	.ascii "rb\0"
.LC3:
	.ascii "colors.tga\0"
.LC4:
	.ascii "Loading height.tga\0"
.LC5:
	.ascii "height.tga\0"
	.even
	.globl	_load_voxel_data
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:605: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp98
	jsr (%a6)		| tmp98
| voxel.c:606: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp100
	jsr (%a5)		| tmp100
	move.l %d0,%d5	| tmp109, file1
| voxel.c:607: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L256		|
| voxel.c:611: 	image_t colors = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:612: 	if (!colors.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| colors.width
	jne .L252		|
	lea _fclose,%a2	|, tmp104
.L237:
| voxel.c:660: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp104
	addq.l #4,%sp	|,
.L247:
| voxel.c:662: 	return 0;
	moveq #0,%d0	| <retval>
.L234:
| voxel.c:663: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L252:
| voxel.c:614: 	set_top_palette(colors.colors);
	move.l 52(%sp),-(%sp)	| colors.colors,
	jsr _set_top_palette		|
| voxel.c:615: 	set_palette_immediately(colors.colors);
	move.l 56(%sp),-(%sp)	| colors.colors,
	jsr _set_palette_immediately		|
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:618: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:617: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp95
	moveq #72,%d2	|, tmp103
	add.l %sp,%d2	|, tmp103
	lea _fread,%a2	|, tmp99
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:622: 		fflush(stdout);
	lea _fflush,%a4	|, tmp108
.L238:
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L240		|
	move.l %d6,%d0	| remaining, remaining
.L240:
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp103,
	jsr (%a2)		| tmp99
	move.l %d0,%d7	| tmp110, n
| voxel.c:619: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L257		|
| voxel.c:620: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:621: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp95
| voxel.c:622: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp108
	move.l %d2,%a1	| tmp103, ivtmp.519
	move.l %d2,%d0	| tmp103, _86
	add.l %d7,%d0	| n, _86
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L239:
| voxel.c:624: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_84], MEM[(unsigned char *)p_72]
| voxel.c:625: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:623: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.519, _86
	jne .L239		|
	move.l %d7,%d1	| n, tmp69
	add.l %d7,%d1	| n, tmp69
	add.l %d1,%d4	| tmp69, p
	jra .L238		|
.L257:
| voxel.c:628: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp95
| voxel.c:629: 	free_image(&colors);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:631: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp98
| voxel.c:632: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp100
	move.l %d0,%d6	| tmp111, file2
| voxel.c:633: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L258		|
| voxel.c:637: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:638: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L259		|
| voxel.c:639: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:640: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:641: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:644: 		fflush(stdout);
	lea _fflush,%a5	|, tmp106
.L243:
| voxel.c:641: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:641: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L245		|
	move.l %d7,%d0	| remaining, remaining
.L245:
| voxel.c:641: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp103,
	jsr (%a2)		| tmp99
	move.l %d0,%a6	| tmp112, n
| voxel.c:641: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L260		|
| voxel.c:642: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:643: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp95
| voxel.c:644: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp106
	move.l %d2,%a1	| tmp103, ivtmp.512
	move.l %d2,%d0	| tmp103, _67
	add.l %a6,%d0	| n, _67
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L244:
| voxel.c:646: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_69], MEM[(unsigned char *)p_74]
| voxel.c:647: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:645: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.512, _67
	jne .L244		|
	add.l %a6,%a6	| n, tmp84
	add.l %a6,%d4	| tmp84, p
	jra .L243		|
.L260:
| voxel.c:650: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp95
| voxel.c:651: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:653: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp91
	jsr (%a2)		| tmp91
| voxel.c:654: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp91
| voxel.c:655: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:663: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L256:
| voxel.c:608: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:609: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:662: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L234		|
.L258:
| voxel.c:634: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:635: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp104
	jra .L237		|
.L259:
| voxel.c:658: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp104
	jsr (%a2)		| tmp104
	addq.l #4,%sp	|,
| voxel.c:660: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp104
	addq.l #4,%sp	|,
	jra .L247		|
.LC6:
	.ascii "\33H\33f\12\0"
.LC7:
	.ascii "Failed to load voxel data.\0"
.LC8:
	.ascii "Computing tables\0"
.LC9:
	.ascii "Loading cockpit.tga\0"
.LC10:
	.ascii "cockpit.tga\0"
.LC11:
	.ascii "Rendering took %dms per frame.\12\0"
.LC12:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-116,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:667: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:669: 	Super(0L);
	moveq #0,%d0	| tmp407
#APP
| 669 "voxel.c" 1
	movl	%d0,%sp@-	| tmp407
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:671: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:673: 	lineaa();
	jsr _lineaa		|
| voxel.c:676: 	save_palette(saved_palette);
	pea 128(%sp)		|
	jsr _save_palette		|
| voxel.c:678: 	unsigned short *screen = Physbase();
#APP
| 678 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,56(%sp)	| tmp727, %sfp
| voxel.c:680: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:682: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:682: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp728
	jeq .L327		|
| voxel.c:687: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:688: 	build_tables();
	jsr _build_tables		|
| voxel.c:689: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:690: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (126,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 130(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:691: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L263		|
| voxel.c:692: 	read_palette_vectors(cockpit.colors);
	move.l 122(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 56(%sp),%a0	| %sfp, ivtmp.634
	move.l %a0,%d0	| ivtmp.634, _1022
	add.l #32000,%d0	|, _1022
	addq.l #4,%sp	|,
.L264:
| voxel.c:141: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.534_1119]
	cmp.l %d0,%a0	| _1022, ivtmp.634
	jne .L264		|
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.625
	lea _view_max,%a2	|, ivtmp.628
	clr.w %d3	| ivtmp.626
.L269:
| voxel.c:696: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_180], _3
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.626, tmp422
	asr.w #4,%d5	|, tmp422
	ext.l %d5	| tmp423
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp423, tmp424
	add.l %d5,%d5	| tmp424, _214
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d4	|, tmp427
	lsr.l #3,%d4	|, tmp427
	moveq #1,%d6	|,
	and.l %d6,%d4	|, _219
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _214, tmp428
	add.l %d5,%a0	| _214, tmp428
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _219, tmp429
	add.l 52(%sp),%a0	| %sfp, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _3
	jle .L265		|
	mulu.w #160,%d1	|, tmp430
	add.l %a0,%d1	| pBlock, _637
.L266:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:480: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _637
	jne .L266		|
.L265:
| voxel.c:697: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1027], _7
| voxel.c:697: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _9
	sub.w %a0,%d1	| _7, _9
| voxel.c:697: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp432
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d6	| tmp432,
	muls.w #80,%d6	|,
	move.l %d6,%a0	|, tmp433
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _214, tmp435
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp435, tmp436
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d4	| tmp436, tmp437
	move.l 52(%sp),%a0	| %sfp, pBlock
	add.l %d4,%a0	| tmp437, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _9
	jle .L267		|
	mulu.w #160,%d1	|, tmp438
	add.l %a0,%d1	| pBlock, _1120
.L268:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:480: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1120
	jne .L268		|
.L267:
| voxel.c:695: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.626
	cmp.l #_view_min+80,%a1	|, ivtmp.625
	jne .L269		|
| voxel.c:700: 	compute_and_set_bottom_palette(0);
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:701: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:702: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:705: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 126(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 72(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:707: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,134(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (24,%sp),%sp	|,
	clr.w 100(%sp)	| %sfp
| voxel.c:710: 	for(int i=0; i<FRAMES; i++) {
	clr.l 94(%sp)	| %sfp
| voxel.c:708: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,98(%sp)	|, %sfp
	lea _combined,%a4	|, tmp708
.L295:
| voxel.c:107: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.70_233
	move.w (%a0),%d0	| *hw_palette.70_233, _234
| voxel.c:149: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_231
	lea _pos,%a5	|,
	move.w (%a5),%d3	| pos.x, val.9_229
| voxel.c:715: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _24
| voxel.c:716: 		fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 98(%sp),%a0	| %sfp, desired_height
| voxel.c:149: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_231, tmp453
	lsr.w #7,%d0	|, tmp453
| voxel.c:714: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp454
| voxel.c:149: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_229, tmp455
	lsr.w #7,%d1	|, tmp455
| voxel.c:714: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp456
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp457
	add.l %d1,%d0	| tmp456, tmp458
	add.l %d0,%d0	| tmp458, tmp459
| voxel.c:715: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a4,%d0.l),%d0	| combined[_18][_21].D.2699.height, combined[_18][_21].D.2699.height
	and.w #255,%d0	|, combined[_18][_21].D.2699.height
	lsl.w #7,%d0	|, tmp463
	move.w %d4,%d1	| _24, player_height
	sub.w %d0,%d1	| tmp463, player_height
| voxel.c:716: 		fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 98(%sp),%d0	| %sfp, tmp467
	moveq #9,%d6	|,
	asr.w %d6,%d0	|, tmp467
| voxel.c:716: 		fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp467,
	move.l %a1,-(%sp)	|,
	sub.w %d1,%a0	| player_height, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:718: 		if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L270		|
	move.w #-256,%d0	|, altitude_delta
.L271:
| voxel.c:719: 		pos.z += altitude_delta;
	add.w %d0,%d4	| altitude_delta, _34
	move.w %d4,_pos+4	| _34, pos.z
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, pretmp_1205
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 100(%sp),%d1	| %sfp, tmp475
	and.w #8,%d1	|, tmp475
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d1	|, tmp475
	move.w %d1,46(%sp)	| tmp475, %sfp
| voxel.c:720: 		if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d4	|, _34
	jgt .L272		|
.L333:
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -602(%a0),%d1	| MEM[(short int *)pretmp_1205 + 4294966694B], mouse_x
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a0),%a0	| MEM[(short int *)pretmp_1205 + 4294966696B], mouse_y
| voxel.c:149: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d4,%d0	| _34, tmp476
	lsr.w #7,%d0	|, tmp476
| voxel.c:376: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, tmp477
	sub.w %d0,%a1	| tmp476, tmp477
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| tmp477, tmp478
	move.l %a1,%d0	| tmp478, _1101
	add.l %a1,%d0	| tmp478, _1101
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %a0,%a0	| mouse_y,
	move.l %a0,102(%sp)	|, %sfp
	move.w #-100,%a0	|, tmp481
	add.l 102(%sp),%a0	| %sfp, tmp481
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a0,%d4	| tmp481,
	asr.l #2,%d4	|,
	move.l %d4,74(%sp)	|, %sfp
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %d1,%a0	| mouse_x,
	move.l %a0,106(%sp)	|, %sfp
	move.l %a0,%d1	|, tmp482
	add.l #-160,%d1	|, tmp482
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d1	|, _45
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp484
	clr.w %d2	| tmp484
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_229, tmp486
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp486
	move.l %d2,78(%sp)	| tmp486, %sfp
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,70(%sp)	| pos.dirx, %sfp
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%d0	|, _1101
	move.l %d0,86(%sp)	| _1101, %sfp
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,90(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d1,%d2	| _45,
	lsl.l #4,%d2	|,
	move.l %d2,82(%sp)	|, %sfp
	moveq #0,%d0	| x
	move.w 46(%sp),%d0	| %sfp, x
	move.l %d1,-(%sp)	| _45,
	move.l %d0,%a2	| x, x
	pea -160(%a2)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp730, %sfp
	add.l %a2,%a2	| x, tmp495
	add.l #_horizon,%a2	|, tmp495
	move.l %a2,48(%sp)	| tmp495, %sfp
.L289:
| voxel.c:729: 			short y = render(&pos, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 46(%sp),%d0	| %sfp, tmp496
	lsr.w #3,%d0	|, tmp496
	and.l #65535,%d0	|, _51
| voxel.c:729: 			short y = render(&pos, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _51, tmp498
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%d3	| view_max[_51], _1137
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 46(%sp),%d1	| %sfp, _330
	add.w #-160,%d1	|, _330
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 70(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _330, tmp499
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp500
| voxel.c:380: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 72(%sp),%d4	| %sfp, tmp501
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp503
	clr.w %d4	| tmp503
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 72(%sp),%d1	| %sfp, tmp504
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp505
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 70(%sp),%d2	| %sfp, tmp506
	sub.w %d1,%d2	| tmp505, tmp506
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d4	| tmp506, tmp508
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	move.l 78(%sp),%d2	| %sfp, tmp509
	add.l %d4,%d2	| delta_vu, tmp509
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp510
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp511
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp512
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp513
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp514
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp515
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp, tmp516
	asr.w #4,%d1	|, tmp516
	ext.l %d1	| tmp517
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp517, tmp518
	add.l %d1,%d1	| tmp518, tmp518
	move.l %d1,62(%sp)	| tmp518, %sfp
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp521
	moveq #1,%d5	|,
	and.l %d1,%d5	| tmp521,
	move.l %d5,66(%sp)	|, %sfp
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	| _1137,
	muls.w #80,%d1	|, tmp522
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d1	| %sfp, tmp524
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp524, tmp525
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d1	|, tmp526
	move.l 52(%sp),%a2	| %sfp, pBlock
	add.l %d1,%a2	| tmp526, pBlock
| voxel.c:395: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),56(%sp)	| view_min[_51], %sfp
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 74(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp731, y_offset
| voxel.c:395: 	y_offset -= y_min;
	sub.w 56(%sp),%a6	| %sfp, _369
| voxel.c:397: 	short y = y_max - y_min;
	move.w %d3,%a0	| _1137, _1134
	move.w %d3,%d0	| _1137, y
	sub.w 56(%sp),%d0	| %sfp, y
| voxel.c:407: 		if (y < 0) goto done;
	jmi .L274		|
	lea _opacity_table+4,%a3	|, ivtmp.588
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.l 86(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:398: 	unsigned short z = STEPS_MIN;
	moveq #4,%d5	|, z
| voxel.c:392: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L276:
| voxel.c:338: 	asm (
#APP
| 338 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d3, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:415: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a4,%d1.l),%d7	| _382->both, _383
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| _383
	move.b %d7,%d1	| _383, _383
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| _383, tmp540
| voxel.c:416: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a6,%d3	| _369, sample_y
	add.w (%a1,%d1.l),%d3	| (*y_table_shifted_319)[_385], sample_y
| voxel.c:472: 	return y + y_min;
	move.w %d0,%a0	| y, prephitmp_1132
| voxel.c:417: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L277		|
| voxel.c:419: 			if (z < FOG_START) {
	cmp.w #39,%d5	|, z
	jhi .L278		|
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp541
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp542
| voxel.c:363: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp543
| voxel.c:363: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|,
	move.l (%a5,%d7.l),%d1	| *_395, _396
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _397
	jlt .L328		|
.L279:
| voxel.c:427: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _397, y
	jlt .L280		|
	sub.w %d3,%d0	| _397, tmp545
	and.l #65535,%d0	|, tmp546
	addq.l #1,%d0	|, tmp547
	move.l %d0,%a0	| tmp547, tmp549
	add.l %d0,%a0	| tmp547, tmp549
	add.l %a0,%a0	| tmp549, tmp550
	move.l %a0,%d7	| tmp550, tmp551
	add.l %d0,%d7	| tmp547, tmp551
	lsl.l #5,%d7	|, tmp552
	move.l %a2,%d0	| pBlock, _1071
	sub.l %d7,%d0	| tmp552, _1071
.L281:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _396, pBlock
| 0 "" 2
| voxel.c:429: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:427: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1071
	jne .L281		|
	move.w %d3,%a0	| _397, prephitmp_1132
	subq.w #1,%a0	|, prephitmp_1132
	move.w %a0,%d0	| prephitmp_1132, y
.L280:
| voxel.c:456: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:457: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp698
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:460: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp699
	and.w #15,%d1	|, tmp699
	jne .L286		|
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp567
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp568
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L285:
| voxel.c:403: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d5	|, z
	jeq .L324		|
.L286:
| voxel.c:407: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.588
	cmp.w #-1,%d0	|, y
	jne .L276		|
.L324:
| voxel.c:472: 	return y + y_min;
	add.w 56(%sp),%a0	| %sfp, _1134
	move.w %a0,%d3	| _1134, _1137
.L274:
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 48(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_1110], _284
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d0,%a0	| _284, _285
| voxel.c:486: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp569
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp570
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d0	| %sfp, tmp572
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp572, tmp573
| voxel.c:325: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d0	| %sfp, tmp574
	move.l 52(%sp),%a1	| %sfp, pBlock
	add.l %d0,%a1	| tmp574, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _285,
	jge .L287		|
	move.w %a0,%d1	| _285,
	mulu.w #160,%d1	|,
	lea (%a1,%d1.l),%a0	| pBlock, tmp575, _1064
	move.l 90(%sp),%d0	| %sfp, movep_data
.L288:
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 330 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:480: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:478: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%a0	| pBlock, _1064
	jne .L288		|
.L287:
| voxel.c:487: 	horizon[x] = y;
	move.l 48(%sp),%a0	| %sfp,
	move.w %d3,(%a0)	| _1137, MEM[(short int *)_1110]
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 82(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,48(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L289		|
| voxel.c:733: 		compute_and_set_bottom_palette(i);
	move.l 94(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:734: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d0	| pos.speed, _61
| voxel.c:734: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d3	| pos.dirx, _62
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d1	| _62,
	muls.w %d0,%d1	| _61, tmp581
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp582
| voxel.c:734: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d1,(%a0)	| tmp582, pos.x
| voxel.c:735: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d4	| pos.diry, _68
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%a1	| _68, _237
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d1	| _68,
	muls.w %d0,%d1	| _61, tmp585
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp586
| voxel.c:735: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _73
	add.w %d1,%a0	| tmp586, _73
| voxel.c:737: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d1	|, tmp588
	sub.l 106(%sp),%d1	| %sfp, tmp588
| voxel.c:737: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d1	|, tmp589
| voxel.c:737: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d1,%d0	| tmp589, _79
| voxel.c:738: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _79, tmp590
	asr.w #3,%d1	|, tmp590
| voxel.c:738: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _79, tmp591
	asr.w #4,%d2	|, tmp591
| voxel.c:738: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d2,%d1	| tmp591, tmp592
| voxel.c:738: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, _86
| voxel.c:739: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _79
	jle .L290		|
| voxel.c:739: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| _86, _89
.L291:
| voxel.c:735: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _73, pos.y
| voxel.c:739: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _89, pos.speed
| voxel.c:741: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d5	|, tmp595
	not.b %d5	| tmp595
	sub.l 106(%sp),%d5	| %sfp, tmp595
| voxel.c:741: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d5	|, _95
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a1,-(%sp)	| _237,
	move.l %d5,-(%sp)	| _95,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp598
| voxel.c:742: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w %d3,%d2	| _62, _99
	add.w %d0,%d2	| tmp598, _99
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _95,
	move.w %d2,%a1	| _99,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp602
| voxel.c:743: 		pos.diry -= fixp_mul(rot, pos.dirx);
	sub.w %d0,%d4	| tmp602, _103
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d2,%d0	| _99, tmp603
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp604
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d3	| _103,
	muls.w %d4,%d3	| _103, tmp605
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp606
| voxel.c:746: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d0	| tmp606, tmp607
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp607, tmp608
	moveq #-128,%d0	|, tmp609
	add.l %a0,%d0	| tmp608, tmp609
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp610
| voxel.c:165: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _256
	sub.w %d0,%d3	| tmp610, _256
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _256,
	muls.w %d2,%d0	| _99, tmp613
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp614
| voxel.c:747: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp612
	clr.w %d0	| tmp612
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d3	| _103, tmp619
| voxel.c:157: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp620
| voxel.c:747: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp620, tmp612
	move.l %d0,_pos+6	| tmp612, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:750: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:750: 		if (pressed_keys.up) {
	jpl .L292		|
| voxel.c:751: 			desired_height += FIXP(1, 0);
	add.w #128,98(%sp)	|, %sfp
.L292:
| voxel.c:756: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:756: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L293		|
| voxel.c:757: 			desired_height -= FIXP(1, 0);
	add.w #-128,98(%sp)	|, %sfp
| voxel.c:758: 			if (desired_height < FIXP(0, 0)) {
	jmi .L329		|
.L293:
| voxel.c:765: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:765: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp632
	and.w #8192,%d0	|, _1114
| voxel.c:194: 	data &= mask;
	move.l 52(%sp),%a5	| %sfp,
	move.l 4(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 4B], tmp633
	and.l #-536879105,%d3	|, tmp633
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1114
	move.w %d0,%d1	| _1114, _1114
| voxel.c:194: 	data &= mask;
	move.l (%a5),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142], tmp638
	and.l #-536879105,%d4	|, tmp638
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1114
	swap %d2	| _1114
	clr.w %d2	| _1114
	move.w %d0,%d2	| _1114, _1114
| voxel.c:196: 	*out++ = data;
	or.l %d2,%d4	| _1114, tmp638
	move.l %d4,(%a5)	| tmp638, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142]
	or.l %d1,%d3	| _1114, tmp633
	move.l %d3,4(%a5)	| tmp633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 4B]
| voxel.c:766: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp646
	and.b #1,%d0	|, _115
| voxel.c:766: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp649
	ext.w %d0	| tmp648
	neg.w %d0	| tmp650
	lsl.w %d1,%d0	|, _188
| voxel.c:194: 	data &= mask;
	move.l 644(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 644B], tmp651
	and.l #-536879105,%d3	|, tmp651
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _188
	move.w %d0,%d1	| _188, _188
| voxel.c:194: 	data &= mask;
	move.l 640(%a5),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 640B], tmp656
	and.l #-536879105,%d4	|, tmp656
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _188
	swap %d2	| _188
	clr.w %d2	| _188
	move.w %d0,%d2	| _188, _188
| voxel.c:196: 	*out++ = data;
	or.l %d2,%d4	| _188, tmp656
	move.l %d4,640(%a5)	| tmp656, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 640B]
	or.l %d1,%d3	| _188, tmp651
	move.l %d3,644(%a5)	| tmp651, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 644B]
| voxel.c:767: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp664
	and.b #1,%d1	|, _116
| voxel.c:767: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp667
	ext.w %d1	| tmp666
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1125
| voxel.c:768: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp670
	and.b #1,%d0	|, _117
| voxel.c:768: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp673
	ext.w %d0	| tmp672
	neg.w %d0	| tmp674
	moveq #11,%d6	|,
	lsl.w %d6,%d0	|, _1041
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.w 320(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:194: 	data &= mask;
	or.w %d1,%d2	| _1125, data
| voxel.c:195: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _1041, data
	move.w %d2,320(%a5)	| data, MEM[(short unsigned int *)screen_142 + 320B]
| voxel.c:199: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d2	| _1125, data
| voxel.c:199: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _1041, data
	move.w %d2,322(%a5)	| data, MEM[(short unsigned int *)screen_142 + 322B]
| voxel.c:203: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-30720,324(%a5)	|, MEM[(short unsigned int *)screen_142 + 324B]
| voxel.c:207: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:206: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:207: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d0,%d1	| _1041, data
	move.w %d1,326(%a5)	| data, MEM[(short unsigned int *)screen_142 + 326B]
| voxel.c:710: 	for(int i=0; i<FRAMES; i++) {
	addq.l #1,94(%sp)	|, %sfp
| voxel.c:710: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,100(%sp)	|, %sfp
	cmp.l #800,94(%sp)	|, %sfp
	jne .L295		|
.L331:
| voxel.c:773: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:774: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 110(%sp),%a0	| %sfp, tmp680
| voxel.c:774: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp680, tmp682
	add.l %a0,%d0	| tmp680, tmp682
	add.l %d0,%d0	| tmp682, tmp683
| voxel.c:775: 	unsigned long millis_per_frame = millis / FRAMES;
	move.l 94(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:776: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp734,
	pea .LC11		|
	jsr _printf		|
| voxel.c:777: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:778: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L263:
| voxel.c:781: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.79_181
	move.l 4(%a0),%d0	| stdin.79_181->__bufp, _179
	addq.l #4,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.79_181->__get_limit, _179
	jcc .L296		|
.L330:
	addq.l #1,%d0	|, _179
	move.l %d0,4(%a0)	| _179, stdin.79_181->__bufp
| voxel.c:783: 	install_palette(saved_palette);
	pea 128(%sp)		|
	jsr _install_palette		|
| voxel.c:785: }
	addq.l #4,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (116,%sp),%sp	|,
	rts	
.L327:
| voxel.c:683: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:684: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:781: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.79_181
	move.l 4(%a0),%d0	| stdin.79_181->__bufp, _179
	addq.l #4,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.79_181->__get_limit, _179
	jcs .L330		|
.L296:
	move.l %a0,-(%sp)	| stdin.79_181,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:783: 	install_palette(saved_palette);
	pea 128(%sp)		|
	jsr _install_palette		|
| voxel.c:785: }
	addq.l #4,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (116,%sp),%sp	|,
	rts	
.L328:
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _397
	jra .L279		|
.L329:
| voxel.c:758: 			if (desired_height < FIXP(0, 0)) {
	clr.w 98(%sp)	| %sfp
| voxel.c:765: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:765: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp632
	and.w #8192,%d0	|, _1114
| voxel.c:194: 	data &= mask;
	move.l 52(%sp),%a5	| %sfp,
	move.l 4(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 4B], tmp633
	and.l #-536879105,%d3	|, tmp633
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1114
	move.w %d0,%d1	| _1114, _1114
| voxel.c:194: 	data &= mask;
	move.l (%a5),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142], tmp638
	and.l #-536879105,%d4	|, tmp638
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1114
	swap %d2	| _1114
	clr.w %d2	| _1114
	move.w %d0,%d2	| _1114, _1114
| voxel.c:196: 	*out++ = data;
	or.l %d2,%d4	| _1114, tmp638
	move.l %d4,(%a5)	| tmp638, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142]
	or.l %d1,%d3	| _1114, tmp633
	move.l %d3,4(%a5)	| tmp633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 4B]
| voxel.c:766: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp646
	and.b #1,%d0	|, _115
| voxel.c:766: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp649
	ext.w %d0	| tmp648
	neg.w %d0	| tmp650
	lsl.w %d1,%d0	|, _188
| voxel.c:194: 	data &= mask;
	move.l 644(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 644B], tmp651
	and.l #-536879105,%d3	|, tmp651
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _188
	move.w %d0,%d1	| _188, _188
| voxel.c:194: 	data &= mask;
	move.l 640(%a5),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 640B], tmp656
	and.l #-536879105,%d4	|, tmp656
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _188
	swap %d2	| _188
	clr.w %d2	| _188
	move.w %d0,%d2	| _188, _188
| voxel.c:196: 	*out++ = data;
	or.l %d2,%d4	| _188, tmp656
	move.l %d4,640(%a5)	| tmp656, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 640B]
	or.l %d1,%d3	| _188, tmp651
	move.l %d3,644(%a5)	| tmp651, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_142 + 644B]
| voxel.c:767: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp664
	and.b #1,%d1	|, _116
| voxel.c:767: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp667
	ext.w %d1	| tmp666
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1125
| voxel.c:768: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp670
	and.b #1,%d0	|, _117
| voxel.c:768: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp673
	ext.w %d0	| tmp672
	neg.w %d0	| tmp674
	moveq #11,%d6	|,
	lsl.w %d6,%d0	|, _1041
| voxel.c:195: 	data |= (color & 1) << (15-x);
	move.w 320(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:194: 	data &= mask;
	or.w %d1,%d2	| _1125, data
| voxel.c:195: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _1041, data
	move.w %d2,320(%a5)	| data, MEM[(short unsigned int *)screen_142 + 320B]
| voxel.c:199: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d2	| _1125, data
| voxel.c:199: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _1041, data
	move.w %d2,322(%a5)	| data, MEM[(short unsigned int *)screen_142 + 322B]
| voxel.c:203: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-30720,324(%a5)	|, MEM[(short unsigned int *)screen_142 + 324B]
| voxel.c:207: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d2	| MEM[(short unsigned int *)screen_142 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:206: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:207: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d0,%d1	| _1041, data
	move.w %d1,326(%a5)	| data, MEM[(short unsigned int *)screen_142 + 326B]
| voxel.c:710: 	for(int i=0; i<FRAMES; i++) {
	addq.l #1,94(%sp)	|, %sfp
| voxel.c:710: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,100(%sp)	|, %sfp
	cmp.l #800,94(%sp)	|, %sfp
	jne .L295		|
	jra .L331		|
.L278:
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _1201
	jlt .L332		|
.L283:
| voxel.c:367: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a3),%d1	| MEM[(unsigned char *)_1079], opacity_preshifted
| voxel.c:362: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp555
| voxel.c:367: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a5	| opacity_preshifted, offset
	add.w %d7,%a5	| tmp555, offset
| voxel.c:368: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _409
	move.w %a5,%d1	| offset, _409
| voxel.c:445: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _1201
	jgt .L277		|
	move.l %d1,%a5	| _409, tmp703
	add.l #_pdata_table,%a5	|, tmp703
.L284:
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp558
	and.l %d0,%d1	| y, tmp558
	add.l %d1,%d1	| tmp558, tmp559
	add.l %d1,%d1	| tmp559, tmp560
| voxel.c:330: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a5,%d1.l),%d1	| *_416, *_416
#APP
| 330 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_416, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a0	| y, prephitmp_1132
| voxel.c:445: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _1201
	jle .L284		|
.L277:
| voxel.c:456: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:457: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp565
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:460: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp566
	and.w #15,%d1	|, tmp566
	jne .L285		|
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp567
| voxel.c:173: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp568
| voxel.c:467: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
	jra .L285		|
.L332:
| voxel.c:426: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _1201
	jra .L283		|
.L270:
| voxel.c:719: 		pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L271		|
	move.w #256,%d0	|, altitude_delta
	add.w %d0,%d4	| altitude_delta, _34
	move.w %d4,_pos+4	| _34, pos.z
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, pretmp_1205
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 100(%sp),%d1	| %sfp, tmp475
	and.w #8,%d1	|, tmp475
| voxel.c:723: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d1	|, tmp475
	move.w %d1,46(%sp)	| tmp475, %sfp
| voxel.c:720: 		if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d4	|, _34
	jle .L333		|
.L272:
| voxel.c:720: 		if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -602(%a0),%d1	| MEM[(short int *)pretmp_1205 + 4294966694B], mouse_x
| voxel.c:722: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a0),%a0	| MEM[(short int *)pretmp_1205 + 4294966696B], mouse_y
	moveq #2,%d0	|, _1101
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %a0,%a0	| mouse_y,
	move.l %a0,102(%sp)	|, %sfp
	move.w #-100,%a0	|, tmp481
	add.l 102(%sp),%a0	| %sfp, tmp481
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a0,%d4	| tmp481,
	asr.l #2,%d4	|,
	move.l %d4,74(%sp)	|, %sfp
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %d1,%a0	| mouse_x,
	move.l %a0,106(%sp)	|, %sfp
	move.l %a0,%d1	|, tmp482
	add.l #-160,%d1	|, tmp482
| voxel.c:725: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d1	|, _45
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp484
	clr.w %d2	| tmp484
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_229, tmp486
| voxel.c:169: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp486
	move.l %d2,78(%sp)	| tmp486, %sfp
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,70(%sp)	| pos.dirx, %sfp
| voxel.c:381: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:401: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%d0	|, _1101
	move.l %d0,86(%sp)	| _1101, %sfp
| voxel.c:477: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,90(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d1,%d2	| _45,
	lsl.l #4,%d2	|,
	move.l %d2,82(%sp)	|, %sfp
	moveq #0,%d0	| x
	move.w 46(%sp),%d0	| %sfp, x
	move.l %d1,-(%sp)	| _45,
	move.l %d0,%a2	| x, x
	pea -160(%a2)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp730, %sfp
	add.l %a2,%a2	| x, tmp495
	add.l #_horizon,%a2	|, tmp495
	move.l %a2,48(%sp)	| tmp495, %sfp
	jra .L289		|
.L290:
| voxel.c:740: 		else pos.speed += drag;
	add.w %d1,%d0	| _86, _89
	jra .L291		|
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
	.word	5120
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
