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
	move.l #_y_table+1024,%d6	|, ivtmp.356
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:247: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:246: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L49:
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _202
	add.w #45,%d2	|, _202
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.356, ivtmp.345
	move.w #-17920,%a2	|, ivtmp.342
.L50:
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.342,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _202,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.342
	cmp.w #17920,%a2	|, ivtmp.342
	jne .L50		|
| voxel.c:255: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:257: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:257: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:65: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:260: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:261: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L106		|
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:266: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.333
	clr.b %d2	| max_height_lsm_flag.255
	clr.b %d1	| max_height_lsm.254
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.333, ivtmp.326
.L55:
| voxel.c:269: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _69
| voxel.c:269: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.254, _69
	jls .L54		|
| voxel.c:270: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _69, max_height_lsm.254
| voxel.c:269: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.255
.L54:
| voxel.c:268: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.326
	cmp.l %a0,%a1	| ivtmp.326, ivtmp.333
	jne .L55		|
| voxel.c:267: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.326, ivtmp.333
	cmp.l #_combined+524289,%a0	|, ivtmp.326
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.255
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.254, max_height
.L57:
| voxel.c:274: 	int bayer[8][8] = {
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
| voxel.c:284: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L58:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_92], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_92 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_92 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_92 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_92 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_92 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_92 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_92 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,56(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.306
.L81:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L73		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L73:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L74		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L74:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L75		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L75:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L76		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L76:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L77		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L77:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L78		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L78:
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L79		|
| voxel.c:290: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L79:
| voxel.c:295: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _185
	move.b %d7,%d1	|, _185
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _185,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _185
	move.l %d1,68(%sp)	| _185, %sfp
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _167
	and.l %d0,%d7	| mask, _167
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _167, iftmp.11_168
	lsl.w #8,%d6	|, iftmp.11_168
	swap %d6	| iftmp.11_168
	clr.w %d6	| iftmp.11_168
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _167,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_171
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _167,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_177
| voxel.c:297: 						| pdata_pattern(15, ~mask);
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
| voxel.c:292: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L71:
	move.b %d3,%d5	| color1, _120
	btst #1,%d3	|, color1
	jeq .L59		|
	move.l 64(%sp),%d0	| %sfp, iftmp.12_189
.L60:
	btst #0,%d3	|, color1
	jeq .L61		|
	move.l 60(%sp),%d1	| %sfp, iftmp.11_186
.L62:
	or.l %d1,%d0	| iftmp.11_186, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _120
	jeq .L63		|
	move.l 68(%sp),%d4	| %sfp, iftmp.13_195
.L64:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _120
	jeq .L65		|
	move.b 55(%sp),%d0	| %sfp, _26
	or.b %d0,%d4	| _26, _330
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
	move.l %d7,44(%sp)	| _167, %sfp
.L70:
	move.b %d5,%d0	| _120, _52
	add.b %d2,%d0	| ivtmp.297, _52
| voxel.c:235: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _52, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_168, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:236: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _52
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_171,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:237: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _52
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_177,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:238: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _52
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:298: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.297, tmp229
| voxel.c:300: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.306, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_227]
| voxel.c:300: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_133]
| voxel.c:293: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.297
	lea (-3840,%a0),%a0	|, ivtmp.298
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.297,
	jne .L70		|
| voxel.c:292: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _167
	addq.l #1,%d3	|, color1
| voxel.c:292: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.305
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:285: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.306
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.306,
	jne .L81		|
| voxel.c:284: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:284: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L58		|
| voxel.c:309: 	short top_envelope[20] = {
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
| voxel.c:315: 	short bottom_envelope[20] = {
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
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.283
	lea (156,%sp),%a4	|,, ivtmp.285
	lea _view_max+80,%a3	|, ivtmp.288
	lea _view_max,%a2	|, ivtmp.290
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.278, _320
.L82:
| voxel.c:323: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _38
| voxel.c:323: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_294]
| voxel.c:323: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_316]
| voxel.c:324: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _42
| voxel.c:324: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_318]
| voxel.c:324: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_295]
| voxel.c:322: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.278, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.271
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L83:
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_191]
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:331: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:332: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L106:
| voxel.c:261: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:263: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _330
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
| voxel.c:292: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
	move.l %d7,44(%sp)	| _167, %sfp
	jra .L70		|
.L63:
	moveq #0,%d4	| iftmp.13_195
	jra .L64		|
.L61:
	moveq #0,%d1	| iftmp.11_186
	jra .L62		|
.L59:
	moveq #0,%d0	| iftmp.12_189
	jra .L60		|
	.even
	.globl	_render
_render:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d4	| z_begin, z_begin
	move.l 72(%sp),%d7	| delta_uv, delta_uv
	move.l 84(%sp),%d6	| index_mask, index_mask
	move.w 82(%sp),%d5	| y_min, y_min
	move.b 91(%sp),47(%sp)	| fog, %sfp
| voxel.c:404: 	fixp_2in1 sample_uv = state.sample_uv;
	move.l 52(%sp),%d3	| state.sample_uv, sample_uv
| voxel.c:405: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:406: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:409: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 78(%sp),%a0	| player_height, ytable_offset
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp98
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d4,%a5	| z_begin, z_begin
	move.l %a5,%d0	| z_begin,
	moveq #10,%d2	|,
	lsl.l %d2,%d0	|,
	lea (%a0,%d0.l),%a4	| tmp98, tmp100, tmp101
	add.l #_y_table,%a4	|, y_table_shifted
| voxel.c:413: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a5	|, opacity_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	sub.w 70(%sp),%d4	| z_end, z
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	jpl .L108		|
	cmp.w %d1,%d5	| y, y_min
	jgt .L108		|
	lea _combined,%a6	|, tmp126
.L117:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d6,%d0	| index_mask, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d0.l),%d2	| *_66, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.365
	move.b %d2,%d0	| sample, SR.365
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.365, tmp107
	move.w (%a4,%d0.l),%a0	| (*y_table_shifted_118)[_12], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L109		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %a0,%d5	| sample_y, y_min
	jgt .L110		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d2,%d0	| sample, _19
	and.w #-256,%d0	|, _19
| voxel.c:427: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L112		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp122
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp123
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d0.l),%d0	| *_131, _35
.L114:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L114		|
.L115:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_uv, tmp121
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L108		|
	cmp.w %d1,%d5	| y, y_min
	jle .L117		|
.L108:
| voxel.c:460: 	return result;
	move.l %d3,(%a1)	| sample_uv, <retval>.sample_uv
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:461: }
	move.l %a1,%d0	| tmp83,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L109:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L115		|
.L119:
	move.w %d5,%a0	| y_min, sample_y
	clr.w %d4	| z
.L112:
| voxel.c:380: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a5),%d2	| MEM[(unsigned char *)opacity_table_shifted_119],
	move.w %d2,%a3	|, opacity_preshifted
	add.w %d0,%a3	| _19, offset
| voxel.c:381: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _90
	move.w %a3,%d0	| offset, _90
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L115		|
	move.l %d0,%a3	| _90, tmp125
	add.l #_pdata_table,%a3	|, tmp125
.L116:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp114
	and.l %d1,%d0	| y, tmp114
	add.l %d0,%d0	| tmp114, tmp115
	add.l %d0,%d0	| tmp115, tmp116
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d0.l),%d0	| *_18, *_18
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L115		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp114
	and.l %d1,%d0	| y, tmp114
	add.l %d0,%d0	| tmp114, tmp115
	add.l %d0,%d0	| tmp115, tmp116
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d0.l),%d0	| *_18, *_18
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L116		|
	jra .L115		|
.L110:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d2,%d0	| sample, _19
	and.w #-256,%d0	|, _19
| voxel.c:427: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L119		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp108
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp109
	add.l #_pdata_table,%d0	|, _84
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L131		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a0	| _84,
	move.l (%a0),%d0	| *_84, _35
	move.w %d5,%a0	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L114		|
	jra .L115		|
.L131:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_uv, tmp110
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:460: 	return result;
	move.l %d3,(%a1)	| sample_uv, <retval>.sample_uv
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:461: }
	move.l %a1,%d0	| tmp83,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #15904,-(%sp)	|,
	move.l 28(%sp),%d3	| sample_uv, sample_uv
	move.l 32(%sp),%d4	| delta_uv, delta_uv
| voxel.c:470: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp58
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _49
| voxel.c:478: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:477: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:475: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d5	|, index_mask
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L135:
	move.w %d2,%d6	| z, z
| voxel.c:488: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _49, y_table_shifted
| voxel.c:489: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _49
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d4,%d3	| delta_uv, tmp59
	add.l %d1,%d3	| uv, tmp59
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:480: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d6	|, z
	jls .L133		|
| voxel.c:349: 	asm (
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d5,%d1	| index_mask, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a1,%d1.l),%d1	| *_33, sample
| voxel.c:483: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.390
| voxel.c:483: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.390, tmp64
| voxel.c:484: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L134		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L134:
| voxel.c:492: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp66
	and.w #15,%d1	|, tmp66
	jne .L133		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_uv, tmp67
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_uv
| voxel.c:371: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp68
| voxel.c:371: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L133:
| voxel.c:479: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L135		|
| voxel.c:502: }
	movem.l (%sp)+,#1148	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:506: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:506: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L139		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L141:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:509: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L141		|
.L139:
| voxel.c:511: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:506: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L146		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L147:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:509: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L147		|
.L146:
| voxel.c:516: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:517: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:535: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:536: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:537: }
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:543: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.447
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L156:
| voxel.c:554: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:555: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:556: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:535: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:536: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:535: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:536: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:535: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:536: 	return c >> 1;
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:561: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:561: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:553: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.447
	cmp.l %d3,%a3	| _445, ivtmp.447
	jne .L156		|
| voxel.c:563: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.453
	clr.w %d0	| vect__18.453
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.453
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.453, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:569: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L164		|
	cmp.w #128,%d0	|, val
	jge .L165		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:574: }
	rts	
.L165:
| voxel.c:572: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:574: }
	rts	
.L164:
| voxel.c:572: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:574: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:579: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:582: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:589: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:591: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:603: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:584: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.483
| voxel.c:591: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L175:
| voxel.c:594: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:601: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L185		|
| voxel.c:603: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:609: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L186		|
.L170:
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
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:613: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:614: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L187		|
.L171:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L176		|
.L188:
	cmp.w #128,%d4	|, _504
	jge .L177		|
	add.b %d4,%d4	| _504, iftmp.36_290
.L172:
| voxel.c:617: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L178		|
.L189:
	cmp.w #128,%d3	|, _75
	jge .L179		|
	add.b %d3,%d3	| _75, iftmp.37_360
.L173:
| voxel.c:618: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:619: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L180		|
.L190:
	cmp.w #128,%d2	|, _404
	jge .L181		|
	add.b %d2,%d2	| _404, iftmp.37_295
| voxel.c:619: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:592: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.483
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
.L191:
| voxel.c:621: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:622: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:624: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:625: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L187:
| voxel.c:614: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L188		|
.L176:
	clr.b %d4	| iftmp.36_290
| voxel.c:617: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L189		|
.L178:
	clr.b %d3	| iftmp.37_360
| voxel.c:618: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:619: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:572: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L190		|
.L180:
	clr.b %d2	| iftmp.37_295
| voxel.c:619: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:592: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.483
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
	jra .L191		|
.L185:
| voxel.c:601: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:603: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:609: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L170		|
.L186:
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
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:567: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:541: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:613: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:614: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L171		|
	jra .L187		|
.L177:
| voxel.c:572: 	return val < 0 ? 0 : (
	st %d4		| iftmp.36_290
	jra .L172		|
.L181:
	st %d2		| iftmp.37_295
| voxel.c:619: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:592: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.483
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
	jra .L191		|
.L179:
| voxel.c:572: 	return val < 0 ? 0 : (
	st %d3		| iftmp.37_360
	jra .L173		|
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
| voxel.c:629: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:630: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:631: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L214		|
| voxel.c:635: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:636: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L210		|
	lea _fclose,%a2	|, tmp103
.L195:
| voxel.c:688: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L205:
| voxel.c:690: 	return 0;
	moveq #0,%d0	| <retval>
.L192:
| voxel.c:691: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L210:
| voxel.c:638: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:638: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:639: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:640: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:642: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:643: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:646: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:645: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:650: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L196:
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L198		|
	move.l %d6,%d0	| remaining, remaining
.L198:
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:647: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L215		|
| voxel.c:648: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:649: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:650: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.505
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L197:
| voxel.c:652: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:653: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:651: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.505, _92
	jne .L197		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L196		|
.L215:
| voxel.c:656: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:657: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:659: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:660: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:661: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L216		|
| voxel.c:665: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:666: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L217		|
| voxel.c:667: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:668: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:669: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:672: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L201:
| voxel.c:669: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:669: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L203		|
	move.l %d7,%d0	| remaining, remaining
.L203:
| voxel.c:669: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:669: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L218		|
| voxel.c:670: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:671: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:672: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.498
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L202:
| voxel.c:674: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:675: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:673: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.498, _73
	jne .L202		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L201		|
.L218:
| voxel.c:678: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:679: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:681: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:682: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:683: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:691: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L214:
| voxel.c:632: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:633: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:690: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L192		|
.L216:
| voxel.c:662: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:663: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L195		|
.L217:
| voxel.c:686: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:688: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L205		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 694 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L221		|
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 694 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:695: }
	movem.l (%sp)+,#1036	|,
	rts	
.L221:
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:695: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:698: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L225:
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L225		|
| voxel.c:700: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L226:
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L226		|
| voxel.c:702: 	Bconin(_CON);
#APP
| 702 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:703: }
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
	lea (-124,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:707: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:709: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:712: 	Super(0L);
	moveq #0,%d0	| tmp756
#APP
| 712 "voxel.c" 1
	movl	%d0,%sp@-	| tmp756
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:714: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:716: 	lineaa();
	jsr _lineaa		|
| voxel.c:719: 	save_palette(saved_palette);
	pea 140(%sp)		|
	jsr _save_palette		|
| voxel.c:721: 	unsigned short *screen = Physbase();
#APP
| 721 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,52(%sp)	| tmp1296, %sfp
| voxel.c:723: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:725: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:725: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1297
	jeq .L404		|
| voxel.c:730: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:731: 	build_tables();
	jsr _build_tables		|
| voxel.c:732: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:733: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (134,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 138(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:734: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L234		|
| voxel.c:735: 	read_palette_vectors(cockpit.colors);
	move.l 130(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 48(%sp),%a0	| %sfp, ivtmp.742
	move.l %a0,%d0	| ivtmp.742, _1750
	add.l #32000,%d0	|, _1750
	addq.l #4,%sp	|,
.L235:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.555_2120]
	cmp.l %d0,%a0	| _1750, ivtmp.742
	jne .L235		|
| voxel.c:506: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.733
	lea _view_max,%a2	|, ivtmp.736
	move.l #_view_min+80,%d4	|, _1756
	clr.w %d3	| ivtmp.734
	move.l 44(%sp),%d5	| %sfp, _282
	move.l %d2,%a3	| cockpit$pixels, cockpit$pixels
.L240:
| voxel.c:739: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1758], _6
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d7	| ivtmp.734, tmp772
	asr.w #4,%d7	|, tmp772
	ext.l %d7	| tmp773
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%d7	| tmp773, tmp774
	add.l %d7,%d7	| tmp774, _384
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d6	|, tmp777
	lsr.l #3,%d6	|, tmp777
	moveq #1,%d2	|,
	and.l %d2,%d6	|, _390
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%a0	| _384, tmp778
	add.l %d7,%a0	| _384, tmp778
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _390, tmp779
	add.l %d5,%a0	| _282, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L236		|
	mulu.w #160,%d1	|, tmp780
	add.l %a0,%d1	| pBlock, _331
.L237:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:509: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _331, pBlock
	jne .L237		|
.L236:
| voxel.c:740: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1755], _10
| voxel.c:740: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:740: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp782
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d2	| tmp782,
	muls.w #80,%d2	|,
	move.l %d2,%a0	|, tmp783
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%a0	| _384, tmp785
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp785, tmp786
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d6	| tmp786, tmp787
	move.l %d5,%a0	| _282, pBlock
	add.l %d6,%a0	| tmp787, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L238		|
	mulu.w #160,%d1	|, tmp788
	add.l %a0,%d1	| pBlock, _1414
.L239:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:509: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1414
	jne .L239		|
.L238:
| voxel.c:738: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.734
	cmp.l %d4,%a1	| _1756, ivtmp.733
	jne .L240		|
| voxel.c:743: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:744: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:745: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:748: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 138(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %a3,-(%sp)	| cockpit$pixels,
	move.l 68(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:752: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,146(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 102(%sp)	| %sfp
| voxel.c:757: 	int frames = 0;
	clr.l 94(%sp)	| %sfp
| voxel.c:755: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,88(%sp)	|, %sfp
| voxel.c:753: 	unsigned long t_render = 0;
	clr.l 98(%sp)	| %sfp
| voxel.c:750: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	move.b #1,109(%sp)	|, %sfp
| voxel.c:770: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	lea _combined,%a3	|, tmp1291
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a4	|, tmp1293
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp797
#APP
| 694 "voxel.c" 1
	movw	%d3,%sp@-	| tmp797
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1298
	jeq .L345		|
.L408:
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 694 "voxel.c" 1
	movw	%d3,%sp@-	| tmp797
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp800
	ext.l %d0	| tmp800
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,108(%sp)	| tmp800, %sfp
| voxel.c:761: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L405		|
.L241:
| voxel.c:766: 		frames++;
	move.l 94(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,110(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.74_407
	move.w (%a0),%d0	| *hw_palette.74_407, _408
| voxel.c:771: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d2	| pos.z, _30
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp804
| voxel.c:770: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp806
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lea _pos,%a0	|,
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp808
| voxel.c:770: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp810
	moveq #9,%d3	|,
	lsl.l %d3,%d0	|, tmp811
	add.l %d1,%d0	| tmp810, tmp812
	add.l %d0,%d0	| tmp812, tmp813
| voxel.c:771: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a3,%d0.l),%d0	| combined[_24][_27].D.2705.height, combined[_24][_27].D.2705.height
	and.w #255,%d0	|, combined[_24][_27].D.2705.height
	lsl.w #7,%d0	|, tmp817
	move.w %d2,%d4	| _30,
	sub.w %d0,%d4	| tmp817,
	move.w %d4,106(%sp)	|, %sfp
| voxel.c:772: 		if (desired_height >= 0) {
	tst.w 88(%sp)	| %sfp
	jlt .L244		|
| voxel.c:773: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 88(%sp),%a0	| %sfp, desired_height
| voxel.c:773: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 88(%sp),%d0	| %sfp, tmp822
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp822
| voxel.c:773: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp822,
	move.l %a1,-(%sp)	|,
	sub.w %d4,%a0	|, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:775: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L245		|
	move.w #-256,%d0	|, altitude_delta
.L246:
| voxel.c:776: 			pos.z += altitude_delta;
	add.w %d0,%d2	| altitude_delta, _41
| voxel.c:777: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d2	|, _41
	jgt .L247		|
.L420:
| voxel.c:776: 			pos.z += altitude_delta;
	move.w %d2,_pos+4	| _41, pos.z
.L244:
| voxel.c:780: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.57_42
	move.w -602(%a0),104(%sp)	| MEM[(short int *)__aline.57_42 + 4294966694B], %sfp
| voxel.c:780: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a0),%d2	| MEM[(short int *)__aline.57_42 + 4294966696B], mouse_y
| voxel.c:781: 		particles_clear_all(screen);
	move.l 44(%sp),-(%sp)	| %sfp,
	jsr _particles_clear_all		|
| voxel.c:782: 		particles_draw_one(screen, mouse_x, mouse_y);
	move.w %d2,%a0	| mouse_y,
	move.l %a0,94(%sp)	|, %sfp
	move.w 108(%sp),%a2	| %sfp, _44
	move.l %a0,-(%sp)	|,
	move.l %a2,-(%sp)	| _44,
	move.l 56(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a1	|,
	move.l (%a1),%d7	| MEM <unsigned int> [(short int *)&pos], sample_uv
	and.l #-65538,%d7	|, sample_uv
| voxel.c:785: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,130(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 118(%sp),%d0	| %sfp, _49
	and.w #8,%d0	|, _49
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _49
	move.w %d0,70(%sp)	| _49, %sfp
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	moveq #-100,%d0	|, tmp835
	add.l 106(%sp),%d0	| %sfp, tmp835
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp835
	move.l %d0,96(%sp)	| tmp835, %sfp
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	lea (-160,%a2),%a2	|, tmp836
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a2,%d0	| tmp836, _53
	asr.l #2,%d0	|, _53
	move.l %d0,%d1	| _53,
	lsl.l #4,%d1	|,
	move.l %d1,100(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 70(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _53,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	move.l %d0,88(%sp)	| tmp1301, %sfp
	add.l %d2,%d2	| x, tmp843
	add.l #_horizon,%d2	|, tmp843
	move.l %d2,80(%sp)	| tmp843, %sfp
	lea (24,%sp),%sp	|,
	move.b 109(%sp),%d6	| %sfp, fog_enabled
	move.l %d7,76(%sp)	| sample_uv, %sfp
.L325:
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,%d1	| pos.diry, _58
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,%d2	| pos.dirx, _63
| voxel.c:800: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 54(%sp),%d0	| %sfp, _61
	add.w #-160,%d0	|, _61
	move.w %d0,%d3	| _61,
	muls.w %d1,%d3	| _58, tmp846
| voxel.c:800: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d3	|, tmp847
| voxel.c:800: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w %d2,%d5	| _63, tmp848
	sub.w %d3,%d5	| tmp847, tmp848
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp850
	clr.w %d5	| tmp850
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w %d2,%d0	| _63, tmp851
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d0	|, tmp852
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w %d0,%d1	| tmp852, tmp853
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d5	| tmp853, tmp855
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, _420
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 76(%sp),%d3	| %sfp, tmp856
	add.l %d5,%d3	| _420, tmp856
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp857
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _420, tmp858
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp859
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _420, tmp860
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp861
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _420, tmp862
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:810: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 54(%sp),%d4	| %sfp, tmp863
	lsr.w #3,%d4	|, tmp863
	and.l #65535,%d4	|, _76
| voxel.c:810: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _76, tmp865
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d2	| view_max[_76], _77
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d0	| %sfp, tmp866
	asr.w #4,%d0	|, tmp866
	ext.l %d0	| tmp867
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp867, tmp868
	add.l %d0,%d0	| tmp868, tmp868
	move.l %d0,68(%sp)	| tmp868, %sfp
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp871
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp871,
	move.l %d1,72(%sp)	|, %sfp
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d0	| _77,
	muls.w #80,%d0	|, tmp872
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp874
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp874, tmp875
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	|, tmp876
	move.l 44(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp876, pBlock
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 68(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 80(%sp),%d0	| %sfp, tmp1302
	move.l %d0,60(%sp)	| tmp1302, %sfp
| voxel.c:809: 				.y = view_max[x >> 3] - y_offset,
	sub.w %d0,%d2	|, y
| voxel.c:814: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d4	| view_min[_76], y_min
	sub.w 62(%sp),%d4	| %sfp, y_min
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d0	| pos.z, pos.z
	lsr.w #7,%d0	|, tmp886
| voxel.c:409: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, ytable_offset
	sub.w %d0,%d1	| tmp886, ytable_offset
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d1,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, ytable_offset
	move.l %a0,48(%sp)	| ytable_offset, %sfp
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d2,%d4	| y, y_min
	jgt .L249		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-12,%a1	|, z
	move.w %a1,%d7	| z, z
.L256:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d0	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d1	| *_1001, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.552
	move.b %d1,%d0	| sample, SR.552
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.552, tmp895
	move.w (%a0,%d0.l),%d0	| (*y_table_shifted_753)[_1003], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| y, sample_y
	jgt .L250		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d0	| y_min, sample_y
	jlt .L251		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp896
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp897
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp898
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d1.l),%d1	| *_7, _8
.L254:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _8, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| y, sample_y
	jle .L254		|
.L255:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _420, tmp904
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L249		|
	cmp.w %d4,%d2	| y_min, y
	jge .L256		|
.L249:
| voxel.c:818: 			PARTICLES;
	move.w %d3,%d0	|, tmp905
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp905
	move.w %d0,%a5	| tmp905, tmp906
	lea (160,%a5),%a5	|, tmp906
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp906,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp908, tmp909
	lea (160,%a6),%a6	|, tmp909
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp909,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _420, tmp911
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, _428
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+16384,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
	cmp.w %d4,%d2	| y_min, y
	jlt .L257		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-8,%a1	|, z
	move.w %a1,%d7	| z, z
.L268:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d0	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d1	| *_925, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.550
	move.b %d1,%d0	| sample, SR.550
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.550, tmp916
	move.w (%a0,%d0.l),%d0	| (*y_table_shifted_832)[_927], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| y, sample_y
	jgt .L258		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d0	| y_min, sample_y
	jlt .L259		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp917
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp918
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp919
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d1.l),%d1	| *_309, _1159
.L263:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1159, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| y, sample_y
	jle .L263		|
.L264:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp925
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L262		|
.L265:
	cmp.w %d4,%d2	| y_min, y
	jge .L268		|
| voxel.c:821: 			PARTICLES;
	move.w %d3,%d0	|, tmp932
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp932
	move.w %d0,%a5	| tmp932, tmp933
	lea (160,%a5),%a5	|, tmp933
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp933,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp935
	move.w %d3,%a6	| tmp935, tmp936
	lea (160,%a6),%a6	|, tmp936
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp936,
	move.l %d0,%a6	|, _2169
.L257:
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
.L267:
| voxel.c:824: 			PARTICLES;
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
.L278:
| voxel.c:827: 			PARTICLES;
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
.L288:
| voxel.c:830: 			PARTICLES;
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
.L300:
| voxel.c:833: 			PARTICLES;
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
.L312:
| voxel.c:836: 			PARTICLES;
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:837: 			state.y += y_offset;
	move.w %d2,%d1	| y, _169
	add.w 74(%sp),%d1	| %sfp, _169
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 68(%sp),%a1	| %sfp,
	move.w (%a1),%a0	| MEM[(short int *)_2122], _495
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d1,%d0	| _169, _496
	sub.w %a0,%d0	| _495, _496
| voxel.c:515: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp1079
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d2	| tmp1079,
	muls.w #80,%d2	|,
	move.l %d2,%a0	|, tmp1080
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 80(%sp),%a0	| %sfp, tmp1082
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1082, tmp1083
| voxel.c:336: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 84(%sp),%a0	| %sfp, tmp1084
	add.l 56(%sp),%a0	| %sfp, pBlock
| voxel.c:506: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d2	| pdata_table[15][7][0], movep_data
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	lea (12,%sp),%sp	|,
	tst.w %d0	| _496
	jle .L323		|
	mulu.w #160,%d0	|, tmp1086
	add.l %a0,%d0	| pBlock, _1921
.L324:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:509: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:507: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _1921
	jne .L324		|
.L323:
| voxel.c:516: 	horizon[x] = y;
	move.l 56(%sp),%a0	| %sfp,
	move.w %d1,(%a0)	| _169, MEM[(short int *)_2122]
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,54(%sp)	|, %sfp
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 84(%sp),%d1	| %sfp,
	add.l %d1,64(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,56(%sp)	|, %sfp
	cmp.w #319,54(%sp)	|, %sfp
	jls .L325		|
| voxel.c:841: 		unsigned long t_render_1 = *_hz_200;
	move.l 76(%sp),%d7	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:842: 		t_render += t_render_1 - t_render_0;
	sub.l 114(%sp),%d0	| %sfp, tmp1089
| voxel.c:842: 		t_render += t_render_1 - t_render_0;
	add.l %d0,98(%sp)	| tmp1089, %sfp
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d0	| pos.z, pos.z
	lsr.w #7,%d0	|, tmp1091
| voxel.c:470: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w %d0,%a0	| tmp1091, ytable_offset
| voxel.c:472: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp1095
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
.L328:
	move.l %d7,%d0	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d7	| delta_uv, tmp1096
	add.l %d0,%d7	| uv, tmp1096
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_uv
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:489: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d4	| z, z
| voxel.c:488: 		z++;
	addq.w #1,%d1	|, z
| voxel.c:480: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L326		|
| voxel.c:349: 	asm (
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d0	| *_1067, sample
| voxel.c:483: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d0	|, SR.553
| voxel.c:483: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.553, tmp1101
| voxel.c:484: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| (*y_table_shifted_1416)[_1069], (*y_table_shifted_1416)[_1069]
	cmp.w %d5,%d0	| min_y, (*y_table_shifted_1416)[_1069]
	jge .L327		|
	move.w %d0,%d5	| (*y_table_shifted_1416)[_1069], min_y
.L327:
| voxel.c:492: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp1103
	and.w #15,%d0	|, tmp1103
	jne .L326		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp1104
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:371: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp1105
| voxel.c:371: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L326:
| voxel.c:479: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L328		|
| voxel.c:848: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L354		|
	move.w #128,%a0	|, _2189
| voxel.c:850: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L329		|
| voxel.c:853: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp1106
	add.w %d5,%d5	| tmp1106, tmp1107
	add.w %d5,%d5	| tmp1107, sunlight
| voxel.c:856: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _2189
.L329:
	move.l %a0,-(%sp)	| _2189,
	move.l 98(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _180
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _181,
	muls.w %d3,%d0	| _180, tmp1113
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1114
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp1114, pos.x
| voxel.c:859: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _187
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _187,
	muls.w %d3,%d0	| _180, tmp1117
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1118
| voxel.c:859: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _192
	add.w %d0,%a0	| tmp1118, _192
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp1120
	sub.l 98(%sp),%d0	| %sfp, tmp1120
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp1121
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _180, _197
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _197, tmp1122
	asr.w #3,%d3	|, tmp1122
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _197, tmp1123
	asr.w #4,%d4	|, tmp1123
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp1123, tmp1124
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _204
| voxel.c:863: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _197
	jle .L330		|
.L421:
| voxel.c:863: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _204, _207
.L331:
| voxel.c:859: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _192, pos.y
| voxel.c:863: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _207, pos.speed
| voxel.c:865: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 104(%sp),%d3	| %sfp, rot
| voxel.c:866: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _187, tmp1127
| voxel.c:866: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp1128
| voxel.c:866: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _181, _219
| voxel.c:867: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d3	| _219, tmp1129
| voxel.c:867: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d3	|, tmp1130
| voxel.c:867: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d3,%d1	| tmp1130, _226
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _219,
	muls.w %d0,%d2	| _219, tmp1131
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1132
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _226,
	muls.w %d1,%d3	| _226, tmp1133
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp1134
| voxel.c:870: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, tmp1135
	add.w %d3,%a0	| tmp1134, tmp1135
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp1135, tmp1136
	moveq #-128,%d3	|, tmp1137
	add.l %a0,%d3	| tmp1136, tmp1137
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp1138
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _466
	sub.w %d3,%d2	| tmp1138, _466
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _466, tmp1141
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1142
| voxel.c:871: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp1140
	clr.w %d0	| tmp1140
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _226, tmp1147
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1148
| voxel.c:871: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| tmp1148, tmp1140
	move.l %d0,_pos+6	| tmp1140, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:874: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:874: 		if (pressed_keys.up) {
	jpl .L332		|
| voxel.c:875: 			if (desired_height < FIXP(0, 0)) {
	tst.w 88(%sp)	| %sfp
	jlt .L356		|
| voxel.c:878: 			desired_height += FIXP(1, 0);
	move.w 88(%sp),%d0	| %sfp, _2191
.L333:
	add.w #128,%d0	|, _2191
	move.w %d0,88(%sp)	| _2191, %sfp
| voxel.c:879: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L332		|
	move.w #32512,88(%sp)	|, %sfp
.L332:
| voxel.c:883: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:883: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L335		|
| voxel.c:884: 			if (desired_height < FIXP(0, 0)) {
	tst.w 88(%sp)	| %sfp
	jlt .L336		|
| voxel.c:887: 			desired_height -= FIXP(1, 0);
	move.w 88(%sp),106(%sp)	| %sfp, %sfp
.L336:
| voxel.c:892: 		if (key == 0x23) {
	cmp.b #35,108(%sp)	|, %sfp
	jeq .L357		|
| voxel.c:887: 			desired_height -= FIXP(1, 0);
	move.w 106(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,88(%sp)	|, %sfp
| voxel.c:888: 			if (desired_height < FIXP(0, 0)) {
	jmi .L406		|
.L339:
| voxel.c:899: 		} else if (key == 0x20) {
	cmp.b #32,108(%sp)	|, %sfp
	jeq .L407		|
.L337:
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1160
	and.w #8192,%d0	|, _1844
| voxel.c:200: 	data &= mask;
	move.l 44(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B], tmp1161
	and.l #-536879105,%d3	|, tmp1161
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1844
	move.w %d0,%d1	| _1844, _1844
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283], tmp1166
	and.l #-536879105,%d4	|, tmp1166
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1844
	swap %d2	| _1844
	clr.w %d2	| _1844
	move.w %d0,%d2	| _1844, _1844
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1844, tmp1166
	move.l %d4,(%a0)	| tmp1166, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283]
	or.l %d1,%d3	| _1844, tmp1161
	move.l %d3,4(%a0)	| tmp1161, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B]
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1174
	and.b #1,%d0	|, _238
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1177
	ext.w %d0	| tmp1176
	neg.w %d0	| tmp1178
	lsl.w %d1,%d0	|, _1653
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B], tmp1179
	and.l #-536879105,%d3	|, tmp1179
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1653
	move.w %d0,%d1	| _1653, _1653
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B], tmp1184
	and.l #-536879105,%d4	|, tmp1184
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1653
	swap %d2	| _1653
	clr.w %d2	| _1653
	move.w %d0,%d2	| _1653, _1653
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1653, tmp1184
	move.l %d4,640(%a0)	| tmp1184, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B]
	or.l %d1,%d3	| _1653, tmp1179
	move.l %d3,644(%a0)	| tmp1179, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1192
	and.b #1,%d1	|, _239
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1195
	ext.w %d1	| tmp1194
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _578
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1198
	and.b #1,%d0	|, _240
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1201
	ext.w %d0	| tmp1200
	neg.w %d0	| tmp1202
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _2105
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_283 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _578, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_283 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _578, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_283 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _578, data
| voxel.c:910: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 88(%sp),%d1	| %sfp, tmp1207
	not.w %d1	| tmp1207
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1206
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1799
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2105, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1799, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_283 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2105, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1799, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_283 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_283 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1799, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_283 + 326B]
	addq.w #8,102(%sp)	|, %sfp
| voxel.c:766: 		frames++;
	move.l 110(%sp),94(%sp)	| %sfp, %sfp
.L409:
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp797
#APP
| 694 "voxel.c" 1
	movw	%d3,%sp@-	| tmp797
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:694: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1298
	jne .L408		|
.L345:
	clr.b 108(%sp)	| %sfp
	jra .L241		|
.L405:
| voxel.c:916: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:917: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 118(%sp),%a0	| %sfp, tmp1213
| voxel.c:917: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp1213, tmp1215
	add.l %a0,%d0	| tmp1213, tmp1215
	add.l %d0,%d0	| tmp1215, tmp1216
| voxel.c:918: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp1221
	move.l 94(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp1221
| voxel.c:919: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1303,
	pea .LC11		|
	lea _printf,%a2	|, tmp1223
	jsr (%a2)		| tmp1223
| voxel.c:920: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 106(%sp),%d0	| %sfp, tmp1225
	add.l %d0,%d0	|, tmp1225
	add.l %d0,%d0	| tmp1225, tmp1226
| voxel.c:920: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 102(%sp),-(%sp)	| %sfp,
	move.l 110(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp1221
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1304,
	pea .LC12		|
	jsr (%a2)		| tmp1223
| voxel.c:921: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:922: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L234:
| voxel.c:925: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:926: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:927: 	install_palette(saved_palette);
	pea 140(%sp)		|
	jsr _install_palette		|
| voxel.c:929: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (124,%sp),%sp	|,
	rts	
.L407:
	eor.b #1,109(%sp)	|, %sfp
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1160
	and.w #8192,%d0	|, _1844
| voxel.c:200: 	data &= mask;
	move.l 44(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B], tmp1161
	and.l #-536879105,%d3	|, tmp1161
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1844
	move.w %d0,%d1	| _1844, _1844
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283], tmp1166
	and.l #-536879105,%d4	|, tmp1166
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1844
	swap %d2	| _1844
	clr.w %d2	| _1844
	move.w %d0,%d2	| _1844, _1844
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1844, tmp1166
	move.l %d4,(%a0)	| tmp1166, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283]
	or.l %d1,%d3	| _1844, tmp1161
	move.l %d3,4(%a0)	| tmp1161, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B]
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1174
	and.b #1,%d0	|, _238
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1177
	ext.w %d0	| tmp1176
	neg.w %d0	| tmp1178
	lsl.w %d1,%d0	|, _1653
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B], tmp1179
	and.l #-536879105,%d3	|, tmp1179
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1653
	move.w %d0,%d1	| _1653, _1653
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B], tmp1184
	and.l #-536879105,%d4	|, tmp1184
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1653
	swap %d2	| _1653
	clr.w %d2	| _1653
	move.w %d0,%d2	| _1653, _1653
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1653, tmp1184
	move.l %d4,640(%a0)	| tmp1184, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B]
	or.l %d1,%d3	| _1653, tmp1179
	move.l %d3,644(%a0)	| tmp1179, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1192
	and.b #1,%d1	|, _239
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1195
	ext.w %d1	| tmp1194
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _578
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1198
	and.b #1,%d0	|, _240
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1201
	ext.w %d0	| tmp1200
	neg.w %d0	| tmp1202
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _2105
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_283 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _578, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_283 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _578, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_283 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _578, data
| voxel.c:910: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 88(%sp),%d1	| %sfp, tmp1207
	not.w %d1	| tmp1207
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1206
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1799
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2105, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1799, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_283 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2105, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1799, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_283 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_283 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1799, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_283 + 326B]
	addq.w #8,102(%sp)	|, %sfp
| voxel.c:766: 		frames++;
	move.l 110(%sp),94(%sp)	| %sfp, %sfp
	jra .L409		|
.L406:
| voxel.c:888: 			if (desired_height < FIXP(0, 0)) {
	clr.w 88(%sp)	| %sfp
| voxel.c:899: 		} else if (key == 0x20) {
	cmp.b #32,108(%sp)	|, %sfp
	jne .L337		|
	jra .L407		|
.L258:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp925
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jne .L265		|
.L262:
| voxel.c:821: 			PARTICLES;
	move.w %d3,%d0	|, tmp926
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp926
	move.w %d0,%a5	| tmp926, tmp927
	lea (160,%a5),%a5	|, tmp927
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp927,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp929, tmp930
	lea (160,%a6),%a6	|, tmp930
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp930,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+24576,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d0	|, z
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L267		|
.L266:
| voxel.c:349: 	asm (
	move.l %d3,%d1	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d1.l),%d7	| *_849, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.548
	move.b %d7,%d1	| sample, SR.548
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.548, tmp941
	move.w (%a0,%d1.l),%d1	| (*y_table_shifted_913)[_851], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L269		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d1	| y_min, sample_y
	jlt .L270		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp942
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp943
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp944
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d7.l),%d7	| *_585, _662
.L274:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _662, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L274		|
.L275:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp950
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d0	| z
	jeq .L273		|
.L276:
	cmp.w %d4,%d2	| y_min, y
	jge .L266		|
| voxel.c:824: 			PARTICLES;
	move.w %d3,%d0	|, tmp958
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp958
	move.w %d0,%a5	| tmp958, tmp959
	lea (160,%a5),%a5	|, tmp959
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp959,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp961
	move.w %d3,%a6	| tmp961, tmp962
	lea (160,%a6),%a6	|, tmp962
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp962,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
	jra .L278		|
.L250:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
	jra .L255		|
.L259:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp921
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d1,%d0	| tmp921, tmp922
	add.w #224,%d0	|, tmp922
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp923
	add.l #_pdata_table,%d0	|, _935
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L410		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a1	| _935,
	move.l (%a1),%d1	| *_935, _1159
	move.w %d4,%d0	| y_min, sample_y
	clr.w %d7	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1159, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| y, sample_y
	jle .L263		|
	jra .L264		|
.L251:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp900
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d1,%d0	| tmp900, tmp901
	add.w #224,%d0	|, tmp901
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp902
	add.l #_pdata_table,%d0	|, _1011
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L411		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a1	| _1011,
	move.l (%a1),%d1	| *_1011, _8
	move.w %d4,%d0	| y_min, sample_y
	clr.w %d7	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _8, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| y, sample_y
	jle .L254		|
	jra .L255		|
.L269:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp950
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d0	| z
	jne .L276		|
.L273:
| voxel.c:824: 			PARTICLES;
	move.w %d3,%d0	|, tmp951
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp951
	move.w %d0,%a5	| tmp951, tmp952
	lea (160,%a5),%a5	|, tmp952
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp952,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp954, tmp955
	lea (160,%a6),%a6	|, tmp955
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp955,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _428, tmp957
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, _426
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+32768,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d0	|, z
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L278		|
.L277:
| voxel.c:349: 	asm (
	move.l %d3,%d1	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d1.l),%d7	| *_773, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.546
	move.b %d7,%d1	| sample, SR.546
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.546, tmp967
	move.w (%a0,%d1.l),%d1	| (*y_table_shifted_1401)[_775], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L279		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d1	| y_min, sample_y
	jlt .L280		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp968
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp969
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp970
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d7.l),%d7	| *_2262, _2127
.L284:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _2127, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L284		|
.L285:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _426, tmp976
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d0	| z
	jeq .L283		|
.L286:
	cmp.w %d4,%d2	| y_min, y
	jge .L277		|
| voxel.c:827: 			PARTICLES;
	move.w %d3,%d0	|, tmp983
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp983
	move.w %d0,%a5	| tmp983, tmp984
	lea (160,%a5),%a5	|, tmp984
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp984,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp986
	move.w %d3,%a6	| tmp986, tmp987
	lea (160,%a6),%a6	|, tmp987
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp987,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
	jra .L288		|
.L270:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp946
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d0	| tmp946, tmp947
	add.w #224,%d0	|, tmp947
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp948
	add.l #_pdata_table,%d0	|, _859
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L412		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a1	| _859,
	move.l (%a1),%d7	| *_859, _662
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d0	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _662, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L274		|
	jra .L275		|
.L279:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _426, tmp976
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d0	| z
	jne .L286		|
.L283:
| voxel.c:827: 			PARTICLES;
	move.w %d3,%d0	|, tmp977
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp977
	move.w %d0,%a5	| tmp977, tmp978
	lea (160,%a5),%a5	|, tmp978
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp978,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp980, tmp981
	lea (160,%a6),%a6	|, tmp981
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp981,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+40960,%a1	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
	cmp.w %d4,%d2	| y_min, y
	jlt .L288		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-8,%a5	|, z
| voxel.c:413: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+40,%a6	|, opacity_table_shifted
	move.w %a5,%d7	| z, z
	move.w %d6,%a5	| fog_enabled, fog_enabled
.L287:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d0	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d6	| *_697, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.544
	move.b %d6,%d0	| sample, SR.544
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.544, tmp992
	move.w (%a1,%d0.l),%d1	| (*y_table_shifted_1297)[_699], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L289		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d1	| y_min, sample_y
	jlt .L290		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1730
	and.w #-256,%d0	|, _1730
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d6	| fog_enabled,
	tst.b %d6	|
	jne .L292		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp1249
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp1250
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d0.l),%d0	| *_1856, _2116
.L295:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _2116, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L295		|
.L296:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _426, tmp1006
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L413		|
.L298:
	cmp.w %d4,%d2	| y_min, y
	jge .L287		|
| voxel.c:830: 			PARTICLES;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	move.w %d3,%d0	|, tmp1014
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1014
	move.w %d0,%a5	| tmp1014, tmp1015
	lea (160,%a5),%a5	|, tmp1015
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp1015,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp1017
	move.w %d3,%a6	| tmp1017, tmp1018
	lea (160,%a6),%a6	|, tmp1018
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1018,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
	jra .L300		|
.L280:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp972
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d0	| tmp972, tmp973
	add.w #224,%d0	|, tmp973
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp974
	add.l #_pdata_table,%d0	|, _783
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L414		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a1	| _783,
	move.l (%a1),%d7	| *_783, _2127
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d0	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _2127, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L284		|
	jra .L285		|
.L289:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _426, tmp1006
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jne .L298		|
.L413:
	move.w %a5,%d6	| fog_enabled, fog_enabled
.L294:
| voxel.c:830: 			PARTICLES;
	move.w %d3,%d0	|, tmp1007
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1007
	move.w %d0,%a5	| tmp1007, tmp1008
	lea (160,%a5),%a5	|, tmp1008
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp1008,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp1010, tmp1011
	lea (160,%a6),%a6	|, tmp1011
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1011,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _426, tmp1013
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, _424
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+49152,%a1	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
	cmp.w %d4,%d2	| y_min, y
	jlt .L300		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-8,%a5	|, z
| voxel.c:413: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+48,%a6	|, opacity_table_shifted
	move.w %a5,%d7	| z, z
	move.w %d6,%a5	| fog_enabled, fog_enabled
.L299:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d0	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d6	| *_620, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.542
	move.b %d6,%d0	| sample, SR.542
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.542, tmp1023
	move.w (%a1,%d0.l),%d1	| (*y_table_shifted_1241)[_622], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L301		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d1	| y_min, sample_y
	jlt .L302		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1731
	and.w #-256,%d0	|, _1731
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d6	| fog_enabled,
	tst.b %d6	|
	jne .L304		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp1245
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp1246
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d0.l),%d0	| *_1981, _864
.L307:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _864, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L307		|
.L308:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _424, tmp1037
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L415		|
.L310:
	cmp.w %d4,%d2	| y_min, y
	jge .L299		|
| voxel.c:833: 			PARTICLES;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	move.w %d3,%d0	|, tmp1044
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1044
	move.w %d0,%a5	| tmp1044, tmp1045
	lea (160,%a5),%a5	|, tmp1045
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp1045,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp1047
	move.w %d3,%a6	| tmp1047, tmp1048
	lea (160,%a6),%a6	|, tmp1048
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1048,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
	lea (12,%sp),%sp	|,
	jra .L312		|
.L349:
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
.L292:
| voxel.c:380: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a6),%d6	| MEM[(unsigned char *)opacity_table_shifted_1311],
	move.w %d6,%a0	|, opacity_preshifted
	add.w %d0,%a0	| _1730, offset
| voxel.c:381: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _722
	move.w %a0,%d0	| offset, _722
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jgt .L296		|
	move.l %d0,%a0	| _722, tmp1264
	add.l #_pdata_table,%a0	|, tmp1264
.L297:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp999
	and.l %d2,%d0	| y, tmp999
	add.l %d0,%d0	| tmp999, tmp1000
	add.l %d0,%d0	| tmp1000, tmp1001
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_728, *_728
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_728, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jgt .L296		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp999
	and.l %d2,%d0	| y, tmp999
	add.l %d0,%d0	| tmp999, tmp1000
	add.l %d0,%d0	| tmp1000, tmp1001
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_728, *_728
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_728, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L297		|
	jra .L296		|
.L290:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1730
	and.w #-256,%d0	|, _1730
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d1	| fog_enabled,
	tst.b %d1	|
	jne .L349		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp993
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp994
	add.l #_pdata_table,%d0	|, _707
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L416		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a0	| _707,
	move.l (%a0),%d0	| *_707, _2116
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _2116, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L295		|
	jra .L296		|
.L414:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _426, tmp975
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
	jra .L283		|
.L411:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _420, tmp903
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
	jra .L249		|
.L412:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp949
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:824: 			PARTICLES;
	move.w %d3,%d0	|, tmp951
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp951
	move.w %d0,%a5	| tmp951, tmp952
	lea (160,%a5),%a5	|, tmp952
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp952,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp954, tmp955
	lea (160,%a6),%a6	|, tmp955
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp955,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _428, tmp957
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, _426
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+32768,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d0	|, z
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d4,%d2	| y_min, y
	jge .L277		|
	jra .L278		|
.L410:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _428, tmp924
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:821: 			PARTICLES;
	move.w %d3,%d0	|, tmp926
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp926
	move.w %d0,%a5	| tmp926, tmp927
	lea (160,%a5),%a5	|, tmp927
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp927,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp929, tmp930
	lea (160,%a6),%a6	|, tmp930
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp930,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+24576,%a0	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d0	|, z
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d4,%d2	| y_min, y
	jge .L266		|
	jra .L267		|
.L416:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	add.l %d5,%d3	| _426, tmp995
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
	jra .L294		|
.L301:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _424, tmp1037
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jne .L310		|
.L415:
	move.w %a5,%d6	| fog_enabled, fog_enabled
.L306:
| voxel.c:833: 			PARTICLES;
	move.w %d3,%d0	|, tmp1038
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1038
	move.w %d0,%a5	| tmp1038, tmp1039
	lea (160,%a5),%a5	|, tmp1039
	moveq #0,%d0	|
	move.w %a5,%d0	| tmp1039,
	move.l %d0,%a5	|, _2151
	move.l %d3,%d0	| sample_uv,
	moveq #26,%d1	|,
	asr.l %d1,%d0	|,
	move.w %d0,%a6	| tmp1041, tmp1042
	lea (160,%a6),%a6	|, tmp1042
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1042,
	move.l %d0,%a6	|, _2169
	move.l %a5,-(%sp)	| _2151,
	move.l %a6,-(%sp)	| _2169,
	move.l 52(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:410: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 60(%sp),%a1	| %sfp, y_table_shifted
	add.l #_y_table+57344,%a1	|, y_table_shifted
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	lea (12,%sp),%sp	|,
	cmp.w %d4,%d2	| y_min, y
	jlt .L312		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-8,%a5	|, z
| voxel.c:413: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+56,%a6	|, opacity_table_shifted
	move.w %a5,%d7	| z, z
	move.w %d6,%a5	| fog_enabled, fog_enabled
.L311:
| voxel.c:349: 	asm (
	move.l %d3,%d0	| sample_uv, uv
#APP
| 349 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:362: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d0	|, index
| voxel.c:363: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d6	| *_543, sample
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.540
	move.b %d6,%d0	| sample, SR.540
| voxel.c:418: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.540, tmp1053
	move.w (%a1,%d0.l),%d1	| (*y_table_shifted_1417)[_545], sample_y
| voxel.c:419: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L313		|
| voxel.c:421: 			if (sample_y < y_min) {
	cmp.w %d4,%d1	| y_min, sample_y
	jlt .L314		|
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1732
	and.w #-256,%d0	|, _1732
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d6	| fog_enabled,
	tst.b %d6	|
	jne .L316		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp1241
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp1242
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d0.l),%d0	| *_324, _712
.L319:
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _712, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L319		|
.L320:
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _424, tmp1067
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L417		|
.L322:
	cmp.w %d4,%d2	| y_min, y
	jge .L311		|
| voxel.c:836: 			PARTICLES;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	move.w %d3,%d0	|, tmp1073
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1073
	move.w %d0,%a5	| tmp1073, tmp1074
	lea (160,%a5),%a5	|, tmp1074
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp1074,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp1076
	move.w %d3,%d0	| tmp1076, tmp1077
	add.w #160,%d0	|, tmp1077
	and.l #65535,%d0	|,
	move.l %d0,%a6	|, _2169
	jra .L312		|
.L302:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1731
	and.w #-256,%d0	|, _1731
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d1	| fog_enabled,
	tst.b %d1	|
	jne .L351		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp1024
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp1025
	add.l #_pdata_table,%d0	|, _630
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L418		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a0	| _630,
	move.l (%a0),%d0	| *_630, _864
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _864, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L307		|
	jra .L308		|
.L351:
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
.L304:
| voxel.c:380: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a6),%d6	| MEM[(unsigned char *)opacity_table_shifted_1422],
	move.w %d6,%a0	|, opacity_preshifted
	add.w %d0,%a0	| _1731, offset
| voxel.c:381: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _645
	move.w %a0,%d0	| offset, _645
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L308		|
	move.l %d0,%a0	| _645, tmp1262
	add.l #_pdata_table,%a0	|, tmp1262
.L309:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp1030
	and.l %d2,%d0	| y, tmp1030
	add.l %d0,%d0	| tmp1030, tmp1031
	add.l %d0,%d0	| tmp1031, tmp1032
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_651, *_651
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_651, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jgt .L308		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp1030
	and.l %d2,%d0	| y, tmp1030
	add.l %d0,%d0	| tmp1030, tmp1031
	add.l %d0,%d0	| tmp1031, tmp1032
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_651, *_651
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_651, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L309		|
	jra .L308		|
.L418:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	add.l %d5,%d3	| _424, tmp1026
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
	jra .L306		|
.L313:
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:450: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:451: 		opacity_table_shifted++;
	addq.l #1,%a6	|, opacity_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _424, tmp1067
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:416: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jne .L322		|
.L417:
	move.w %a5,%d6	| fog_enabled, fog_enabled
| voxel.c:836: 			PARTICLES;
	move.w %d3,%d0	|, tmp1068
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1068
	move.w %d0,%a5	| tmp1068, tmp1069
	lea (160,%a5),%a5	|, tmp1069
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp1069,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp1071
	move.w %d3,%a6	| tmp1071, tmp1072
	lea (160,%a6),%a6	|, tmp1072
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1072,
	move.l %d0,%a6	|, _2169
	jra .L312		|
.L353:
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
.L316:
| voxel.c:380: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a6),%d6	| MEM[(unsigned char *)opacity_table_shifted_1218],
	move.w %d6,%a0	|, opacity_preshifted
	add.w %d0,%a0	| _1732, offset
| voxel.c:381: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _568
	move.w %a0,%d0	| offset, _568
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| sample_y, y
	jlt .L320		|
	move.l %d0,%a0	| _568, tmp1260
	add.l #_pdata_table,%a0	|, tmp1260
.L321:
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp1060
	and.l %d2,%d0	| y, tmp1060
	add.l %d0,%d0	| tmp1060, tmp1061
	add.l %d0,%d0	| tmp1061, tmp1062
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_574, *_574
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_574, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jgt .L320		|
| voxel.c:441: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp1060
	and.l %d2,%d0	| y, tmp1060
	add.l %d0,%d0	| tmp1060, tmp1061
	add.l %d0,%d0	| tmp1061, tmp1062
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a0,%d0.l),%d0	| *_574, *_574
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_574, pBlock
| 0 "" 2
| voxel.c:443: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:444: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L321		|
	jra .L320		|
.L314:
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d6,%d0	| sample, _1732
	and.w #-256,%d0	|, _1732
| voxel.c:427: 			if (!fog) {
	move.w %a5,%d1	| fog_enabled,
	tst.b %d1	|
	jne .L353		|
| voxel.c:375: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp1054
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp1055
	add.l #_pdata_table,%d0	|, _553
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d4,%d2	| y_min, y
	jlt .L419		|
| voxel.c:376: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a0	| _553,
	move.l (%a0),%d0	| *_553, _712
	move.w %d4,%d1	| y_min, sample_y
	clr.w %d7	| z
| voxel.c:341: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 341 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _712, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:434: 					y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L319		|
	jra .L320		|
.L419:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.w %a5,%d6	| fog_enabled, fog_enabled
	add.l %d5,%d3	| _424, tmp1056
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:836: 			PARTICLES;
	move.w %d3,%d0	|, tmp1068
	moveq #10,%d1	|,
	asr.w %d1,%d0	|, tmp1068
	move.w %d0,%a5	| tmp1068, tmp1069
	lea (160,%a5),%a5	|, tmp1069
	moveq #0,%d4	|
	move.w %a5,%d4	| tmp1069,
	move.l %d4,%a5	|, _2151
	moveq #26,%d5	|,
	asr.l %d5,%d3	|, tmp1071
	move.w %d3,%a6	| tmp1071, tmp1072
	lea (160,%a6),%a6	|, tmp1072
	moveq #0,%d0	|
	move.w %a6,%d0	| tmp1072,
	move.l %d0,%a6	|, _2169
	jra .L312		|
.L245:
| voxel.c:776: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L246		|
	move.w #256,%d0	|, altitude_delta
	add.w %d0,%d2	| altitude_delta, _41
| voxel.c:777: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d2	|, _41
	jle .L420		|
.L247:
| voxel.c:777: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
| voxel.c:780: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.57_42
	move.w -602(%a0),104(%sp)	| MEM[(short int *)__aline.57_42 + 4294966694B], %sfp
| voxel.c:780: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a0),%d2	| MEM[(short int *)__aline.57_42 + 4294966696B], mouse_y
| voxel.c:781: 		particles_clear_all(screen);
	move.l 44(%sp),-(%sp)	| %sfp,
	jsr _particles_clear_all		|
| voxel.c:782: 		particles_draw_one(screen, mouse_x, mouse_y);
	move.w %d2,%a0	| mouse_y,
	move.l %a0,94(%sp)	|, %sfp
	move.w 108(%sp),%a2	| %sfp, _44
	move.l %a0,-(%sp)	|,
	move.l %a2,-(%sp)	| _44,
	move.l 56(%sp),-(%sp)	| %sfp,
	jsr _particles_draw_one		|
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a1	|,
	move.l (%a1),%d7	| MEM <unsigned int> [(short int *)&pos], sample_uv
	and.l #-65538,%d7	|, sample_uv
| voxel.c:785: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,130(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 118(%sp),%d0	| %sfp, _49
	and.w #8,%d0	|, _49
| voxel.c:788: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _49
	move.w %d0,70(%sp)	| _49, %sfp
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	moveq #-100,%d0	|, tmp835
	add.l 106(%sp),%d0	| %sfp, tmp835
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp835
	move.l %d0,96(%sp)	| tmp835, %sfp
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	lea (-160,%a2),%a2	|, tmp836
| voxel.c:794: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a2,%d0	| tmp836, _53
	asr.l #2,%d0	|, _53
	move.l %d0,%d1	| _53,
	lsl.l #4,%d1	|,
	move.l %d1,100(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 70(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _53,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	move.l %d0,88(%sp)	| tmp1301, %sfp
	add.l %d2,%d2	| x, tmp843
	add.l #_horizon,%d2	|, tmp843
	move.l %d2,80(%sp)	| tmp843, %sfp
	lea (24,%sp),%sp	|,
	move.b 109(%sp),%d6	| %sfp, fog_enabled
	move.l %d7,76(%sp)	| sample_uv, %sfp
	jra .L325		|
.L335:
| voxel.c:892: 		if (key == 0x23) {
	cmp.b #35,108(%sp)	|, %sfp
	jne .L339		|
| voxel.c:894: 			if (desired_height < 0) {
	tst.w 88(%sp)	| %sfp
	jge .L357		|
| voxel.c:895: 				desired_height = player_height;
	move.w 106(%sp),88(%sp)	| %sfp, %sfp
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1160
	and.w #8192,%d0	|, _1844
| voxel.c:200: 	data &= mask;
	move.l 44(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B], tmp1161
	and.l #-536879105,%d3	|, tmp1161
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1844
	move.w %d0,%d1	| _1844, _1844
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283], tmp1166
	and.l #-536879105,%d4	|, tmp1166
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1844
	swap %d2	| _1844
	clr.w %d2	| _1844
	move.w %d0,%d2	| _1844, _1844
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1844, tmp1166
	move.l %d4,(%a0)	| tmp1166, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283]
	or.l %d1,%d3	| _1844, tmp1161
	move.l %d3,4(%a0)	| tmp1161, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B]
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1174
	and.b #1,%d0	|, _238
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1177
	ext.w %d0	| tmp1176
	neg.w %d0	| tmp1178
	lsl.w %d1,%d0	|, _1653
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B], tmp1179
	and.l #-536879105,%d3	|, tmp1179
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1653
	move.w %d0,%d1	| _1653, _1653
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B], tmp1184
	and.l #-536879105,%d4	|, tmp1184
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1653
	swap %d2	| _1653
	clr.w %d2	| _1653
	move.w %d0,%d2	| _1653, _1653
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1653, tmp1184
	move.l %d4,640(%a0)	| tmp1184, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B]
	or.l %d1,%d3	| _1653, tmp1179
	move.l %d3,644(%a0)	| tmp1179, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1192
	and.b #1,%d1	|, _239
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1195
	ext.w %d1	| tmp1194
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _578
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1198
	and.b #1,%d0	|, _240
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1201
	ext.w %d0	| tmp1200
	neg.w %d0	| tmp1202
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _2105
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_283 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _578, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_283 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _578, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_283 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _578, data
| voxel.c:910: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 88(%sp),%d1	| %sfp, tmp1207
	not.w %d1	| tmp1207
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1206
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1799
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2105, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1799, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_283 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2105, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1799, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_283 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_283 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1799, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_283 + 326B]
	addq.w #8,102(%sp)	|, %sfp
| voxel.c:766: 		frames++;
	move.l 110(%sp),94(%sp)	| %sfp, %sfp
	jra .L409		|
.L354:
	sub.l %a0,%a0	| _2189
| voxel.c:856: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2189,
	move.l 98(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _180
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _181,
	muls.w %d3,%d0	| _180, tmp1113
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1114
| voxel.c:858: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp1114, pos.x
| voxel.c:859: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _187
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _187,
	muls.w %d3,%d0	| _180, tmp1117
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1118
| voxel.c:859: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _192
	add.w %d0,%a0	| tmp1118, _192
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp1120
	sub.l 98(%sp),%d0	| %sfp, tmp1120
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp1121
| voxel.c:861: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _180, _197
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _197, tmp1122
	asr.w #3,%d3	|, tmp1122
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _197, tmp1123
	asr.w #4,%d4	|, tmp1123
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp1123, tmp1124
| voxel.c:862: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _204
| voxel.c:863: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _197
	jgt .L421		|
.L330:
| voxel.c:864: 		else pos.speed += drag;
	add.w %d3,%d0	| _204, _207
	jra .L331		|
.L357:
| voxel.c:897: 				desired_height = -1;
	move.w #-1,88(%sp)	|, %sfp
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1160
	and.w #8192,%d0	|, _1844
| voxel.c:200: 	data &= mask;
	move.l 44(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B], tmp1161
	and.l #-536879105,%d3	|, tmp1161
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1844
	move.w %d0,%d1	| _1844, _1844
| voxel.c:200: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283], tmp1166
	and.l #-536879105,%d4	|, tmp1166
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1844
	swap %d2	| _1844
	clr.w %d2	| _1844
	move.w %d0,%d2	| _1844, _1844
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1844, tmp1166
	move.l %d4,(%a0)	| tmp1166, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283]
	or.l %d1,%d3	| _1844, tmp1161
	move.l %d3,4(%a0)	| tmp1161, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 4B]
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1174
	and.b #1,%d0	|, _238
| voxel.c:907: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1177
	ext.w %d0	| tmp1176
	neg.w %d0	| tmp1178
	lsl.w %d1,%d0	|, _1653
| voxel.c:200: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B], tmp1179
	and.l #-536879105,%d3	|, tmp1179
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1653
	move.w %d0,%d1	| _1653, _1653
| voxel.c:200: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B], tmp1184
	and.l #-536879105,%d4	|, tmp1184
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1653
	swap %d2	| _1653
	clr.w %d2	| _1653
	move.w %d0,%d2	| _1653, _1653
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1653, tmp1184
	move.l %d4,640(%a0)	| tmp1184, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 640B]
	or.l %d1,%d3	| _1653, tmp1179
	move.l %d3,644(%a0)	| tmp1179, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_283 + 644B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1192
	and.b #1,%d1	|, _239
| voxel.c:908: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1195
	ext.w %d1	| tmp1194
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _578
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1198
	and.b #1,%d0	|, _240
| voxel.c:909: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1201
	ext.w %d0	| tmp1200
	neg.w %d0	| tmp1202
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _2105
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_283 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d4	| _578, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_283 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d3	| _578, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_283 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d2	| _578, data
| voxel.c:910: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 88(%sp),%d1	| %sfp, tmp1207
	not.w %d1	| tmp1207
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1206
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1799
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2105, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1799, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_283 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2105, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1799, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_283 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_283 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1799, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_283 + 326B]
	addq.w #8,102(%sp)	|, %sfp
| voxel.c:766: 		frames++;
	move.l 110(%sp),94(%sp)	| %sfp, %sfp
	jra .L409		|
.L356:
	move.w 106(%sp),%d0	| %sfp, _2191
	jra .L333		|
.L404:
| voxel.c:726: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:727: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:925: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:926: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:927: 	install_palette(saved_palette);
	pea 140(%sp)		|
	jsr _install_palette		|
| voxel.c:929: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (124,%sp),%sp	|,
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
