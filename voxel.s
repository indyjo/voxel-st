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
| voxel.c:123: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	tst.b %d0	| dither
	jne .L19		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:123: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.183
	add.l 80(%sp),%a6	| pixels, ivtmp.183
.L5:
| voxel.c:127: 				unsigned char register px = pixels[y*width + 16*chunk + x];
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
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:131: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:131: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:131: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:131: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:131: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:131: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:131: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:131: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:131: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:131: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:131: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:131: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:131: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:131: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:131: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:131: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:133: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:133: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:133: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:133: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:133: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:133: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:133: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:133: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:133: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:133: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:133: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:133: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:133: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:133: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:133: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:133: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:141: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:135: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:135: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:135: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:135: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:135: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:135: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:135: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:135: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:135: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:135: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:124: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.183
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L5		|
| voxel.c:123: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:123: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L6		|
.L1:
| voxel.c:144: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L19:
| voxel.c:123: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.215
| voxel.c:123: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.208
	add.l %a2,%a0	| ivtmp.215, ivtmp.208
	lea (160,%a1),%a3	|, out, tmp719
.L9:
| voxel.c:126: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:125: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:125: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:125: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:125: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L8:
| voxel.c:127: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:128: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:128: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L7		|
| voxel.c:129: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:129: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L7:
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:130: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:131: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:132: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:133: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:134: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:135: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:136: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:126: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:126: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L8		|
| voxel.c:138: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:139: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:140: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:141: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:141: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:124: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.208
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:123: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:123: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.215
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.208
	add.l %a2,%a0	| ivtmp.215, ivtmp.208
	lea (160,%a1),%a3	|, out, tmp719
	jra .L9		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L21:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.221_11]
	cmp.l %d0,%a0	| _3, out
	jne .L21		|
| voxel.c:148: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:156: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:160: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:164: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L36		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L32:
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L33		|
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L33:
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L34		|
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L34:
| voxel.c:238: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L35		|
| voxel.c:238: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L35:
| voxel.c:239: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L36:
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
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
	move.l #_y_table+1024,%d6	|, ivtmp.356
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:247: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:246: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp251
	lea _fog_table,%a5	|, tmp252
.L49:
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _157
	lsr.w #7,%d0	|, _157
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _157, _3
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _58
	add.w #45,%d2	|, _58
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.356, ivtmp.345
	move.w #-17920,%a2	|, ivtmp.342
.L50:
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.342,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _58,
	sub.w %d0,%d1	| tmp280,
	move.w %d1,(%a3)+	|, MEM[(short int *)_250]
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.342
	cmp.w #17920,%a2	|, ivtmp.342
	jne .L50		|
| voxel.c:255: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:257: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp172
	and.l %d4,%d0	| z, tmp172
| voxel.c:257: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:64: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:260: 		int rel_dist = z - FOG_START;
	moveq #-40,%d0	|, rel_dist
	add.l %d4,%d0	| z, rel_dist
| voxel.c:261: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L104		|
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L105:
	lea _combined+1025,%a1	|, ivtmp.333
	clr.b %d2	| max_height_lsm_flag.256
	clr.b %d1	| max_height_lsm.255
.L53:
	lea (-1024,%a1),%a0	|, ivtmp.333, ivtmp.326
.L55:
| voxel.c:269: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_368], _20
| voxel.c:269: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _20, max_height_lsm.255
	jcc .L54		|
| voxel.c:270: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _20, max_height_lsm.255
| voxel.c:269: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.256
.L54:
| voxel.c:268: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.326
	cmp.l %a0,%a1	| ivtmp.326, ivtmp.333
	jne .L55		|
| voxel.c:267: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.326, ivtmp.333
	cmp.l #_combined+524289,%a0	|, ivtmp.326
	jne .L53		|
	tst.b %d2	| max_height_lsm_flag.256
	jeq .L84		|
| voxel.c:274: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_341
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:276: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp253
	move.l %a6,124(%sp)	| tmp253, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L57:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_93], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_93 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_93 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_93 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_93 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_93 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_93 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_93 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	clr.l 56(%sp)	| %sfp
| voxel.c:287: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a4,%a4	| fog
.L80:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sle %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jgt .L72		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L72:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jgt .L73		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L73:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jgt .L74		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L74:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jgt .L75		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L75:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jgt .L76		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L76:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jgt .L77		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L77:
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jgt .L78		|
| voxel.c:292: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L78:
| voxel.c:297: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _186
	move.b %d7,%d1	|, _186
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _186,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _186
	move.l %d1,68(%sp)	| _186, %sfp
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _168
	and.l %d0,%d7	| mask, _168
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _168, iftmp.11_169
	lsl.w #8,%d6	|, iftmp.11_169
	swap %d6	| iftmp.11_169
	clr.w %d6	| iftmp.11_169
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _168,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_172
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _168,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_178
| voxel.c:299: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.306
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L70:
	move.b %d3,%d5	| color1, _120
	btst #1,%d3	|, color1
	jeq .L58		|
	move.l 64(%sp),%d0	| %sfp, iftmp.12_190
.L59:
	btst #0,%d3	|, color1
	jeq .L60		|
	move.l 60(%sp),%d1	| %sfp, iftmp.11_187
.L61:
	or.l %d1,%d0	| iftmp.11_187, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _120
	jeq .L62		|
	move.l 68(%sp),%d4	| %sfp, iftmp.13_196
.L63:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _120
	jeq .L64		|
	move.b 55(%sp),%d0	| %sfp, _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.298
	neg.l %d2	| ivtmp.298
	move.l %a3,%a0	| ivtmp.306, ivtmp.299
	move.l %d7,44(%sp)	| _168, %sfp
.L69:
	move.b %d5,%d0	| _120, _146
	add.b %d2,%d0	| ivtmp.298, _146
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _146, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_169, tmp224
	or.l %d4,%d1	| _334, _33
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _146
	jeq .L66		|
	move.l %a2,%d7	| iftmp.12_172,
	or.l %d7,%d1	|, _33
.L66:
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _146
	jeq .L67		|
	move.l %a1,%d7	| iftmp.13_178,
	or.l %d7,%d1	|, _33
.L67:
| voxel.c:238: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _146
	jeq .L68		|
	or.l 44(%sp),%d1	| %sfp, _33
.L68:
| voxel.c:300: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.298, tmp229
| voxel.c:302: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| fog, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _33, pdata_table[index1_277][fog_232][y_230]
| voxel.c:302: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d1,(%a0)	| _33, MEM[(unsigned int *)_144]
| voxel.c:295: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.298
	lea (-3840,%a0),%a0	|, ivtmp.299
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.298,
	jne .L69		|
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _168
	addq.l #1,%d3	|, color1
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.306
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L70		|
| voxel.c:287: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #1,%a4	|, fog
| voxel.c:287: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| fog,
	jne .L80		|
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L57		|
| voxel.c:311: 	short top_envelope[20] = {
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
| voxel.c:317: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.279
	lea _view_min+80,%a6	|, ivtmp.282
	lea _view_min,%a1	|, tmp254
	move.l %a1,%a5	| tmp254, ivtmp.284
	lea (156,%sp),%a4	|,, ivtmp.286
	lea _view_max+80,%a3	|, ivtmp.289
	lea _view_max,%a2	|, ivtmp.291
	moveq #40,%d1	|, _325
	add.l %a0,%d1	| ivtmp.279, _325
.L81:
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_317], _38
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_320]
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_321]
| voxel.c:326: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_322], _42
| voxel.c:326: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_299]
| voxel.c:326: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_323]
| voxel.c:324: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.279, _325
	jne .L81		|
	lea _horizon,%a0	|, ivtmp.272
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L82:
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_184]
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:333: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L82		|
| voxel.c:334: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L104:
| voxel.c:261: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d0	| rel_dist
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:263: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L105		|
.L64:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.298
	neg.l %d2	| ivtmp.298
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.306, ivtmp.299
	move.l %d7,44(%sp)	| _168, %sfp
	jra .L69		|
.L62:
	moveq #0,%d4	| iftmp.13_196
	jra .L63		|
.L60:
	moveq #0,%d1	| iftmp.11_187
	jra .L61		|
.L58:
	moveq #0,%d0	| iftmp.12_190
	jra .L59		|
.L84:
| voxel.c:267: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_341
| voxel.c:274: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:276: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp253
	move.l %a6,124(%sp)	| tmp253, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	jra .L57		|
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #15904,-(%sp)	|,
	move.l 28(%sp),%d3	| sample_uv, sample_uv
	move.l 32(%sp),%d5	| delta_uv, delta_uv
| voxel.c:478: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:480: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp59
| voxel.c:480: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:486: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:485: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:483: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d6	|, index_mask
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L109:
	move.w %d2,%d4	| z, z
| voxel.c:495: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _50, y_table_shifted
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_uv, tmp60
	add.l %d1,%d3	| uv, tmp60
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:488: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L107		|
| voxel.c:351: 	asm (
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a1,%d1.l),%d1	| *_34, sample
| voxel.c:490: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, SR.362
| voxel.c:491: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| *_6, *_6
	cmp.w %d0,%d1	| <retval>, *_6
	jge .L108		|
	move.w %d1,%d0	| *_6, <retval>
.L108:
| voxel.c:499: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp66
	and.w #15,%d1	|, tmp66
	jne .L107		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_uv, tmp67
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp68
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L107:
| voxel.c:487: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L109		|
| voxel.c:509: }
	movem.l (%sp)+,#1148	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	lsl.l #8,%d0	|, tmp71
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[_1][0][0], movep_data
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L113		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp72
	add.l %a0,%d0	| pBlock, _31
.L115:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:516: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L115		|
.L113:
| voxel.c:518: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d4	| pdata_table[15][0][0], movep_data
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L120		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L121:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:516: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L121		|
.L120:
| voxel.c:523: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:524: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:542: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:543: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:544: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:550: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.419
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L130:
| voxel.c:561: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:562: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:563: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:542: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:543: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:542: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:543: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:542: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:543: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:568: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:568: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:560: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.419
	cmp.l %d3,%a3	| _445, ivtmp.419
	jne .L130		|
| voxel.c:570: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.425
	clr.w %d0	| vect__18.425
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.425
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.425, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:576: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L138		|
	cmp.w #128,%d0	|, val
	jge .L139		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:581: }
	rts	
.L139:
| voxel.c:579: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:581: }
	rts	
.L138:
| voxel.c:579: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:581: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:586: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:589: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:596: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:598: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:610: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:591: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.455
| voxel.c:598: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L149:
| voxel.c:601: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| b$a$0,
	muls.w %d7,%d2	| _4, tmp164
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp165
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp166
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp167
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp167, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp169
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp171
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d3	| b$a$2,
	muls.w %d7,%d3	| _4, tmp172
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp173
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -78(%fp),%d0	| %sfp, tmp174
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp175
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:608: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L159		|
| voxel.c:610: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:616: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L160		|
.L144:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:620: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:621: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L161		|
.L145:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L150		|
.L162:
	cmp.w #128,%d4	|, _504
	jge .L151		|
	add.b %d4,%d4	| _504, iftmp.29_290
.L146:
| voxel.c:624: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L152		|
.L163:
	cmp.w #128,%d3	|, _75
	jge .L153		|
	add.b %d3,%d3	| _75, iftmp.30_360
.L147:
| voxel.c:625: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:626: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L154		|
.L164:
	cmp.w #128,%d2	|, _404
	jge .L155		|
	add.b %d2,%d2	| _404, iftmp.30_295
| voxel.c:626: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:599: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.455
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
.L165:
| voxel.c:628: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:629: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:631: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:632: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L161:
| voxel.c:621: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L162		|
.L150:
	clr.b %d4	| iftmp.29_290
| voxel.c:624: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L163		|
.L152:
	clr.b %d3	| iftmp.30_360
| voxel.c:625: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:626: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:579: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L164		|
.L154:
	clr.b %d2	| iftmp.30_295
| voxel.c:626: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:599: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.455
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L159:
| voxel.c:608: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:610: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:616: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L144		|
.L160:
	clr.w %d2	| _184
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:574: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:548: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:620: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:621: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L145		|
	jra .L161		|
.L151:
| voxel.c:579: 	return val < 0 ? 0 : (
	st %d4		| iftmp.29_290
	jra .L146		|
.L155:
	st %d2		| iftmp.30_295
| voxel.c:626: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:599: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.455
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L153:
| voxel.c:579: 	return val < 0 ? 0 : (
	st %d3		| iftmp.30_360
	jra .L147		|
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
| voxel.c:636: 	printf("Loading colors.tga\n");
	pea .LC1		|
	move.l #_puts,%d6	|, tmp111
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:637: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a6	|, tmp107
	jsr (%a6)		| tmp107
	move.l %d0,%d3	| tmp117, file1
| voxel.c:638: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L188		|
| voxel.c:642: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:643: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L184		|
	lea _fclose,%a2	|, tmp105
.L169:
| voxel.c:697: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
.L179:
| voxel.c:699: 	return 0;
	moveq #0,%d0	| <retval>
.L166:
| voxel.c:700: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L184:
| voxel.c:645: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:645: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:646: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:647: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:649: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:650: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:653: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:652: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
	lea _putchar,%a3	|, tmp110
	moveq #72,%d2	|, tmp112
	add.l %sp,%d2	|, tmp112
	lea _fread,%a2	|, tmp109
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.w #8192,%a5	|, remaining
| voxel.c:657: 		fflush(stdout);
	lea _fflush,%a4	|, tmp116
.L170:
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,-(%sp)	| file1,
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L172		|
	move.l %a5,%d0	| remaining, remaining
.L172:
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%d7	| tmp118, n
| voxel.c:654: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L189		|
| voxel.c:655: 		remaining -= n;
	sub.l %d7,%d4	| n, remaining
| voxel.c:656: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:657: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp116
	move.l %d2,%a1	| tmp112, ivtmp.477
	move.l %d2,%d0	| tmp112, _93
	add.l %d7,%d0	| n, _93
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L171:
| voxel.c:659: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_91], MEM[(unsigned char *)p_79]
| voxel.c:660: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:658: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.477, _93
	jne .L171		|
	move.l %d7,%d1	| n, tmp76
	add.l %d7,%d1	| n, tmp76
	add.l %d1,%d5	| tmp76, p
	jra .L170		|
.L189:
| voxel.c:663: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:664: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a5	|, tmp104
	jsr (%a5)		| tmp104
| voxel.c:666: 	printf("Loading height.tga\n");
	pea .LC4		|
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:667: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a6)		| tmp107
	move.l %d0,%d6	| tmp119, file2
| voxel.c:668: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L190		|
| voxel.c:672: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:673: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L191		|
| voxel.c:674: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:675: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:679: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L175:
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L177		|
	move.l %d7,%d0	| remaining, remaining
.L177:
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%a6	| tmp120, n
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L192		|
| voxel.c:677: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:678: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:679: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp112, ivtmp.470
	move.l %d2,%d0	| tmp112, _74
	add.l %a6,%d0	| n, _74
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L176:
| voxel.c:683: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_76], _12
| voxel.c:683: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp91
	move.b %d1,(%a0)	| tmp91, MEM[(unsigned char *)p_81]
| voxel.c:684: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:680: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.470, _74
	jne .L176		|
	add.l %a6,%a6	| n, tmp92
	add.l %a6,%d5	| tmp92, p
	jra .L175		|
.L192:
| voxel.c:687: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:688: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a5)		| tmp104
| voxel.c:690: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp99
	jsr (%a2)		| tmp99
| voxel.c:691: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp99
| voxel.c:692: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:700: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L188:
| voxel.c:639: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:640: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:699: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L166		|
.L190:
| voxel.c:669: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:670: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp105
	jra .L169		|
.L191:
| voxel.c:695: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp105
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
| voxel.c:697: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
	jra .L179		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L195		|
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:704: }
	movem.l (%sp)+,#1036	|,
	rts	
.L195:
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:704: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:707: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L199:
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L199		|
| voxel.c:709: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L200:
#APP
| 709 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L200		|
| voxel.c:711: 	Bconin(_CON);
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:712: }
#NO_APP
	movem.l (%sp)+,#1036	|,
	rts	
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
	.ascii "Total time per frame: %dms\12\0"
.LC12:
	.ascii "Time spent rendering terrain: %dms\12\0"
.LC13:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-140,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:716: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:718: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:721: 	Super(0L);
	moveq #0,%d0	| tmp608
#APP
| 721 "voxel.c" 1
	movl	%d0,%sp@-	| tmp608
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:723: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:725: 	lineaa();
	jsr _lineaa		|
| voxel.c:728: 	save_palette(saved_palette);
	pea 156(%sp)		|
	jsr _save_palette		|
| voxel.c:730: 	unsigned short *screen = Physbase();
#APP
| 730 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,64(%sp)	| tmp1025, %sfp
| voxel.c:732: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:734: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:734: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1026
	jeq .L383		|
| voxel.c:739: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:740: 	build_tables();
	jsr _build_tables		|
| voxel.c:741: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:742: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (150,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 154(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:743: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L208		|
| voxel.c:744: 	read_palette_vectors(cockpit.colors);
	move.l 146(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 60(%sp),%a0	| %sfp, ivtmp.695
	move.l %a0,%d0	| ivtmp.695, _1726
	add.l #32000,%d0	|, _1726
	addq.l #4,%sp	|,
.L209:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.517_1957]
	cmp.l %d0,%a0	| _1726, ivtmp.695
	jne .L209		|
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a5	|, tmp1000
	move.l (%a5),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a1	|, ivtmp.686
	lea _view_max,%a2	|, ivtmp.689
	clr.w %d3	| ivtmp.687
	move.l 56(%sp),%d4	| %sfp, _204
.L214:
| voxel.c:748: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1748], _6
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.687, tmp624
	asr.w #4,%d6	|, tmp624
	ext.l %d6	| tmp625
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp625, tmp626
	add.l %d6,%d6	| tmp626, _297
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp629
	lsr.l #3,%d5	|, tmp629
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _302
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _297, tmp630
	add.l %d6,%a0	| _297, tmp630
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _302, tmp631
	add.l %d4,%a0	| _204, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L210		|
	mulu.w #160,%d1	|, tmp632
	add.l %a0,%d1	| pBlock, _1342
.L211:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:516: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1342
	jne .L211		|
.L210:
| voxel.c:749: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1737], _10
| voxel.c:749: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:749: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp634
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp634,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp635
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _297, tmp637
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp637, tmp638
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp638, tmp639
	move.l %d4,%a0	| _204, pBlock
	add.l %d5,%a0	| tmp639, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L212		|
	mulu.w #160,%d1	|, tmp640
	add.l %a0,%d1	| pBlock, _1961
.L213:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:516: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1961
	jne .L213		|
.L212:
| voxel.c:747: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.687
	cmp.l #_view_min+80,%a1	|, ivtmp.686
	jne .L214		|
| voxel.c:752: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:753: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:754: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:757: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 154(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 80(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:761: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,162(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 106(%sp)	| %sfp
| voxel.c:766: 	int frames = 0;
	clr.l 102(%sp)	| %sfp
| voxel.c:764: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,92(%sp)	|, %sfp
| voxel.c:762: 	unsigned long t_render = 0;
	clr.l 114(%sp)	| %sfp
| voxel.c:759: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d7	|, fog_enabled
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a4	|, tmp1020
	move.b %d7,%d6	| fog_enabled, fog_enabled
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp649
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp649
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1027
	jeq .L312		|
.L388:
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp649
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp652
	ext.l %d0	| tmp652
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,132(%sp)	| tmp652, %sfp
| voxel.c:770: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L384		|
| voxel.c:775: 		frames++;
	move.l 102(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,120(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_319
	move.w (%a0),%d0	| *hw_palette.67_319, _320
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _324
| voxel.c:780: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp657
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp659
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp661
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp663
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp664
	add.l %d1,%d0	| tmp663, tmp665
	add.l %d0,%d0	| tmp665, tmp666
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsr.b #1,%d0	|, tmp669
| voxel.c:780: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp671
	lsl.w #7,%d0	|, tmp672
	move.w %d3,%d5	| _28,
	sub.w %d0,%d5	| tmp672,
	move.w %d5,118(%sp)	|, %sfp
| voxel.c:781: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jlt .L385		|
.L217:
| voxel.c:782: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%a0	| %sfp, desired_height
| voxel.c:782: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%d0	| %sfp, tmp683
	moveq #9,%d7	|,
	asr.w %d7,%d0	|, tmp683
| voxel.c:782: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp683,
	move.l %a1,-(%sp)	|,
	sub.w 122(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:784: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L219		|
	move.w #-256,%d0	|, altitude_delta
.L220:
| voxel.c:785: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:786: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jgt .L221		|
.L400:
| voxel.c:785: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _38, pos.z
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _1698
| voxel.c:816: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d3	| _1698
	move.w %d0,%d3	| _1698, _1698
	move.l #256,%d1	|, tmp692
	sub.l %d3,%d1	| _1698, tmp692
	add.l %d1,%d1	| tmp692, _1706
| voxel.c:478: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp694
	sub.w %d0,%a0	| _1698, tmp694
| voxel.c:480: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp694, tmp695
	add.l %a0,%a0	| tmp695, tmp695
	move.l %a0,128(%sp)	| tmp695, %sfp
.L218:
| voxel.c:789: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),112(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _324
	move.l %d2,%a6	| _324, sample_uv
| voxel.c:792: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,124(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 106(%sp),%d2	| %sfp, _43
	and.w #8,%d2	|, _43
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, tmp1005
	move.w %d2,50(%sp)	| tmp1005, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,108(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp699
	add.l %a0,%d0	|, tmp699
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp699
	move.l %d0,80(%sp)	| tmp699, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 112(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp701
	add.l #-160,%d0	|, tmp701
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,76(%sp)	| pos.diry, %sfp
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:816: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _1706
	move.l %d1,94(%sp)	| _1706, %sfp
	move.b %d6,%d3	| fog_enabled,
	eor.b #1,%d3	|,
	move.b %d3,133(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jne .L222		|
.L389:
	move.l #_fog_table+48,98(%sp)	|, %sfp
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d4	| _49,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	and.l #65535,%d2	|, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,64(%sp)	| tmp1030, %sfp
	add.l %d2,%d2	| x, tmp714
	add.l #_horizon,%d2	|, tmp714
	move.l %d2,52(%sp)	| tmp714, %sfp
	move.l %a6,88(%sp)	| sample_uv, %sfp
.L288:
| voxel.c:820: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 50(%sp),%d4	| %sfp, tmp715
	lsr.w #3,%d4	|, tmp715
	and.l #65535,%d4	|, _77
| voxel.c:820: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _77, tmp717
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d2	| view_max[_77], _1946
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 50(%sp),%d0	| %sfp, tmp718
	asr.w #4,%d0	|, tmp718
	ext.l %d0	| tmp719
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp719, tmp720
	add.l %d0,%d0	| tmp720, tmp720
	move.l %d0,68(%sp)	| tmp720, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 50(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp723
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp723,
	move.l %d1,72(%sp)	|, %sfp
| voxel.c:819: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d3	| _1946, _1943
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 68(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 80(%sp),%d0	| %sfp, tmp1031
	move.l %d0,60(%sp)	| tmp1031, %sfp
| voxel.c:819: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d0	| _1946, y
	sub.w 62(%sp),%d0	| %sfp, y
| voxel.c:824: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d5	| view_min[_77], y_min
	sub.w 62(%sp),%d5	| %sfp, y_min
| voxel.c:416: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L285		|
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w 50(%sp),%d1	| %sfp, _57
	add.w #-160,%d1	|, _57
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 76(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _57, tmp732
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d4	|, tmp733
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 78(%sp),%d3	| %sfp, tmp734
	sub.w %d4,%d3	| tmp733, tmp734
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp736
	clr.w %d3	| tmp736
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 78(%sp),%d1	| %sfp, tmp737
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d1	|, tmp738
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 76(%sp),%d1	| %sfp, tmp739
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp739, tmp741
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp741
	move.l %d3,%a2	| tmp741, _330
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 88(%sp),%d1	| %sfp, tmp742
	add.l %d3,%d1	| _330, tmp742
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp743
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _330, tmp744
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp745
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _330, tmp746
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp747
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _330, tmp748
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp749
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d2	| %sfp, tmp751
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp751, tmp752
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp752, tmp753
	add.l 72(%sp),%a0	| %sfp, tmp753
	add.l 56(%sp),%a0	| %sfp, pBlock
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 94(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d3	|, z
.L229:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_906, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.514
	move.b %d4,%d2	| sample, SR.514
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_910, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L225		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L313		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp759
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_916, _917
.L227:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _917, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L227		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _330, tmp761
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L229		|
.L396:
.L230:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _330, tmp762
	add.l %a2,%d3	| _330, tmp762
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _338
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
| voxel.c:416: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L274		|
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _338, _338
	move.w %d2,%d3	| z, z
.L231:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_830, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.512
	move.b %d4,%d2	| sample, SR.512
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_834, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d2	| y, sample_y
	jgt .L232		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L315		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp768
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_840, _841
.L234:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _841, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L234		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp770
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L231		|
.L394:
| voxel.c:416: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _338, _338
.L236:
	cmp.w %d5,%d0	| y_min, y
	jlt .L274		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _338, _338
	move.w %d2,%d3	| z, z
.L242:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_754, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.510
	move.b %d4,%d2	| sample, SR.510
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_758, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L238		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L316		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp776
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_764, _765
.L240:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _765, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L240		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp778
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L242		|
.L395:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _338, _338
.L243:
	add.l %a2,%d3	| _338, tmp779
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _336
| voxel.c:416: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L274		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _336, _336
	move.w %d2,%d3	| z, z
.L249:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_678, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.508
	move.b %d4,%d2	| sample, SR.508
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_682, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L245		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L317		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp785
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_688, _689
.L247:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _689, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L247		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp787
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L249		|
.L393:
| voxel.c:416: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _336, _336
.L250:
	cmp.w %d5,%d0	| y_min, y
	jlt .L274		|
	move.l 98(%sp),%a2	| %sfp, fog_table_shifted
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _336, _336
	move.w %d2,%d3	| z, z
.L260:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_602, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.506
	move.b %d2,%d4	| sample, SR.506
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_606, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L252		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L318		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L253:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:433: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L254		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2053
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_612, _613
.L255:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _613, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L255		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L259:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _336, tmp804
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L260		|
.L392:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %a6,%d3	| _336, _336
.L261:
	add.l %a6,%d3	| _336, tmp805
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _334
| voxel.c:416: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L274		|
| voxel.c:419: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L263		|
| voxel.c:419: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L263:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _334, _334
	move.w %d2,%d3	| z, z
.L272:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_525, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.504
	move.b %d2,%d4	| sample, SR.504
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_529, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L264		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L319		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L265:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:433: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L266		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2051
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_535, _536
.L267:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _536, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L267		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L271:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp822
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L272		|
.L391:
| voxel.c:416: 	if (y < y_min) goto finish;
	move.l %a6,%d3	| _334, _334
.L273:
	cmp.w %d5,%d0	| y_min, y
	jlt .L274		|
| voxel.c:419: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L275		|
| voxel.c:419: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L275:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _334, _334
	move.w %d2,%d3	| z, z
.L284:
| voxel.c:351: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_448, sample
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.502
	move.b %d2,%d4	| sample, SR.502
| voxel.c:424: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_452, sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L276		|
| voxel.c:427: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L320		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L277:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:433: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L278		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2049
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_458, _459
.L279:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _459, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:441: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L279		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L283:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp839
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L284		|
.L274:
| voxel.c:838: 			state.y += y_offset;
	move.w %d0,%d3	| y, _1943
	add.w 62(%sp),%d3	| %sfp, _1943
	move.w %d3,%d2	| _1943, _1946
.L285:
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 52(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1952], _404
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d3	| _404, _405
| voxel.c:522: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp840
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp841
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp843
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp843, tmp844
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 72(%sp),%d0	| %sfp, tmp845
	move.l 56(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp845, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _405
	jle .L286		|
	mulu.w #160,%d3	|, tmp846
	add.l %a0,%d3	| pBlock, _1830
.L287:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d7, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:516: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:514: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d3	| pBlock, _1830
	jne .L287		|
.L286:
| voxel.c:523: 	horizon[x] = y;
	move.l 52(%sp),%a1	| %sfp,
	move.w %d2,(%a1)	| _1946, MEM[(short int *)_1952]
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,50(%sp)	|, %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 84(%sp),%d1	| %sfp,
	add.l %d1,64(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,52(%sp)	|, %sfp
	cmp.w #319,50(%sp)	|, %sfp
	jls .L288		|
| voxel.c:842: 		unsigned long t_render_1 = *_hz_200;
	move.l 88(%sp),%a6	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:843: 		t_render += t_render_1 - t_render_0;
	sub.l 124(%sp),%d0	| %sfp, tmp849
| voxel.c:843: 		t_render += t_render_1 - t_render_0;
	add.l %d0,114(%sp)	| tmp849, %sfp
| voxel.c:480: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 128(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:485: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:483: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:486: 	unsigned short z = 0;
	clr.w %d1	| z
	move.l %a6,%d4	| sample_uv, sample_uv
.L291:
	move.l %d4,%d0	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d4	| delta_uv, tmp850
	add.l %d0,%d4	| uv, tmp850
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, sample_uv
	move.w %d1,%d7	| z, z
| voxel.c:495: 		z++;
	addq.w #1,%d1	|, z
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:488: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d7	|, z
	jls .L289		|
| voxel.c:351: 	asm (
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d0.l),%d0	| *_976, sample
| voxel.c:490: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.515
| voxel.c:491: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_980, *_980
	cmp.w %d5,%d0	| min_y, *_980
	jge .L290		|
	move.w %d0,%d5	| *_980, min_y
.L290:
| voxel.c:499: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp856
	and.w #15,%d0	|, tmp856
	jne .L289		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp857
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp858
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L289:
| voxel.c:487: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L291		|
| voxel.c:849: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L321		|
	move.w #128,%a0	|, _1966
| voxel.c:851: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L292		|
| voxel.c:854: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp859
	add.w %d5,%d5	| tmp859, tmp860
	add.w %d5,%d5	| tmp860, sunlight
| voxel.c:857: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _1966
.L292:
	move.l %a0,-(%sp)	| _1966,
	move.l 106(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _101
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _102
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _102,
	muls.w %d3,%d0	| _101, tmp866
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp867
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp867, pos.x
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _108
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _108,
	muls.w %d3,%d0	| _101, tmp870
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp871
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _113
	add.w %d0,%a0	| tmp871, _113
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp873
	sub.l 116(%sp),%d0	| %sfp, tmp873
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp874
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _101, _119
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _119, tmp875
	asr.w #3,%d3	|, tmp875
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _119, tmp876
	asr.w #4,%d4	|, tmp876
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp876, tmp877
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _126
| voxel.c:864: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _119
	jle .L293		|
.L401:
| voxel.c:864: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _126, _129
.L294:
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _113, pos.y
| voxel.c:864: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _129, pos.speed
| voxel.c:866: 		fixp rot = 160 - mouse_x;
	move.w #160,%d0	|, rot
	sub.w 112(%sp),%d0	| %sfp, rot
| voxel.c:867: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d0,%d3	| rot,
	muls.w %d1,%d3	| _108, tmp880
| voxel.c:867: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp881
| voxel.c:867: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d2	| tmp881, _141
| voxel.c:868: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d2,%d0	| _141, tmp882
| voxel.c:868: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d0	|, tmp883
| voxel.c:868: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d0,%d1	| tmp883, _148
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _141,
	muls.w %d2,%d0	| _141, tmp884
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp885
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _148,
	muls.w %d1,%d3	| _148, tmp886
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp887
| voxel.c:871: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d0	| tmp887, tmp888
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp888, tmp889
	moveq #-128,%d0	|, tmp890
	add.l %a0,%d0	| tmp889, tmp890
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp891
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _376
	sub.w %d0,%d3	| tmp891, _376
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d2	| _376, tmp894
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp895
| voxel.c:872: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| tmp893
	clr.w %d2	| tmp893
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d3	| _148, tmp900
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp901
| voxel.c:872: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d2	| tmp901, tmp893
	move.l %d2,_pos+6	| tmp893, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:875: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:875: 		if (pressed_keys.up) {
	jpl .L295		|
| voxel.c:876: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L323		|
| voxel.c:879: 			desired_height += FIXP(1, 0);
	move.w 92(%sp),%d0	| %sfp, _1968
.L296:
	add.w #128,%d0	|, _1968
	move.w %d0,92(%sp)	| _1968, %sfp
| voxel.c:880: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L295		|
	move.w #32512,92(%sp)	|, %sfp
.L295:
| voxel.c:884: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:884: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L298		|
| voxel.c:885: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L299		|
| voxel.c:888: 			desired_height -= FIXP(1, 0);
	move.w 92(%sp),118(%sp)	| %sfp, %sfp
.L299:
| voxel.c:893: 		if (key == 0x23) {
	cmp.b #35,132(%sp)	|, %sfp
	jeq .L324		|
| voxel.c:888: 			desired_height -= FIXP(1, 0);
	move.w 118(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,92(%sp)	|, %sfp
| voxel.c:889: 			if (desired_height < FIXP(0, 0)) {
	jmi .L386		|
.L302:
| voxel.c:900: 		} else if (key == 0x20) {
	cmp.b #32,132(%sp)	|, %sfp
	jeq .L387		|
.L300:
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp913
	and.w #8192,%d0	|, _731
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B], tmp914
	and.l #-536879105,%d3	|, tmp914
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _731
	move.w %d0,%d1	| _731, _731
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205], tmp919
	and.l #-536879105,%d4	|, tmp919
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _731
	swap %d2	| _731
	clr.w %d2	| _731
	move.w %d0,%d2	| _731, _731
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _731, tmp919
	move.l %d4,(%a0)	| tmp919, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205]
	or.l %d1,%d3	| _731, tmp914
	move.l %d3,4(%a0)	| tmp914, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp927
	and.b #1,%d0	|, _160
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp930
	ext.w %d0	| tmp929
	neg.w %d0	| tmp931
	lsl.w %d1,%d0	|, _1970
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B], tmp932
	and.l #-536879105,%d3	|, tmp932
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1970
	move.w %d0,%d1	| _1970, _1970
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B], tmp937
	and.l #-536879105,%d4	|, tmp937
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1970
	swap %d2	| _1970
	clr.w %d2	| _1970
	move.w %d0,%d2	| _1970, _1970
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1970, tmp937
	move.l %d4,640(%a0)	| tmp937, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B]
	or.l %d1,%d3	| _1970, tmp932
	move.l %d3,644(%a0)	| tmp932, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp945
	and.b #1,%d1	|, _161
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp948
	ext.w %d1	| tmp947
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1963
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp951
	and.b #1,%d0	|, _162
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp954
	ext.w %d0	| tmp953
	neg.w %d0	| tmp955
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _50
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_205 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1963, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_205 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1963, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_205 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1963, data
| voxel.c:911: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp960
	not.w %d1	| tmp960
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp959
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1784
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _50, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1784, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_205 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _50, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1784, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_205 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_205 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1784, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_205 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:775: 		frames++;
	move.l 120(%sp),102(%sp)	| %sfp, %sfp
.L390:
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp649
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp649
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1027
	jne .L388		|
.L312:
	clr.b 132(%sp)	| %sfp
| voxel.c:775: 		frames++;
	move.l 102(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,120(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_319
	move.w (%a0),%d0	| *hw_palette.67_319, _320
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _324
| voxel.c:780: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp657
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp659
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp661
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp663
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp664
	add.l %d1,%d0	| tmp663, tmp665
	add.l %d0,%d0	| tmp665, tmp666
| voxel.c:779: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsr.b #1,%d0	|, tmp669
| voxel.c:780: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp671
	lsl.w #7,%d0	|, tmp672
	move.w %d3,%d5	| _28,
	sub.w %d0,%d5	| tmp672,
	move.w %d5,118(%sp)	|, %sfp
| voxel.c:781: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jge .L217		|
.L385:
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _1697
| voxel.c:816: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d1	| _1697
	move.w %d3,%d1	| _1697, _1697
	move.l #256,%d0	|, tmp674
	sub.l %d1,%d0	| _1697, tmp674
	move.l %d0,%d1	| tmp674, _1706
	add.l %d0,%d1	| tmp674, _1706
| voxel.c:478: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp676
	sub.w %d3,%a0	| _1697, tmp676
| voxel.c:480: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp676, tmp677
	add.l %a0,%a0	| tmp677, tmp677
	move.l %a0,128(%sp)	| tmp677, %sfp
| voxel.c:789: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),112(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _324
	move.l %d2,%a6	| _324, sample_uv
| voxel.c:792: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,124(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 106(%sp),%d2	| %sfp, _43
	and.w #8,%d2	|, _43
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, tmp1005
	move.w %d2,50(%sp)	| tmp1005, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,108(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp699
	add.l %a0,%d0	|, tmp699
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp699
	move.l %d0,80(%sp)	| tmp699, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 112(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp701
	add.l #-160,%d0	|, tmp701
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,76(%sp)	| pos.diry, %sfp
| voxel.c:808: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:816: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _1706
	move.l %d1,94(%sp)	| _1706, %sfp
	move.b %d6,%d3	| fog_enabled,
	eor.b #1,%d3	|,
	move.b %d3,133(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jeq .L389		|
.L222:
	move.l #_fog_table+40,98(%sp)	|, %sfp
| voxel.c:513: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d4	| _49,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	and.l #65535,%d2	|, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,64(%sp)	| tmp1030, %sfp
	add.l %d2,%d2	| x, tmp714
	add.l #_horizon,%d2	|, tmp714
	move.l %d2,52(%sp)	| tmp714, %sfp
	move.l %a6,88(%sp)	| sample_uv, %sfp
	jra .L288		|
.L384:
| voxel.c:917: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:918: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 134(%sp),%a0	| %sfp, tmp966
| voxel.c:918: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp966, tmp968
	add.l %a0,%d0	| tmp966, tmp968
	add.l %d0,%d0	| tmp968, tmp969
| voxel.c:919: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp974
	move.l 102(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp974
| voxel.c:920: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1032,
	pea .LC11		|
	lea _printf,%a2	|, tmp976
	jsr (%a2)		| tmp976
| voxel.c:921: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 122(%sp),%d0	| %sfp, tmp978
	add.l %d0,%d0	|, tmp978
	add.l %d0,%d0	| tmp978, tmp979
| voxel.c:921: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 110(%sp),-(%sp)	| %sfp,
	move.l 126(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp974
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1033,
	pea .LC12		|
	jsr (%a2)		| tmp976
| voxel.c:922: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:923: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L208:
| voxel.c:926: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:927: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:928: 	install_palette(saved_palette);
	pea 156(%sp)		|
	jsr _install_palette		|
| voxel.c:930: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (140,%sp),%sp	|,
	rts	
.L387:
	move.b 133(%sp),%d6	| %sfp, fog_enabled
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp913
	and.w #8192,%d0	|, _731
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B], tmp914
	and.l #-536879105,%d3	|, tmp914
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _731
	move.w %d0,%d1	| _731, _731
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205], tmp919
	and.l #-536879105,%d4	|, tmp919
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _731
	swap %d2	| _731
	clr.w %d2	| _731
	move.w %d0,%d2	| _731, _731
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _731, tmp919
	move.l %d4,(%a0)	| tmp919, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205]
	or.l %d1,%d3	| _731, tmp914
	move.l %d3,4(%a0)	| tmp914, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp927
	and.b #1,%d0	|, _160
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp930
	ext.w %d0	| tmp929
	neg.w %d0	| tmp931
	lsl.w %d1,%d0	|, _1970
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B], tmp932
	and.l #-536879105,%d3	|, tmp932
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1970
	move.w %d0,%d1	| _1970, _1970
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B], tmp937
	and.l #-536879105,%d4	|, tmp937
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1970
	swap %d2	| _1970
	clr.w %d2	| _1970
	move.w %d0,%d2	| _1970, _1970
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1970, tmp937
	move.l %d4,640(%a0)	| tmp937, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B]
	or.l %d1,%d3	| _1970, tmp932
	move.l %d3,644(%a0)	| tmp932, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp945
	and.b #1,%d1	|, _161
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp948
	ext.w %d1	| tmp947
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1963
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp951
	and.b #1,%d0	|, _162
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp954
	ext.w %d0	| tmp953
	neg.w %d0	| tmp955
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _50
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_205 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1963, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_205 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1963, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_205 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1963, data
| voxel.c:911: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp960
	not.w %d1	| tmp960
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp959
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1784
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _50, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1784, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_205 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _50, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1784, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_205 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_205 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1784, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_205 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:775: 		frames++;
	move.l 120(%sp),102(%sp)	| %sfp, %sfp
	jra .L390		|
.L386:
| voxel.c:889: 			if (desired_height < FIXP(0, 0)) {
	clr.w 92(%sp)	| %sfp
| voxel.c:900: 		} else if (key == 0x20) {
	cmp.b #32,132(%sp)	|, %sfp
	jne .L300		|
	jra .L387		|
.L276:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L283		|
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L398:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp839
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L284		|
	jra .L274		|
.L264:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L271		|
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L397:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp822
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L272		|
	jra .L391		|
.L252:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L259		|
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L399:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _336, tmp804
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L260		|
	jra .L392		|
.L245:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp787
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L249		|
	jra .L393		|
.L232:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp770
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L231		|
	jra .L394		|
.L238:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp778
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L242		|
	jra .L395		|
.L225:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _330, tmp761
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L229		|
	jra .L396		|
.L313:
| voxel.c:429: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp759
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_916, _917
	jra .L227		|
.L266:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1151,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _550
	move.w %a3,%d2	| offset, _550
	move.l %d2,%a3	| _550, tmp1004
	add.l #_pdata_table,%a3	|, tmp1004
.L269:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp815
	and.l %d0,%d2	| y, tmp815
	add.l %d2,%d2	| tmp815, tmp816
	add.l %d2,%d2	| tmp816, tmp817
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_556, *_556
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_556, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:451: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L269		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L397		|
.L316:
| voxel.c:429: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp776
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_764, _765
	jra .L240		|
.L315:
| voxel.c:429: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp768
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_840, _841
	jra .L234		|
.L278:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1129,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _473
	move.w %a3,%d2	| offset, _473
	move.l %d2,%a3	| _473, tmp1003
	add.l #_pdata_table,%a3	|, tmp1003
.L281:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp832
	and.l %d0,%d2	| y, tmp832
	add.l %d2,%d2	| tmp832, tmp833
	add.l %d2,%d2	| tmp833, tmp834
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_479, *_479
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_479, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:451: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L281		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L398		|
.L320:
| voxel.c:429: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L277		|
.L319:
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L265		|
.L317:
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp785
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_688, _689
	jra .L247		|
.L254:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_997,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _627
	move.w %a3,%d2	| offset, _627
	move.l %d2,%a3	| _627, tmp1006
	add.l #_pdata_table,%a3	|, tmp1006
.L257:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp797
	and.l %d0,%d2	| y, tmp797
	add.l %d2,%d2	| tmp797, tmp798
	add.l %d2,%d2	| tmp798, tmp799
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_633, *_633
#APP
| 343 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_633, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:451: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L257		|
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:457: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L399		|
.L318:
| voxel.c:429: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L253		|
.L219:
| voxel.c:785: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L220		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _28, _38
| voxel.c:786: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jle .L400		|
.L221:
| voxel.c:786: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,128(%sp)	|, %sfp
	jra .L218		|
.L298:
| voxel.c:893: 		if (key == 0x23) {
	cmp.b #35,132(%sp)	|, %sfp
	jne .L302		|
| voxel.c:895: 			if (desired_height < 0) {
	tst.w 92(%sp)	| %sfp
	jge .L324		|
| voxel.c:896: 				desired_height = player_height;
	move.w 118(%sp),92(%sp)	| %sfp, %sfp
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp913
	and.w #8192,%d0	|, _731
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B], tmp914
	and.l #-536879105,%d3	|, tmp914
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _731
	move.w %d0,%d1	| _731, _731
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205], tmp919
	and.l #-536879105,%d4	|, tmp919
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _731
	swap %d2	| _731
	clr.w %d2	| _731
	move.w %d0,%d2	| _731, _731
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _731, tmp919
	move.l %d4,(%a0)	| tmp919, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205]
	or.l %d1,%d3	| _731, tmp914
	move.l %d3,4(%a0)	| tmp914, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp927
	and.b #1,%d0	|, _160
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp930
	ext.w %d0	| tmp929
	neg.w %d0	| tmp931
	lsl.w %d1,%d0	|, _1970
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B], tmp932
	and.l #-536879105,%d3	|, tmp932
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1970
	move.w %d0,%d1	| _1970, _1970
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B], tmp937
	and.l #-536879105,%d4	|, tmp937
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1970
	swap %d2	| _1970
	clr.w %d2	| _1970
	move.w %d0,%d2	| _1970, _1970
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1970, tmp937
	move.l %d4,640(%a0)	| tmp937, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B]
	or.l %d1,%d3	| _1970, tmp932
	move.l %d3,644(%a0)	| tmp932, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp945
	and.b #1,%d1	|, _161
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp948
	ext.w %d1	| tmp947
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1963
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp951
	and.b #1,%d0	|, _162
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp954
	ext.w %d0	| tmp953
	neg.w %d0	| tmp955
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _50
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_205 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1963, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_205 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1963, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_205 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1963, data
| voxel.c:911: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp960
	not.w %d1	| tmp960
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp959
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1784
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _50, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1784, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_205 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _50, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1784, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_205 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_205 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1784, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_205 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:775: 		frames++;
	move.l 120(%sp),102(%sp)	| %sfp, %sfp
	jra .L390		|
.L321:
	sub.l %a0,%a0	| _1966
| voxel.c:857: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1966,
	move.l 106(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _101
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _102
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _102,
	muls.w %d3,%d0	| _101, tmp866
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp867
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp867, pos.x
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _108
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _108,
	muls.w %d3,%d0	| _101, tmp870
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp871
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _113
	add.w %d0,%a0	| tmp871, _113
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp873
	sub.l 116(%sp),%d0	| %sfp, tmp873
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp874
| voxel.c:862: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _101, _119
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _119, tmp875
	asr.w #3,%d3	|, tmp875
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _119, tmp876
	asr.w #4,%d4	|, tmp876
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp876, tmp877
| voxel.c:863: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _126
| voxel.c:864: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _119
	jgt .L401		|
.L293:
| voxel.c:865: 		else pos.speed += drag;
	add.w %d3,%d0	| _126, _129
	jra .L294		|
.L324:
| voxel.c:898: 				desired_height = -1;
	move.w #-1,92(%sp)	|, %sfp
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp913
	and.w #8192,%d0	|, _731
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B], tmp914
	and.l #-536879105,%d3	|, tmp914
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _731
	move.w %d0,%d1	| _731, _731
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205], tmp919
	and.l #-536879105,%d4	|, tmp919
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _731
	swap %d2	| _731
	clr.w %d2	| _731
	move.w %d0,%d2	| _731, _731
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _731, tmp919
	move.l %d4,(%a0)	| tmp919, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205]
	or.l %d1,%d3	| _731, tmp914
	move.l %d3,4(%a0)	| tmp914, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp927
	and.b #1,%d0	|, _160
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp930
	ext.w %d0	| tmp929
	neg.w %d0	| tmp931
	lsl.w %d1,%d0	|, _1970
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B], tmp932
	and.l #-536879105,%d3	|, tmp932
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1970
	move.w %d0,%d1	| _1970, _1970
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B], tmp937
	and.l #-536879105,%d4	|, tmp937
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1970
	swap %d2	| _1970
	clr.w %d2	| _1970
	move.w %d0,%d2	| _1970, _1970
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1970, tmp937
	move.l %d4,640(%a0)	| tmp937, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 640B]
	or.l %d1,%d3	| _1970, tmp932
	move.l %d3,644(%a0)	| tmp932, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_205 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp945
	and.b #1,%d1	|, _161
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp948
	ext.w %d1	| tmp947
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1963
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp951
	and.b #1,%d0	|, _162
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp954
	ext.w %d0	| tmp953
	neg.w %d0	| tmp955
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _50
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_205 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1963, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_205 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1963, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_205 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1963, data
| voxel.c:911: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp960
	not.w %d1	| tmp960
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp959
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1784
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _50, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1784, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_205 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _50, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1784, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_205 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_205 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1784, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_205 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:775: 		frames++;
	move.l 120(%sp),102(%sp)	| %sfp, %sfp
	jra .L390		|
.L323:
	move.w 118(%sp),%d0	| %sfp, _1968
	jra .L296		|
.L383:
| voxel.c:735: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:736: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:926: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:927: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:928: 	install_palette(saved_palette);
	pea 156(%sp)		|
	jsr _install_palette		|
| voxel.c:930: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (140,%sp),%sp	|,
	rts	
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
	.globl	_sky_color
	.bss
_sky_color:
	.skip 3
	.globl	_hw_palette
	.data
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
	.globl	_fog_table
_fog_table:
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
