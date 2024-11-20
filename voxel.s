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
| voxel.c:470: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp59
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:478: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:477: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:475: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d6	|, index_mask
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L109:
	move.w %d2,%d4	| z, z
| voxel.c:487: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _50, y_table_shifted
| voxel.c:488: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_uv, tmp60
	add.l %d1,%d3	| uv, tmp60
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:480: 		if (z >= STEPS_MIN) {
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
| voxel.c:482: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, SR.361
| voxel.c:483: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| *_6, *_6
	cmp.w %d0,%d1	| <retval>, *_6
	jge .L108		|
	move.w %d1,%d0	| *_6, <retval>
.L108:
| voxel.c:491: 		if (TRIGGERS_PROGRESSION(z)) {
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
| voxel.c:479: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L109		|
| voxel.c:501: }
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
| voxel.c:505: 	unsigned int movep_data = pdata_table[color][0][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:505: 	unsigned int movep_data = pdata_table[color][0][0];
	lsl.l #8,%d0	|, tmp71
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[_1][0][0], movep_data
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:508: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L115		|
.L113:
| voxel.c:510: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
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
| voxel.c:505: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d4	| pdata_table[15][0][0], movep_data
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:508: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L121		|
.L120:
| voxel.c:515: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:516: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:534: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:535: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:536: }
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:542: }
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
| voxel.c:553: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:554: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:555: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:534: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:535: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:534: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:535: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:534: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:535: 	return c >> 1;
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:560: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:560: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:552: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.418
	cmp.l %d3,%a3	| _445, ivtmp.418
	jne .L130		|
| voxel.c:562: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.424
	clr.w %d0	| vect__18.424
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.424
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.424, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:568: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L138		|
	cmp.w #128,%d0	|, val
	jge .L139		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:573: }
	rts	
.L139:
| voxel.c:571: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:573: }
	rts	
.L138:
| voxel.c:571: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:573: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:578: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:581: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:588: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:590: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:602: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:583: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.454
| voxel.c:590: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L149:
| voxel.c:593: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:600: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L159		|
| voxel.c:602: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:608: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:612: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:613: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L161		|
.L145:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L150		|
.L162:
	cmp.w #128,%d4	|, _504
	jge .L151		|
	add.b %d4,%d4	| _504, iftmp.29_290
.L146:
| voxel.c:616: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L152		|
.L163:
	cmp.w #128,%d3	|, _75
	jge .L153		|
	add.b %d3,%d3	| _75, iftmp.30_360
.L147:
| voxel.c:617: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:618: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L154		|
.L164:
	cmp.w #128,%d2	|, _404
	jge .L155		|
	add.b %d2,%d2	| _404, iftmp.30_295
| voxel.c:618: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:591: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
.L165:
| voxel.c:620: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:621: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:623: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:624: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L161:
| voxel.c:613: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L162		|
.L150:
	clr.b %d4	| iftmp.29_290
| voxel.c:616: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L163		|
.L152:
	clr.b %d3	| iftmp.30_360
| voxel.c:617: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:618: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:571: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L164		|
.L154:
	clr.b %d2	| iftmp.30_295
| voxel.c:618: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:591: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L159:
| voxel.c:600: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:602: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:608: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:566: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:540: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:612: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:613: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L145		|
	jra .L161		|
.L151:
| voxel.c:571: 	return val < 0 ? 0 : (
	st %d4		| iftmp.29_290
	jra .L146		|
.L155:
	st %d2		| iftmp.30_295
| voxel.c:618: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:591: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L153:
| voxel.c:571: 	return val < 0 ? 0 : (
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
| voxel.c:628: 	printf("Loading colors.tga\n");
	pea .LC1		|
	move.l #_puts,%d6	|, tmp111
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:629: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a6	|, tmp107
	jsr (%a6)		| tmp107
	move.l %d0,%d3	| tmp117, file1
| voxel.c:630: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L188		|
| voxel.c:634: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:635: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L184		|
	lea _fclose,%a2	|, tmp105
.L169:
| voxel.c:689: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
.L179:
| voxel.c:691: 	return 0;
	moveq #0,%d0	| <retval>
.L166:
| voxel.c:692: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L184:
| voxel.c:637: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:637: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:638: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:639: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:641: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:642: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:645: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:644: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
	lea _putchar,%a3	|, tmp110
	moveq #72,%d2	|, tmp112
	add.l %sp,%d2	|, tmp112
	lea _fread,%a2	|, tmp109
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.w #8192,%a5	|, remaining
| voxel.c:649: 		fflush(stdout);
	lea _fflush,%a4	|, tmp116
.L170:
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,-(%sp)	| file1,
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L172		|
	move.l %a5,%d0	| remaining, remaining
.L172:
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%d7	| tmp118, n
| voxel.c:646: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L189		|
| voxel.c:647: 		remaining -= n;
	sub.l %d7,%d4	| n, remaining
| voxel.c:648: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:649: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp116
	move.l %d2,%a1	| tmp112, ivtmp.476
	move.l %d2,%d0	| tmp112, _93
	add.l %d7,%d0	| n, _93
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L171:
| voxel.c:651: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_91], MEM[(unsigned char *)p_79]
| voxel.c:652: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:650: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.476, _93
	jne .L171		|
	move.l %d7,%d1	| n, tmp76
	add.l %d7,%d1	| n, tmp76
	add.l %d1,%d5	| tmp76, p
	jra .L170		|
.L189:
| voxel.c:655: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:656: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a5	|, tmp104
	jsr (%a5)		| tmp104
| voxel.c:658: 	printf("Loading height.tga\n");
	pea .LC4		|
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:659: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a6)		| tmp107
	move.l %d0,%d6	| tmp119, file2
| voxel.c:660: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L190		|
| voxel.c:664: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:665: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L191		|
| voxel.c:666: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:667: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:668: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:671: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L175:
| voxel.c:668: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:668: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L177		|
	move.l %d7,%d0	| remaining, remaining
.L177:
| voxel.c:668: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%a6	| tmp120, n
| voxel.c:668: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L192		|
| voxel.c:669: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:670: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:671: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp112, ivtmp.469
	move.l %d2,%d0	| tmp112, _74
	add.l %a6,%d0	| n, _74
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L176:
| voxel.c:675: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_76], _12
| voxel.c:675: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp91
	move.b %d1,(%a0)	| tmp91, MEM[(unsigned char *)p_81]
| voxel.c:676: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:672: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.469, _74
	jne .L176		|
	add.l %a6,%a6	| n, tmp92
	add.l %a6,%d5	| tmp92, p
	jra .L175		|
.L192:
| voxel.c:679: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:680: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a5)		| tmp104
| voxel.c:682: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp99
	jsr (%a2)		| tmp99
| voxel.c:683: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp99
| voxel.c:684: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:692: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L188:
| voxel.c:631: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:632: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:691: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L166		|
.L190:
| voxel.c:661: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:662: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp105
	jra .L169		|
.L191:
| voxel.c:687: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp105
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
| voxel.c:689: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
	jra .L179		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 695 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L195		|
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 695 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:696: }
	movem.l (%sp)+,#1036	|,
	rts	
.L195:
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:696: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:699: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L199:
#APP
| 699 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L199		|
| voxel.c:701: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L200:
#APP
| 701 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:701: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L200		|
| voxel.c:703: 	Bconin(_CON);
#APP
| 703 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:704: }
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
	lea (-120,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:708: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:710: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:713: 	Super(0L);
	moveq #0,%d0	| tmp584
#APP
| 713 "voxel.c" 1
	movl	%d0,%sp@-	| tmp584
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:715: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:717: 	lineaa();
	jsr _lineaa		|
| voxel.c:720: 	save_palette(saved_palette);
	pea 136(%sp)		|
	jsr _save_palette		|
| voxel.c:722: 	unsigned short *screen = Physbase();
#APP
| 722 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,64(%sp)	| tmp995, %sfp
| voxel.c:724: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:726: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:726: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp996
	jeq .L348		|
| voxel.c:731: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:732: 	build_tables();
	jsr _build_tables		|
| voxel.c:733: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:734: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (130,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 134(%sp),%d6	| cockpit.pixels, cockpit$pixels
| voxel.c:735: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L208		|
| voxel.c:736: 	read_palette_vectors(cockpit.colors);
	move.l 126(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 60(%sp),%a0	| %sfp, ivtmp.740
	move.l %a0,%d0	| ivtmp.740, _1535
	add.l #32000,%d0	|, _1535
	addq.l #4,%sp	|,
.L209:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.521_1671]
	cmp.l %d0,%a0	| _1535, ivtmp.740
	jne .L209		|
| voxel.c:505: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a5	|, tmp974
	move.l (%a5),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.731
	lea _view_max,%a3	|, ivtmp.734
	move.l #_view_min+80,%d4	|, _1541
	clr.w %d3	| ivtmp.732
	move.l 56(%sp),%a1	| %sfp, _201
.L214:
| voxel.c:740: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_1543], _6
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.732, tmp600
	asr.w #4,%d5	|, tmp600
	ext.l %d5	| tmp601
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp601, tmp602
	add.l %d5,%d5	| tmp602, _297
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp605
	lsr.l #3,%d2	|, tmp605
	moveq #1,%d7	|,
	and.l %d7,%d2	|, _302
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _297, tmp606
	add.l %d5,%a0	| _297, tmp606
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _302, tmp607
	lea (%a1,%a0.l),%a0	| _201, tmp607, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L210		|
	mulu.w #160,%d1	|, tmp608
	add.l %a0,%d1	| pBlock, _1571
.L211:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:508: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1571
	jne .L211		|
.L210:
| voxel.c:741: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_1540], _10
| voxel.c:741: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:741: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp610
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp610,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp611
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _297, tmp613
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp613, tmp614
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp614, tmp615
	lea (%a1,%d2.l),%a0	| _201, tmp615, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L212		|
	mulu.w #160,%d1	|, tmp616
	add.l %a0,%d1	| pBlock, _244
.L213:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:508: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _244, pBlock
	jne .L213		|
.L212:
| voxel.c:739: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.732
	cmp.l %d4,%a2	| _1541, ivtmp.731
	jne .L214		|
| voxel.c:744: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:745: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:746: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:749: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 134(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d6,-(%sp)	| cockpit$pixels,
	move.l 80(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:753: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,142(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 94(%sp)	| %sfp
| voxel.c:758: 	int frames = 0;
	clr.l 86(%sp)	| %sfp
| voxel.c:756: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,84(%sp)	|, %sfp
| voxel.c:754: 	unsigned long t_render = 0;
	clr.l 90(%sp)	| %sfp
| voxel.c:751: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d7	|, fog_enabled
| voxel.c:771: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a6	|, tmp990
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp625
#APP
| 695 "voxel.c" 1
	movw	%d3,%sp@-	| tmp625
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp997
	jeq .L303		|
.L352:
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 695 "voxel.c" 1
	movw	%d3,%sp@-	| tmp625
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp628
	ext.l %d0	| tmp628
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,105(%sp)	| tmp628, %sfp
| voxel.c:762: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L349		|
.L215:
| voxel.c:767: 		frames++;
	move.l 86(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,106(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_319
	move.w (%a0),%d0	| *hw_palette.67_319, _320
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d6	| MEM <unsigned int> [(short int *)&pos], _324
| voxel.c:772: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d2	| pos.z, _28
	move.w %d2,%d5	| _28, pretmp_1567
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp633
| voxel.c:771: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp635
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp637
| voxel.c:771: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp639
	moveq #9,%d3	|,
	lsl.l %d3,%d0	|, tmp640
	add.l %d1,%d0	| tmp639, tmp641
	add.l %d0,%d0	| tmp641, tmp642
| voxel.c:771: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a6,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsr.b #1,%d0	|, tmp645
| voxel.c:772: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp647
	lsl.w #7,%d0	|, tmp648
	move.w %d2,%d4	| _28,
	sub.w %d0,%d4	| tmp648,
	move.w %d4,102(%sp)	|, %sfp
| voxel.c:773: 		if (desired_height >= 0) {
	tst.w 84(%sp)	| %sfp
	jlt .L217		|
| voxel.c:774: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 84(%sp),%a0	| %sfp, desired_height
| voxel.c:774: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 84(%sp),%d0	| %sfp, tmp653
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp653
| voxel.c:774: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp653,
	move.l %a1,-(%sp)	|,
	sub.w %d4,%a0	|, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:776: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L218		|
	move.w #-256,%d0	|, altitude_delta
.L219:
| voxel.c:777: 			pos.z += altitude_delta;
	move.w %d0,%d5	| altitude_delta, pretmp_1567
	add.w %d2,%d5	| _28, pretmp_1567
| voxel.c:778: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d5	|, pretmp_1567
	jgt .L220		|
.L354:
| voxel.c:777: 			pos.z += altitude_delta;
	move.w %d5,_pos+4	| pretmp_1567, pos.z
.L217:
| voxel.c:781: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),100(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:784: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,110(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 94(%sp),%d0	| %sfp, _43
	and.w #8,%d0	|, _43
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d3	| _43, x
	addq.w #3,%d3	|, x
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,96(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp663
	add.l %a0,%d0	|, tmp663
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp663
	move.l %d0,76(%sp)	| tmp663, %sfp
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 100(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp665
	add.l #-160,%d0	|, tmp665
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
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
	move.l %d0,60(%sp)	| tmp1000, %sfp
	add.l %d2,%d2	| x, tmp672
	add.l #_horizon,%d2	|, tmp672
	move.l %d2,48(%sp)	| tmp672, %sfp
	move.l %d6,72(%sp)	| sample_uv, %sfp
	move.w %d3,%d6	| x, x
.L281:
| voxel.c:800: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,%d1	| pos.diry, _54
| voxel.c:800: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,%d4	| pos.dirx, _59
| voxel.c:799: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w %d6,%d0	| x, _57
	add.w #-160,%d0	|, _57
	move.w %d0,%d2	| _57,
	muls.w %d1,%d2	| _54, tmp675
| voxel.c:799: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d2	|, tmp676
| voxel.c:799: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w %d4,%d3	| _59, tmp677
	sub.w %d2,%d3	| tmp676, tmp677
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp679
	clr.w %d3	| tmp679
| voxel.c:800: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w %d4,%d0	| _59, tmp680
| voxel.c:800: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d0	|, tmp681
| voxel.c:800: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w %d0,%d1	| tmp681, tmp682
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp682, tmp684
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _330
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 72(%sp),%d2	| %sfp, tmp685
	add.l %d3,%d2	| _330, tmp685
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp686
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _330, tmp687
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp688
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _330, tmp689
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp690
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _330, tmp691
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:809: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w %d6,%d1	| x, tmp692
	lsr.w #3,%d1	|, tmp692
	and.l #65535,%d1	|,
	move.l %d1,%a4	|, _72
| voxel.c:809: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d1,%a4	| _72, tmp694
	lea _view_max,%a1	|,
	move.w (%a1,%a4.l),%a3	| view_max[_72], _1691
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d6,%d0	| x, tmp695
	asr.w #4,%d0	|, tmp695
	ext.l %d0	| tmp696
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp696, tmp697
	add.l %d0,%d0	| tmp697, tmp697
	move.l %d0,64(%sp)	| tmp697, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%d0	|, tmp700
	lsr.l #3,%d0	|, tmp700
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp700,
	move.l %d1,68(%sp)	|, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a3,%d0	| _1691,
	muls.w #80,%d0	|, tmp701
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp703
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp703, tmp704
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	|, tmp705
	move.l 56(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp705, pBlock
| voxel.c:808: 				.y = view_max[x >> 3] - y_offset,
	move.w %a3,%d4	| _1691, _1687
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 76(%sp),%d0	| %sfp, tmp1001
	move.l %d0,52(%sp)	| tmp1001, %sfp
| voxel.c:808: 				.y = view_max[x >> 3] - y_offset,
	move.w %a3,%d0	| _1691, y
	sub.w 54(%sp),%d0	| %sfp, y
| voxel.c:813: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a1	|,
	move.w (%a1,%a4.l),%a0	| view_min[_72], y_min
	sub.w 54(%sp),%a0	| %sfp, y_min
| voxel.c:815: 			asm (".globl  _begin_render_column");
#APP
| 815 "voxel.c" 1
	.globl  _begin_render_column
| 0 "" 2
| voxel.c:816: 			asm ("_begin_render_column:");
| 816 "voxel.c" 1
	_begin_render_column:
| 0 "" 2
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
#NO_APP
	lsr.w #7,%d5	|, tmp714
| voxel.c:411: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, ytable_offset
	sub.w %d5,%d1	| tmp714, ytable_offset
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, ytable_offset
	move.l %a1,44(%sp)	| ytable_offset, %sfp
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L276		|
	lea (12288,%a1),%a3	|, y_table_shifted, _793
.L227:
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d4	| *_897, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.518
	move.b %d4,%d1	| sample, SR.518
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d5	| *_901, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d0,%d5	| y, sample_y
	jgt .L225		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d1	| y_min, _904
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L223		|
	move.w %d5,%d1	| sample_y, _904
.L223:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp723
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_908, _909
.L224:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _909, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d1,%d0	| _904, y
	jge .L224		|
.L225:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _330, tmp725
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l %a3,%a1	| _793, y_table_shifted
	jeq .L226		|
	cmp.w %a0,%d0	| y_min, y
	jge .L227		|
.L268:
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
.L276:
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 48(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1309], _403
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d4	| _403, _404
| voxel.c:514: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp804
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp805
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp807
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp807, tmp808
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp809
	move.l 56(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp809, pBlock
| voxel.c:505: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d0	| pdata_table[15][0][0], movep_data
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _404
	jle .L278		|
	mulu.w #160,%d4	|, tmp811
	add.l %a0,%d4	| pBlock, _1640
.L279:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:508: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:506: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d4	| pBlock, _1640
	jne .L279		|
.L278:
| voxel.c:515: 	horizon[x] = y;
	move.l 48(%sp),%a1	| %sfp,
	move.w %a3,(%a1)	| _1691, MEM[(short int *)_1309]
| voxel.c:832: 			asm (".globl  _end_render_column");
#APP
| 832 "voxel.c" 1
	.globl  _end_render_column
| 0 "" 2
| voxel.c:833: 			asm ("_end_render_column:");
| 833 "voxel.c" 1
	_end_render_column:
| 0 "" 2
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
#NO_APP
	add.w #16,%d6	|, x
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 80(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,48(%sp)	|, %sfp
	cmp.w #319,%d6	|, x
	jhi .L280		|
| voxel.c:841: 		short elev_to_sun = ray_elevation(player_uv, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	move.w _pos+4,%d5	| pos.z, pretmp_1567
	jra .L281		|
.L349:
| voxel.c:911: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:912: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 114(%sp),%a0	| %sfp, tmp938
| voxel.c:912: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp938, tmp940
	add.l %a0,%d0	| tmp938, tmp940
	add.l %d0,%d0	| tmp940, tmp941
| voxel.c:913: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp946
	move.l 86(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp946
| voxel.c:914: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1002,
	pea .LC11		|
	lea _printf,%a2	|, tmp948
	jsr (%a2)		| tmp948
| voxel.c:915: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 98(%sp),%d0	| %sfp, tmp950
	add.l %d0,%d0	|, tmp950
	add.l %d0,%d0	| tmp950, tmp951
| voxel.c:915: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 94(%sp),-(%sp)	| %sfp,
	move.l 102(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp946
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1003,
	pea .LC12		|
	jsr (%a2)		| tmp948
| voxel.c:916: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:917: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L208:
| voxel.c:920: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:921: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:922: 	install_palette(saved_palette);
	pea 136(%sp)		|
	jsr _install_palette		|
| voxel.c:924: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (120,%sp),%sp	|,
	rts	
.L226:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _330, tmp726
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _338
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+16384,%a1	|, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
	lea (8192,%a1),%a3	|, y_table_shifted, _719
.L235:
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d4	| *_823, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.514
	move.b %d4,%d1	| sample, SR.514
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d5	| *_827, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L233		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d1	| y_min, _830
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L231		|
	move.w %d5,%d1	| sample_y, _830
.L231:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp732
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_834, _835
.L232:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _835, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d1,%d0	| _830, y
	jge .L232		|
.L233:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _338, tmp734
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l %a3,%a1	| _719, y_table_shifted
	jeq .L234		|
	cmp.w %a0,%d0	| y_min, y
	jge .L235		|
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
	jra .L276		|
.L234:
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+24576,%a1	|, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
	lea (8192,%a1),%a3	|, y_table_shifted, _645
.L242:
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d4	| *_749, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.512
	move.b %d4,%d1	| sample, SR.512
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d5	| *_753, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L240		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d1	| y_min, _756
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L238		|
	move.w %d5,%d1	| sample_y, _756
.L238:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp740
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_760, _761
.L239:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _761, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d1,%d0	| _756, y
	jge .L239		|
.L240:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _338, tmp742
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l %a3,%a1	| _645, y_table_shifted
	jeq .L241		|
	cmp.w %a0,%d0	| y_min, y
	jge .L242		|
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
	jra .L276		|
.L241:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _338, tmp743
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _336
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+32768,%a1	|, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
	lea (8192,%a1),%a3	|, y_table_shifted, _570
.L249:
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d4	| *_675, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.510
	move.b %d4,%d1	| sample, SR.510
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d5	| *_679, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L247		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d1	| y_min, _682
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L245		|
	move.w %d5,%d1	| sample_y, _682
.L245:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp749
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_686, _687
.L246:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _687, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d1,%d0	| _682, y
	jge .L246		|
.L247:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _336, tmp751
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l %a3,%a1	| _570, y_table_shifted
	jeq .L248		|
	cmp.w %a0,%d0	| y_min, y
	jge .L249		|
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
	jra .L276		|
.L248:
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a4	| %sfp, y_table_shifted
	add.l #_y_table+40960,%a4	|, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	lea _fog_table+40,%a1	|, fog_table_shifted
.L258:
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d1	| *_601, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.508
	move.b %d1,%d4	| sample, SR.508
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a4,%d4.l),%d5	| *_605, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L255		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d4	| y_min, _608
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L252		|
	move.w %d5,%d4	| sample_y, _608
.L252:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _1800
| voxel.c:427: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L253		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _1800
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_612, _613
.L254:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _613, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _608, y
	jge .L254		|
.L255:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:451: 		fog_table_shifted++;
	addq.l #1,%a1	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _336, tmp768
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l #_fog_table+48,%a1	|, fog_table_shifted
	jeq .L257		|
	cmp.w %a0,%d0	| y_min, y
	jge .L258		|
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
	jra .L276		|
.L253:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	| opacity_preshifted
	move.b (%a1),%d5	| MEM[(unsigned char *)fog_table_shifted_925], opacity_preshifted
	move.w %d5,%a3	| opacity_preshifted, offset
	add.w %d1,%a3	| _1800, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _626
	move.w %a3,%d1	| offset, _626
	move.l %d1,%a3	| _626, tmp969
	add.l #_pdata_table,%a3	|, tmp969
.L256:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp761
	and.l %d0,%d1	| y, tmp761
	add.l %d1,%d1	| tmp761, tmp762
	add.l %d1,%d1	| tmp762, tmp763
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_632, *_632
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_632, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _608, y
	jlt .L255		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp761
	and.l %d0,%d1	| y, tmp761
	add.l %d1,%d1	| tmp761, tmp762
	add.l %d1,%d1	| tmp762, tmp763
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_632, *_632
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_632, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _608, y
	jge .L256		|
	jra .L255		|
.L257:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _336, tmp769
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _334
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a4	| %sfp, y_table_shifted
	add.l #_y_table+49152,%a4	|, y_table_shifted
.L341:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d1	| *_526, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.506
	move.b %d1,%d4	| sample, SR.506
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a4,%d4.l),%d5	| *_530, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L264		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d4	| y_min, _533
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L261		|
	move.w %d5,%d4	| sample_y, _533
.L261:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _1798
| voxel.c:427: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L262		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _1798
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_537, _538
.L263:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _538, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _533, y
	jge .L263		|
.L264:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:451: 		fog_table_shifted++;
	addq.l #1,%a1	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _334, tmp786
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l #_fog_table+56,%a1	|, fog_table_shifted
	jne .L341		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 44(%sp),%a4	| %sfp, y_table_shifted
	add.l #_y_table+57344,%a4	|, y_table_shifted
.L342:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L268		|
| voxel.c:351: 	asm (
	move.l %d2,%d1	| sample_uv, uv
#APP
| 351 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:364: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d1	|, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d1	| *_451, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.504
	move.b %d1,%d4	| sample, SR.504
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a4,%d4.l),%d5	| *_455, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L273		|
| voxel.c:423: 			if (sample_y < y_min) {
	move.w %a0,%d4	| y_min, _458
	cmp.w %a0,%d5	| y_min, sample_y
	jle .L270		|
	move.w %d5,%d4	| sample_y, _458
.L270:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _1796
| voxel.c:427: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L271		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _1796
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_462, _463
.L272:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _463, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:435: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _458, y
	jge .L272		|
.L273:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:451: 		fog_table_shifted++;
	addq.l #1,%a1	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _334, tmp803
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.l #_fog_table+64,%a1	|, fog_table_shifted
	jne .L342		|
| voxel.c:830: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1687
	add.w 54(%sp),%d4	| %sfp, _1687
	move.w %d4,%a3	| _1687, _1691
	jra .L276		|
.L271:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	| opacity_preshifted
	move.b (%a1),%d5	| MEM[(unsigned char *)fog_table_shifted_1297], opacity_preshifted
	move.w %d5,%a3	| opacity_preshifted, offset
	add.w %d1,%a3	| _1796, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _476
	move.w %a3,%d1	| offset, _476
	move.l %d1,%a3	| _476, tmp966
	add.l #_pdata_table,%a3	|, tmp966
.L274:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp796
	and.l %d0,%d1	| y, tmp796
	add.l %d1,%d1	| tmp796, tmp797
	add.l %d1,%d1	| tmp797, tmp798
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_482, *_482
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_482, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _458, y
	jlt .L273		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp796
	and.l %d0,%d1	| y, tmp796
	add.l %d1,%d1	| tmp796, tmp797
	add.l %d1,%d1	| tmp797, tmp798
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_482, *_482
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_482, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _458, y
	jge .L274		|
	jra .L273		|
.L262:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	| opacity_preshifted
	move.b (%a1),%d5	| MEM[(unsigned char *)fog_table_shifted_1054], opacity_preshifted
	move.w %d5,%a3	| opacity_preshifted, offset
	add.w %d1,%a3	| _1798, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _551
	move.w %a3,%d1	| offset, _551
	move.l %d1,%a3	| _551, tmp968
	add.l #_pdata_table,%a3	|, tmp968
.L265:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp779
	and.l %d0,%d1	| y, tmp779
	add.l %d1,%d1	| tmp779, tmp780
	add.l %d1,%d1	| tmp780, tmp781
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_557, *_557
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_557, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _533, y
	jlt .L264		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp779
	and.l %d0,%d1	| y, tmp779
	add.l %d1,%d1	| tmp779, tmp780
	add.l %d1,%d1	| tmp780, tmp781
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_557, *_557
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_557, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:445: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| _533, y
	jge .L265		|
	jra .L264		|
.L280:
| voxel.c:836: 		unsigned long t_render_1 = *_hz_200;
	move.l 72(%sp),%d6	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:837: 		t_render += t_render_1 - t_render_0;
	sub.l 110(%sp),%d0	| %sfp, tmp815
| voxel.c:837: 		t_render += t_render_1 - t_render_0;
	add.l %d0,90(%sp)	| tmp815, %sfp
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d0	| pos.z, pos.z
	lsr.w #7,%d0	|, tmp817
| voxel.c:470: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w %d0,%a0	| tmp817, ytable_offset
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp821
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:477: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:475: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:478: 	unsigned short z = 0;
	clr.w %d1	| z
.L284:
	move.l %d6,%d0	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d6	| delta_uv, tmp822
	add.l %d0,%d6	| uv, tmp822
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:488: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d4	| z, z
| voxel.c:487: 		z++;
	addq.w #1,%d1	|, z
| voxel.c:480: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L282		|
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
	move.w (%a6,%d0.l),%d0	| *_961, sample
| voxel.c:482: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.519
| voxel.c:483: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_965, *_965
	cmp.w %d5,%d0	| min_y, *_965
	jge .L283		|
	move.w %d0,%d5	| *_965, min_y
.L283:
| voxel.c:491: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp828
	and.w #15,%d0	|, tmp828
	jne .L282		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp829
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp830
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L282:
| voxel.c:479: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L284		|
| voxel.c:843: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L304		|
	move.w #128,%a0	|, _1713
| voxel.c:845: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L285		|
| voxel.c:848: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp831
	add.w %d5,%d5	| tmp831, tmp832
	add.w %d5,%d5	| tmp832, sunlight
| voxel.c:851: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _1713
.L285:
	move.l %a0,-(%sp)	| _1713,
	move.l 90(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp838
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp839
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp839, pos.x
| voxel.c:854: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp842
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp843
| voxel.c:854: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp843, _110
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp845
	sub.l 104(%sp),%d0	| %sfp, tmp845
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp846
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp847
	asr.w #3,%d3	|, tmp847
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp848
	asr.w #4,%d4	|, tmp848
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp848, tmp849
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:858: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jle .L286		|
.L355:
| voxel.c:858: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _123, _126
.L287:
| voxel.c:854: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _110, pos.y
| voxel.c:858: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _126, pos.speed
| voxel.c:860: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 100(%sp),%d3	| %sfp, rot
| voxel.c:861: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _105, tmp852
| voxel.c:861: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp853
| voxel.c:861: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _99, _138
| voxel.c:862: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d3	| _138, tmp854
| voxel.c:862: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d3	|, tmp855
| voxel.c:862: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d3,%d1	| tmp855, _145
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _138,
	muls.w %d0,%d2	| _138, tmp856
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp857
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _145,
	muls.w %d1,%d3	| _145, tmp858
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp859
| voxel.c:865: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, tmp860
	add.w %d3,%a0	| tmp859, tmp860
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp860, tmp861
	moveq #-128,%d3	|, tmp862
	add.l %a0,%d3	| tmp861, tmp862
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp863
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _375
	sub.w %d3,%d2	| tmp863, _375
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _375, tmp866
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp867
| voxel.c:866: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp865
	clr.w %d0	| tmp865
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _145, tmp872
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp873
| voxel.c:866: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| tmp873, tmp865
	move.l %d0,_pos+6	| tmp865, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:869: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:869: 		if (pressed_keys.up) {
	jpl .L288		|
| voxel.c:870: 			if (desired_height < FIXP(0, 0)) {
	tst.w 84(%sp)	| %sfp
	jlt .L306		|
| voxel.c:873: 			desired_height += FIXP(1, 0);
	move.w 84(%sp),%d0	| %sfp, _1715
.L289:
	add.w #128,%d0	|, _1715
	move.w %d0,84(%sp)	| _1715, %sfp
| voxel.c:874: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L288		|
	move.w #32512,84(%sp)	|, %sfp
.L288:
| voxel.c:878: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:878: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L291		|
| voxel.c:879: 			if (desired_height < FIXP(0, 0)) {
	tst.w 84(%sp)	| %sfp
	jlt .L292		|
| voxel.c:882: 			desired_height -= FIXP(1, 0);
	move.w 84(%sp),102(%sp)	| %sfp, %sfp
.L292:
| voxel.c:887: 		if (key == 0x23) {
	cmp.b #35,105(%sp)	|, %sfp
	jeq .L307		|
| voxel.c:882: 			desired_height -= FIXP(1, 0);
	move.w 102(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,84(%sp)	|, %sfp
| voxel.c:883: 			if (desired_height < FIXP(0, 0)) {
	jmi .L350		|
.L295:
| voxel.c:894: 		} else if (key == 0x20) {
	cmp.b #32,105(%sp)	|, %sfp
	jeq .L351		|
.L293:
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp885
	and.w #8192,%d0	|, _1635
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp886
	and.l #-536879105,%d3	|, tmp886
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1635
	move.w %d0,%d1	| _1635, _1635
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp891
	and.l #-536879105,%d4	|, tmp891
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1635
	swap %d2	| _1635
	clr.w %d2	| _1635
	move.w %d0,%d2	| _1635, _1635
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1635, tmp891
	move.l %d4,(%a0)	| tmp891, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _1635, tmp886
	move.l %d3,4(%a0)	| tmp886, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp899
	and.b #1,%d0	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp902
	ext.w %d0	| tmp901
	neg.w %d0	| tmp903
	lsl.w %d1,%d0	|, _1763
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp904
	and.l #-536879105,%d3	|, tmp904
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1763
	move.w %d0,%d1	| _1763, _1763
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp909
	and.l #-536879105,%d4	|, tmp909
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1763
	swap %d2	| _1763
	clr.w %d2	| _1763
	move.w %d0,%d2	| _1763, _1763
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1763, tmp909
	move.l %d4,640(%a0)	| tmp909, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _1763, tmp904
	move.l %d3,644(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp917
	and.b #1,%d1	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp920
	ext.w %d1	| tmp919
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1733
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp923
	and.b #1,%d0	|, _159
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp926
	ext.w %d0	| tmp925
	neg.w %d0	| tmp927
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _321
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1733, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1733, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1733, data
| voxel.c:905: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 84(%sp),%d1	| %sfp, tmp932
	not.w %d1	| tmp932
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp931
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1602
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _321, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1602, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _321, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1602, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1602, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,94(%sp)	|, %sfp
| voxel.c:767: 		frames++;
	move.l 106(%sp),86(%sp)	| %sfp, %sfp
.L353:
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp625
#APP
| 695 "voxel.c" 1
	movw	%d3,%sp@-	| tmp625
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:695: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp997
	jne .L352		|
.L303:
	clr.b 105(%sp)	| %sfp
	jra .L215		|
.L351:
	eor.b #1,%d7	|, fog_enabled
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp885
	and.w #8192,%d0	|, _1635
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp886
	and.l #-536879105,%d3	|, tmp886
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1635
	move.w %d0,%d1	| _1635, _1635
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp891
	and.l #-536879105,%d4	|, tmp891
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1635
	swap %d2	| _1635
	clr.w %d2	| _1635
	move.w %d0,%d2	| _1635, _1635
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1635, tmp891
	move.l %d4,(%a0)	| tmp891, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _1635, tmp886
	move.l %d3,4(%a0)	| tmp886, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp899
	and.b #1,%d0	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp902
	ext.w %d0	| tmp901
	neg.w %d0	| tmp903
	lsl.w %d1,%d0	|, _1763
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp904
	and.l #-536879105,%d3	|, tmp904
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1763
	move.w %d0,%d1	| _1763, _1763
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp909
	and.l #-536879105,%d4	|, tmp909
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1763
	swap %d2	| _1763
	clr.w %d2	| _1763
	move.w %d0,%d2	| _1763, _1763
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1763, tmp909
	move.l %d4,640(%a0)	| tmp909, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _1763, tmp904
	move.l %d3,644(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp917
	and.b #1,%d1	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp920
	ext.w %d1	| tmp919
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1733
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp923
	and.b #1,%d0	|, _159
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp926
	ext.w %d0	| tmp925
	neg.w %d0	| tmp927
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _321
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1733, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1733, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1733, data
| voxel.c:905: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 84(%sp),%d1	| %sfp, tmp932
	not.w %d1	| tmp932
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp931
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1602
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _321, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1602, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _321, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1602, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1602, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,94(%sp)	|, %sfp
| voxel.c:767: 		frames++;
	move.l 106(%sp),86(%sp)	| %sfp, %sfp
	jra .L353		|
.L350:
| voxel.c:883: 			if (desired_height < FIXP(0, 0)) {
	clr.w 84(%sp)	| %sfp
| voxel.c:894: 		} else if (key == 0x20) {
	cmp.b #32,105(%sp)	|, %sfp
	jne .L293		|
	jra .L351		|
.L218:
| voxel.c:777: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L219		|
	move.w #256,%d0	|, altitude_delta
	move.w %d0,%d5	| altitude_delta, pretmp_1567
	add.w %d2,%d5	| _28, pretmp_1567
| voxel.c:778: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d5	|, pretmp_1567
	jle .L354		|
.L220:
| voxel.c:778: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	move.w #32640,%d5	|, pretmp_1567
| voxel.c:781: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_40
	move.w -602(%a0),100(%sp)	| MEM[(short int *)__aline.50_40 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:784: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,110(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 94(%sp),%d0	| %sfp, _43
	and.w #8,%d0	|, _43
| voxel.c:787: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d3	| _43, x
	addq.w #3,%d3	|, x
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_40 + 4294966696B],
	move.l %a0,96(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp663
	add.l %a0,%d0	|, tmp663
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp663
	move.l %d0,76(%sp)	| tmp663, %sfp
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 100(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp665
	add.l #-160,%d0	|, tmp665
| voxel.c:793: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
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
	move.l %d0,60(%sp)	| tmp1000, %sfp
	add.l %d2,%d2	| x, tmp672
	add.l #_horizon,%d2	|, tmp672
	move.l %d2,48(%sp)	| tmp672, %sfp
	move.l %d6,72(%sp)	| sample_uv, %sfp
	move.w %d3,%d6	| x, x
	jra .L281		|
.L291:
| voxel.c:887: 		if (key == 0x23) {
	cmp.b #35,105(%sp)	|, %sfp
	jne .L295		|
| voxel.c:889: 			if (desired_height < 0) {
	tst.w 84(%sp)	| %sfp
	jge .L307		|
| voxel.c:890: 				desired_height = player_height;
	move.w 102(%sp),84(%sp)	| %sfp, %sfp
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp885
	and.w #8192,%d0	|, _1635
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp886
	and.l #-536879105,%d3	|, tmp886
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1635
	move.w %d0,%d1	| _1635, _1635
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp891
	and.l #-536879105,%d4	|, tmp891
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1635
	swap %d2	| _1635
	clr.w %d2	| _1635
	move.w %d0,%d2	| _1635, _1635
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1635, tmp891
	move.l %d4,(%a0)	| tmp891, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _1635, tmp886
	move.l %d3,4(%a0)	| tmp886, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp899
	and.b #1,%d0	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp902
	ext.w %d0	| tmp901
	neg.w %d0	| tmp903
	lsl.w %d1,%d0	|, _1763
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp904
	and.l #-536879105,%d3	|, tmp904
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1763
	move.w %d0,%d1	| _1763, _1763
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp909
	and.l #-536879105,%d4	|, tmp909
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1763
	swap %d2	| _1763
	clr.w %d2	| _1763
	move.w %d0,%d2	| _1763, _1763
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1763, tmp909
	move.l %d4,640(%a0)	| tmp909, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _1763, tmp904
	move.l %d3,644(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp917
	and.b #1,%d1	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp920
	ext.w %d1	| tmp919
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1733
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp923
	and.b #1,%d0	|, _159
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp926
	ext.w %d0	| tmp925
	neg.w %d0	| tmp927
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _321
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1733, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1733, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1733, data
| voxel.c:905: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 84(%sp),%d1	| %sfp, tmp932
	not.w %d1	| tmp932
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp931
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1602
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _321, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1602, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _321, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1602, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1602, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,94(%sp)	|, %sfp
| voxel.c:767: 		frames++;
	move.l 106(%sp),86(%sp)	| %sfp, %sfp
	jra .L353		|
.L304:
	sub.l %a0,%a0	| _1713
| voxel.c:851: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1713,
	move.l 90(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp838
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp839
| voxel.c:853: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp839, pos.x
| voxel.c:854: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp842
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp843
| voxel.c:854: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp843, _110
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp845
	sub.l 104(%sp),%d0	| %sfp, tmp845
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp846
| voxel.c:856: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp847
	asr.w #3,%d3	|, tmp847
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp848
	asr.w #4,%d4	|, tmp848
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp848, tmp849
| voxel.c:857: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:858: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jgt .L355		|
.L286:
| voxel.c:859: 		else pos.speed += drag;
	add.w %d3,%d0	| _123, _126
	jra .L287		|
.L307:
| voxel.c:892: 				desired_height = -1;
	move.w #-1,84(%sp)	|, %sfp
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:901: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp885
	and.w #8192,%d0	|, _1635
| voxel.c:200: 	data &= mask;
	move.l 56(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B], tmp886
	and.l #-536879105,%d3	|, tmp886
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1635
	move.w %d0,%d1	| _1635, _1635
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202], tmp891
	and.l #-536879105,%d4	|, tmp891
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1635
	swap %d2	| _1635
	clr.w %d2	| _1635
	move.w %d0,%d2	| _1635, _1635
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1635, tmp891
	move.l %d4,(%a0)	| tmp891, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202]
	or.l %d1,%d3	| _1635, tmp886
	move.l %d3,4(%a0)	| tmp886, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 4B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp899
	and.b #1,%d0	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp902
	ext.w %d0	| tmp901
	neg.w %d0	| tmp903
	lsl.w %d1,%d0	|, _1763
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B], tmp904
	and.l #-536879105,%d3	|, tmp904
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1763
	move.w %d0,%d1	| _1763, _1763
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B], tmp909
	and.l #-536879105,%d4	|, tmp909
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1763
	swap %d2	| _1763
	clr.w %d2	| _1763
	move.w %d0,%d2	| _1763, _1763
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1763, tmp909
	move.l %d4,640(%a0)	| tmp909, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 640B]
	or.l %d1,%d3	| _1763, tmp904
	move.l %d3,644(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_202 + 644B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp917
	and.b #1,%d1	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp920
	ext.w %d1	| tmp919
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1733
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp923
	and.b #1,%d0	|, _159
| voxel.c:904: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp926
	ext.w %d0	| tmp925
	neg.w %d0	| tmp927
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _321
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_202 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1733, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_202 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1733, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_202 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1733, data
| voxel.c:905: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 84(%sp),%d1	| %sfp, tmp932
	not.w %d1	| tmp932
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp931
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1602
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _321, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1602, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_202 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _321, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1602, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_202 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_202 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1602, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_202 + 326B]
	addq.w #8,94(%sp)	|, %sfp
| voxel.c:767: 		frames++;
	move.l 106(%sp),86(%sp)	| %sfp, %sfp
	jra .L353		|
.L306:
	move.w 102(%sp),%d0	| %sfp, _1715
	jra .L289		|
.L348:
| voxel.c:727: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:728: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:920: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:921: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:922: 	install_palette(saved_palette);
	pea 136(%sp)		|
	jsr _install_palette		|
| voxel.c:924: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (120,%sp),%sp	|,
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
