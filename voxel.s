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
	move.l 68(%sp),%a6	| %sfp, ivtmp.182
	add.l 80(%sp),%a6	| pixels, ivtmp.182
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
	lea (16,%a6),%a6	|, ivtmp.182
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
	sub.l %a2,%a2	| ivtmp.214
| voxel.c:123: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.207
	add.l %a2,%a0	| ivtmp.214, ivtmp.207
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
	lea (16,%a0),%a0	|, ivtmp.207
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:123: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:123: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.214
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.207
	add.l %a2,%a0	| ivtmp.214, ivtmp.207
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
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.220_11]
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
	move.l #_y_table+1024,%d6	|, ivtmp.355
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
	move.l %d6,%a3	| ivtmp.355, ivtmp.344
	move.w #-17920,%a2	|, ivtmp.341
.L50:
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.341,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _58,
	sub.w %d0,%d1	| tmp280,
	move.w %d1,(%a3)+	|, MEM[(short int *)_250]
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.341
	cmp.w #17920,%a2	|, ivtmp.341
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
	add.l #1024,%d6	|, ivtmp.355
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L105:
	lea _combined+1025,%a1	|, ivtmp.332
	clr.b %d2	| max_height_lsm_flag.255
	clr.b %d1	| max_height_lsm.254
.L53:
	lea (-1024,%a1),%a0	|, ivtmp.332, ivtmp.325
.L55:
| voxel.c:269: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_368], _20
| voxel.c:269: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _20, max_height_lsm.254
	jcc .L54		|
| voxel.c:270: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _20, max_height_lsm.254
| voxel.c:269: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.255
.L54:
| voxel.c:268: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.325
	cmp.l %a0,%a1	| ivtmp.325, ivtmp.332
	jne .L55		|
| voxel.c:267: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.325, ivtmp.332
	cmp.l #_combined+524289,%a0	|, ivtmp.325
	jne .L53		|
	tst.b %d2	| max_height_lsm_flag.255
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.305
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
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
	move.l %d7,44(%sp)	| _168, %sfp
.L69:
	move.b %d5,%d0	| _120, _146
	add.b %d2,%d0	| ivtmp.297, _146
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
	and.l %d2,%d0	| ivtmp.297, tmp229
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
	addq.l #1,%d2	|, ivtmp.297
	lea (-3840,%a0),%a0	|, ivtmp.298
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.297,
	jne .L69		|
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _168
	addq.l #1,%d3	|, color1
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.305
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
	lea (116,%sp),%a0	|,, ivtmp.278
	lea _view_min+80,%a6	|, ivtmp.281
	lea _view_min,%a1	|, tmp254
	move.l %a1,%a5	| tmp254, ivtmp.283
	lea (156,%sp),%a4	|,, ivtmp.285
	lea _view_max+80,%a3	|, ivtmp.288
	lea _view_max,%a2	|, ivtmp.290
	moveq #40,%d1	|, _325
	add.l %a0,%d1	| ivtmp.278, _325
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
	cmp.l %a0,%d1	| ivtmp.278, _325
	jne .L81		|
	lea _horizon,%a0	|, ivtmp.271
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
	add.l #1024,%d6	|, ivtmp.355
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L105		|
.L64:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
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
| voxel.c:475: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:477: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp59
| voxel.c:477: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:483: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:482: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:480: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d6	|, index_mask
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L109:
	move.w %d2,%d4	| z, z
| voxel.c:492: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _50, y_table_shifted
| voxel.c:493: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_uv, tmp60
	add.l %d1,%d3	| uv, tmp60
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:485: 		if (z >= STEPS_MIN) {
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
| voxel.c:487: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, SR.361
| voxel.c:488: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| *_6, *_6
	cmp.w %d0,%d1	| <retval>, *_6
	jge .L108		|
	move.w %d1,%d0	| *_6, <retval>
.L108:
| voxel.c:496: 		if (TRIGGERS_PROGRESSION(z)) {
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
| voxel.c:484: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L109		|
| voxel.c:506: }
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
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	lsl.l #8,%d0	|, tmp71
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[_1][0][0], movep_data
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:513: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L115		|
.L113:
| voxel.c:515: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
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
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d4	| pdata_table[15][0][0], movep_data
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:513: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L121		|
.L120:
| voxel.c:520: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:521: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:539: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:540: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:541: }
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:547: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.418
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L130:
| voxel.c:558: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:559: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:560: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:539: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:540: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:539: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:540: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:539: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:540: 	return c >> 1;
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:565: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:565: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:557: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.418
	cmp.l %d3,%a3	| _445, ivtmp.418
	jne .L130		|
| voxel.c:567: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.424
	clr.w %d0	| vect__18.424
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.424
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.424, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:573: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L138		|
	cmp.w #128,%d0	|, val
	jge .L139		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:578: }
	rts	
.L139:
| voxel.c:576: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:578: }
	rts	
.L138:
| voxel.c:576: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:578: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:583: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:586: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:593: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:595: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:607: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:588: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.454
| voxel.c:595: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L149:
| voxel.c:598: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:605: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L159		|
| voxel.c:607: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:613: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:617: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:618: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L161		|
.L145:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L150		|
.L162:
	cmp.w #128,%d4	|, _504
	jge .L151		|
	add.b %d4,%d4	| _504, iftmp.29_290
.L146:
| voxel.c:621: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L152		|
.L163:
	cmp.w #128,%d3	|, _75
	jge .L153		|
	add.b %d3,%d3	| _75, iftmp.30_360
.L147:
| voxel.c:622: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:623: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L154		|
.L164:
	cmp.w #128,%d2	|, _404
	jge .L155		|
	add.b %d2,%d2	| _404, iftmp.30_295
| voxel.c:623: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:596: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
.L165:
| voxel.c:625: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:626: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:628: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:629: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L161:
| voxel.c:618: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L162		|
.L150:
	clr.b %d4	| iftmp.29_290
| voxel.c:621: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L163		|
.L152:
	clr.b %d3	| iftmp.30_360
| voxel.c:622: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:623: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:576: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L164		|
.L154:
	clr.b %d2	| iftmp.30_295
| voxel.c:623: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:596: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L159:
| voxel.c:605: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:607: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:613: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:571: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:545: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:617: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:618: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L145		|
	jra .L161		|
.L151:
| voxel.c:576: 	return val < 0 ? 0 : (
	st %d4		| iftmp.29_290
	jra .L146		|
.L155:
	st %d2		| iftmp.30_295
| voxel.c:623: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:596: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L153:
| voxel.c:576: 	return val < 0 ? 0 : (
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
| voxel.c:633: 	printf("Loading colors.tga\n");
	pea .LC1		|
	move.l #_puts,%d6	|, tmp111
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:634: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a6	|, tmp107
	jsr (%a6)		| tmp107
	move.l %d0,%d3	| tmp117, file1
| voxel.c:635: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L188		|
| voxel.c:639: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:640: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L184		|
	lea _fclose,%a2	|, tmp105
.L169:
| voxel.c:694: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
.L179:
| voxel.c:696: 	return 0;
	moveq #0,%d0	| <retval>
.L166:
| voxel.c:697: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L184:
| voxel.c:642: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:642: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:643: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:644: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:646: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:647: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:650: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:649: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
	lea _putchar,%a3	|, tmp110
	moveq #72,%d2	|, tmp112
	add.l %sp,%d2	|, tmp112
	lea _fread,%a2	|, tmp109
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.w #8192,%a5	|, remaining
| voxel.c:654: 		fflush(stdout);
	lea _fflush,%a4	|, tmp116
.L170:
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,-(%sp)	| file1,
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L172		|
	move.l %a5,%d0	| remaining, remaining
.L172:
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%d7	| tmp118, n
| voxel.c:651: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L189		|
| voxel.c:652: 		remaining -= n;
	sub.l %d7,%d4	| n, remaining
| voxel.c:653: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:654: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp116
	move.l %d2,%a1	| tmp112, ivtmp.476
	move.l %d2,%d0	| tmp112, _93
	add.l %d7,%d0	| n, _93
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L171:
| voxel.c:656: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_91], MEM[(unsigned char *)p_79]
| voxel.c:657: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:655: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.476, _93
	jne .L171		|
	move.l %d7,%d1	| n, tmp76
	add.l %d7,%d1	| n, tmp76
	add.l %d1,%d5	| tmp76, p
	jra .L170		|
.L189:
| voxel.c:660: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:661: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a5	|, tmp104
	jsr (%a5)		| tmp104
| voxel.c:663: 	printf("Loading height.tga\n");
	pea .LC4		|
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:664: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a6)		| tmp107
	move.l %d0,%d6	| tmp119, file2
| voxel.c:665: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L190		|
| voxel.c:669: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:670: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L191		|
| voxel.c:671: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:672: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:673: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:676: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L175:
| voxel.c:673: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:673: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L177		|
	move.l %d7,%d0	| remaining, remaining
.L177:
| voxel.c:673: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%a6	| tmp120, n
| voxel.c:673: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L192		|
| voxel.c:674: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:675: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:676: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp112, ivtmp.469
	move.l %d2,%d0	| tmp112, _74
	add.l %a6,%d0	| n, _74
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L176:
| voxel.c:680: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_76], _12
| voxel.c:680: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp91
	move.b %d1,(%a0)	| tmp91, MEM[(unsigned char *)p_81]
| voxel.c:681: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:677: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.469, _74
	jne .L176		|
	add.l %a6,%a6	| n, tmp92
	add.l %a6,%d5	| tmp92, p
	jra .L175		|
.L192:
| voxel.c:684: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:685: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a5)		| tmp104
| voxel.c:687: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp99
	jsr (%a2)		| tmp99
| voxel.c:688: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp99
| voxel.c:689: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:697: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L188:
| voxel.c:636: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:637: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:696: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L166		|
.L190:
| voxel.c:666: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:667: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp105
	jra .L169		|
.L191:
| voxel.c:692: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp105
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
| voxel.c:694: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
	jra .L179		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L195		|
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:701: }
	movem.l (%sp)+,#1036	|,
	rts	
.L195:
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:701: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:704: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L199:
#APP
| 704 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L199		|
| voxel.c:706: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L200:
#APP
| 706 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:706: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L200		|
| voxel.c:708: 	Bconin(_CON);
#APP
| 708 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: }
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
	lea (-156,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:713: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:715: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:718: 	Super(0L);
	moveq #0,%d0	| tmp614
#APP
| 718 "voxel.c" 1
	movl	%d0,%sp@-	| tmp614
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:720: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:722: 	lineaa();
	jsr _lineaa		|
| voxel.c:725: 	save_palette(saved_palette);
	pea 172(%sp)		|
	jsr _save_palette		|
| voxel.c:727: 	unsigned short *screen = Physbase();
#APP
| 727 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,60(%sp)	| tmp1022, %sfp
| voxel.c:729: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:731: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:731: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1023
	jeq .L351		|
| voxel.c:736: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:737: 	build_tables();
	jsr _build_tables		|
| voxel.c:738: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:739: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (166,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 170(%sp),%d6	| cockpit.pixels, cockpit$pixels
| voxel.c:740: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L208		|
| voxel.c:741: 	read_palette_vectors(cockpit.colors);
	move.l 162(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 56(%sp),%a0	| %sfp, ivtmp.703
	move.l %a0,%d0	| ivtmp.703, _1635
	add.l #32000,%d0	|, _1635
	addq.l #4,%sp	|,
.L209:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.516_1866]
	cmp.l %d0,%a0	| _1635, ivtmp.703
	jne .L209		|
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a5	|, tmp1004
	move.l (%a5),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.694
	lea _view_max,%a3	|, ivtmp.697
	move.l #_view_min+80,%d4	|, _1641
	clr.w %d3	| ivtmp.695
	move.l 52(%sp),%a1	| %sfp, _201
.L214:
| voxel.c:745: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_1643], _6
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.695, tmp630
	asr.w #4,%d5	|, tmp630
	ext.l %d5	| tmp631
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp631, tmp632
	add.l %d5,%d5	| tmp632, _293
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp635
	lsr.l #3,%d2	|, tmp635
	moveq #1,%d7	|,
	and.l %d7,%d2	|, _298
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _293, tmp636
	add.l %d5,%a0	| _293, tmp636
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _298, tmp637
	lea (%a1,%a0.l),%a0	| _201, tmp637, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L210		|
	mulu.w #160,%d1	|, tmp638
	add.l %a0,%d1	| pBlock, _246
.L211:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:513: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _246, pBlock
	jne .L211		|
.L210:
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_1640], _10
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp640
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp640,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp641
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _293, tmp643
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp643, tmp644
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp644, tmp645
	lea (%a1,%d2.l),%a0	| _201, tmp645, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L212		|
	mulu.w #160,%d1	|, tmp646
	add.l %a0,%d1	| pBlock, _1326
.L213:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:513: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1326
	jne .L213		|
.L212:
| voxel.c:744: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.695
	cmp.l %d4,%a2	| _1641, ivtmp.694
	jne .L214		|
| voxel.c:749: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:750: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:751: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:754: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 170(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d6,-(%sp)	| cockpit$pixels,
	move.l 76(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:758: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,178(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 126(%sp)	| %sfp
| voxel.c:763: 	int frames = 0;
	clr.l 122(%sp)	| %sfp
| voxel.c:761: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,92(%sp)	|, %sfp
| voxel.c:759: 	unsigned long t_render = 0;
	clr.l 134(%sp)	| %sfp
| voxel.c:756: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	move.b #1,138(%sp)	|, %sfp
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a4	|, tmp1017
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp655
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp655
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1024
	jeq .L299		|
.L356:
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp655
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp658
	ext.l %d0	| tmp658
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,139(%sp)	| tmp658, %sfp
| voxel.c:767: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L352		|
| voxel.c:772: 		frames++;
	move.l 122(%sp),%d4	| %sfp,
	addq.l #1,%d4	|,
	move.l %d4,142(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_315
	move.w (%a0),%d0	| *hw_palette.67_315, _316
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d7	| MEM <unsigned int> [(short int *)&pos], _320
| voxel.c:777: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp663
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp665
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp667
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp669
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp670
	add.l %d1,%d0	| tmp669, tmp671
	add.l %d0,%d0	| tmp671, tmp672
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsr.b #1,%d0	|, tmp675
| voxel.c:777: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp677
	lsl.w #7,%d0	|, tmp678
	move.w %d3,%d4	| _28,
	sub.w %d0,%d4	| tmp678,
	move.w %d4,140(%sp)	|, %sfp
| voxel.c:778: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jlt .L353		|
.L217:
| voxel.c:779: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%a0	| %sfp, desired_height
| voxel.c:779: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%d0	| %sfp, tmp687
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp687
| voxel.c:779: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp687,
	move.l %a1,-(%sp)	|,
	sub.w 144(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:781: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L219		|
	move.w #-256,%d0	|, altitude_delta
.L220:
| voxel.c:782: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:783: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jgt .L221		|
.L365:
| voxel.c:782: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _38, pos.z
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, tmp695
| voxel.c:411: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp696
	sub.w %d0,%a0	| tmp695, tmp696
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp696, tmp697
	add.l %a0,%a0	| tmp697, tmp697
	move.l %a0,84(%sp)	| tmp697, %sfp
	move.l %a0,%d2	| tmp697,
	move.l %a0,%d4	| tmp697,
	move.l %a0,%d5	| tmp697,
.L218:
| voxel.c:786: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),132(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_uv
| voxel.c:789: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,146(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 126(%sp),%d0	| %sfp, _43
	and.w #8,%d0	|, _43
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d3	| _43, x
	addq.w #3,%d3	|, x
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,128(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp701
	add.l %a0,%d0	|, tmp701
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp701
	move.l %d0,76(%sp)	| tmp701, %sfp
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 132(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp703
	add.l #-160,%d0	|, tmp703
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,74(%sp)	| pos.dirx, %sfp
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d2	|,
	move.l %d2,118(%sp)	|, %sfp
	add.l #_y_table+16384,%d4	|,
	move.l %d4,114(%sp)	|, %sfp
	add.l #_y_table+24576,%d5	|,
	move.l %d5,110(%sp)	|, %sfp
	move.l 84(%sp),%d1	| %sfp,
	add.l #_y_table+32768,%d1	|,
	move.l %d1,106(%sp)	|, %sfp
	move.l 84(%sp),%d2	| %sfp,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,102(%sp)	|, %sfp
	move.l 84(%sp),%d4	| %sfp,
	add.l #_y_table+49152,%d4	|,
	move.l %d4,98(%sp)	|, %sfp
	move.l 84(%sp),%d5	| %sfp,
	add.l #_y_table+57344,%d5	|,
	move.l %d5,94(%sp)	|, %sfp
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d5	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _49,
	lsl.l #4,%d1	|,
	move.l %d1,80(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w %d3,%d2	| x, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp1027, %sfp
	add.l %d2,%d2	| x, tmp713
	add.l #_horizon,%d2	|, tmp713
	move.l %d2,44(%sp)	| tmp713, %sfp
	move.l %d7,88(%sp)	| sample_uv, %sfp
	move.w %d3,%d7	| x, x
.L278:
| voxel.c:814: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w %d7,%d4	| x, tmp714
	lsr.w #3,%d4	|, tmp714
	and.l #65535,%d4	|, _72
| voxel.c:814: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _72, tmp716
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d3	| view_max[_72], _1847
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d7,%d0	| x, tmp717
	asr.w #4,%d0	|, tmp717
	ext.l %d0	| tmp718
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp718, tmp719
	add.l %d0,%d0	| tmp719, tmp719
	move.l %d0,64(%sp)	| tmp719, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%d0	|, tmp722
	lsr.l #3,%d0	|, tmp722
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp722,
	move.l %d1,68(%sp)	|, %sfp
| voxel.c:813: 				.y = view_max[x >> 3] - y_offset,
	move.w %d3,%d2	| _1847, _1844
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 76(%sp),%d0	| %sfp, tmp1028
	move.l %d0,56(%sp)	| tmp1028, %sfp
| voxel.c:813: 				.y = view_max[x >> 3] - y_offset,
	move.w %d3,%d0	| _1847, y
	sub.w 58(%sp),%d0	| %sfp, y
| voxel.c:818: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d4	| view_min[_72], y_min
	sub.w 58(%sp),%d4	| %sfp, y_min
| voxel.c:418: 	if (y < y_min) goto finish;
	cmp.w %d0,%d4	| y, y_min
	jgt .L275		|
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w %d7,%d1	| x, _57
	add.w #-160,%d1	|, _57
| voxel.c:804: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 72(%sp),%d6	| %sfp,
	muls.w %d1,%d6	| _57, tmp731
| voxel.c:804: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d6	|, tmp732
| voxel.c:804: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 74(%sp),%d2	| %sfp, tmp733
	sub.w %d6,%d2	| tmp732, tmp733
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp735
	clr.w %d2	| tmp735
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 74(%sp),%d1	| %sfp, tmp736
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d1	|, tmp737
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 72(%sp),%d1	| %sfp, tmp738
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d2	| tmp738, tmp740
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _326
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 88(%sp),%d1	| %sfp, tmp741
	add.l %d2,%d1	| _326, tmp741
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp742
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _326, tmp743
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp744
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _326, tmp745
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp746
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _326, tmp747
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d3	|, tmp748
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d3	| %sfp, tmp750
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d3	| tmp750, tmp751
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%a0	| tmp751, tmp752
	add.l 68(%sp),%a0	| %sfp, tmp752
	add.l 52(%sp),%a0	| %sfp, pBlock
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 118(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d6	|, z
	move.l %d5,%a3	| movep_data, movep_data
.L227:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_905, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.513
	move.b %d3,%d5	| sample, SR.513
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d5.l),%a1	| *_909, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L223		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, y_min
	jge .L300		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp758
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_915, _916
.L225:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _916, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L225		|
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _326, tmp760
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L227		|
.L360:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %a3,%d5	| movep_data, movep_data
.L228:
	add.l %d2,%d2	| _326, tmp761
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _334
| voxel.c:418: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 114(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
.L229:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_829, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.511
	move.b %d3,%d5	| sample, SR.511
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d5.l),%a1	| *_833, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L230		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, y_min
	jge .L302		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp767
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_839, _840
.L232:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _840, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L232		|
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _334, tmp769
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L229		|
.L364:
| voxel.c:418: 	if (y < y_min) goto finish;
	move.l %a3,%d5	| movep_data, movep_data
.L234:
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 110(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
.L240:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_753, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.509
	move.b %d3,%d5	| sample, SR.509
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d5.l),%a1	| *_757, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L236		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, y_min
	jge .L303		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp775
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_763, _764
.L238:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _764, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L238		|
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _334, tmp777
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L240		|
.L363:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %a3,%d5	| movep_data, movep_data
.L241:
	add.l %d2,%d2	| _334, tmp778
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _332
| voxel.c:418: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 106(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
.L247:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_677, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.507
	move.b %d3,%d5	| sample, SR.507
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d5.l),%a1	| *_681, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L243		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, y_min
	jge .L304		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp784
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_687, _688
.L245:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _688, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L245		|
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _332, tmp786
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L247		|
.L362:
| voxel.c:418: 	if (y < y_min) goto finish;
	move.l %a3,%d5	| movep_data, movep_data
.L248:
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 102(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	lea _fog_table+40,%a6	|, fog_table_shifted
	move.l %d5,48(%sp)	| movep_data, %sfp
.L256:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d5	| *_601, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.505
	move.b %d5,%d3	| sample, SR.505
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a3,%d3.l),%d3	| *_605, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L250		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| y_min, sample_y
	jle .L305		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
.L251:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, sample
	move.w %d5,%a1	| sample, _1954
| voxel.c:432: 			if (!fog) {
	tst.b 138(%sp)	| %sfp
	jne .L252		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	| _1954
	move.w %a1,%d5	| _1954, _1954
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d5.l),%d5	| *_611, _612
.L253:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| _612, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L253		|
.L254:
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _332, tmp803
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L256		|
.L361:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 48(%sp),%d5	| %sfp, movep_data
.L257:
	add.l %d2,%d2	| _332, tmp804
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _330
| voxel.c:418: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 98(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	lea _fog_table+48,%a6	|, fog_table_shifted
.L265:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d5	| *_524, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.503
	move.b %d5,%d3	| sample, SR.503
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a3,%d3.l),%d3	| *_528, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L259		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| y_min, sample_y
	jle .L306		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
.L260:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, sample
	move.w %d5,%a1	| sample, _1952
| voxel.c:432: 			if (!fog) {
	tst.b 138(%sp)	| %sfp
	jne .L261		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	| _1952
	move.w %a1,%d5	| _1952, _1952
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d5.l),%d5	| *_534, _535
.L262:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| _535, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L262		|
.L263:
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _330, tmp821
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L265		|
.L359:
| voxel.c:418: 	if (y < y_min) goto finish;
	move.l 48(%sp),%d5	| %sfp, movep_data
.L266:
	cmp.w %d4,%d0	| y_min, y
	jlt .L267		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 94(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d6	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	lea _fog_table+56,%a6	|, fog_table_shifted
.L274:
| voxel.c:351: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d3	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d5	| *_447, sample
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.501
	move.b %d5,%d3	| sample, SR.501
| voxel.c:423: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a3,%d3.l),%d3	| *_451, sample_y
| voxel.c:424: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L268		|
| voxel.c:426: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| y_min, sample_y
	jle .L307		|
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
.L269:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, sample
	move.w %d5,%a1	| sample, _1950
| voxel.c:432: 			if (!fog) {
	tst.b 138(%sp)	| %sfp
	jne .L270		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	| _1950
	move.w %a1,%d5	| _1950, _1950
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d5.l),%d5	| *_457, _458
.L271:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| _458, pBlock
| 0 "" 2
| voxel.c:438: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:440: 				} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L271		|
.L272:
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _330, tmp838
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L274		|
.L358:
| voxel.c:833: 			state.y += y_offset;
	move.l 48(%sp),%d5	| %sfp, movep_data
	move.w %d0,%d2	| y, _1844
	add.w 58(%sp),%d2	| %sfp, _1844
	move.w %d2,%d3	| _1844, _1847
.L275:
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 44(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1887], _399
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d2	| _399, _400
| voxel.c:519: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp839
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp840
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp842
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp842, tmp843
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp844
	move.l 52(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp844, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d2	| _400
	jle .L276		|
	mulu.w #160,%d2	|, tmp845
	add.l %a0,%d2	| pBlock, _1748
.L277:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:513: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:511: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d2	| pBlock, _1748
	jne .L277		|
.L276:
| voxel.c:520: 	horizon[x] = y;
	move.l 44(%sp),%a1	| %sfp,
	move.w %d3,(%a1)	| _1847, MEM[(short int *)_1887]
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,%d7	|, x
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 80(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,44(%sp)	|, %sfp
	cmp.w #319,%d7	|, x
	jls .L278		|
| voxel.c:837: 		unsigned long t_render_1 = *_hz_200;
	move.l 88(%sp),%d7	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:838: 		t_render += t_render_1 - t_render_0;
	sub.l 146(%sp),%d0	| %sfp, tmp848
| voxel.c:838: 		t_render += t_render_1 - t_render_0;
	add.l %d0,134(%sp)	| tmp848, %sfp
| voxel.c:477: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 84(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:482: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:480: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:483: 	unsigned short z = 0;
	clr.w %d1	| z
.L281:
	move.l %d7,%d0	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d7	| delta_uv, tmp849
	add.l %d0,%d7	| uv, tmp849
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_uv
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:493: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d4	| z, z
| voxel.c:492: 		z++;
	addq.w #1,%d1	|, z
| voxel.c:485: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L279		|
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
	move.w (%a4,%d0.l),%d0	| *_971, sample
| voxel.c:487: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.514
| voxel.c:488: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_975, *_975
	cmp.w %d5,%d0	| min_y, *_975
	jge .L280		|
	move.w %d0,%d5	| *_975, min_y
.L280:
| voxel.c:496: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp855
	and.w #15,%d0	|, tmp855
	jne .L279		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp856
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp857
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L279:
| voxel.c:484: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L281		|
| voxel.c:844: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L308		|
	move.w #128,%a0	|, _1867
| voxel.c:846: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L282		|
| voxel.c:849: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp858
	add.w %d5,%d5	| tmp858, tmp859
	add.w %d5,%d5	| tmp859, sunlight
| voxel.c:852: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _1867
.L282:
	move.l %a0,-(%sp)	| _1867,
	move.l 126(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp865
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp866
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp866, pos.x
| voxel.c:855: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp869
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp870
| voxel.c:855: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp870, _110
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp872
	sub.l 136(%sp),%d0	| %sfp, tmp872
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp873
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp874
	asr.w #3,%d3	|, tmp874
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp875
	asr.w #4,%d4	|, tmp875
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp875, tmp876
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:859: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jle .L283		|
.L366:
| voxel.c:859: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _123, _126
.L284:
| voxel.c:855: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _110, pos.y
| voxel.c:859: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _126, pos.speed
| voxel.c:861: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 132(%sp),%d3	| %sfp, rot
| voxel.c:862: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _105, tmp879
| voxel.c:862: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp880
| voxel.c:862: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _99, _138
| voxel.c:863: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d3	| _138, tmp881
| voxel.c:863: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d3	|, tmp882
| voxel.c:863: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d3,%d1	| tmp882, _145
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _138,
	muls.w %d0,%d2	| _138, tmp883
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp884
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _145,
	muls.w %d1,%d3	| _145, tmp885
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp886
| voxel.c:866: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, tmp887
	add.w %d3,%a0	| tmp886, tmp887
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp887, tmp888
	moveq #-128,%d3	|, tmp889
	add.l %a0,%d3	| tmp888, tmp889
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp890
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _371
	sub.w %d3,%d2	| tmp890, _371
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _371, tmp893
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp894
| voxel.c:867: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp892
	clr.w %d0	| tmp892
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _145, tmp899
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp900
| voxel.c:867: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| tmp900, tmp892
	move.l %d0,_pos+6	| tmp892, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:870: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:870: 		if (pressed_keys.up) {
	jpl .L285		|
| voxel.c:871: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L310		|
| voxel.c:874: 			desired_height += FIXP(1, 0);
	move.w 92(%sp),%d0	| %sfp, _1869
.L286:
	add.w #128,%d0	|, _1869
	move.w %d0,92(%sp)	| _1869, %sfp
| voxel.c:875: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L285		|
	move.w #32512,92(%sp)	|, %sfp
.L285:
| voxel.c:879: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:879: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L288		|
| voxel.c:880: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L289		|
| voxel.c:883: 			desired_height -= FIXP(1, 0);
	move.w 92(%sp),140(%sp)	| %sfp, %sfp
.L289:
| voxel.c:888: 		if (key == 0x23) {
	cmp.b #35,139(%sp)	|, %sfp
	jeq .L311		|
| voxel.c:883: 			desired_height -= FIXP(1, 0);
	move.w 140(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,92(%sp)	|, %sfp
| voxel.c:884: 			if (desired_height < FIXP(0, 0)) {
	jmi .L354		|
.L292:
| voxel.c:895: 		} else if (key == 0x20) {
	cmp.b #32,139(%sp)	|, %sfp
	jeq .L355		|
.L290:
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp912
	and.w #8192,%d0	|, _184
| voxel.c:200: 	data &= mask;
	move.l 52(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp913
	and.l #-536879105,%d3	|, tmp913
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _184
	move.w %d0,%d1	| _184, _184
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp918
	and.l #-536879105,%d4	|, tmp918
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _184
	swap %d2	| _184
	clr.w %d2	| _184
	move.w %d0,%d2	| _184, _184
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _184, tmp918
	move.l %d4,(%a0)	| tmp918, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _184, tmp913
	move.l %d3,4(%a0)	| tmp913, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp926
	and.b #1,%d0	|, _157
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp929
	ext.w %d0	| tmp928
	neg.w %d0	| tmp930
	lsl.w %d1,%d0	|, _727
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp931
	and.l #-536879105,%d3	|, tmp931
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _727
	move.w %d0,%d1	| _727, _727
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp936
	and.l #-536879105,%d4	|, tmp936
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _727
	swap %d2	| _727
	clr.w %d2	| _727
	move.w %d0,%d2	| _727, _727
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _727, tmp936
	move.l %d4,640(%a0)	| tmp936, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _727, tmp931
	move.l %d3,644(%a0)	| tmp931, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp944
	and.b #1,%d1	|, _158
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp947
	ext.w %d1	| tmp946
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1852
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp950
	and.b #1,%d0	|, _159
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp953
	ext.w %d0	| tmp952
	neg.w %d0	| tmp954
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1763
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _1852, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _1852, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _1852, data
| voxel.c:906: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp959
	not.w %d1	| tmp959
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp958
	moveq #13,%d7	|,
	lsl.w %d7,%d1	|, _1696
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1763, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1696, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1763, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1696, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1696, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,126(%sp)	|, %sfp
| voxel.c:772: 		frames++;
	move.l 142(%sp),122(%sp)	| %sfp, %sfp
.L357:
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp655
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp655
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1024
	jne .L356		|
.L299:
	clr.b 139(%sp)	| %sfp
| voxel.c:772: 		frames++;
	move.l 122(%sp),%d4	| %sfp,
	addq.l #1,%d4	|,
	move.l %d4,142(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_315
	move.w (%a0),%d0	| *hw_palette.67_315, _316
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d7	| MEM <unsigned int> [(short int *)&pos], _320
| voxel.c:777: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp663
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp665
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp667
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp669
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp670
	add.l %d1,%d0	| tmp669, tmp671
	add.l %d0,%d0	| tmp671, tmp672
| voxel.c:776: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsr.b #1,%d0	|, tmp675
| voxel.c:777: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp677
	lsl.w #7,%d0	|, tmp678
	move.w %d3,%d4	| _28,
	sub.w %d0,%d4	| tmp678,
	move.w %d4,140(%sp)	|, %sfp
| voxel.c:778: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jge .L217		|
.L353:
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, tmp679
| voxel.c:411: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp680
	sub.w %d3,%a0	| tmp679, tmp680
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp696, tmp697
	add.l %a0,%a0	| tmp697, tmp697
	move.l %a0,84(%sp)	| tmp697, %sfp
	move.l %a0,%d2	| tmp697,
	move.l %a0,%d4	| tmp697,
	move.l %a0,%d5	| tmp697,
	jra .L218		|
.L352:
| voxel.c:912: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:913: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 150(%sp),%a0	| %sfp, tmp965
| voxel.c:913: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp965, tmp967
	add.l %a0,%d0	| tmp965, tmp967
	add.l %d0,%d0	| tmp967, tmp968
| voxel.c:914: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp973
	move.l 122(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp973
| voxel.c:915: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1029,
	pea .LC11		|
	lea _printf,%a2	|, tmp975
	jsr (%a2)		| tmp975
| voxel.c:916: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 142(%sp),%d0	| %sfp, tmp977
	add.l %d0,%d0	|, tmp977
	add.l %d0,%d0	| tmp977, tmp978
| voxel.c:916: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 130(%sp),-(%sp)	| %sfp,
	move.l 146(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp973
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1030,
	pea .LC12		|
	jsr (%a2)		| tmp975
| voxel.c:917: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:918: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L208:
| voxel.c:921: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:922: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:923: 	install_palette(saved_palette);
	pea 172(%sp)		|
	jsr _install_palette		|
| voxel.c:925: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (156,%sp),%sp	|,
	rts	
.L355:
	eor.b #1,138(%sp)	|, %sfp
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp912
	and.w #8192,%d0	|, _184
| voxel.c:200: 	data &= mask;
	move.l 52(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp913
	and.l #-536879105,%d3	|, tmp913
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _184
	move.w %d0,%d1	| _184, _184
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp918
	and.l #-536879105,%d4	|, tmp918
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _184
	swap %d2	| _184
	clr.w %d2	| _184
	move.w %d0,%d2	| _184, _184
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _184, tmp918
	move.l %d4,(%a0)	| tmp918, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _184, tmp913
	move.l %d3,4(%a0)	| tmp913, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp926
	and.b #1,%d0	|, _157
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp929
	ext.w %d0	| tmp928
	neg.w %d0	| tmp930
	lsl.w %d1,%d0	|, _727
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp931
	and.l #-536879105,%d3	|, tmp931
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _727
	move.w %d0,%d1	| _727, _727
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp936
	and.l #-536879105,%d4	|, tmp936
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _727
	swap %d2	| _727
	clr.w %d2	| _727
	move.w %d0,%d2	| _727, _727
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _727, tmp936
	move.l %d4,640(%a0)	| tmp936, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _727, tmp931
	move.l %d3,644(%a0)	| tmp931, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp944
	and.b #1,%d1	|, _158
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp947
	ext.w %d1	| tmp946
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1852
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp950
	and.b #1,%d0	|, _159
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp953
	ext.w %d0	| tmp952
	neg.w %d0	| tmp954
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1763
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _1852, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _1852, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _1852, data
| voxel.c:906: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp959
	not.w %d1	| tmp959
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp958
	moveq #13,%d7	|,
	lsl.w %d7,%d1	|, _1696
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1763, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1696, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1763, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1696, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1696, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,126(%sp)	|, %sfp
| voxel.c:772: 		frames++;
	move.l 142(%sp),122(%sp)	| %sfp, %sfp
	jra .L357		|
.L354:
| voxel.c:884: 			if (desired_height < FIXP(0, 0)) {
	clr.w 92(%sp)	| %sfp
| voxel.c:895: 		} else if (key == 0x20) {
	cmp.b #32,139(%sp)	|, %sfp
	jne .L290		|
	jra .L355		|
.L268:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _330, tmp838
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L274		|
	jra .L358		|
.L259:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _330, tmp821
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L265		|
	jra .L359		|
.L223:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _326, tmp760
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L227		|
	jra .L360		|
.L250:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:456: 		fog_table_shifted++;
	addq.l #1,%a6	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _332, tmp803
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L256		|
	jra .L361		|
.L243:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _332, tmp786
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L247		|
	jra .L362		|
.L236:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _334, tmp777
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L240		|
	jra .L363		|
.L230:
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d6	|, z
| voxel.c:455: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _334, tmp769
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:421: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d6	| z
	jlt .L229		|
	jra .L364		|
.L302:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%a1	| y_min, sample_y
	moveq #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp767
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_839, _840
	jra .L232		|
.L300:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%a1	| y_min, sample_y
	moveq #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp758
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_915, _916
	jra .L225		|
.L304:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%a1	| y_min, sample_y
	moveq #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp784
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_687, _688
	jra .L245		|
.L303:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%a1	| y_min, sample_y
	moveq #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp775
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d3.l),%d3	| *_763, _764
	jra .L238		|
.L261:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a6),%d5	| MEM[(unsigned char *)fog_table_shifted_1333],
	move.w %d5,%a2	|, opacity_preshifted
	add.w %a1,%a2	| _1952, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	|
	move.w %a2,%d5	| offset,
	move.l %d5,%a2	|, _549
	add.l #_pdata_table,%a2	|, tmp995
.L264:
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp814
	add.l %d5,%a1	| tmp814, tmp815
	add.l %a1,%a1	| tmp815, tmp816
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_555, *_555
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_555, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jlt .L263		|
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp814
	add.l %d5,%a1	| tmp814, tmp815
	add.l %a1,%a1	| tmp815, tmp816
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_555, *_555
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_555, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L264		|
	jra .L263		|
.L306:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%d3	| y_min, sample_y
	moveq #1,%d6	|, z
	jra .L260		|
.L252:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a6),%d5	| MEM[(unsigned char *)fog_table_shifted_1174],
	move.w %d5,%a2	|, opacity_preshifted
	add.w %a1,%a2	| _1954, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	|
	move.w %a2,%d5	| offset,
	move.l %d5,%a2	|, _626
	add.l #_pdata_table,%a2	|, tmp997
.L255:
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp796
	add.l %d5,%a1	| tmp796, tmp797
	add.l %a1,%a1	| tmp797, tmp798
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_632, *_632
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_632, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jlt .L254		|
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp796
	add.l %d5,%a1	| tmp796, tmp797
	add.l %a1,%a1	| tmp797, tmp798
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_632, *_632
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_632, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L255		|
	jra .L254		|
.L305:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%d3	| y_min, sample_y
	moveq #1,%d6	|, z
	jra .L251		|
.L270:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a6),%d5	| MEM[(unsigned char *)fog_table_shifted_934],
	move.w %d5,%a2	|, opacity_preshifted
	add.w %a1,%a2	| _1950, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d5	|
	move.w %a2,%d5	| offset,
	move.l %d5,%a2	|, _472
	add.l #_pdata_table,%a2	|, tmp994
.L273:
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp831
	add.l %d5,%a1	| tmp831, tmp832
	add.l %a1,%a1	| tmp832, tmp833
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_478, *_478
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_478, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jlt .L272		|
| voxel.c:446: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d5	|,
	and.l %d0,%d5	| y,
	move.l %d5,%a1	|, tmp831
	add.l %d5,%a1	| tmp831, tmp832
	add.l %a1,%a1	| tmp832, tmp833
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d5	| *_478, *_478
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| *_478, pBlock
| 0 "" 2
| voxel.c:448: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:449: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:450: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L273		|
	jra .L272		|
.L307:
| voxel.c:428: 				sample_y = y_min;
	move.w %d4,%d3	| y_min, sample_y
	moveq #1,%d6	|, z
	jra .L269		|
.L219:
| voxel.c:782: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L220		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _28, _38
| voxel.c:783: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jle .L365		|
.L221:
| voxel.c:783: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,84(%sp)	|, %sfp
	move.l %d1,%d2	|,
	move.l %d1,%d4	|,
	move.l %d1,%d5	|,
| voxel.c:786: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),132(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_uv
| voxel.c:789: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,146(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 126(%sp),%d0	| %sfp, _43
	and.w #8,%d0	|, _43
| voxel.c:792: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d3	| _43, x
	addq.w #3,%d3	|, x
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,128(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp701
	add.l %a0,%d0	|, tmp701
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp701
	move.l %d0,76(%sp)	| tmp701, %sfp
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 132(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp703
	add.l #-160,%d0	|, tmp703
| voxel.c:798: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:805: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,74(%sp)	| pos.dirx, %sfp
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d2	|,
	move.l %d2,118(%sp)	|, %sfp
	add.l #_y_table+16384,%d4	|,
	move.l %d4,114(%sp)	|, %sfp
	add.l #_y_table+24576,%d5	|,
	move.l %d5,110(%sp)	|, %sfp
	move.l 84(%sp),%d1	| %sfp,
	add.l #_y_table+32768,%d1	|,
	move.l %d1,106(%sp)	|, %sfp
	move.l 84(%sp),%d2	| %sfp,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,102(%sp)	|, %sfp
	move.l 84(%sp),%d4	| %sfp,
	add.l #_y_table+49152,%d4	|,
	move.l %d4,98(%sp)	|, %sfp
	move.l 84(%sp),%d5	| %sfp,
	add.l #_y_table+57344,%d5	|,
	move.l %d5,94(%sp)	|, %sfp
| voxel.c:510: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d5	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _49,
	lsl.l #4,%d1	|,
	move.l %d1,80(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w %d3,%d2	| x, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp1027, %sfp
	add.l %d2,%d2	| x, tmp713
	add.l #_horizon,%d2	|, tmp713
	move.l %d2,44(%sp)	| tmp713, %sfp
	move.l %d7,88(%sp)	| sample_uv, %sfp
	move.w %d3,%d7	| x, x
	jra .L278		|
.L288:
| voxel.c:888: 		if (key == 0x23) {
	cmp.b #35,139(%sp)	|, %sfp
	jne .L292		|
| voxel.c:890: 			if (desired_height < 0) {
	tst.w 92(%sp)	| %sfp
	jge .L311		|
| voxel.c:891: 				desired_height = player_height;
	move.w 140(%sp),92(%sp)	| %sfp, %sfp
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp912
	and.w #8192,%d0	|, _184
| voxel.c:200: 	data &= mask;
	move.l 52(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp913
	and.l #-536879105,%d3	|, tmp913
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _184
	move.w %d0,%d1	| _184, _184
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp918
	and.l #-536879105,%d4	|, tmp918
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _184
	swap %d2	| _184
	clr.w %d2	| _184
	move.w %d0,%d2	| _184, _184
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _184, tmp918
	move.l %d4,(%a0)	| tmp918, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _184, tmp913
	move.l %d3,4(%a0)	| tmp913, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp926
	and.b #1,%d0	|, _157
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp929
	ext.w %d0	| tmp928
	neg.w %d0	| tmp930
	lsl.w %d1,%d0	|, _727
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp931
	and.l #-536879105,%d3	|, tmp931
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _727
	move.w %d0,%d1	| _727, _727
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp936
	and.l #-536879105,%d4	|, tmp936
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _727
	swap %d2	| _727
	clr.w %d2	| _727
	move.w %d0,%d2	| _727, _727
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _727, tmp936
	move.l %d4,640(%a0)	| tmp936, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _727, tmp931
	move.l %d3,644(%a0)	| tmp931, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp944
	and.b #1,%d1	|, _158
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp947
	ext.w %d1	| tmp946
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1852
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp950
	and.b #1,%d0	|, _159
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp953
	ext.w %d0	| tmp952
	neg.w %d0	| tmp954
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1763
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _1852, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _1852, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _1852, data
| voxel.c:906: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp959
	not.w %d1	| tmp959
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp958
	moveq #13,%d7	|,
	lsl.w %d7,%d1	|, _1696
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1763, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1696, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1763, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1696, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1696, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,126(%sp)	|, %sfp
| voxel.c:772: 		frames++;
	move.l 142(%sp),122(%sp)	| %sfp, %sfp
	jra .L357		|
.L308:
	sub.l %a0,%a0	| _1867
| voxel.c:852: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1867,
	move.l 126(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp865
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp866
| voxel.c:854: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp866, pos.x
| voxel.c:855: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp869
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp870
| voxel.c:855: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp870, _110
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp872
	sub.l 136(%sp),%d0	| %sfp, tmp872
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp873
| voxel.c:857: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp874
	asr.w #3,%d3	|, tmp874
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp875
	asr.w #4,%d4	|, tmp875
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp875, tmp876
| voxel.c:858: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:859: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jgt .L366		|
.L283:
| voxel.c:860: 		else pos.speed += drag;
	add.w %d3,%d0	| _123, _126
	jra .L284		|
.L311:
| voxel.c:893: 				desired_height = -1;
	move.w #-1,92(%sp)	|, %sfp
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp912
	and.w #8192,%d0	|, _184
| voxel.c:200: 	data &= mask;
	move.l 52(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp913
	and.l #-536879105,%d3	|, tmp913
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _184
	move.w %d0,%d1	| _184, _184
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp918
	and.l #-536879105,%d4	|, tmp918
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _184
	swap %d2	| _184
	clr.w %d2	| _184
	move.w %d0,%d2	| _184, _184
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _184, tmp918
	move.l %d4,(%a0)	| tmp918, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _184, tmp913
	move.l %d3,4(%a0)	| tmp913, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp926
	and.b #1,%d0	|, _157
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp929
	ext.w %d0	| tmp928
	neg.w %d0	| tmp930
	lsl.w %d1,%d0	|, _727
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp931
	and.l #-536879105,%d3	|, tmp931
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _727
	move.w %d0,%d1	| _727, _727
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp936
	and.l #-536879105,%d4	|, tmp936
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _727
	swap %d2	| _727
	clr.w %d2	| _727
	move.w %d0,%d2	| _727, _727
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _727, tmp936
	move.l %d4,640(%a0)	| tmp936, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _727, tmp931
	move.l %d3,644(%a0)	| tmp931, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp944
	and.b #1,%d1	|, _158
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp947
	ext.w %d1	| tmp946
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1852
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp950
	and.b #1,%d0	|, _159
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp953
	ext.w %d0	| tmp952
	neg.w %d0	| tmp954
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1763
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _1852, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _1852, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _1852, data
| voxel.c:906: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp959
	not.w %d1	| tmp959
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp958
	moveq #13,%d7	|,
	lsl.w %d7,%d1	|, _1696
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1763, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1696, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1763, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1696, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1696, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,126(%sp)	|, %sfp
| voxel.c:772: 		frames++;
	move.l 142(%sp),122(%sp)	| %sfp, %sfp
	jra .L357		|
.L310:
	move.w 140(%sp),%d0	| %sfp, _1869
	jra .L286		|
.L351:
| voxel.c:732: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:733: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:921: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:922: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:923: 	install_palette(saved_palette);
	pea 172(%sp)		|
	jsr _install_palette		|
| voxel.c:925: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (156,%sp),%sp	|,
	rts	
.L267:
| voxel.c:833: 			state.y += y_offset;
	move.w %d0,%d2	| y, _1844
	add.w 58(%sp),%d2	| %sfp, _1844
	move.w %d2,%d3	| _1844, _1847
	jra .L275		|
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
