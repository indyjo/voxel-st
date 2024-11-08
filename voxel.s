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
	move.l 32(%sp),%d4	| delta_uv, delta_uv
| voxel.c:472: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:474: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp58
| voxel.c:474: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _49
| voxel.c:480: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:479: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:477: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d5	|, index_mask
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L109:
	move.w %d2,%d6	| z, z
| voxel.c:490: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _49, y_table_shifted
| voxel.c:491: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _49
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l %d4,%d3	| delta_uv, tmp59
	add.l %d1,%d3	| uv, tmp59
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:482: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d6	|, z
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
	and.l %d5,%d1	| index_mask, index
| voxel.c:365: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a1,%d1.l),%d1	| *_33, sample
| voxel.c:485: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.361
| voxel.c:485: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.361, tmp64
| voxel.c:486: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L108		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L108:
| voxel.c:494: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp66
	and.w #15,%d1	|, tmp66
	jne .L107		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_uv, tmp67
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp68
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L107:
| voxel.c:481: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L109		|
| voxel.c:504: }
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
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	lsl.l #8,%d0	|, tmp71
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[_1][0][0], movep_data
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:511: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L115		|
.L113:
| voxel.c:513: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
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
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d4	| pdata_table[15][0][0], movep_data
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
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
| voxel.c:511: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L121		|
.L120:
| voxel.c:518: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:519: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:537: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:538: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:539: }
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:545: }
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
| voxel.c:556: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:557: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:558: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:537: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:538: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:537: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:538: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:537: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:538: 	return c >> 1;
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:563: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:563: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:555: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.418
	cmp.l %d3,%a3	| _445, ivtmp.418
	jne .L130		|
| voxel.c:565: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.424
	clr.w %d0	| vect__18.424
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.424
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.424, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:571: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L138		|
	cmp.w #128,%d0	|, val
	jge .L139		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:576: }
	rts	
.L139:
| voxel.c:574: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:576: }
	rts	
.L138:
| voxel.c:574: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:576: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:581: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:584: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:591: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:593: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:605: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:586: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.454
| voxel.c:593: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L149:
| voxel.c:596: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:603: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L159		|
| voxel.c:605: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:611: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:615: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:616: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L161		|
.L145:
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L150		|
.L162:
	cmp.w #128,%d4	|, _504
	jge .L151		|
	add.b %d4,%d4	| _504, iftmp.29_290
.L146:
| voxel.c:619: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L152		|
.L163:
	cmp.w #128,%d3	|, _75
	jge .L153		|
	add.b %d3,%d3	| _75, iftmp.30_360
.L147:
| voxel.c:620: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:621: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L154		|
.L164:
	cmp.w #128,%d2	|, _404
	jge .L155		|
	add.b %d2,%d2	| _404, iftmp.30_295
| voxel.c:621: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:594: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
.L165:
| voxel.c:623: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:624: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:626: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:627: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L161:
| voxel.c:616: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L162		|
.L150:
	clr.b %d4	| iftmp.29_290
| voxel.c:619: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.29_290, MEM[(unsigned char *)p_252]
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L163		|
.L152:
	clr.b %d3	| iftmp.30_360
| voxel.c:620: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.30_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:621: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:574: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L164		|
.L154:
	clr.b %d2	| iftmp.30_295
| voxel.c:621: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:594: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L159:
| voxel.c:603: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:605: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:611: 		if (c_sky < 0) c_sky = 0;
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
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:569: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:543: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:615: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:616: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L145		|
	jra .L161		|
.L151:
| voxel.c:574: 	return val < 0 ? 0 : (
	st %d4		| iftmp.29_290
	jra .L146		|
.L155:
	st %d2		| iftmp.30_295
| voxel.c:621: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.30_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:594: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.454
	cmp.l %a0,%a4	|, tmp230
	jne .L149		|
	jra .L165		|
.L153:
| voxel.c:574: 	return val < 0 ? 0 : (
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
| voxel.c:631: 	printf("Loading colors.tga\n");
	pea .LC1		|
	move.l #_puts,%d6	|, tmp111
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:632: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a6	|, tmp107
	jsr (%a6)		| tmp107
	move.l %d0,%d3	| tmp117, file1
| voxel.c:633: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L188		|
| voxel.c:637: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:638: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L184		|
	lea _fclose,%a2	|, tmp105
.L169:
| voxel.c:692: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
.L179:
| voxel.c:694: 	return 0;
	moveq #0,%d0	| <retval>
.L166:
| voxel.c:695: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L184:
| voxel.c:640: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:640: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:641: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:642: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:644: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:645: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:648: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:647: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
	lea _putchar,%a3	|, tmp110
	moveq #72,%d2	|, tmp112
	add.l %sp,%d2	|, tmp112
	lea _fread,%a2	|, tmp109
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.w #8192,%a5	|, remaining
| voxel.c:652: 		fflush(stdout);
	lea _fflush,%a4	|, tmp116
.L170:
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,-(%sp)	| file1,
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L172		|
	move.l %a5,%d0	| remaining, remaining
.L172:
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%d7	| tmp118, n
| voxel.c:649: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L189		|
| voxel.c:650: 		remaining -= n;
	sub.l %d7,%d4	| n, remaining
| voxel.c:651: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:652: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp116
	move.l %d2,%a1	| tmp112, ivtmp.476
	move.l %d2,%d0	| tmp112, _93
	add.l %d7,%d0	| n, _93
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L171:
| voxel.c:654: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_91], MEM[(unsigned char *)p_79]
| voxel.c:655: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:653: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.476, _93
	jne .L171		|
	move.l %d7,%d1	| n, tmp76
	add.l %d7,%d1	| n, tmp76
	add.l %d1,%d5	| tmp76, p
	jra .L170		|
.L189:
| voxel.c:658: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:659: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a5	|, tmp104
	jsr (%a5)		| tmp104
| voxel.c:661: 	printf("Loading height.tga\n");
	pea .LC4		|
	move.l %d6,%a0	| tmp111,
	jsr (%a0)		|
| voxel.c:662: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a6)		| tmp107
	move.l %d0,%d6	| tmp119, file2
| voxel.c:663: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L190		|
| voxel.c:667: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:668: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L191		|
| voxel.c:669: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:670: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:671: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:674: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L175:
| voxel.c:671: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:671: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L177		|
	move.l %d7,%d0	| remaining, remaining
.L177:
| voxel.c:671: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp112,
	jsr (%a2)		| tmp109
	move.l %d0,%a6	| tmp120, n
| voxel.c:671: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L192		|
| voxel.c:672: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:673: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp110
| voxel.c:674: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp112, ivtmp.469
	move.l %d2,%d0	| tmp112, _74
	add.l %a6,%d0	| n, _74
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L176:
| voxel.c:678: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_76], _12
| voxel.c:678: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp91
	move.b %d1,(%a0)	| tmp91, MEM[(unsigned char *)p_81]
| voxel.c:679: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:675: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.469, _74
	jne .L176		|
	add.l %a6,%a6	| n, tmp92
	add.l %a6,%d5	| tmp92, p
	jra .L175		|
.L192:
| voxel.c:682: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp110
| voxel.c:683: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a5)		| tmp104
| voxel.c:685: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp99
	jsr (%a2)		| tmp99
| voxel.c:686: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp99
| voxel.c:687: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:695: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L188:
| voxel.c:634: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:635: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:694: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L166		|
.L190:
| voxel.c:664: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:665: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp105
	jra .L169		|
.L191:
| voxel.c:690: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp105
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
| voxel.c:692: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp105
	addq.l #4,%sp	|,
	jra .L179		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L195		|
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:699: }
	movem.l (%sp)+,#1036	|,
	rts	
.L195:
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:699: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:702: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L199:
#APP
| 702 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L199		|
| voxel.c:704: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L200:
#APP
| 704 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:704: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L200		|
| voxel.c:706: 	Bconin(_CON);
#APP
| 706 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: }
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
	lea (-160,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:711: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:713: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:716: 	Super(0L);
	moveq #0,%d0	| tmp637
#APP
| 716 "voxel.c" 1
	movl	%d0,%sp@-	| tmp637
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:718: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:720: 	lineaa();
	jsr _lineaa		|
| voxel.c:723: 	save_palette(saved_palette);
	pea 176(%sp)		|
	jsr _save_palette		|
| voxel.c:725: 	unsigned short *screen = Physbase();
#APP
| 725 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,68(%sp)	| tmp1062, %sfp
| voxel.c:727: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:729: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:729: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1063
	jeq .L400		|
| voxel.c:734: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:735: 	build_tables();
	jsr _build_tables		|
| voxel.c:736: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:737: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (170,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 174(%sp),%d6	| cockpit.pixels, cockpit$pixels
| voxel.c:738: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L208		|
| voxel.c:739: 	read_palette_vectors(cockpit.colors);
	move.l 166(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 64(%sp),%a0	| %sfp, ivtmp.713
	move.l %a0,%d0	| ivtmp.713, _1632
	add.l #32000,%d0	|, _1632
	addq.l #4,%sp	|,
.L209:
| voxel.c:147: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.526_1875]
	cmp.l %d0,%a0	| _1632, ivtmp.713
	jne .L209		|
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a5	|, tmp1036
	move.l (%a5),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.704
	lea _view_max,%a3	|, ivtmp.707
	move.l #_view_min+80,%d4	|, _1638
	clr.w %d3	| ivtmp.705
	move.l 60(%sp),%a1	| %sfp, _200
.L214:
| voxel.c:743: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_1646], _6
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.705, tmp653
	asr.w #4,%d5	|, tmp653
	ext.l %d5	| tmp654
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp654, tmp655
	add.l %d5,%d5	| tmp655, _292
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp658
	lsr.l #3,%d2	|, tmp658
	moveq #1,%d7	|,
	and.l %d7,%d2	|, _297
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _292, tmp659
	add.l %d5,%a0	| _292, tmp659
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _297, tmp660
	lea (%a1,%a0.l),%a0	| _200, tmp660, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L210		|
	mulu.w #160,%d1	|, tmp661
	add.l %a0,%d1	| pBlock, _245
.L211:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:511: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _245, pBlock
	jne .L211		|
.L210:
| voxel.c:744: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_1637], _10
| voxel.c:744: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:744: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp663
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp663,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp664
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _292, tmp666
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp666, tmp667
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp667, tmp668
	lea (%a1,%d2.l),%a0	| _200, tmp668, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L212		|
	mulu.w #160,%d1	|, tmp669
	add.l %a0,%d1	| pBlock, _1317
.L213:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:511: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1317
	jne .L213		|
.L212:
| voxel.c:742: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.705
	cmp.l %d4,%a2	| _1638, ivtmp.704
	jne .L214		|
| voxel.c:747: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:748: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:749: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:752: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 174(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d6,-(%sp)	| cockpit$pixels,
	move.l 84(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:756: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,182(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 134(%sp)	| %sfp
| voxel.c:761: 	int frames = 0;
	clr.l 126(%sp)	| %sfp
| voxel.c:759: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,124(%sp)	|, %sfp
| voxel.c:757: 	unsigned long t_render = 0;
	clr.l 130(%sp)	| %sfp
| voxel.c:754: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d7	|, fog_enabled
| voxel.c:774: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	lea _combined,%a4	|, tmp1057
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp678
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp678
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1064
	jeq .L319		|
.L405:
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp678
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp681
	ext.l %d0	| tmp681
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,145(%sp)	| tmp681, %sfp
| voxel.c:765: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L401		|
| voxel.c:770: 		frames++;
	move.l 126(%sp),%d4	| %sfp,
	addq.l #1,%d4	|,
	move.l %d4,146(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_314
	move.w (%a0),%d0	| *hw_palette.67_314, _315
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d6	| MEM <unsigned int> [(short int *)&pos], _319
| voxel.c:775: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _27
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp686
| voxel.c:774: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp688
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp690
| voxel.c:774: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp692
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp693
	add.l %d1,%d0	| tmp692, tmp694
	add.l %d0,%d0	| tmp694, tmp695
| voxel.c:775: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp699
	move.w %d3,%d4	| _27,
	sub.w %d0,%d4	| tmp699,
	move.w %d4,142(%sp)	|, %sfp
| voxel.c:776: 		if (desired_height >= 0) {
	tst.w 124(%sp)	| %sfp
	jlt .L402		|
.L217:
| voxel.c:777: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 124(%sp),%a0	| %sfp, desired_height
| voxel.c:777: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 124(%sp),%d0	| %sfp, tmp708
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp708
| voxel.c:777: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp708,
	move.l %a1,-(%sp)	|,
	sub.w 146(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:779: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L219		|
	move.w #-256,%d0	|, altitude_delta
.L220:
| voxel.c:780: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _27, _37
| voxel.c:781: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jgt .L221		|
.L423:
| voxel.c:780: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, tmp716
| voxel.c:411: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp717
	sub.w %d0,%a0	| tmp716, tmp717
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp717, tmp718
	add.l %a0,%a0	| tmp718, tmp718
	move.l %a0,120(%sp)	| tmp718, %sfp
	move.l %a0,%d2	| tmp718,
	move.l %a0,%d4	| tmp718,
	move.l %a0,%d5	| tmp718,
.L218:
| voxel.c:784: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_39
	move.w -602(%a0),140(%sp)	| MEM[(short int *)__aline.50_39 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:787: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,150(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 134(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,46(%sp)	| _42, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_39 + 4294966696B],
	move.l %a0,136(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp722
	add.l %a0,%d0	|, tmp722
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp722
	move.l %d0,84(%sp)	| tmp722, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 140(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp724
	add.l #-160,%d0	|, tmp724
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,76(%sp)	| pos.diry, %sfp
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d2	|,
	move.l %d2,116(%sp)	|, %sfp
	add.l #_y_table+16384,%d4	|,
	move.l %d4,112(%sp)	|, %sfp
	add.l #_y_table+24576,%d5	|,
	move.l %d5,108(%sp)	|, %sfp
	move.l 120(%sp),%d1	| %sfp,
	add.l #_y_table+32768,%d1	|,
	move.l %d1,104(%sp)	|, %sfp
	move.l 120(%sp),%d2	| %sfp,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,100(%sp)	|, %sfp
	move.l 120(%sp),%d4	| %sfp,
	add.l #_y_table+49152,%d4	|,
	move.l %d4,96(%sp)	|, %sfp
	move.l 120(%sp),%d5	| %sfp,
	add.l #_y_table+57344,%d5	|,
	move.l %d5,92(%sp)	|, %sfp
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d5	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _48,
	lsl.l #4,%d1	|,
	move.l %d1,88(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,64(%sp)	| tmp1067, %sfp
	add.l %d2,%d2	| x, tmp734
	add.l #_horizon,%d2	|, tmp734
	move.l %d2,52(%sp)	| tmp734, %sfp
	move.l %d6,80(%sp)	| sample_uv, %sfp
.L295:
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w 46(%sp),%d0	| %sfp, _56
	add.w #-160,%d0	|, _56
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 76(%sp),%d1	| %sfp,
	muls.w %d0,%d1	| _56, tmp735
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d1	|, tmp736
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 78(%sp),%d3	| %sfp, tmp737
	sub.w %d1,%d3	| tmp736, tmp737
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp739
	clr.w %d3	| tmp739
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 78(%sp),%d0	| %sfp, tmp740
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d0	|, tmp741
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 76(%sp),%d0	| %sfp, tmp742
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d3	| tmp742, tmp744
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _325
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.l 80(%sp),%d2	| %sfp, tmp745
	add.l %d3,%d2	| _325, tmp745
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp746
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp747
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp748
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp749
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp750
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp751
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:812: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 46(%sp),%d0	| %sfp, tmp752
	lsr.w #3,%d0	|, tmp752
	and.l #65535,%d0	|,
	move.l %d0,%a3	|, _71
| voxel.c:812: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d0,%a3	| _71, tmp754
	lea _view_max,%a1	|,
	move.w (%a1,%a3.l),%d6	| view_max[_71], _1856
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp, tmp755
	asr.w #4,%d0	|, tmp755
	ext.l %d0	| tmp756
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp756, tmp757
	add.l %d0,%d0	| tmp757, tmp757
	move.l %d0,68(%sp)	| tmp757, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp760
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp760,
	move.l %d1,72(%sp)	|, %sfp
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d6,%d0	| _1856,
	muls.w #80,%d0	|, tmp761
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp763
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp763, tmp764
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	|, tmp765
	move.l 60(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp765, pBlock
| voxel.c:811: 				.y = view_max[x >> 3] - y_offset,
	move.w %d6,%d4	| _1856, _1852
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 68(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 84(%sp),%d0	| %sfp, tmp1068
	move.l %d0,56(%sp)	| tmp1068, %sfp
| voxel.c:811: 				.y = view_max[x >> 3] - y_offset,
	move.w %d6,%d0	| _1856, y
	sub.w 58(%sp),%d0	| %sfp, y
| voxel.c:816: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a1	|,
	move.w (%a1,%a3.l),%a0	| view_min[_71], y_min
	sub.w 58(%sp),%a0	| %sfp, y_min
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L291		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 116(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-12,%d6	|, z
.L230:
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
	move.w (%a4,%d1.l),%d4	| *_904, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.523
	move.b %d4,%d1	| sample, SR.523
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_908, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jgt .L223		|
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L224		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp779
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_650, _1788
.L228:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1788, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L228		|
.L229:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp784
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jeq .L227		|
.L406:
	cmp.w %a0,%d0	| y_min, y
	jge .L230		|
.L280:
| voxel.c:831: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1852
	add.w 58(%sp),%d4	| %sfp, _1852
	move.w %d4,%d6	| _1852, _1856
.L291:
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 52(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1877], _398
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d4	| _398, _399
| voxel.c:517: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp872
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp873
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp875
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp875, tmp876
| voxel.c:338: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 72(%sp),%d0	| %sfp, tmp877
	move.l 60(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp877, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _399
	jle .L293		|
	mulu.w #160,%d4	|, tmp878
	add.l %a0,%d4	| pBlock, _1769
.L294:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d5, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:511: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:509: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d4	| pBlock, _1769
	jne .L294		|
.L293:
| voxel.c:518: 	horizon[x] = y;
	move.l 52(%sp),%a1	| %sfp,
	move.w %d6,(%a1)	| _1856, MEM[(short int *)_1877]
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 88(%sp),%d1	| %sfp,
	add.l %d1,64(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,52(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L295		|
| voxel.c:835: 		unsigned long t_render_1 = *_hz_200;
	move.l 80(%sp),%d6	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:836: 		t_render += t_render_1 - t_render_0;
	sub.l 150(%sp),%d0	| %sfp, tmp881
| voxel.c:836: 		t_render += t_render_1 - t_render_0;
	add.l %d0,130(%sp)	| tmp881, %sfp
| voxel.c:474: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 120(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:479: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:477: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:480: 	unsigned short z = 0;
	clr.w %d1	| z
.L298:
	move.l %d6,%d0	| sample_uv, uv
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d6	| delta_uv, tmp882
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:491: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d4	| z, z
| voxel.c:490: 		z++;
	addq.w #1,%d1	|, z
| voxel.c:482: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L296		|
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
	move.w (%a4,%d0.l),%d0	| *_970, sample
| voxel.c:485: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d0	|, SR.524
| voxel.c:485: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.524, tmp887
| voxel.c:486: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| (*y_table_shifted_1319)[_972], (*y_table_shifted_1319)[_972]
	cmp.w %d5,%d0	| min_y, (*y_table_shifted_1319)[_972]
	jge .L297		|
	move.w %d0,%d5	| (*y_table_shifted_1319)[_972], min_y
.L297:
| voxel.c:494: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp889
	and.w #15,%d0	|, tmp889
	jne .L296		|
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp890
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp891
| voxel.c:373: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L296:
| voxel.c:481: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L298		|
| voxel.c:842: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L323		|
	move.w #128,%a0	|, _1878
| voxel.c:844: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L299		|
| voxel.c:847: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp892
	add.w %d5,%d5	| tmp892, tmp893
	add.w %d5,%d5	| tmp893, sunlight
| voxel.c:850: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _1878
.L299:
	move.l %a0,-(%sp)	| _1878,
	move.l 130(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _97
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _98
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _98,
	muls.w %d3,%d0	| _97, tmp899
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp900
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp900, pos.x
| voxel.c:853: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _104
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _104,
	muls.w %d3,%d0	| _97, tmp903
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp904
| voxel.c:853: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _109
	add.w %d0,%a0	| tmp904, _109
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp906
	sub.l 144(%sp),%d0	| %sfp, tmp906
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp907
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _97, _115
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _115, tmp908
	asr.w #3,%d3	|, tmp908
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _115, tmp909
	asr.w #4,%d4	|, tmp909
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp909, tmp910
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _122
| voxel.c:857: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _115
	jle .L300		|
.L424:
| voxel.c:857: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _122, _125
.L301:
| voxel.c:853: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _109, pos.y
| voxel.c:857: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _125, pos.speed
| voxel.c:859: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 140(%sp),%d3	| %sfp, rot
| voxel.c:860: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _104, tmp913
| voxel.c:860: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp914
| voxel.c:860: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _98, _137
| voxel.c:861: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d3	| _137, tmp915
| voxel.c:861: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d3	|, tmp916
| voxel.c:861: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d3,%d1	| tmp916, _144
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _137,
	muls.w %d0,%d2	| _137, tmp917
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp918
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _144,
	muls.w %d1,%d3	| _144, tmp919
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp920
| voxel.c:864: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, tmp921
	add.w %d3,%a0	| tmp920, tmp921
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp921, tmp922
	moveq #-128,%d3	|, tmp923
	add.l %a0,%d3	| tmp922, tmp923
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp924
| voxel.c:171: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _370
	sub.w %d3,%d2	| tmp924, _370
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _370, tmp927
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp928
| voxel.c:865: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp926
	clr.w %d0	| tmp926
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _144, tmp933
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp934
| voxel.c:865: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| tmp934, tmp926
	move.l %d0,_pos+6	| tmp926, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:868: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:868: 		if (pressed_keys.up) {
	jpl .L302		|
| voxel.c:869: 			if (desired_height < FIXP(0, 0)) {
	tst.w 124(%sp)	| %sfp
	jlt .L325		|
| voxel.c:872: 			desired_height += FIXP(1, 0);
	move.w 124(%sp),%d0	| %sfp, _1880
.L303:
	add.w #128,%d0	|, _1880
	move.w %d0,124(%sp)	| _1880, %sfp
| voxel.c:873: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L302		|
	move.w #32512,124(%sp)	|, %sfp
.L302:
| voxel.c:877: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:877: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L305		|
| voxel.c:878: 			if (desired_height < FIXP(0, 0)) {
	tst.w 124(%sp)	| %sfp
	jlt .L306		|
| voxel.c:881: 			desired_height -= FIXP(1, 0);
	move.w 124(%sp),142(%sp)	| %sfp, %sfp
.L306:
| voxel.c:886: 		if (key == 0x23) {
	cmp.b #35,145(%sp)	|, %sfp
	jeq .L326		|
| voxel.c:881: 			desired_height -= FIXP(1, 0);
	move.w 142(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,124(%sp)	|, %sfp
| voxel.c:882: 			if (desired_height < FIXP(0, 0)) {
	jmi .L403		|
.L309:
| voxel.c:893: 		} else if (key == 0x20) {
	cmp.b #32,145(%sp)	|, %sfp
	jeq .L404		|
.L307:
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp946
	and.w #8192,%d0	|, _1599
| voxel.c:200: 	data &= mask;
	move.l 60(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B], tmp947
	and.l #-536879105,%d3	|, tmp947
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1599
	move.w %d0,%d1	| _1599, _1599
| voxel.c:200: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201], tmp952
	and.l #-536879105,%d4	|, tmp952
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1599
	swap %d2	| _1599
	clr.w %d2	| _1599
	move.w %d0,%d2	| _1599, _1599
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1599, tmp952
	move.l %d4,(%a3)	| tmp952, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201]
	or.l %d1,%d3	| _1599, tmp947
	move.l %d3,4(%a3)	| tmp947, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B]
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp960
	and.b #1,%d0	|, _156
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp963
	ext.w %d0	| tmp962
	neg.w %d0	| tmp964
	lsl.w %d1,%d0	|, _1517
| voxel.c:200: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B], tmp965
	and.l #-536879105,%d3	|, tmp965
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1517
	move.w %d0,%d1	| _1517, _1517
| voxel.c:200: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B], tmp970
	and.l #-536879105,%d4	|, tmp970
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1517
	swap %d2	| _1517
	clr.w %d2	| _1517
	move.w %d0,%d2	| _1517, _1517
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1517, tmp970
	move.l %d4,640(%a3)	| tmp970, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B]
	or.l %d1,%d3	| _1517, tmp965
	move.l %d3,644(%a3)	| tmp965, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp978
	and.b #1,%d1	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp981
	ext.w %d1	| tmp980
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1732
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp984
	and.b #1,%d0	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp987
	ext.w %d0	| tmp986
	neg.w %d0	| tmp988
	moveq #11,%d2	|,
	lsl.w %d2,%d0	|, _240
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_201 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1732, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_201 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1732, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_201 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1732, data
| voxel.c:904: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp993
	not.w %d1	| tmp993
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp992
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1714
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _240, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1714, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_201 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _240, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1714, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_201 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_201 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1714, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_201 + 326B]
	addq.w #8,134(%sp)	|, %sfp
| voxel.c:770: 		frames++;
	move.l 146(%sp),126(%sp)	| %sfp, %sfp
.L414:
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp678
#APP
| 698 "voxel.c" 1
	movw	%d3,%sp@-	| tmp678
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:698: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1064
	jne .L405		|
.L319:
	clr.b 145(%sp)	| %sfp
| voxel.c:770: 		frames++;
	move.l 126(%sp),%d4	| %sfp,
	addq.l #1,%d4	|,
	move.l %d4,146(%sp)	|, %sfp
| voxel.c:113: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.67_314
	move.w (%a0),%d0	| *hw_palette.67_314, _315
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d6	| MEM <unsigned int> [(short int *)&pos], _319
| voxel.c:775: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _27
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp686
| voxel.c:774: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp688
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp690
| voxel.c:774: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp692
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp693
	add.l %d1,%d0	| tmp692, tmp694
	add.l %d0,%d0	| tmp694, tmp695
| voxel.c:775: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp699
	move.w %d3,%d4	| _27,
	sub.w %d0,%d4	| tmp699,
	move.w %d4,142(%sp)	|, %sfp
| voxel.c:776: 		if (desired_height >= 0) {
	tst.w 124(%sp)	| %sfp
	jge .L217		|
.L402:
| voxel.c:155: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, tmp700
| voxel.c:411: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp701
	sub.w %d3,%a0	| tmp700, tmp701
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp717, tmp718
	add.l %a0,%a0	| tmp718, tmp718
	move.l %a0,120(%sp)	| tmp718, %sfp
	move.l %a0,%d2	| tmp718,
	move.l %a0,%d4	| tmp718,
	move.l %a0,%d5	| tmp718,
	jra .L218		|
.L401:
| voxel.c:910: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:911: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 154(%sp),%a0	| %sfp, tmp999
| voxel.c:911: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp999, tmp1001
	add.l %a0,%d0	| tmp999, tmp1001
	add.l %d0,%d0	| tmp1001, tmp1002
| voxel.c:912: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp1007
	move.l 126(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp1007
| voxel.c:913: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1069,
	pea .LC11		|
	lea _printf,%a2	|, tmp1009
	jsr (%a2)		| tmp1009
| voxel.c:914: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 138(%sp),%d0	| %sfp, tmp1011
	add.l %d0,%d0	|, tmp1011
	add.l %d0,%d0	| tmp1011, tmp1012
| voxel.c:914: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 134(%sp),-(%sp)	| %sfp,
	move.l 142(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp1007
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1070,
	pea .LC12		|
	jsr (%a2)		| tmp1009
| voxel.c:915: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:916: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L208:
| voxel.c:919: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:920: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:921: 	install_palette(saved_palette);
	pea 176(%sp)		|
	jsr _install_palette		|
| voxel.c:923: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (160,%sp),%sp	|,
	rts	
.L223:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp784
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jne .L406		|
.L227:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _325, tmp785
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _333
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 112(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d6	|, z
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
	move.w (%a4,%d1.l),%d4	| *_828, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.521
	move.b %d4,%d1	| sample, SR.521
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_832, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jgt .L233		|
.L407:
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L234		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp791
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_496, _1802
.L238:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1802, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L238		|
.L239:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp796
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jeq .L237		|
.L408:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
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
	move.w (%a4,%d1.l),%d4	| *_828, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.521
	move.b %d4,%d1	| sample, SR.521
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_832, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L407		|
.L233:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp796
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jne .L408		|
.L237:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 108(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d6	|, z
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
	move.w (%a4,%d1.l),%d4	| *_752, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.519
	move.b %d4,%d1	| sample, SR.519
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_756, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jlt .L241		|
.L409:
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L242		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp802
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_1805, _1675
.L246:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1675, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L246		|
.L247:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp807
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jeq .L245		|
.L410:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
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
	move.w (%a4,%d1.l),%d4	| *_752, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.519
	move.b %d4,%d1	| sample, SR.519
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_756, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L409		|
.L241:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp807
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jne .L410		|
.L245:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _333, tmp808
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _331
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 104(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d6	|, z
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
	move.w (%a4,%d1.l),%d4	| *_676, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.517
	move.b %d4,%d1	| sample, SR.517
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_680, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jlt .L250		|
.L411:
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L251		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp814
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_184, _1687
.L255:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1687, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L255		|
.L256:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _331, tmp819
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jeq .L254		|
.L412:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
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
	move.w (%a4,%d1.l),%d4	| *_676, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d1	| SR.517
	move.b %d4,%d1	| sample, SR.517
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d1.l),%d1	| *_680, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L411		|
.L250:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d6	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _331, tmp819
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d6	| z
	jne .L412		|
.L254:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 100(%sp),%a6	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	move.l #_fog_table+40,%d6	|, fog_table_shifted
	move.l %d5,48(%sp)	| movep_data, %sfp
	move.l %d6,%d1	| fog_table_shifted, fog_table_shifted
	move.w %a0,%d6	| y_min, y_min
	move.l %d1,%a0	| fog_table_shifted, fog_table_shifted
.L268:
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
	move.w (%a4,%d1.l),%d1	| *_600, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.515
	move.b %d1,%d5	| sample, SR.515
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a6,%d5.l),%a1	| *_604, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L259		|
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a1,%d6	| sample_y, y_min
	jgt .L260		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _1871
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L262		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _1871
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_316, _7
.L265:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _7, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L265		|
.L266:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a6),%a6	|, y_table_shifted
| voxel.c:453: 		fog_table_shifted++;
	addq.l #1,%a0	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _331, tmp836
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L386		|
.L418:
	cmp.w %d6,%d0	| y_min, y
	jge .L268		|
.L390:
	move.l 48(%sp),%d5	| %sfp, movep_data
| voxel.c:831: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1852
	add.w 58(%sp),%d4	| %sfp, _1852
	move.w %d4,%d6	| _1852, _1856
	jra .L291		|
.L224:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp782
	add.l #_pdata_table,%d4	|, _914
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L413		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a3	| _914,
	move.l (%a3),%d4	| *_914, _1788
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d6	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1788, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L228		|
	jra .L229		|
.L404:
	eor.b #1,%d7	|, fog_enabled
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp946
	and.w #8192,%d0	|, _1599
| voxel.c:200: 	data &= mask;
	move.l 60(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B], tmp947
	and.l #-536879105,%d3	|, tmp947
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1599
	move.w %d0,%d1	| _1599, _1599
| voxel.c:200: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201], tmp952
	and.l #-536879105,%d4	|, tmp952
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1599
	swap %d2	| _1599
	clr.w %d2	| _1599
	move.w %d0,%d2	| _1599, _1599
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1599, tmp952
	move.l %d4,(%a3)	| tmp952, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201]
	or.l %d1,%d3	| _1599, tmp947
	move.l %d3,4(%a3)	| tmp947, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B]
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp960
	and.b #1,%d0	|, _156
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp963
	ext.w %d0	| tmp962
	neg.w %d0	| tmp964
	lsl.w %d1,%d0	|, _1517
| voxel.c:200: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B], tmp965
	and.l #-536879105,%d3	|, tmp965
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1517
	move.w %d0,%d1	| _1517, _1517
| voxel.c:200: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B], tmp970
	and.l #-536879105,%d4	|, tmp970
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1517
	swap %d2	| _1517
	clr.w %d2	| _1517
	move.w %d0,%d2	| _1517, _1517
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1517, tmp970
	move.l %d4,640(%a3)	| tmp970, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B]
	or.l %d1,%d3	| _1517, tmp965
	move.l %d3,644(%a3)	| tmp965, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp978
	and.b #1,%d1	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp981
	ext.w %d1	| tmp980
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1732
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp984
	and.b #1,%d0	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp987
	ext.w %d0	| tmp986
	neg.w %d0	| tmp988
	moveq #11,%d2	|,
	lsl.w %d2,%d0	|, _240
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_201 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1732, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_201 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1732, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_201 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1732, data
| voxel.c:904: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp993
	not.w %d1	| tmp993
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp992
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1714
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _240, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1714, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_201 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _240, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1714, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_201 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_201 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1714, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_201 + 326B]
	addq.w #8,134(%sp)	|, %sfp
| voxel.c:770: 		frames++;
	move.l 146(%sp),126(%sp)	| %sfp, %sfp
	jra .L414		|
.L403:
| voxel.c:882: 			if (desired_height < FIXP(0, 0)) {
	clr.w 124(%sp)	| %sfp
| voxel.c:893: 		} else if (key == 0x20) {
	cmp.b #32,145(%sp)	|, %sfp
	jne .L307		|
	jra .L404		|
.L234:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp794
	add.l #_pdata_table,%d4	|, _838
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L415		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a3	| _838,
	move.l (%a3),%d4	| *_838, _1802
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d6	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1802, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L238		|
	jra .L239		|
.L242:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp805
	add.l #_pdata_table,%d4	|, _762
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L416		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a3	| _762,
	move.l (%a3),%d4	| *_762, _1675
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d6	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1675, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L246		|
	jra .L247		|
.L251:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp817
	add.l #_pdata_table,%d4	|, _686
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L417		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a3	| _686,
	move.l (%a3),%d4	| *_686, _1687
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d6	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d4, 0(%a2)	| _1687, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L255		|
	jra .L256		|
.L259:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a6),%a6	|, y_table_shifted
| voxel.c:453: 		fog_table_shifted++;
	addq.l #1,%a0	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _331, tmp836
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L418		|
.L386:
	move.w %d6,%a0	| y_min, y_min
	move.l 48(%sp),%d5	| %sfp, movep_data
.L264:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _331, tmp837
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _329
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 96(%sp),%a6	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	move.l #_fog_table+48,%d6	|, fog_table_shifted
	move.l %d5,48(%sp)	| movep_data, %sfp
	move.l %d6,%d1	| fog_table_shifted, fog_table_shifted
	move.w %a0,%d6	| y_min, y_min
	move.l %d1,%a0	| fog_table_shifted, fog_table_shifted
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
	move.w (%a4,%d1.l),%d1	| *_523, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.513
	move.b %d1,%d5	| sample, SR.513
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a6,%d5.l),%a1	| *_527, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L270		|
.L419:
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a1,%d6	| sample_y, y_min
	jgt .L271		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _919
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L273		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _919
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_1834, _1835
.L276:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1835, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L276		|
.L277:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a6),%a6	|, y_table_shifted
| voxel.c:453: 		fog_table_shifted++;
	addq.l #1,%a0	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _329, tmp854
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L387		|
.L420:
	cmp.w %d6,%d0	| y_min, y
	jlt .L390		|
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
	move.w (%a4,%d1.l),%d1	| *_523, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.513
	move.b %d1,%d5	| sample, SR.513
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a6,%d5.l),%a1	| *_527, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L419		|
.L270:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a6),%a6	|, y_table_shifted
| voxel.c:453: 		fog_table_shifted++;
	addq.l #1,%a0	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _329, tmp854
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L420		|
.L387:
	move.w %d6,%a0	| y_min, y_min
	move.l 48(%sp),%d5	| %sfp, movep_data
.L275:
	cmp.w %a0,%d0	| y_min, y
	jlt .L280		|
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 92(%sp),%a6	| %sfp, y_table_shifted
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:415: 	unsigned char *fog_table_shifted = fog_table + z_begin;
	move.l #_fog_table+56,%d6	|, fog_table_shifted
	move.l %d5,48(%sp)	| movep_data, %sfp
	move.l %d6,%d1	| fog_table_shifted, fog_table_shifted
	move.w %a0,%d6	| y_min, y_min
	move.l %d1,%a0	| fog_table_shifted, fog_table_shifted
.L292:
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
	move.w (%a4,%d1.l),%d1	| *_446, sample
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d5	| SR.511
	move.b %d1,%d5	| sample, SR.511
| voxel.c:420: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a6,%d5.l),%a1	| *_450, sample_y
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L281		|
| voxel.c:423: 			if (sample_y < y_min) {
	cmp.w %a1,%d6	| sample_y, y_min
	jgt .L282		|
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _843
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jeq .L283		|
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a0),%d5	| MEM[(unsigned char *)fog_table_shifted_1122],
	move.w %d5,%a3	|, opacity_preshifted
	add.w %d1,%a3	| _843, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _471
	move.w %a3,%d1	| offset, _471
	move.l %d1,%a3	| _471, tmp1040
	add.l #_pdata_table,%a3	|, tmp1040
.L289:
| voxel.c:443: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp864
	and.l %d0,%d1	| y, tmp864
	add.l %d1,%d1	| tmp864, tmp865
	add.l %d1,%d1	| tmp865, tmp866
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_477, *_477
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_477, pBlock
| 0 "" 2
| voxel.c:445: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:446: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L289		|
.L286:
| voxel.c:452: 		y_table_shifted++;
	lea (1024,%a6),%a6	|, y_table_shifted
| voxel.c:453: 		fog_table_shifted++;
	addq.l #1,%a0	|, fog_table_shifted
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _329, tmp871
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L389		|
	cmp.w %d6,%d0	| y_min, y
	jge .L292		|
.L389:
| voxel.c:831: 			state.y += y_offset;
	move.l 48(%sp),%d5	| %sfp, movep_data
	move.w %d0,%d4	| y, _1852
	add.w 58(%sp),%d4	| %sfp, _1852
	move.w %d4,%d6	| _1852, _1856
	jra .L291		|
.L260:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _1871
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L321		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _1871
	add.l #_pdata_table,%d1	|, _610
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d6,%d0	| y_min, y
	jlt .L421		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a1	| _610,
	move.l (%a1),%d1	| *_610, _7
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _7, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L265		|
	jra .L266		|
.L321:
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
.L262:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a0),%d5	| MEM[(unsigned char *)fog_table_shifted_1151],
	move.w %d5,%a3	|, opacity_preshifted
	add.w %d1,%a3	| _1871, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _625
	move.w %a3,%d1	| offset, _625
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L266		|
	move.l %d1,%a3	| _625, tmp1044
	add.l #_pdata_table,%a3	|, tmp1044
.L267:
| voxel.c:443: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp829
	and.l %d0,%d1	| y, tmp829
	add.l %d1,%d1	| tmp829, tmp830
	add.l %d1,%d1	| tmp830, tmp831
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_631, *_631
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_631, pBlock
| 0 "" 2
| voxel.c:445: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:446: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L266		|
| voxel.c:443: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp829
	and.l %d0,%d1	| y, tmp829
	add.l %d1,%d1	| tmp829, tmp830
	add.l %d1,%d1	| tmp830, tmp831
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_631, *_631
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_631, pBlock
| 0 "" 2
| voxel.c:445: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:446: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L267		|
	jra .L266		|
.L416:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp806
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L245		|
.L417:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _331, tmp818
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L254		|
.L415:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _333, tmp795
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L237		|
.L413:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _325, tmp783
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L227		|
.L421:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.w %d6,%a0	| y_min, y_min
	move.l 48(%sp),%d5	| %sfp, movep_data
	add.l %d3,%d2	| _331, tmp825
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L264		|
.L322:
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
.L273:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d5	|
	move.b (%a0),%d5	| MEM[(unsigned char *)fog_table_shifted_990],
	move.w %d5,%a3	|, opacity_preshifted
	add.w %d1,%a3	| _919, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _548
	move.w %a3,%d1	| offset, _548
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L277		|
	move.l %d1,%a3	| _548, tmp1042
	add.l #_pdata_table,%a3	|, tmp1042
.L278:
| voxel.c:443: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp847
	and.l %d0,%d1	| y, tmp847
	add.l %d1,%d1	| tmp847, tmp848
	add.l %d1,%d1	| tmp848, tmp849
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_554, *_554
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_554, pBlock
| 0 "" 2
| voxel.c:445: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:446: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L277		|
| voxel.c:443: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp847
	and.l %d0,%d1	| y, tmp847
	add.l %d1,%d1	| tmp847, tmp848
	add.l %d1,%d1	| tmp848, tmp849
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_554, *_554
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_554, pBlock
| 0 "" 2
| voxel.c:445: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:446: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L278		|
	jra .L277		|
.L271:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _919
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L322		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _919
	add.l #_pdata_table,%d1	|, _533
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %d6,%d0	| y_min, y
	jlt .L422		|
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a1	| _533,
	move.l (%a1),%d1	| *_533, _1835
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1835, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L276		|
	jra .L277		|
.L422:
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	move.w %d6,%a0	| y_min, y_min
	move.l 48(%sp),%d5	| %sfp, movep_data
	add.l %d3,%d2	| _329, tmp843
| voxel.c:179: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
	jra .L275		|
.L281:
| voxel.c:418: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L286		|
.L282:
| voxel.c:377: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, _843
| voxel.c:429: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L285		|
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
.L283:
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _843
| voxel.c:378: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_456, _457
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L286		|
.L287:
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _457, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L286		|
| voxel.c:343: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _457, pBlock
| 0 "" 2
| voxel.c:435: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:436: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:433: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L287		|
	jra .L286		|
.L285:
| voxel.c:382: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d4	| opacity_preshifted
	move.b (%a0),%d4	| MEM[(unsigned char *)fog_table_shifted_1122], opacity_preshifted
	move.w %d4,%a3	| opacity_preshifted, offset
	add.w %d1,%a3	| _843, offset
| voxel.c:383: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _471
	move.w %a3,%d1	| offset, _471
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d6,%d0	| y_min, y
	jlt .L389		|
	move.w %d6,%a1	| y_min, sample_y
	clr.w %d4	| z
	move.l %d1,%a3	| _471, tmp1040
	add.l #_pdata_table,%a3	|, tmp1040
	jra .L289		|
.L219:
| voxel.c:780: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L220		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _27, _37
| voxel.c:781: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jle .L423		|
.L221:
| voxel.c:781: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,120(%sp)	|, %sfp
	move.l %d1,%d2	|,
	move.l %d1,%d4	|,
	move.l %d1,%d5	|,
| voxel.c:784: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.50_39
	move.w -602(%a0),140(%sp)	| MEM[(short int *)__aline.50_39 + 4294966694B], %sfp
| voxel.c:175: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:787: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,150(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 134(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,46(%sp)	| _42, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.50_39 + 4294966696B],
	move.l %a0,136(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp722
	add.l %a0,%d0	|, tmp722
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp722
	move.l %d0,84(%sp)	| tmp722, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 140(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp724
	add.l #-160,%d0	|, tmp724
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,76(%sp)	| pos.diry, %sfp
| voxel.c:803: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:412: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d2	|,
	move.l %d2,116(%sp)	|, %sfp
	add.l #_y_table+16384,%d4	|,
	move.l %d4,112(%sp)	|, %sfp
	add.l #_y_table+24576,%d5	|,
	move.l %d5,108(%sp)	|, %sfp
	move.l 120(%sp),%d1	| %sfp,
	add.l #_y_table+32768,%d1	|,
	move.l %d1,104(%sp)	|, %sfp
	move.l 120(%sp),%d2	| %sfp,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,100(%sp)	|, %sfp
	move.l 120(%sp),%d4	| %sfp,
	add.l #_y_table+49152,%d4	|,
	move.l %d4,96(%sp)	|, %sfp
	move.l 120(%sp),%d5	| %sfp,
	add.l #_y_table+57344,%d5	|,
	move.l %d5,92(%sp)	|, %sfp
| voxel.c:508: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d5	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _48,
	lsl.l #4,%d1	|,
	move.l %d1,88(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,64(%sp)	| tmp1067, %sfp
	add.l %d2,%d2	| x, tmp734
	add.l #_horizon,%d2	|, tmp734
	move.l %d2,52(%sp)	| tmp734, %sfp
	move.l %d6,80(%sp)	| sample_uv, %sfp
	jra .L295		|
.L323:
	sub.l %a0,%a0	| _1878
| voxel.c:850: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1878,
	move.l 130(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _97
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _98
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _98,
	muls.w %d3,%d0	| _97, tmp899
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp900
| voxel.c:852: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp900, pos.x
| voxel.c:853: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _104
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _104,
	muls.w %d3,%d0	| _97, tmp903
| voxel.c:163: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp904
| voxel.c:853: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _109
	add.w %d0,%a0	| tmp904, _109
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp906
	sub.l 144(%sp),%d0	| %sfp, tmp906
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp907
| voxel.c:855: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _97, _115
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _115, tmp908
	asr.w #3,%d3	|, tmp908
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _115, tmp909
	asr.w #4,%d4	|, tmp909
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp909, tmp910
| voxel.c:856: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _122
| voxel.c:857: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _115
	jgt .L424		|
.L300:
| voxel.c:858: 		else pos.speed += drag;
	add.w %d3,%d0	| _122, _125
	jra .L301		|
.L305:
| voxel.c:886: 		if (key == 0x23) {
	cmp.b #35,145(%sp)	|, %sfp
	jne .L309		|
| voxel.c:888: 			if (desired_height < 0) {
	tst.w 124(%sp)	| %sfp
	jge .L326		|
| voxel.c:889: 				desired_height = player_height;
	move.w 142(%sp),124(%sp)	| %sfp, %sfp
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp946
	and.w #8192,%d0	|, _1599
| voxel.c:200: 	data &= mask;
	move.l 60(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B], tmp947
	and.l #-536879105,%d3	|, tmp947
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1599
	move.w %d0,%d1	| _1599, _1599
| voxel.c:200: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201], tmp952
	and.l #-536879105,%d4	|, tmp952
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1599
	swap %d2	| _1599
	clr.w %d2	| _1599
	move.w %d0,%d2	| _1599, _1599
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1599, tmp952
	move.l %d4,(%a3)	| tmp952, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201]
	or.l %d1,%d3	| _1599, tmp947
	move.l %d3,4(%a3)	| tmp947, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B]
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp960
	and.b #1,%d0	|, _156
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp963
	ext.w %d0	| tmp962
	neg.w %d0	| tmp964
	lsl.w %d1,%d0	|, _1517
| voxel.c:200: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B], tmp965
	and.l #-536879105,%d3	|, tmp965
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1517
	move.w %d0,%d1	| _1517, _1517
| voxel.c:200: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B], tmp970
	and.l #-536879105,%d4	|, tmp970
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1517
	swap %d2	| _1517
	clr.w %d2	| _1517
	move.w %d0,%d2	| _1517, _1517
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1517, tmp970
	move.l %d4,640(%a3)	| tmp970, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B]
	or.l %d1,%d3	| _1517, tmp965
	move.l %d3,644(%a3)	| tmp965, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp978
	and.b #1,%d1	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp981
	ext.w %d1	| tmp980
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1732
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp984
	and.b #1,%d0	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp987
	ext.w %d0	| tmp986
	neg.w %d0	| tmp988
	moveq #11,%d2	|,
	lsl.w %d2,%d0	|, _240
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_201 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1732, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_201 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1732, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_201 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1732, data
| voxel.c:904: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp993
	not.w %d1	| tmp993
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp992
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1714
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _240, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1714, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_201 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _240, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1714, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_201 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_201 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1714, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_201 + 326B]
	addq.w #8,134(%sp)	|, %sfp
| voxel.c:770: 		frames++;
	move.l 146(%sp),126(%sp)	| %sfp, %sfp
	jra .L414		|
.L326:
| voxel.c:891: 				desired_height = -1;
	move.w #-1,124(%sp)	|, %sfp
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:900: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp946
	and.w #8192,%d0	|, _1599
| voxel.c:200: 	data &= mask;
	move.l 60(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B], tmp947
	and.l #-536879105,%d3	|, tmp947
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1599
	move.w %d0,%d1	| _1599, _1599
| voxel.c:200: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201], tmp952
	and.l #-536879105,%d4	|, tmp952
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1599
	swap %d2	| _1599
	clr.w %d2	| _1599
	move.w %d0,%d2	| _1599, _1599
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1599, tmp952
	move.l %d4,(%a3)	| tmp952, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201]
	or.l %d1,%d3	| _1599, tmp947
	move.l %d3,4(%a3)	| tmp947, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 4B]
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp960
	and.b #1,%d0	|, _156
| voxel.c:901: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp963
	ext.w %d0	| tmp962
	neg.w %d0	| tmp964
	lsl.w %d1,%d0	|, _1517
| voxel.c:200: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B], tmp965
	and.l #-536879105,%d3	|, tmp965
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1517
	move.w %d0,%d1	| _1517, _1517
| voxel.c:200: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B], tmp970
	and.l #-536879105,%d4	|, tmp970
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1517
	swap %d2	| _1517
	clr.w %d2	| _1517
	move.w %d0,%d2	| _1517, _1517
| voxel.c:202: 	*out++ = data;
	or.l %d2,%d4	| _1517, tmp970
	move.l %d4,640(%a3)	| tmp970, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 640B]
	or.l %d1,%d3	| _1517, tmp965
	move.l %d3,644(%a3)	| tmp965, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_201 + 644B]
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp978
	and.b #1,%d1	|, _157
| voxel.c:902: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp981
	ext.w %d1	| tmp980
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1732
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp984
	and.b #1,%d0	|, _158
| voxel.c:903: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp987
	ext.w %d0	| tmp986
	neg.w %d0	| tmp988
	moveq #11,%d2	|,
	lsl.w %d2,%d0	|, _240
| voxel.c:201: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_201 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:200: 	data &= mask;
	or.w %d1,%d3	| _1732, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_201 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:204: 	data &= mask;
	or.w %d1,%d2	| _1732, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_201 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:212: 	data &= mask;
	or.w %d1,%d4	| _1732, data
| voxel.c:904: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp993
	not.w %d1	| tmp993
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp992
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1714
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _240, data
| voxel.c:200: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:201: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1714, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_201 + 320B]
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _240, data
| voxel.c:204: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:205: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1714, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_201 + 322B]
| voxel.c:209: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_201 + 324B]
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:212: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:213: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1714, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_201 + 326B]
	addq.w #8,134(%sp)	|, %sfp
| voxel.c:770: 		frames++;
	move.l 146(%sp),126(%sp)	| %sfp, %sfp
	jra .L414		|
.L325:
	move.w 142(%sp),%d0	| %sfp, _1880
	jra .L303		|
.L400:
| voxel.c:730: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:731: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:919: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:920: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:921: 	install_palette(saved_palette);
	pea 176(%sp)		|
	jsr _install_palette		|
| voxel.c:923: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (160,%sp),%sp	|,
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
