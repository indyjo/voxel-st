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
| voxel.c:122: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	tst.b %d0	| dither
	jne .L19		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:122: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.183
	add.l 80(%sp),%a6	| pixels, ivtmp.183
.L5:
| voxel.c:126: 				unsigned char register px = pixels[y*width + 16*chunk + x];
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
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:130: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:130: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:130: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:130: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:130: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:130: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:130: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:130: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:130: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:130: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:130: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:130: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:130: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:130: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:130: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:130: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:132: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:132: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:132: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:132: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:132: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:132: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:132: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:132: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:132: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:132: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:132: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:132: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:132: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:132: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:132: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:132: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:140: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:134: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:134: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:134: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:134: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:134: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:134: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:134: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:134: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:134: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:134: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:123: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.183
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L5		|
| voxel.c:122: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:122: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L6		|
.L1:
| voxel.c:143: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L19:
| voxel.c:122: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.215
| voxel.c:122: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.208
	add.l %a2,%a0	| ivtmp.215, ivtmp.208
	lea (160,%a1),%a3	|, out, tmp719
.L9:
| voxel.c:125: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:124: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:124: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:124: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:124: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L8:
| voxel.c:126: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:127: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:127: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L7		|
| voxel.c:128: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:128: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L7:
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:129: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:130: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:131: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:132: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:133: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:134: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:135: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:125: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:125: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L8		|
| voxel.c:137: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:138: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:139: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:140: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:140: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:123: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.208
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:122: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:122: 	for (int y=0; y<height; y++) {
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
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.221_11]
	cmp.l %d0,%a0	| _3, out
	jne .L21		|
| voxel.c:147: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:155: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:159: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:163: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L36		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L32:
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L33		|
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L33:
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L34		|
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L34:
| voxel.c:237: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L35		|
| voxel.c:237: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L35:
| voxel.c:238: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L36:
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d0	| iftmp.11_8
	jra .L32		|
.LC1:
	.ascii "%d y-table entries counted.\12\0"
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
	move.l #_y_table+1024,%d6	|, ivtmp.370
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	move.w #1,%a4	|, z
| voxel.c:247: 	int count = 0;
	moveq #0,%d4	| count
| voxel.c:245: 	fixp dist = FIXP(1,0);
	move.w #128,%d5	|, dist
	lea ___divsi3,%a3	|, tmp260
	lea _opacity_table,%a5	|, tmp262
.L49:
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _159
	lsr.w #7,%d0	|, _159
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _159, _3
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp192
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp192,
	jsr (%a3)		| tmp260
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _219
	add.w #45,%d2	|, _219
	moveq #66,%d0	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a6	| ivtmp.370, ivtmp.347
	move.w #-17920,%a2	|, ivtmp.344
	cmp.l %a4,%d0	| z,
	jlt .L51		|
.L54:
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.344,
	jsr (%a3)		| tmp260
	addq.l #8,%sp	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _219,
	sub.w %d0,%d1	| tmp296,
	move.w %d1,(%a6)+	|, MEM[(short int *)_14]
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.344
	cmp.w #17920,%a2	|, ivtmp.344
	jne .L54		|
.L55:
	add.w #128,%d5	|, dist
| voxel.c:261: 		int rel_dist = z - FOG_START;
	lea (-80,%a4),%a0	|, z, rel_dist
| voxel.c:262: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L110		|
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #47,%d0	|, tmp180
	sub.l %a0,%d0	| rel_dist, tmp180
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp181
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 48.w		|
	move.l %d0,-(%sp)	| tmp181,
	jsr (%a3)		| tmp260
	addq.l #8,%sp	|,
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%a4.l)	|, MEM[(unsigned char *)&opacity_table + _379 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%a4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.370
	cmp.w #16384,%d5	|, dist
	jne .L49		|
.L53:
| voxel.c:266: 	printf("%d y-table entries counted.\n", count);
	move.l %d4,-(%sp)	| count,
	pea .LC1		|
	jsr _printf		|
| voxel.c:268: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.335
	move.l #_combined+525313,%d3	|, _35
	addq.l #8,%sp	|,
	clr.b %d2	| max_height_lsm_flag.256
	clr.b %d1	| max_height_lsm.255
.L58:
	lea (-1024,%a1),%a0	|, ivtmp.335, ivtmp.328
.L57:
| voxel.c:271: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_96], _387
| voxel.c:271: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.255, _387
	jls .L56		|
| voxel.c:272: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _387, max_height_lsm.255
| voxel.c:271: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.256
.L56:
| voxel.c:270: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.328
	cmp.l %a1,%a0	| ivtmp.335, ivtmp.328
	jne .L57		|
| voxel.c:269: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a1),%a1	|, ivtmp.335
	cmp.l %d3,%a1	| _35, ivtmp.335
	jne .L58		|
	tst.b %d2	| max_height_lsm_flag.256
	jeq .L59		|
	move.b %d1,_max_height	| max_height_lsm.255, max_height
.L59:
| voxel.c:276: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp210
	add.l #196,%d2	|, tmp210
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp210,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp210, %sfp
	lea _pdata_table,%a6	|, tmp263
	move.l %a6,124(%sp)	| tmp263, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L60:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_113], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_113 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_113 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_113 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_113 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_113 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_113 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_113 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,56(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.308
.L83:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 80(%sp),%a0	| %sfp,
	cmp.l 56(%sp),%a0	| %sfp,
	slt %d0		| tmp247
	neg.b %d0	| mask
	move.l 84(%sp),%d1	| %sfp,
	cmp.l 56(%sp),%d1	| %sfp,
	jge .L75		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L75:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 88(%sp),%d2	| %sfp,
	cmp.l 56(%sp),%d2	| %sfp,
	jge .L76		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L76:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 92(%sp),%d7	| %sfp,
	cmp.l 56(%sp),%d7	| %sfp,
	jge .L77		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L77:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 96(%sp),%a0	| %sfp,
	cmp.l 56(%sp),%a0	| %sfp,
	jge .L78		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L78:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 100(%sp),%d1	| %sfp,
	cmp.l 56(%sp),%d1	| %sfp,
	jge .L79		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L79:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 104(%sp),%d2	| %sfp,
	cmp.l 56(%sp),%d2	| %sfp,
	jge .L80		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L80:
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 108(%sp),%d7	| %sfp,
	cmp.l 56(%sp),%d7	| %sfp,
	jge .L81		|
| voxel.c:292: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L81:
| voxel.c:297: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d1	| mask,
	and.b #-86,%d1	|,
	move.b %d1,55(%sp)	|, %sfp
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	and.l #255,%d1	|, _185
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	move.b 55(%sp),%d2	| %sfp,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _185,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _185
	move.l %d1,68(%sp)	| _185, %sfp
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _167
	and.l %d0,%d7	| mask, _167
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _167, iftmp.11_168
	lsl.w #8,%d6	|, iftmp.11_168
	swap %d6	| iftmp.11_168
	clr.w %d6	| iftmp.11_168
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _167,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_171
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _167,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_177
| voxel.c:299: 						| pdata_pattern(15, ~mask);
	not.b %d0	| tmp250
	and.l #255,%d0	|, tmp251
	move.l %d0,%d1	| tmp251, tmp253
	lsl.l #8,%d1	|, tmp253
	add.l %d1,%d0	| tmp253, tmp254
	move.l %d0,%d1	| tmp254, tmp255
	swap %d1	| tmp255
	clr.w %d1	| tmp255
	add.l %d1,%d0	| tmp255, tmp254
	move.l %d0,48(%sp)	| tmp254, %sfp
	move.l 72(%sp),%a3	| %sfp, ivtmp.307
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L73:
	move.b %d3,%d5	| color1, _299
	btst #1,%d3	|, color1
	jeq .L61		|
	move.l 64(%sp),%d0	| %sfp, iftmp.12_189
.L62:
	btst #0,%d3	|, color1
	jeq .L63		|
	move.l 60(%sp),%d1	| %sfp, iftmp.11_186
.L64:
	or.l %d1,%d0	| iftmp.11_186, tmp220
	or.l 48(%sp),%d0	| %sfp, tmp221
	btst #2,%d5	|, _299
	jeq .L65		|
	move.l 68(%sp),%d4	| %sfp, iftmp.13_195
.L66:
	or.l %d0,%d4	| tmp221, tmp225
	btst #3,%d5	|, _299
	jeq .L67		|
	move.b 55(%sp),%d0	| %sfp, _28
	or.b %d0,%d4	| _28, _303
	move.l %d3,%d2	| color1, ivtmp.299
	neg.l %d2	| ivtmp.299
	move.l %a3,%a0	| ivtmp.307, ivtmp.300
	move.l %d7,44(%sp)	| _167, %sfp
.L72:
	move.b %d5,%d0	| _299, _297
	add.b %d2,%d0	| ivtmp.299, _297
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp231
	and.l %d0,%d1	| _297, tmp231
	neg.l %d1	| tmp232
	and.l %d6,%d1	| iftmp.11_168, tmp233
	or.l %d4,%d1	| _303, prephitmp_69
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _297
	jeq .L69		|
	move.l %a2,%d7	| iftmp.12_171,
	or.l %d7,%d1	|, prephitmp_69
.L69:
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _297
	jeq .L70		|
	move.l %a1,%d7	| iftmp.13_177,
	or.l %d7,%d1	|, prephitmp_69
.L70:
| voxel.c:237: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _297
	jeq .L71		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_69
.L71:
| voxel.c:300: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp238
	and.l %d2,%d0	| ivtmp.299, tmp238
| voxel.c:302: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp239
	add.l %d3,%d0	| color1, tmp240
	lsl.l #3,%d0	|, tmp241
	add.l %a4,%d0	| ivtmp.308, tmp242
	lsl.l #3,%d0	|, tmp243
	add.l %a5,%d0	| y, tmp244
	add.l %d0,%d0	| tmp244, tmp245
	add.l %d0,%d0	| tmp245, tmp246
	move.l %d1,(%a6,%d0.l)	| prephitmp_69, pdata_table[index1_23][opacity_234][y_233]
| voxel.c:302: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| prephitmp_69, MEM[(unsigned int *)_165]
| voxel.c:295: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.299
	lea (-3840,%a0),%a0	|, ivtmp.300
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.299,
	jne .L72		|
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _167
	addq.l #1,%d3	|, color1
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.307
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L73		|
| voxel.c:287: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.308
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.308,
	jne .L83		|
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:286: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L60		|
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
	lea (116,%sp),%a0	|,, ivtmp.280
	lea _view_min+80,%a6	|, ivtmp.283
	lea _view_min,%a1	|, tmp261
	move.l %a1,%a5	| tmp261, ivtmp.285
	lea (156,%sp),%a4	|,, ivtmp.287
	lea _view_max+80,%a3	|, ivtmp.290
	lea _view_max,%a2	|, ivtmp.292
	moveq #40,%d1	|, _281
	add.l %a0,%d1	| ivtmp.280, _281
.L84:
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_235], _40
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_255]
| voxel.c:325: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_344]
| voxel.c:326: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _46
	sub.w (%a4)+,%d0	| MEM[(short int *)_275], _46
| voxel.c:326: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _46, MEM[(short int *)_278]
| voxel.c:326: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _46, MEM[(short int *)_279]
| voxel.c:324: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.280, _281
	jne .L84		|
	lea _horizon,%a0	|, ivtmp.273
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L85:
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp258
	asr.l #3,%d0	|, tmp258
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp258, tmp259
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_47],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_343]
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:328: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L85		|
| voxel.c:329: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L50:
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.353
	cmp.w #17920,%a2	|, ivtmp.353
	jeq .L55		|
.L51:
| voxel.c:250: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.353,
	jsr (%a3)		| tmp260
	addq.l #8,%sp	|,
| voxel.c:252: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _219, _404
	sub.w %d0,%d1	| tmp293, _404
	move.w %d1,(%a6)+	| _404, MEM[(short int *)_192]
| voxel.c:254: 			if (z > 66 && y_table[z][h] < -200) count++;
	cmp.w #-200,%d1	|, _404
	jge .L50		|
| voxel.c:254: 			if (z > 66 && y_table[z][h] < -200) count++;
	addq.l #1,%d4	|, count
| voxel.c:249: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.353
	cmp.w #17920,%a2	|, ivtmp.353
	jne .L51		|
	jra .L55		|
.L110:
| voxel.c:262: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #47,%d0	|, tmp180
	sub.l %a0,%d0	| rel_dist, tmp180
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp181
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 48.w		|
	move.l %d0,-(%sp)	| tmp181,
	jsr (%a3)		| tmp260
	addq.l #8,%sp	|,
| voxel.c:264: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%a4.l)	|, MEM[(unsigned char *)&opacity_table + _379 * 1]
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%a4	|, z
| voxel.c:248: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.370
	cmp.w #16384,%d5	|, dist
	jne .L49		|
	jra .L53		|
.L67:
	clr.b %d0	| _28
	or.b %d0,%d4	| _28, _303
	move.l %d3,%d2	| color1, ivtmp.299
	neg.l %d2	| ivtmp.299
| voxel.c:294: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.307, ivtmp.300
	move.l %d7,44(%sp)	| _167, %sfp
	jra .L72		|
.L65:
	moveq #0,%d4	| iftmp.13_195
	jra .L66		|
.L63:
	moveq #0,%d1	| iftmp.11_186
	jra .L64		|
.L61:
	moveq #0,%d0	| iftmp.12_189
	jra .L62		|
	.even
	.globl	_render
_render:
	lea (-12,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l %a1,48(%sp)	| tmp191, %sfp
	move.l 72(%sp),%d3	| z_begin, z_begin
	move.l 76(%sp),%d0	| z_end, z_end
	move.l 92(%sp),52(%sp)	| y_min, %sfp
	move.l 100(%sp),%d7	| pixel_mask, pixel_mask
	move.b 107(%sp),47(%sp)	| fog, %sfp
| voxel.c:420: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 60(%sp),%d2	| state.sample_vu, sample_vu
| voxel.c:423: 	unsigned char * pBlock = state.pixel;
	move.l 64(%sp),%a0	| state.pixel, pBlock
| voxel.c:426: 	y_offset -= y_min;
	move.w 90(%sp),%a5	| y_offset, _5
	sub.w 54(%sp),%a5	| %sfp, _5
| voxel.c:428: 	short y = state.y - y_min;
	move.w 68(%sp),%d4	| state.y, _177
| voxel.c:428: 	short y = state.y - y_min;
	move.w %d4,%d1	| _177, y
	sub.w 54(%sp),%d1	| %sfp, y
| voxel.c:421: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 86(%sp),%a1	| player_height, ytable_offset
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp132
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d3,%a6	| z_begin, z_begin
	move.l %a6,%d5	| z_begin, tmp134
	moveq #10,%d6	|,
	lsl.l %d6,%d5	|, tmp134
	add.l %a1,%d5	| tmp132, tmp135
	move.l %d5,%a3	| tmp135, y_table_shifted
	add.l #_y_table,%a3	|, y_table_shifted
| voxel.c:434: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a6	|, opacity_table_shifted
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	move.w %d3,%d5	|, z
	sub.w %d0,%d5	| z_end, z
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	jpl .L112		|
	tst.w %d1	| y
	jlt .L112		|
	sub.w %d3,%d0	| z_begin, tmp138
	and.l #65535,%d0	|, tmp139
	lsl.l %d6,%d0	|, tmp140
	lea (%a3,%d0.l),%a4	| y_table_shifted, tmp140, _18
.L121:
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l 96(%sp),%d0	| index_mask, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _88
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a1	| _88,
	move.w (%a1),%d3	| *_88, sample
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| SR.380
	move.b %d3,%d0	| sample, SR.380
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| SR.380, tmp145
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a5,%d6	| _5, sample_y
	add.w (%a3,%d0.l),%d6	| (*y_table_shifted_140)[_19], sample_y
| voxel.c:487: 		.y = y + y_min,
	move.w %d1,%d5	| y, prephitmp_149
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d6,%d1	| sample_y, y
	jlt .L113		|
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	tst.w %d6	| _109
	jlt .L130		|
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, _182
| voxel.c:448: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L115		|
.L132:
| voxel.c:343: 	asm ("movep.l 0(%1), %0" : "=d" (result) : "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l 0(%a0), %d0	| pBlock, result
| 0 "" 2
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
#NO_APP
	add.w #224,%d3	|, tmp147
| voxel.c:391: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d3	|, tmp148
| voxel.c:453: 				movep_data |= read_p(pBlock) & ~pixel_mask;
	move.l %d0,%d4	| result, result
	lea _pdata_table,%a1	|,
	move.l (%a1,%d3.l),%d0	| *_106, tmp150
	eor.l %d4,%d0	| result, tmp150
	and.l %d7,%d0	| pixel_mask, tmp151
	eor.l %d4,%d0	| result, movep_data
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d6,%d1	| _109, y
	jlt .L113		|
	sub.w %d6,%d1	| _109, tmp152
	and.l #65535,%d1	|, tmp153
	addq.l #1,%d1	|, tmp154
	move.l %d1,%a1	| tmp154, tmp156
	add.l %d1,%a1	| tmp154, tmp156
	add.l %a1,%a1	| tmp156, tmp157
	move.l %a1,%d3	| tmp157, tmp158
	add.l %d1,%d3	| tmp154, tmp158
	lsl.l #5,%d3	|, tmp159
	move.l %a0,%d1	| pBlock, _49
	sub.l %d3,%d1	| tmp159, _49
.L116:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:456: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:454: 				while (y >= sample_y) {
	cmp.l %d1,%a0	| _49, pBlock
	jne .L116		|
	move.w %d6,%d4	| _109, _158
	subq.w #1,%d4	|, _158
	move.w %d4,%d1	| _158, y
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l 80(%sp),%d2	| delta_vu, tmp183
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l %a4,%a3	| _18, y_table_shifted
	jeq .L131		|
.L119:
	cmp.w #-1,%d1	|, y
	jne .L121		|
| voxel.c:487: 		.y = y + y_min,
	add.w 54(%sp),%d4	| %sfp, _177
.L112:
| voxel.c:489: 	return result;
	move.l 48(%sp),%a1	| %sfp,
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d4,8(%a1)	| _177, <retval>.y
| voxel.c:490: }
	move.l %a1,%d0	|,
	movem.l (%sp)+,#31996	|,
	lea (12,%sp),%sp	|,
	rts	
.L130:
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	clr.w %d6	| _109
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, _182
| voxel.c:448: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jeq .L132		|
.L115:
| voxel.c:395: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	| opacity_preshifted
	move.b (%a6)+,%d0	| *opacity_table_shifted_141, opacity_preshifted
	move.w %d0,%a2	| opacity_preshifted, offset
	add.w %d3,%a2	| _182, offset
| voxel.c:396: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _112
	move.w %a2,%d0	| offset, _112
| voxel.c:469: 				while (y >= sample_y) {
	cmp.w %d6,%d1	| _109, y
	jlt .L113		|
	move.w %d6,%d4	| _109, _158
	subq.w #1,%d4	|, _158
	move.l %a0,%a1	| pBlock, pBlock
	move.l %d0,%a2	| _112, tmp185
	add.l #_pdata_table,%a2	|, tmp185
.L118:
| voxel.c:343: 	asm ("movep.l 0(%1), %0" : "=d" (result) : "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l 0(%a1), %d3	| pBlock, result
| 0 "" 2
| voxel.c:470: 					unsigned int movep_data = pdata_entry[y&7] & pixel_mask;
#NO_APP
	moveq #7,%d0	|, tmp165
	and.l %d1,%d0	| y, tmp165
	add.l %d0,%d0	| tmp165, tmp166
	add.l %d0,%d0	| tmp166, tmp167
| voxel.c:471: 					movep_data |= read_p(pBlock) & ~pixel_mask;
	move.l (%a2,%d0.l),%d0	| *_30, tmp171
	eor.l %d3,%d0	| result, tmp171
	and.l %d7,%d0	| pixel_mask, tmp172
	eor.l %d3,%d0	| result, movep_data
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a1),%a1	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:469: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| _158, y
	jne .L118		|
	sub.w %d6,%d5	| _109, tmp174
	and.l #65535,%d5	|, tmp175
	addq.l #1,%d5	|, tmp176
	move.l %d5,%d0	| tmp176, tmp178
	add.l %d5,%d0	| tmp176, tmp178
	add.l %d0,%d0	| tmp178, tmp179
	add.l %d5,%d0	| tmp176, tmp180
	lsl.l #5,%d0	|, tmp181
	sub.l %d0,%a0	| tmp181, pBlock
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l 80(%sp),%d2	| delta_vu, tmp183
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l %a4,%a3	| _18, y_table_shifted
	jne .L119		|
.L131:
	move.w %d4,%d5	| _158, prephitmp_149
| voxel.c:487: 		.y = y + y_min,
	move.w %d5,%d4	| prephitmp_149, _177
	add.w 54(%sp),%d4	| %sfp, _177
.L133:
| voxel.c:489: 	return result;
	move.l 48(%sp),%a1	| %sfp,
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d4,8(%a1)	| _177, <retval>.y
| voxel.c:490: }
	move.l %a1,%d0	|,
	movem.l (%sp)+,#31996	|,
	lea (12,%sp),%sp	|,
	rts	
.L113:
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l 80(%sp),%d2	| delta_vu, tmp184
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l %a4,%a3	| _18, y_table_shifted
	jne .L121		|
| voxel.c:487: 		.y = y + y_min,
	move.w %d5,%d4	| prephitmp_149, _177
	add.w 54(%sp),%d4	| %sfp, _177
	jra .L133		|
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #15920,-(%sp)	|,
	move.l 32(%sp),%d3	| sample_vu, sample_vu
	move.l 36(%sp),%a1	| delta_vu, delta_vu
| voxel.c:499: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 42(%sp),%a0	| start_height, ytable_offset
| voxel.c:501: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp59
| voxel.c:501: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _15
| voxel.c:507: 	unsigned short z = 0;
	clr.w %d2	| _44
| voxel.c:506: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:504: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d5	|, index_mask
.L137:
	move.w %d2,%d1	| _44, z
| voxel.c:517: 		z++;
	addq.w #1,%d2	|, _44
	move.l %a0,%a2	| _15, y_table_shifted
| voxel.c:518: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _15
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l %a1,%d3	| delta_vu, tmp60
	add.l %d4,%d3	| sample_vu, tmp60
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:509: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L135		|
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d6	| tmp
	move.l %d4, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d6, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d4, %d6	| sample_vu, tmp
	lsr.w #6, %d6	| tmp
	or.w %d6,%d1	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d5,%d1	| index_mask, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _34
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _34,
	move.w (%a3),%d1	| *_34, sample
| voxel.c:512: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.406
| voxel.c:512: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.406, tmp65
| voxel.c:513: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L136		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L136:
| voxel.c:525: 		if (TRIGGERS_MIPMAP(z)) {
	move.w %d2,%d1	| _44, tmp67
	and.w #15,%d1	|, tmp67
	jne .L135		|
| voxel.c:386: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp68
| voxel.c:386: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L135:
| voxel.c:508: 	while(z < STEPS_MAX) {
	cmp.w #128,%d2	|, _44
	jne .L137		|
| voxel.c:531: }
	movem.l (%sp)+,#3196	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L141		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L143:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:538: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L143		|
.L141:
| voxel.c:540: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L148		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L149:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:538: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L149		|
.L148:
| voxel.c:545: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:546: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:564: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:565: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:566: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:572: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.463
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L158:
| voxel.c:583: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:584: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:585: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:564: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:565: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:564: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:565: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:564: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:565: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:590: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:590: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:582: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.463
	cmp.l %d3,%a3	| _445, ivtmp.463
	jne .L158		|
| voxel.c:592: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.469
	clr.w %d0	| vect__18.469
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.469
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.469, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:598: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L166		|
	cmp.w #128,%d0	|, val
	jge .L167		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:603: }
	rts	
.L167:
| voxel.c:601: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:603: }
	rts	
.L166:
| voxel.c:601: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:603: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:608: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:611: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:618: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:620: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:632: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:613: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.499
| voxel.c:620: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L177:
| voxel.c:623: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| b$a$0,
	muls.w %d7,%d2	| _4, tmp164
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp165
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp166
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp167
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp167, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp169
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp171
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d3	| b$a$2,
	muls.w %d7,%d3	| _4, tmp172
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp173
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -78(%fp),%d0	| %sfp, tmp174
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp175
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:630: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L187		|
| voxel.c:632: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:638: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L188		|
.L172:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:642: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:643: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L189		|
.L173:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L178		|
.L190:
	cmp.w #128,%d4	|, _504
	jge .L179		|
	add.b %d4,%d4	| _504, iftmp.44_290
.L174:
| voxel.c:646: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.44_290, MEM[(unsigned char *)p_252]
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L180		|
.L191:
	cmp.w #128,%d3	|, _75
	jge .L181		|
	add.b %d3,%d3	| _75, iftmp.45_360
.L175:
| voxel.c:647: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.45_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:648: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L182		|
.L192:
	cmp.w #128,%d2	|, _404
	jge .L183		|
	add.b %d2,%d2	| _404, iftmp.45_295
| voxel.c:648: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.45_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:621: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.499
	cmp.l %a0,%a4	|, tmp230
	jne .L177		|
.L193:
| voxel.c:650: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:651: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:653: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:654: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L189:
| voxel.c:643: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L190		|
.L178:
	clr.b %d4	| iftmp.44_290
| voxel.c:646: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.44_290, MEM[(unsigned char *)p_252]
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L191		|
.L180:
	clr.b %d3	| iftmp.45_360
| voxel.c:647: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.45_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:648: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:601: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L192		|
.L182:
	clr.b %d2	| iftmp.45_295
| voxel.c:648: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.45_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:621: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.499
	cmp.l %a0,%a4	|, tmp230
	jne .L177		|
	jra .L193		|
.L187:
| voxel.c:630: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:632: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:638: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L172		|
.L188:
	clr.w %d2	| _184
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:596: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:570: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:642: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:643: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L173		|
	jra .L189		|
.L179:
| voxel.c:601: 	return val < 0 ? 0 : (
	st %d4		| iftmp.44_290
	jra .L174		|
.L183:
	st %d2		| iftmp.45_295
| voxel.c:648: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.45_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:621: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.499
	cmp.l %a0,%a4	|, tmp230
	jne .L177		|
	jra .L193		|
.L181:
| voxel.c:601: 	return val < 0 ? 0 : (
	st %d3		| iftmp.45_360
	jra .L175		|
.LC2:
	.ascii "Loading colors.tga\0"
.LC3:
	.ascii "rb\0"
.LC4:
	.ascii "colors.tga\0"
.LC5:
	.ascii "Loading height.tga\0"
.LC6:
	.ascii "height.tga\0"
	.even
	.globl	_load_voxel_data
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:658: 	printf("Loading colors.tga\n");
	pea .LC2		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:659: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC3		|
	pea .LC4		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:660: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L216		|
| voxel.c:664: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:665: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L212		|
	lea _fclose,%a2	|, tmp103
.L197:
| voxel.c:717: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L207:
| voxel.c:719: 	return 0;
	moveq #0,%d0	| <retval>
.L194:
| voxel.c:720: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L212:
| voxel.c:667: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:667: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:668: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:669: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:671: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:672: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:675: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:674: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:679: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L198:
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L200		|
	move.l %d6,%d0	| remaining, remaining
.L200:
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:676: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L217		|
| voxel.c:677: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:678: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:679: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.521
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L199:
| voxel.c:681: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:682: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:680: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.521, _92
	jne .L199		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L198		|
.L217:
| voxel.c:685: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:686: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:688: 	printf("Loading height.tga\n");
	pea .LC5		|
	jsr (%a6)		| tmp109
| voxel.c:689: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC3		|
	pea .LC6		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:690: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L218		|
| voxel.c:694: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:695: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L219		|
| voxel.c:696: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:697: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:698: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:701: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L203:
| voxel.c:698: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:698: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L205		|
	move.l %d7,%d0	| remaining, remaining
.L205:
| voxel.c:698: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:698: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L220		|
| voxel.c:699: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:700: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:701: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.514
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L204:
| voxel.c:703: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:704: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:702: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.514, _73
	jne .L204		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L203		|
.L220:
| voxel.c:707: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:708: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:710: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:711: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:712: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:720: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L216:
| voxel.c:661: 		perror("colors.tga");
	pea .LC4		|
	jsr _perror		|
| voxel.c:662: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:719: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L194		|
.L218:
| voxel.c:691: 		perror("height.tga");
	pea .LC6		|
	jsr _perror		|
| voxel.c:692: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L197		|
.L219:
| voxel.c:715: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:717: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L207		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:723: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 723 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:723: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L223		|
| voxel.c:723: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 723 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:723: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:724: }
	movem.l (%sp)+,#1036	|,
	rts	
.L223:
| voxel.c:723: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:724: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:727: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L227:
#APP
| 727 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L227		|
| voxel.c:729: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L228:
#APP
| 729 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:729: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L228		|
| voxel.c:731: 	Bconin(_CON);
#APP
| 731 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:732: }
#NO_APP
	movem.l (%sp)+,#1036	|,
	rts	
.LC7:
	.ascii "\33H\33f\12\0"
.LC8:
	.ascii "Failed to load voxel data.\0"
.LC9:
	.ascii "Computing tables\0"
.LC10:
	.ascii "Loading cockpit.tga\0"
.LC11:
	.ascii "cockpit.tga\0"
.LC12:
	.ascii "Rendering took %dms per frame.\12\0"
.LC13:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-116,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:736: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:738: 	printf("\33H\33f\n\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:741: 	Super(0L);
	moveq #0,%d0	| tmp383
#APP
| 741 "voxel.c" 1
	movl	%d0,%sp@-	| tmp383
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:743: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:745: 	lineaa();
	jsr _lineaa		|
| voxel.c:748: 	save_palette(saved_palette);
	pea 132(%sp)		|
	jsr _save_palette		|
| voxel.c:750: 	unsigned short *screen = Physbase();
#APP
| 750 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,82(%sp)	| tmp693, %sfp
| voxel.c:752: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:754: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:754: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp694
	jeq .L302		|
| voxel.c:759: 	printf("Computing tables\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:760: 	build_tables();
	jsr _build_tables		|
| voxel.c:761: 	printf("Loading cockpit.tga\n");
	pea .LC10		|
	jsr _puts		|
| voxel.c:762: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC11		|
	lea (126,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 130(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:763: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L236		|
| voxel.c:764: 	read_palette_vectors(cockpit.colors);
	move.l 122(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 78(%sp),%a0	| %sfp, ivtmp.657
	move.l %a0,%d0	| ivtmp.657, _907
	add.l #32000,%d0	|, _907
	addq.l #4,%sp	|,
.L237:
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.549_1019]
	cmp.l %a0,%d0	| ivtmp.657, _907
	jne .L237		|
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d5	| pdata_table[0][7][0], movep_data
	lea _view_min,%a0	|, ivtmp.650
	lea _view_max,%a1	|, ivtmp.653
	clr.w %d4	| ivtmp.651
.L242:
| voxel.c:768: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a0)+,%d0	| MEM[(short int *)_776], _5
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d4,%d1	| ivtmp.651, tmp399
	asr.w #4,%d1	|, tmp399
	ext.l %d1	| tmp400
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp400, tmp401
	add.l %d1,%d1	| tmp401, _184
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%d6	|, tmp404
	lsr.l #3,%d6	|, tmp404
	moveq #1,%d3	|,
	and.l %d3,%d6	|, _189
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%d3	| _184, tmp405
	add.l %d1,%d3	| _184, tmp405
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d3	| _189, tmp406
	move.l 74(%sp),%a2	| %sfp, pBlock
	add.l %d3,%a2	| tmp406, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d0	| _5
	jle .L238		|
	mulu.w #160,%d0	|, tmp407
	add.l %a2,%d0	| pBlock, _147
.L239:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d5, 0(%a2)	| movep_data, pBlock
| 0 "" 2
| voxel.c:538: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a2),%a2	|, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d0,%a2	| _147, pBlock
	jne .L239		|
.L238:
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a1)+,%d0	| MEM[(short int *)_773], _9
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d3	|, _11
	sub.w %d0,%d3	| _9, _11
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%d0	|, tmp409
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp410
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	| _184, tmp412
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp412, tmp413
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d6	| tmp413, tmp414
	move.l 74(%sp),%a2	| %sfp, pBlock
	add.l %d6,%a2	| tmp414, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _11
	jle .L240		|
	move.w %d3,%d0	| _11,
	mulu.w #160,%d0	|, tmp415
	add.l %a2,%d0	| pBlock, _370
.L241:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d5, 0(%a2)	| movep_data, pBlock
| 0 "" 2
| voxel.c:538: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a2),%a2	|, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a2,%d0	| pBlock, _370
	jne .L241		|
.L240:
| voxel.c:767: 	for (int i=0; i<40; i++) {
	addq.w #8,%d4	|, ivtmp.651
	cmp.l #_view_min+80,%a0	|, ivtmp.650
	jne .L242		|
| voxel.c:772: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:773: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:774: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:777: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 130(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 98(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:779: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,134(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
| voxel.c:783: 	int frames = 0;
	clr.l 98(%sp)	| %sfp
.L268:
	move.l 98(%sp),110(%sp)	| %sfp, %sfp
| voxel.c:792: 		frames++;
	addq.l #1,98(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.76_203
	move.w (%a0),%d0	| *hw_palette.76_203, _204
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_201
	lea _pos,%a2	|,
	move.w (%a2),%d3	| pos.x, val.9_199
| voxel.c:797: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _26
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_201, tmp428
	lsr.w #7,%d0	|, tmp428
| voxel.c:796: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp429
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_199, tmp430
	lsr.w #7,%d1	|, tmp430
| voxel.c:796: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp431
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp432
	add.l %d1,%d0	| tmp431, tmp433
	add.l %d0,%d0	| tmp433, tmp434
| voxel.c:797: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_21][_23].D.2699.height, combined[_21][_23].D.2699.height
	and.w #255,%d0	|, combined[_21][_23].D.2699.height
	lsl.w #7,%d0	|, tmp438
	move.w %d4,%d1	| _26, player_height
	sub.w %d0,%d1	| tmp438, player_height
| voxel.c:799: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w #2560,%a0	|, _30
	sub.w %d1,%a0	| player_height, _30
	move.w #256,%d0	|, prephitmp_970
| voxel.c:800: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #1284,%a0	|, _30
	jgt .L243		|
	move.w #-256,%d0	|, prephitmp_970
| voxel.c:801: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-1284,%a0	|, _30
	jlt .L243		|
| voxel.c:799: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	pea 5.w		|
	move.l %a0,-(%sp)	| _30,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
.L243:
| voxel.c:802: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _26, _34
| voxel.c:803: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _34
	jgt .L273		|
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d0,%d1	| _34, tmp446
	lsr.w #7,%d1	|, tmp446
| voxel.c:421: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp447
	sub.w %d1,%a0	| tmp446, tmp447
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp447, tmp448
	add.l %a0,%a0	| tmp448, tmp448
	move.l %a0,102(%sp)	| tmp448, %sfp
| voxel.c:803: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d0,_pos+4	| _34, pos.z
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d0	|, tmp452
	swap %d0	| tmp452
	clr.w %d0	| tmp452
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d0	| val.9_199, tmp454
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp454
	move.l %d0,82(%sp)	| tmp454, %sfp
| voxel.c:822: 			fixp dv8 = (short)(x - 160) * pos.dirx;
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:823: 			fixp du8 = -(short)(x - 160) * pos.diry;
	move.w _pos+8,80(%sp)	| pos.diry, %sfp
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 102(%sp),%d2	| %sfp,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,90(%sp)	|, %sfp
	move.l 102(%sp),%d3	| %sfp,
	add.l #_y_table+81920,%d3	|,
	move.l %d3,86(%sp)	|, %sfp
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,94(%sp)	| pdata_table[15][7][0], %sfp
	move.w 80(%sp),%d4	| %sfp,
	muls.w #160,%d4	|,
	move.w %d4,58(%sp)	|, %sfp
	move.w 78(%sp),%d5	| %sfp,
	muls.w #-160,%d5	|,
	move.w %d5,60(%sp)	|, %sfp
	move.l #_horizon,62(%sp)	|, %sfp
| voxel.c:813: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 1) {
	clr.w 56(%sp)	| %sfp
	add.l #77824,%d2	|,
	move.l %d2,46(%sp)	|, %sfp
	add.l #49152,%d3	|,
	move.l %d3,50(%sp)	|, %sfp
.L263:
| voxel.c:824: 			fixp_2in1 delta_vu = make_2in1(pos.diry + (dv8 >> 8), pos.dirx + (du8 >> 8));
	move.w 60(%sp),%d0	| %sfp, tmp458
	asr.w #8,%d0	|, tmp458
	add.w 80(%sp),%d0	| %sfp, tmp459
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp461
	clr.w %d0	| tmp461
| voxel.c:824: 			fixp_2in1 delta_vu = make_2in1(pos.diry + (dv8 >> 8), pos.dirx + (du8 >> 8));
	move.w 58(%sp),%d1	| %sfp, tmp462
	asr.w #8,%d1	|, tmp462
	add.w 78(%sp),%d1	| %sfp, tmp463
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d0	| tmp463, tmp465
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp465
	move.l %d0,%a4	| tmp465, _214
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l 82(%sp),%d2	| %sfp, tmp466
	add.l %d0,%d2	| _214, tmp466
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp467
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d0,%d2	| _214, tmp468
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp469
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d0,%d2	| _214, tmp470
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp471
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d0,%d2	| _214, tmp472
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:832: 				.y = view_max[x >> 3],
	move.w 56(%sp),%d1	| %sfp, tmp473
	lsr.w #3,%d1	|, tmp473
	and.l #65535,%d1	|, _53
| voxel.c:832: 				.y = view_max[x >> 3],
	add.l %d1,%d1	| _53, tmp475
	lea _view_max,%a0	|,
	move.w (%a0,%d1.l),%d0	| view_max[_53], _1028
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 56(%sp),%d3	| %sfp, tmp476
	asr.w #4,%d3	|, tmp476
	move.w %d3,%a0	| tmp476, tmp477
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp477, tmp478
	add.l %a0,%a0	| tmp478, tmp478
	move.l %a0,66(%sp)	| tmp478, %sfp
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 56(%sp),%d3	| %sfp,
	lsr.l #3,%d3	|, tmp481
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp481,
	move.l %d4,70(%sp)	|, %sfp
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	| _1028,
	muls.w #80,%d3	|, tmp482
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp482, tmp484
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp484, tmp485
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	|, tmp486
	add.l 74(%sp),%a0	| %sfp, pBlock
| voxel.c:835: 			unsigned int index_mask = 0x7ffff, pixel_mask = 0x80808080 >> (x & 7);
	move.w 56(%sp),%d3	| %sfp,
	moveq #7,%d5	|,
	and.l %d5,%d3	|, tmp488
| voxel.c:835: 			unsigned int index_mask = 0x7ffff, pixel_mask = 0x80808080 >> (x & 7);
	move.l #-2139062144,%d6	|, pixel_mask
	lsr.l %d3,%d6	| tmp488, pixel_mask
| voxel.c:426: 	y_offset -= y_min;
	lea _view_min,%a1	|,
	move.w (%a1,%d1.l),%a6	| view_min[_53], y_min.21_389
| voxel.c:428: 	short y = state.y - y_min;
	move.w %d0,%d4	| _1028, _1024
| voxel.c:428: 	short y = state.y - y_min;
	move.w %d0,%d1	| _1028, y
	sub.w %a6,%d1	| y_min.21_389, y
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	jmi .L245		|
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 90(%sp),%a1	| %sfp, y_table_shifted
.L254:
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d0	|, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _410
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a2	| _410,
	move.w (%a2),%d0	| *_410, sample
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d3	| SR.546
	move.b %d0,%d3	| sample, SR.546
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d3,%d3	| SR.546, tmp496
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a1,%d3.l),%d4	| (*y_table_shifted_785)[_412], sample_y
	sub.w %a6,%d4	| y_min.21_389, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d4,%d1	| sample_y, y
	jlt .L246		|
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	tst.w %d4	| _419
	jlt .L303		|
| voxel.c:343: 	asm ("movep.l 0(%1), %0" : "=d" (result) : "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l 0(%a0), %d3	| pBlock, result
| 0 "" 2
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
#NO_APP
	and.w #-256,%d0	|, tmp498
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp499
| voxel.c:391: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp500
| voxel.c:453: 				movep_data |= read_p(pBlock) & ~pixel_mask;
	lea _pdata_table,%a2	|,
	move.l (%a2,%d0.l),%d0	| *_424, tmp502
	eor.l %d3,%d0	| result, tmp502
	and.l %d6,%d0	| pixel_mask, tmp503
	eor.l %d3,%d0	| result, movep_data
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| _419, y
	jlt .L304		|
.L248:
	sub.w %d4,%d1	| _419, tmp505
	and.l #65535,%d1	|, tmp506
	addq.l #1,%d1	|, tmp507
	move.l %d1,%d3	| tmp507, tmp509
	add.l %d1,%d3	| tmp507, tmp509
	add.l %d3,%d3	| tmp509, tmp510
	add.l %d1,%d3	| tmp507, tmp511
	lsl.l #5,%d3	|, tmp512
	move.l %a0,%d1	| pBlock, _957
	sub.l %d3,%d1	| tmp512, _957
.L251:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:456: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:454: 				while (y >= sample_y) {
	cmp.l %a0,%d1	| pBlock, _957
	jne .L251		|
	move.w %d4,%d1	| _419, y
	subq.w #1,%d1	|, y
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a4,%d2	| _214, tmp514
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l 46(%sp),%a1	| %sfp, y_table_shifted
	jeq .L252		|
	cmp.w #-1,%d1	|, y
	jne .L254		|
.L297:
| voxel.c:487: 		.y = y + y_min,
	move.w %a6,%d4	| y_min.21_389, _1024
	subq.w #1,%d4	|, _1024
	move.w %d4,%d0	| _1024, _1028
.L245:
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 62(%sp),%a2	| %sfp,
	move.w (%a2),%d1	| MEM[(short int *)_972], _258
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d1,%d4	| _258, _259
| voxel.c:544: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d1	|, tmp544
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d1	|, tmp545
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d1	| %sfp, tmp547
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp547, tmp548
| voxel.c:333: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 70(%sp),%d1	| %sfp, tmp549
	move.l 74(%sp),%a0	| %sfp, pBlock
	add.l %d1,%a0	| tmp549, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _259
	jle .L261		|
	mulu.w #160,%d4	|, tmp550
	add.l %a0,%d4	| pBlock, _944
	move.l 94(%sp),%d1	| %sfp, movep_data
.L262:
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:538: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:536: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d4	| pBlock, _944
	jne .L262		|
.L261:
| voxel.c:545: 	horizon[x] = y;
	move.l 62(%sp),%a0	| %sfp,
	addq.l #2,62(%sp)	|, %sfp
	move.w %d0,(%a0)+	| _1028, MEM[(short int *)_972]
| voxel.c:813: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 1) {
	addq.w #1,56(%sp)	|, %sfp
| voxel.c:813: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 1) {
	move.w 80(%sp),%d0	| %sfp,
	sub.w %d0,58(%sp)	|, %sfp
	move.w 78(%sp),%d1	| %sfp,
	add.w %d1,60(%sp)	|, %sfp
	cmp.w #320,56(%sp)	|, %sfp
	jne .L263		|
| voxel.c:501: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 102(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
| voxel.c:506: 	short min_y = 0x7fff;
	move.w #32767,%d3	|, min_y
| voxel.c:504: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d2	|, index_mask
| voxel.c:507: 	unsigned short z = 0;
	clr.w %d1	| z
	move.l 82(%sp),%d4	| %sfp, sample_vu
.L266:
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:518: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d0	| z, z
| voxel.c:517: 		z++;
	addq.w #1,%d1	|, z
	move.l %d4,%d5	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d4	|, tmp552
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, sample_vu
| voxel.c:509: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d0	|, z
	jls .L264		|
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d6	| tmp
	move.l %d5, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d6, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d5, %d6	| sample_vu, tmp
	lsr.w #6, %d6	| tmp
	or.w %d6,%d0	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d2,%d0	| index_mask, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _492
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a2	| _492,
	move.w (%a2),%d0	| *_492, sample
| voxel.c:512: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d0	|, SR.547
| voxel.c:512: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.547, tmp557
| voxel.c:513: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| (*y_table_shifted_971)[_494], (*y_table_shifted_971)[_494]
	cmp.w %d3,%d0	| min_y, (*y_table_shifted_971)[_494]
	jge .L265		|
	move.w %d0,%d3	| (*y_table_shifted_971)[_494], min_y
.L265:
| voxel.c:525: 		if (TRIGGERS_MIPMAP(z)) {
	move.w %d1,%d0	| z, tmp559
	and.w #15,%d0	|, tmp559
	jne .L264		|
| voxel.c:386: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d2,%d2	| index_mask, tmp560
| voxel.c:386: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d2	|, index_mask
.L264:
| voxel.c:508: 	while(z < STEPS_MAX) {
	cmp.w #128,%d1	|, z
	jne .L266		|
| voxel.c:847: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d3	|, min_y
	jlt .L277		|
	move.w #128,%a0	|, prephitmp_1048
| voxel.c:849: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d3	|, min_y
	jge .L267		|
| voxel.c:852: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d3	|, tmp561
	add.w %d3,%d3	| tmp561, tmp562
	add.w %d3,%d3	| tmp562, sunlight
| voxel.c:855: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d3,%a0	| sunlight, prephitmp_1048
.L267:
	move.l %a0,-(%sp)	| prephitmp_1048,
	move.l 114(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _71
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _71,
	muls.w _pos+6,%d0	| pos.dirx, tmp569
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp570
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp572
	swap %d0	| vect__77.552
	clr.w %d0	| vect__77.552
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp578
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp579
| voxel.c:858: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp581
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp581, vect__77.552
	move.l %d0,(%a0)	| vect__77.552, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #8,%sp	|,
	lsr.w #2,%d0	|, tmp587
	and.w #8192,%d0	|, _1042
| voxel.c:199: 	data &= mask;
	move.l 74(%sp),%a2	| %sfp,
	move.l 4(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 4B], tmp588
	and.l #-536879105,%d3	|, tmp588
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1042
	move.w %d0,%d1	| _1042, _1042
| voxel.c:199: 	data &= mask;
	move.l (%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115], tmp593
	and.l #-536879105,%d4	|, tmp593
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1042
	swap %d2	| _1042
	clr.w %d2	| _1042
	move.w %d0,%d2	| _1042, _1042
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1042, tmp593
	move.l %d4,(%a2)	| tmp593, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115]
	or.l %d1,%d3	| _1042, tmp588
	move.l %d3,4(%a2)	| tmp588, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp601
	and.b #1,%d0	|, _85
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp604
	ext.w %d0	| tmp603
	neg.w %d0	| tmp605
	lsl.w %d1,%d0	|, _1032
| voxel.c:199: 	data &= mask;
	move.l 644(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 644B], tmp606
	and.l #-536879105,%d3	|, tmp606
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1032
	move.w %d0,%d1	| _1032, _1032
| voxel.c:199: 	data &= mask;
	move.l 640(%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 640B], tmp611
	and.l #-536879105,%d4	|, tmp611
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1032
	swap %d2	| _1032
	clr.w %d2	| _1032
	move.w %d0,%d2	| _1032, _1032
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1032, tmp611
	move.l %d4,640(%a2)	| tmp611, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 640B]
	or.l %d1,%d3	| _1032, tmp606
	move.l %d3,644(%a2)	| tmp606, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp619
	and.b #1,%d1	|, _86
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp622
	ext.w %d1	| tmp621
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _939
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp625
	and.b #1,%d0	|, _87
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp628
	ext.w %d0	| tmp627
	neg.w %d0	| tmp629
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _933
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a2),%d4	| MEM[(short unsigned int *)screen_115 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _939, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a2),%d3	| MEM[(short unsigned int *)screen_115 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _939, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a2),%d2	| MEM[(short unsigned int *)screen_115 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _933, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a2)	| data, MEM[(short unsigned int *)screen_115 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _933, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a2)	| data, MEM[(short unsigned int *)screen_115 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a2)	|, MEM[(short unsigned int *)screen_115 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a2)	| data, MEM[(short unsigned int *)screen_115 + 326B]
| voxel.c:790: 	for(int i=0; i<FRAMES; i++) {
	cmp.l #800,98(%sp)	|, %sfp
	jne .L268		|
.L308:
| voxel.c:912: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:913: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 106(%sp),%a0	| %sfp, tmp638
| voxel.c:913: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp638, tmp640
	add.l %a0,%d0	| tmp638, tmp640
	add.l %d0,%d0	| tmp640, tmp641
| voxel.c:914: 	unsigned long millis_per_frame = millis / frames;
	move.l 98(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:915: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp696,
	pea .LC12		|
	jsr _printf		|
| voxel.c:916: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:917: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L236:
| voxel.c:920: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:921: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:922: 	install_palette(saved_palette);
	pea 132(%sp)		|
	jsr _install_palette		|
| voxel.c:924: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (116,%sp),%sp	|,
	rts	
.L302:
| voxel.c:755: 		printf("Failed to load voxel data.\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:756: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:920: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:921: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:922: 	install_palette(saved_palette);
	pea 132(%sp)		|
	jsr _install_palette		|
| voxel.c:924: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (116,%sp),%sp	|,
	rts	
.L303:
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	clr.w %d4	| _419
| voxel.c:343: 	asm ("movep.l 0(%1), %0" : "=d" (result) : "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l 0(%a0), %d3	| pBlock, result
| 0 "" 2
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
#NO_APP
	and.w #-256,%d0	|, tmp498
| voxel.c:390: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp499
| voxel.c:391: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp500
| voxel.c:453: 				movep_data |= read_p(pBlock) & ~pixel_mask;
	lea _pdata_table,%a2	|,
	move.l (%a2,%d0.l),%d0	| *_424, tmp502
	eor.l %d3,%d0	| result, tmp502
	and.l %d6,%d0	| pixel_mask, tmp503
	eor.l %d3,%d0	| result, movep_data
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| _419, y
	jge .L248		|
.L304:
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a4,%d2	| _214, tmp504
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l 46(%sp),%a1	| %sfp, y_table_shifted
	jne .L254		|
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 86(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:434: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+80,%a5	|, opacity_table_shifted
.L260:
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d0	|, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _312
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a1	| _312,
	move.w (%a1),%d3	| *_312, sample
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| SR.544
	move.b %d3,%d0	| sample, SR.544
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| SR.544, tmp519
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a3,%d0.l),%d5	| (*y_table_shifted_706)[_314], sample_y
	sub.w %a6,%d5	| y_min.21_389, sample_y
| voxel.c:487: 		.y = y + y_min,
	move.w %d1,%d4	| y, prephitmp_1071
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d5,%d1	| sample_y, y
	jlt .L255		|
.L307:
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _321
	jlt .L305		|
.L256:
| voxel.c:395: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	| opacity_preshifted
	move.b (%a5)+,%d0	| *opacity_table_shifted_724, opacity_preshifted
| voxel.c:395: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d3	|, tmp521
| voxel.c:395: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d0,%a2	| opacity_preshifted, offset
	add.w %d3,%a2	| tmp521, offset
| voxel.c:396: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _346
	move.w %a2,%d0	| offset, _346
| voxel.c:469: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| _321, y
	jlt .L255		|
	move.w %d5,%d7	| _321, _946
	subq.w #1,%d7	|, _946
	move.l %a0,%a1	| pBlock, pBlock
	move.l %d0,%a2	| _346, tmp663
	add.l #_pdata_table,%a2	|, tmp663
.L257:
| voxel.c:343: 	asm ("movep.l 0(%1), %0" : "=d" (result) : "a" (p));
#APP
| 343 "voxel.c" 1
	movep.l 0(%a1), %d3	| pBlock, result
| 0 "" 2
| voxel.c:470: 					unsigned int movep_data = pdata_entry[y&7] & pixel_mask;
#NO_APP
	moveq #7,%d0	|, tmp525
	and.l %d1,%d0	| y, tmp525
	add.l %d0,%d0	| tmp525, tmp526
	add.l %d0,%d0	| tmp526, tmp527
| voxel.c:471: 					movep_data |= read_p(pBlock) & ~pixel_mask;
	move.l (%a2,%d0.l),%d0	| *_352, tmp531
	eor.l %d3,%d0	| result, tmp531
	and.l %d6,%d0	| pixel_mask, tmp532
	eor.l %d3,%d0	| result, movep_data
| voxel.c:338: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 338 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a1),%a1	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:469: 				while (y >= sample_y) {
	cmp.w %d1,%d7	| y, _946
	jne .L257		|
	sub.w %d5,%d4	| _321, tmp534
	and.l #65535,%d4	|, tmp535
	addq.l #1,%d4	|, tmp536
	move.l %d4,%d0	| tmp536, tmp538
	add.l %d4,%d0	| tmp536, tmp538
	add.l %d0,%d0	| tmp538, tmp539
	add.l %d4,%d0	| tmp536, tmp540
	lsl.l #5,%d0	|, tmp541
	sub.l %d0,%a0	| tmp541, pBlock
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a4,%d2	| _214, tmp543
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l 50(%sp),%a3	| %sfp, y_table_shifted
	jeq .L306		|
	cmp.w #-1,%d1	|, y
	jeq .L297		|
| voxel.c:352: 	asm (
#APP
| 352 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:377: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d0	|, index
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _312
| voxel.c:378: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a1	| _312,
	move.w (%a1),%d3	| *_312, sample
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| SR.544
	move.b %d3,%d0	| sample, SR.544
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| SR.544, tmp519
| voxel.c:440: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a3,%d0.l),%d5	| (*y_table_shifted_706)[_314], sample_y
	sub.w %a6,%d5	| y_min.21_389, sample_y
| voxel.c:487: 		.y = y + y_min,
	move.w %d1,%d4	| y, prephitmp_1071
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d5,%d1	| sample_y, y
	jge .L307		|
.L255:
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a4,%d2	| _214, tmp656
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l 50(%sp),%a3	| %sfp, y_table_shifted
	jne .L260		|
| voxel.c:487: 		.y = y + y_min,
	add.w %a6,%d4	| y_min.21_389, _1024
	move.w %d4,%d0	| _1024, _1028
	jra .L245		|
.L246:
| voxel.c:480: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a4,%d2	| _214, tmp657
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:438: 	for(short z = z_begin - z_end; z < 0 && y >= 0; old_z = z + z_end, z++) {
	cmp.l 46(%sp),%a1	| %sfp, y_table_shifted
	jne .L254		|
.L252:
	cmp.w #-1,%d1	|, y
	jeq .L297		|
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 86(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:434: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+80,%a5	|, opacity_table_shifted
	jra .L260		|
.L305:
| voxel.c:447: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _321
	jra .L256		|
.L306:
	move.w %d1,%d4	| y, prephitmp_1071
| voxel.c:487: 		.y = y + y_min,
	add.w %a6,%d4	| y_min.21_389, _1024
	move.w %d4,%d0	| _1024, _1028
	jra .L245		|
.L277:
	sub.l %a0,%a0	| prephitmp_1048
| voxel.c:855: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| prephitmp_1048,
	move.l 114(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _71
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _71,
	muls.w _pos+6,%d0	| pos.dirx, tmp569
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp570
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp572
	swap %d0	| vect__77.552
	clr.w %d0	| vect__77.552
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp578
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp579
| voxel.c:858: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp581
| voxel.c:857: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp581, vect__77.552
	move.l %d0,(%a0)	| vect__77.552, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:902: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #8,%sp	|,
	lsr.w #2,%d0	|, tmp587
	and.w #8192,%d0	|, _1042
| voxel.c:199: 	data &= mask;
	move.l 74(%sp),%a2	| %sfp,
	move.l 4(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 4B], tmp588
	and.l #-536879105,%d3	|, tmp588
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1042
	move.w %d0,%d1	| _1042, _1042
| voxel.c:199: 	data &= mask;
	move.l (%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115], tmp593
	and.l #-536879105,%d4	|, tmp593
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1042
	swap %d2	| _1042
	clr.w %d2	| _1042
	move.w %d0,%d2	| _1042, _1042
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1042, tmp593
	move.l %d4,(%a2)	| tmp593, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115]
	or.l %d1,%d3	| _1042, tmp588
	move.l %d3,4(%a2)	| tmp588, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 4B]
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp601
	and.b #1,%d0	|, _85
| voxel.c:903: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp604
	ext.w %d0	| tmp603
	neg.w %d0	| tmp605
	lsl.w %d1,%d0	|, _1032
| voxel.c:199: 	data &= mask;
	move.l 644(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 644B], tmp606
	and.l #-536879105,%d3	|, tmp606
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1032
	move.w %d0,%d1	| _1032, _1032
| voxel.c:199: 	data &= mask;
	move.l 640(%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 640B], tmp611
	and.l #-536879105,%d4	|, tmp611
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1032
	swap %d2	| _1032
	clr.w %d2	| _1032
	move.w %d0,%d2	| _1032, _1032
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1032, tmp611
	move.l %d4,640(%a2)	| tmp611, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 640B]
	or.l %d1,%d3	| _1032, tmp606
	move.l %d3,644(%a2)	| tmp606, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_115 + 644B]
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp619
	and.b #1,%d1	|, _86
| voxel.c:904: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp622
	ext.w %d1	| tmp621
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _939
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp625
	and.b #1,%d0	|, _87
| voxel.c:905: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp628
	ext.w %d0	| tmp627
	neg.w %d0	| tmp629
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _933
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a2),%d4	| MEM[(short unsigned int *)screen_115 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _939, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a2),%d3	| MEM[(short unsigned int *)screen_115 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _939, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a2),%d2	| MEM[(short unsigned int *)screen_115 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _933, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a2)	| data, MEM[(short unsigned int *)screen_115 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _933, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a2)	| data, MEM[(short unsigned int *)screen_115 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a2)	|, MEM[(short unsigned int *)screen_115 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a2)	| data, MEM[(short unsigned int *)screen_115 + 326B]
| voxel.c:790: 	for(int i=0; i<FRAMES; i++) {
	cmp.l #800,98(%sp)	|, %sfp
	jne .L268		|
	jra .L308		|
.L273:
	move.w #32640,%d0	|, _34
	moveq #2,%d1	|,
	move.l %d1,102(%sp)	|, %sfp
| voxel.c:803: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d0,_pos+4	| _34, pos.z
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d0	|, tmp452
	swap %d0	| tmp452
	clr.w %d0	| tmp452
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d0	| val.9_199, tmp454
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp454
	move.l %d0,82(%sp)	| tmp454, %sfp
| voxel.c:822: 			fixp dv8 = (short)(x - 160) * pos.dirx;
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:823: 			fixp du8 = -(short)(x - 160) * pos.diry;
	move.w _pos+8,80(%sp)	| pos.diry, %sfp
| voxel.c:431: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 102(%sp),%d2	| %sfp,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,90(%sp)	|, %sfp
	move.l 102(%sp),%d3	| %sfp,
	add.l #_y_table+81920,%d3	|,
	move.l %d3,86(%sp)	|, %sfp
| voxel.c:535: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,94(%sp)	| pdata_table[15][7][0], %sfp
	move.w 80(%sp),%d4	| %sfp,
	muls.w #160,%d4	|,
	move.w %d4,58(%sp)	|, %sfp
	move.w 78(%sp),%d5	| %sfp,
	muls.w #-160,%d5	|,
	move.w %d5,60(%sp)	|, %sfp
	move.l #_horizon,62(%sp)	|, %sfp
| voxel.c:813: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 1) {
	clr.w 56(%sp)	| %sfp
	add.l #77824,%d2	|,
	move.l %d2,46(%sp)	|, %sfp
	add.l #49152,%d3	|,
	move.l %d3,50(%sp)	|, %sfp
	jra .L263		|
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
	.skip 128
	.globl	_pdata_table
	.even
_pdata_table:
	.skip 65536
	.globl	_y_table
	.even
_y_table:
	.skip 131072
	.globl	_max_height
_max_height:
	.skip 1
	.globl	_combined
	.even
_combined:
	.skip 524288
