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
	move.l 68(%sp),%a6	| %sfp, ivtmp.176
	add.l 80(%sp),%a6	| pixels, ivtmp.176
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
	lea (16,%a6),%a6	|, ivtmp.176
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
	sub.l %a2,%a2	| ivtmp.208
| voxel.c:122: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.201
	add.l %a2,%a0	| ivtmp.208, ivtmp.201
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
	lea (16,%a0),%a0	|, ivtmp.201
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:122: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:122: 	for (int y=0; y<height; y++) {
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
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.214_11]
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
| voxel.c:247: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:246: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:245: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L49:
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:249: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _202
	add.w #45,%d2	|, _202
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.350, ivtmp.339
	move.w #-17920,%a2	|, ivtmp.336
.L50:
| voxel.c:249: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.336,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _202,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:248: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.336
	cmp.w #17920,%a2	|, ivtmp.336
	jne .L50		|
| voxel.c:254: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:256: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:256: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:64: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:259: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:260: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L106		|
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:247: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:247: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.350
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:265: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.327
	clr.b %d2	| max_height_lsm_flag.249
	clr.b %d1	| max_height_lsm.248
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.327, ivtmp.320
.L55:
| voxel.c:268: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _69
| voxel.c:268: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.248, _69
	jls .L54		|
| voxel.c:269: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _69, max_height_lsm.248
| voxel.c:268: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.249
.L54:
| voxel.c:267: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.320
	cmp.l %a0,%a1	| ivtmp.320, ivtmp.327
	jne .L55		|
| voxel.c:266: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.320, ivtmp.327
	cmp.l #_combined+524289,%a0	|, ivtmp.320
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.249
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.248, max_height
.L57:
| voxel.c:273: 	int bayer[8][8] = {
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
| voxel.c:283: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L58:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
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
	sub.l %a4,%a4	| ivtmp.300
.L81:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L73		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L73:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L74		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L74:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L75		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L75:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L76		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L76:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L77		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L77:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L78		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L78:
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L79		|
| voxel.c:289: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L79:
| voxel.c:294: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _185
	move.b %d7,%d1	|, _185
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
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
| voxel.c:296: 						| pdata_pattern(15, ~mask);
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
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
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
	move.l %d3,%d2	| color1, ivtmp.291
	neg.l %d2	| ivtmp.291
	move.l %a3,%a0	| ivtmp.299, ivtmp.292
	move.l %d7,44(%sp)	| _167, %sfp
.L70:
	move.b %d5,%d0	| _120, _52
	add.b %d2,%d0	| ivtmp.291, _52
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _52, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_168, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _52
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_171,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _52
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_177,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:237: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _52
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:297: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.291, tmp229
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.300, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_227]
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_133]
| voxel.c:292: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.291
	lea (-3840,%a0),%a0	|, ivtmp.292
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.291,
	jne .L70		|
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _167
	addq.l #1,%d3	|, color1
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.299
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:284: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.300
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.300,
	jne .L81		|
| voxel.c:283: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:283: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L58		|
| voxel.c:308: 	short top_envelope[20] = {
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
| voxel.c:314: 	short bottom_envelope[20] = {
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
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _38
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_294]
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_316]
| voxel.c:323: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _42
| voxel.c:323: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_318]
| voxel.c:323: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_295]
| voxel.c:321: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.272, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.265
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L83:
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_191]
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:330: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:331: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L106:
| voxel.c:260: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:262: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:247: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:247: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.350
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _330
	move.l %d3,%d2	| color1, ivtmp.291
	neg.l %d2	| ivtmp.291
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.299, ivtmp.292
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
	move.l 72(%sp),%d7	| delta_vu, delta_vu
	move.l 84(%sp),%d6	| index_mask, index_mask
	move.w 82(%sp),%d5	| y_min, y_min
	move.b 91(%sp),47(%sp)	| fog, %sfp
| voxel.c:415: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:416: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:417: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:420: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 78(%sp),%a0	| player_height, ytable_offset
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp99
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d4,%a5	| z_begin, z_begin
	move.l %a5,%d0	| z_begin,
	moveq #10,%d2	|,
	lsl.l %d2,%d0	|,
	lea (%a0,%d0.l),%a4	| tmp99, tmp101, tmp102
	add.l #_y_table,%a4	|, y_table_shifted
| voxel.c:424: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a5	|, opacity_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	sub.w 70(%sp),%d4	| z_end, z
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	jpl .L108		|
	cmp.w %d1,%d5	| y, y_min
	jgt .L108		|
| voxel.c:351: 	asm (
	move.w #-128,%a6	|, tmp106
.L117:
	move.w %a6,%d2	| tmp106, tmp
#APP
| 351 "voxel.c" 1
	move.l %d3, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d2, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d3, %d2	| sample_vu, tmp
	lsr.w #6, %d2	| tmp
	or.w %d2,%d0	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d0	| index_mask, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _77
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a0	| _77,
	move.w (%a0),%d2	| *_77, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d0	| SR.359
	move.b %d2,%d0	| sample, SR.359
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.359, tmp109
	move.w (%a4,%d0.l),%a0	| (*y_table_shifted_119)[_12], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L109		|
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %a0,%d5	| sample_y, y_min
	jgt .L110		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d2,%d0	| sample, _19
	and.w #-256,%d0	|, _19
| voxel.c:438: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L112		|
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp124
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp125
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d0.l),%d0	| *_132, _35
.L114:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L114		|
.L115:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp123
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L108		|
	cmp.w %d1,%d5	| y, y_min
	jle .L117		|
.L108:
| voxel.c:471: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:472: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L109:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L115		|
.L119:
	move.w %d5,%a0	| y_min, sample_y
	clr.w %d4	| z
.L112:
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a5),%d2	| MEM[(unsigned char *)opacity_table_shifted_120],
	move.w %d2,%a3	|, opacity_preshifted
	add.w %d0,%a3	| _19, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _91
	move.w %a3,%d0	| offset, _91
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L115		|
	move.l %d0,%a3	| _91, tmp128
	add.l #_pdata_table,%a3	|, tmp128
.L116:
| voxel.c:452: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp116
	and.l %d1,%d0	| y, tmp116
	add.l %d0,%d0	| tmp116, tmp117
	add.l %d0,%d0	| tmp117, tmp118
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d0.l),%d0	| *_18, *_18
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:454: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jlt .L115		|
| voxel.c:452: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp116
	and.l %d1,%d0	| y, tmp116
	add.l %d0,%d0	| tmp116, tmp117
	add.l %d0,%d0	| tmp117, tmp118
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d0.l),%d0	| *_18, *_18
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:454: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L116		|
	jra .L115		|
.L110:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d2,%d0	| sample, _19
	and.w #-256,%d0	|, _19
| voxel.c:438: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L119		|
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp110
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp111
	add.l #_pdata_table,%d0	|, _85
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L131		|
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a3	| _85,
	move.l (%a3),%d0	| *_85, _35
	move.w %d5,%a0	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a0,%d1	| sample_y, y
	jge .L114		|
	jra .L115		|
.L131:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp112
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:471: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:472: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #16176,-(%sp)	|,
	move.l 36(%sp),%d3	| sample_vu, sample_vu
	move.l 40(%sp),%d5	| delta_vu, delta_vu
| voxel.c:481: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 46(%sp),%a0	| start_height, ytable_offset
| voxel.c:483: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp60
| voxel.c:483: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:489: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:488: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:486: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d6	|, index_mask
| voxel.c:351: 	asm (
	move.w #-128,%a2	|, tmp73
.L135:
	move.w %d2,%d1	| z, z
| voxel.c:499: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a1	| _50, y_table_shifted
| voxel.c:500: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_vu, tmp61
	add.l %d4,%d3	| sample_vu, tmp61
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:491: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L133		|
| voxel.c:351: 	asm (
	move.w %a2,%d7	| tmp73, tmp
#APP
| 351 "voxel.c" 1
	move.l %d4, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d4, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _37
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _37,
	move.w (%a3),%d1	| *_37, sample
| voxel.c:494: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.384
| voxel.c:494: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.384, tmp67
| voxel.c:495: 			if (sample_y < min_y) {
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L134		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L134:
| voxel.c:503: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp69
	and.w #15,%d1	|, tmp69
	jne .L133		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp70
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:382: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp71
| voxel.c:382: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L133:
| voxel.c:490: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L135		|
| voxel.c:513: }
	movem.l (%sp)+,#3324	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L139		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L141:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:520: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L141		|
.L139:
| voxel.c:522: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L146		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L147:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:520: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L147		|
.L146:
| voxel.c:527: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:528: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:546: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:547: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:548: }
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:554: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.441
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L156:
| voxel.c:565: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:566: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:567: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:546: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:547: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:546: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:547: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:546: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:547: 	return c >> 1;
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:572: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:572: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:564: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.441
	cmp.l %d3,%a3	| _445, ivtmp.441
	jne .L156		|
| voxel.c:574: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.447
	clr.w %d0	| vect__18.447
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.447
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.447, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:580: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L164		|
	cmp.w #128,%d0	|, val
	jge .L165		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:585: }
	rts	
.L165:
| voxel.c:583: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:585: }
	rts	
.L164:
| voxel.c:583: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:585: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:590: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:593: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:600: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:602: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:614: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:595: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.477
| voxel.c:602: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L175:
| voxel.c:605: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:612: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L185		|
| voxel.c:614: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:620: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L186		|
.L170:
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
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:624: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:625: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L187		|
.L171:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L176		|
.L188:
	cmp.w #128,%d4	|, _504
	jge .L177		|
	add.b %d4,%d4	| _504, iftmp.36_290
.L172:
| voxel.c:628: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L178		|
.L189:
	cmp.w #128,%d3	|, _75
	jge .L179		|
	add.b %d3,%d3	| _75, iftmp.37_360
.L173:
| voxel.c:629: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:630: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L180		|
.L190:
	cmp.w #128,%d2	|, _404
	jge .L181		|
	add.b %d2,%d2	| _404, iftmp.37_295
| voxel.c:630: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:603: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.477
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
.L191:
| voxel.c:632: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:633: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:635: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:636: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L187:
| voxel.c:625: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L188		|
.L176:
	clr.b %d4	| iftmp.36_290
| voxel.c:628: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L189		|
.L178:
	clr.b %d3	| iftmp.37_360
| voxel.c:629: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:630: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:583: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L190		|
.L180:
	clr.b %d2	| iftmp.37_295
| voxel.c:630: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:603: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.477
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
	jra .L191		|
.L185:
| voxel.c:612: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:614: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:620: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L170		|
.L186:
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
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:578: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:552: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:624: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:625: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L171		|
	jra .L187		|
.L177:
| voxel.c:583: 	return val < 0 ? 0 : (
	st %d4		| iftmp.36_290
	jra .L172		|
.L181:
	st %d2		| iftmp.37_295
| voxel.c:630: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:603: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.477
	cmp.l %a0,%a4	|, tmp230
	jne .L175		|
	jra .L191		|
.L179:
| voxel.c:583: 	return val < 0 ? 0 : (
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
| voxel.c:640: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:641: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:642: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L214		|
| voxel.c:646: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:647: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L210		|
	lea _fclose,%a2	|, tmp103
.L195:
| voxel.c:699: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L205:
| voxel.c:701: 	return 0;
	moveq #0,%d0	| <retval>
.L192:
| voxel.c:702: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L210:
| voxel.c:649: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:649: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:650: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:651: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:653: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:654: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:657: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:656: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:661: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L196:
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L198		|
	move.l %d6,%d0	| remaining, remaining
.L198:
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:658: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L215		|
| voxel.c:659: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:660: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:661: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.499
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L197:
| voxel.c:663: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:664: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:662: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.499, _92
	jne .L197		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L196		|
.L215:
| voxel.c:667: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:668: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:670: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:671: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:672: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L216		|
| voxel.c:676: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:677: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L217		|
| voxel.c:678: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:679: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:680: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:683: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L201:
| voxel.c:680: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:680: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L203		|
	move.l %d7,%d0	| remaining, remaining
.L203:
| voxel.c:680: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:680: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L218		|
| voxel.c:681: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:682: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:683: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.492
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L202:
| voxel.c:685: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:686: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:684: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.492, _73
	jne .L202		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L201		|
.L218:
| voxel.c:689: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:690: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:692: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:693: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:694: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:702: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L214:
| voxel.c:643: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:644: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:701: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L192		|
.L216:
| voxel.c:673: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:674: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L195		|
.L217:
| voxel.c:697: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:699: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L205		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L221		|
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:706: }
	movem.l (%sp)+,#1036	|,
	rts	
.L221:
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:706: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:709: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L225:
#APP
| 709 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L225		|
| voxel.c:711: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L226:
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L226		|
| voxel.c:713: 	Bconin(_CON);
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:714: }
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
	lea (-128,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:718: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:720: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:723: 	Super(0L);
	moveq #0,%d0	| tmp538
#APP
| 723 "voxel.c" 1
	movl	%d0,%sp@-	| tmp538
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:725: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:727: 	lineaa();
	jsr _lineaa		|
| voxel.c:730: 	save_palette(saved_palette);
	pea 144(%sp)		|
	jsr _save_palette		|
| voxel.c:732: 	unsigned short *screen = Physbase();
#APP
| 732 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,56(%sp)	| tmp934, %sfp
| voxel.c:734: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:736: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:736: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp935
	jeq .L378		|
| voxel.c:741: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:742: 	build_tables();
	jsr _build_tables		|
| voxel.c:743: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:744: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (138,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 142(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:745: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L234		|
| voxel.c:746: 	read_palette_vectors(cockpit.colors);
	move.l 134(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 52(%sp),%a0	| %sfp, ivtmp.713
	move.l %a0,%d0	| ivtmp.713, _158
	add.l #32000,%d0	|, _158
	addq.l #4,%sp	|,
.L235:
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.547_1356]
	cmp.l %d0,%a0	| _158, ivtmp.713
	jne .L235		|
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.704
	lea _view_max,%a2	|, ivtmp.707
	move.l #_view_min+80,%d4	|, _1193
	clr.w %d3	| ivtmp.705
.L240:
| voxel.c:750: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1195], _5
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.705, tmp554
	asr.w #4,%d6	|, tmp554
	ext.l %d6	| tmp555
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp555, tmp556
	add.l %d6,%d6	| tmp556, _196
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp559
	lsr.l #3,%d5	|, tmp559
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _201
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _196, tmp560
	add.l %d6,%a0	| _196, tmp560
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _201, tmp561
	add.l 48(%sp),%a0	| %sfp, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L236		|
	mulu.w #160,%d1	|, tmp562
	add.l %a0,%d1	| pBlock, _260
.L237:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:520: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _260
	jne .L237		|
.L236:
| voxel.c:751: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1192], _9
| voxel.c:751: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _11
	sub.w %a0,%d1	| _9, _11
| voxel.c:751: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp564
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp564,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp565
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _196, tmp567
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp567, tmp568
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp568, tmp569
	move.l 48(%sp),%a0	| %sfp, pBlock
	add.l %d5,%a0	| tmp569, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L238		|
	mulu.w #160,%d1	|, tmp570
	add.l %a0,%d1	| pBlock, _1331
.L239:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:520: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1331
	jne .L239		|
.L238:
| voxel.c:749: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.705
	cmp.l %d4,%a1	| _1193, ivtmp.704
	jne .L240		|
| voxel.c:754: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:755: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:756: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:759: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 142(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 72(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:763: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,150(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 112(%sp)	| %sfp
| voxel.c:768: 	int frames = 0;
	clr.l 104(%sp)	| %sfp
| voxel.c:764: 	unsigned long t_render = 0;
	clr.l 108(%sp)	| %sfp
| voxel.c:351: 	asm (
	move.w #-128,%a5	|, tmp928
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp929
.L309:
	move.l 104(%sp),114(%sp)	| %sfp, %sfp
| voxel.c:777: 		frames++;
	addq.l #1,104(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.69_215
	move.w (%a0),%d0	| *hw_palette.69_215, _216
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_213
	lea _pos,%a2	|,
	move.w (%a2),%d3	| pos.x, val.9_211
| voxel.c:782: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_213, tmp583
	lsr.w #7,%d0	|, tmp583
| voxel.c:781: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp584
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_211, tmp585
	lsr.w #7,%d1	|, tmp585
| voxel.c:781: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp586
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp587
	add.l %d1,%d0	| tmp586, tmp588
	add.l %d0,%d0	| tmp588, tmp589
| voxel.c:782: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp593
	move.w %d4,%d1	| _27, player_height
	sub.w %d0,%d1	| tmp593, player_height
| voxel.c:784: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w #2560,%a0	|, _31
	sub.w %d1,%a0	| player_height, _31
	move.w #256,%d0	|, _1302
| voxel.c:785: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #1284,%a0	|, _31
	jgt .L241		|
	move.w #-256,%d0	|, _1302
| voxel.c:786: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-1284,%a0	|, _31
	jlt .L241		|
| voxel.c:784: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	pea 5.w		|
	move.l %a0,-(%sp)	| _31,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
.L241:
| voxel.c:787: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _27, _34
	move.w %d0,_pos+4	| _34, pos.z
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp603
	clr.w %d2	| tmp603
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_211, tmp605
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d7	| tmp605, sample_vu
	and.l #-65538,%d7	|, sample_vu
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 112(%sp),%d1	| %sfp, tmp606
	and.w #8,%d1	|, tmp606
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d1	|, tmp606
	move.w %d1,46(%sp)	| tmp606, %sfp
| voxel.c:788: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _34
	jle .L242		|
| voxel.c:788: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
| voxel.c:794: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,118(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	moveq #2,%d0	|,
	move.l %d0,100(%sp)	|, %sfp
	move.l %d0,%d1	|,
	move.l %d0,%d2	|,
	move.l %d0,%d4	|,
	move.l %d0,%d5	|,
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,64(%sp)	| pos.dirx, %sfp
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d1	|,
	move.l %d1,96(%sp)	|, %sfp
	add.l #_y_table+16384,%d2	|,
	move.l %d2,92(%sp)	|, %sfp
	add.l #_y_table+24576,%d4	|,
	move.l %d4,88(%sp)	|, %sfp
	add.l #_y_table+32768,%d5	|,
	move.l %d5,84(%sp)	|, %sfp
	move.l 100(%sp),%d0	| %sfp,
	add.l #_y_table+40960,%d0	|,
	move.l %d0,80(%sp)	|, %sfp
	move.l 100(%sp),%d1	| %sfp,
	add.l #_y_table+49152,%d1	|,
	move.l %d1,76(%sp)	|, %sfp
	move.l 100(%sp),%d2	| %sfp,
	add.l #_y_table+57344,%d2	|,
	move.l %d2,72(%sp)	|, %sfp
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d6	| pdata_table[15][7][0], movep_data
	moveq #0,%d0	| x
	move.w 46(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp618
	add.l #_horizon,%d0	|, tmp618
	move.l %d0,52(%sp)	| tmp618, %sfp
	move.l %d7,68(%sp)	| sample_vu, %sfp
.L304:
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 46(%sp),%d0	| %sfp, _42
	add.w #-160,%d0	|, _42
| voxel.c:809: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	move.w 64(%sp),%d3	| %sfp,
	muls.w %d0,%d3	| _42, tmp619
| voxel.c:809: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	asr.l #8,%d3	|, tmp620
| voxel.c:809: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	add.w 66(%sp),%d3	| %sfp, tmp621
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp623
	clr.w %d3	| tmp623
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	muls.w 66(%sp),%d0	| %sfp, tmp624
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	asr.l #8,%d0	|, tmp625
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 64(%sp),%d1	| %sfp, tmp626
	sub.w %d0,%d1	| tmp625, tmp626
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp626, tmp628
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _226
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l 68(%sp),%d1	| %sfp, tmp629
	add.l %d3,%d1	| _226, tmp629
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp630
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp631
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp632
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp633
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp634
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp635
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:819: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 46(%sp),%d0	| %sfp, tmp636
	lsr.w #3,%d0	|, tmp636
	and.l #65535,%d0	|,
	move.l %d0,%a1	|, _57
| voxel.c:819: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d0,%a1	| _57, tmp638
	lea _view_max,%a0	|,
	move.w (%a0,%a1.l),%d0	| view_max[_57], y
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d2	| %sfp, tmp639
	asr.w #4,%d2	|, tmp639
	move.w %d2,%a0	| tmp639, tmp640
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp640, tmp641
	add.l %a0,%a0	| tmp641, tmp641
	move.l %a0,56(%sp)	| tmp641, %sfp
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d2	| %sfp,
	lsr.l #3,%d2	|, tmp644
	moveq #1,%d4	|,
	and.l %d2,%d4	| tmp644,
	move.l %d4,60(%sp)	|, %sfp
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	| y,
	muls.w #80,%d2	|, tmp645
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp645, tmp647
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp647, tmp648
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	|, tmp649
	add.l 48(%sp),%a0	| %sfp, pBlock
| voxel.c:823: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a2	|,
	move.w (%a2,%a1.l),%d2	| view_min[_57], _60
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d0,%d2	| y, _60
	jgt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 96(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-12,%d5	|, z
.L252:
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524286,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _783
	add.l #_combined,%a1	|, _783
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_783, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.544
	move.b %d4,%d7	| sample, SR.544
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.544, tmp657
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_599)[_785], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L245		|
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %a1,%d2	| sample_y, _60
	jgt .L246		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp658
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp659
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp660
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1251, _102
.L250:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _102, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L250		|
.L251:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp666
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L249		|
.L379:
	cmp.w %d2,%d0	| _60, y
	jge .L252		|
.L295:
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 52(%sp),%a1	| %sfp,
	move.w (%a1),%a0	| MEM[(short int *)_1324], _273
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d1	| y, _274
	sub.w %a0,%d1	| _273, _274
| voxel.c:526: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %a0,%d2	| _273, tmp780
	addq.w #1,%d2	|, tmp780
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp781
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 56(%sp),%d2	| %sfp, tmp783
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp783, tmp784
| voxel.c:335: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp784, tmp785
	add.l 60(%sp),%a0	| %sfp, tmp785
	add.l 48(%sp),%a0	| %sfp, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _274
	jle .L302		|
	mulu.w #160,%d1	|, tmp786
	add.l %a0,%d1	| pBlock, _1284
.L303:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d6, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:520: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:518: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1284
	jne .L303		|
.L302:
| voxel.c:527: 	horizon[x] = y;
	move.l 52(%sp),%a2	| %sfp,
	move.w %d0,(%a2)	| y, MEM[(short int *)_1324]
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	moveq #32,%d0	|,
	add.l %d0,52(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L304		|
| voxel.c:842: 		unsigned long t_render_1 = *_hz_200;
	move.l 68(%sp),%d7	| %sfp, sample_vu
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
	add.l 108(%sp),%d0	| %sfp, _508
| voxel.c:843: 		t_render += t_render_1 - t_render_0;
	sub.l 118(%sp),%d0	| %sfp, _508
	move.l %d0,108(%sp)	| _508, %sfp
| voxel.c:483: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 100(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d4	|, delta_vu
	not.w %d4	| delta_vu
| voxel.c:488: 	short min_y = 0x7fff;
	move.w #32767,%d6	|, min_y
| voxel.c:486: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d5	|, index_mask
| voxel.c:489: 	unsigned short z = 0;
	clr.w %d1	| z
.L307:
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:500: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d0	| z, z
| voxel.c:499: 		z++;
	addq.w #1,%d1	|, z
	move.l %d7,%d2	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d7	| delta_vu, tmp789
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_vu
| voxel.c:491: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d0	|, z
	jls .L305		|
| voxel.c:351: 	asm (
	move.w %a5,%d3	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d5,%d0	| index_mask, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _850
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a2	| _850,
	move.w (%a2),%d0	| *_850, sample
| voxel.c:494: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d0	|, SR.545
| voxel.c:494: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| SR.545, tmp795
| voxel.c:495: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| (*y_table_shifted_45)[_852], (*y_table_shifted_45)[_852]
	cmp.w %d6,%d0	| min_y, (*y_table_shifted_45)[_852]
	jge .L306		|
	move.w %d0,%d6	| (*y_table_shifted_45)[_852], min_y
.L306:
| voxel.c:503: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp797
	and.w #15,%d0	|, tmp797
	jne .L305		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp798
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:382: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp799
| voxel.c:382: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L305:
| voxel.c:490: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L307		|
| voxel.c:849: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d6	|, min_y
	jlt .L314		|
	move.w #128,%a0	|, _1526
| voxel.c:851: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d6	|, min_y
	jge .L308		|
| voxel.c:854: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d6	|, tmp800
	add.w %d6,%d6	| tmp800, tmp801
	add.w %d6,%d6	| tmp801, sunlight
| voxel.c:857: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d6,%a0	| sunlight, _1526
.L308:
	move.l %a0,-(%sp)	| _1526,
	move.l 118(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _73
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _73,
	muls.w _pos+6,%d0	| pos.dirx, tmp808
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp809
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp811
	swap %d0	| vect__79.550
	clr.w %d0	| vect__79.550
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp817
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp818
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp820
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp820, vect__79.550
	move.l %d0,(%a0)	| vect__79.550, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #8,%sp	|,
	lsr.w #2,%d0	|, tmp826
	and.w #8192,%d0	|, _1524
| voxel.c:199: 	data &= mask;
	move.l 48(%sp),%a2	| %sfp,
	move.l 4(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 4B], tmp827
	and.l #-536879105,%d3	|, tmp827
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1524
	move.w %d0,%d1	| _1524, _1524
| voxel.c:199: 	data &= mask;
	move.l (%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119], tmp832
	and.l #-536879105,%d4	|, tmp832
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1524
	swap %d2	| _1524
	clr.w %d2	| _1524
	move.w %d0,%d2	| _1524, _1524
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1524, tmp832
	move.l %d4,(%a2)	| tmp832, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119]
	or.l %d1,%d3	| _1524, tmp827
	move.l %d3,4(%a2)	| tmp827, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp840
	and.b #1,%d0	|, _87
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp843
	ext.w %d0	| tmp842
	neg.w %d0	| tmp844
	lsl.w %d1,%d0	|, _6
| voxel.c:199: 	data &= mask;
	move.l 644(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 644B], tmp845
	and.l #-536879105,%d3	|, tmp845
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _6
	move.w %d0,%d1	| _6, _6
| voxel.c:199: 	data &= mask;
	move.l 640(%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 640B], tmp850
	and.l #-536879105,%d4	|, tmp850
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _6
	swap %d2	| _6
	clr.w %d2	| _6
	move.w %d0,%d2	| _6, _6
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _6, tmp850
	move.l %d4,640(%a2)	| tmp850, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 640B]
	or.l %d1,%d3	| _6, tmp845
	move.l %d3,644(%a2)	| tmp845, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp858
	and.b #1,%d1	|, _88
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp861
	ext.w %d1	| tmp860
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1220
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp864
	and.b #1,%d0	|, _89
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp867
	ext.w %d0	| tmp866
	neg.w %d0	| tmp868
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1259
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a2),%d4	| MEM[(short unsigned int *)screen_119 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _1220, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a2),%d3	| MEM[(short unsigned int *)screen_119 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _1220, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a2),%d2	| MEM[(short unsigned int *)screen_119 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1259, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a2)	| data, MEM[(short unsigned int *)screen_119 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1259, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a2)	| data, MEM[(short unsigned int *)screen_119 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a2)	|, MEM[(short unsigned int *)screen_119 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a2)	| data, MEM[(short unsigned int *)screen_119 + 326B]
| voxel.c:775: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,112(%sp)	|, %sfp
	cmp.l #800,104(%sp)	|, %sfp
	jne .L309		|
.L397:
| voxel.c:917: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:918: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 122(%sp),%a0	| %sfp, tmp877
| voxel.c:918: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp877, tmp879
	add.l %a0,%d0	| tmp877, tmp879
	add.l %d0,%d0	| tmp879, tmp880
| voxel.c:919: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp885
	move.l 104(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp885
| voxel.c:920: 	printf("Total time per frame: %dms\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp937,
	pea .LC11		|
	lea _printf,%a2	|, tmp887
	jsr (%a2)		| tmp887
| voxel.c:921: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 116(%sp),%d0	| %sfp, tmp889
	add.l %d0,%d0	|, tmp889
	add.l %d0,%d0	| tmp889, tmp890
| voxel.c:921: 	printf("Time spent rendering terrain: %dms\n", t_render * 5 / frames);
	move.l 112(%sp),-(%sp)	| %sfp,
	move.l 120(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp885
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp938,
	pea .LC12		|
	jsr (%a2)		| tmp887
| voxel.c:922: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:923: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L234:
| voxel.c:926: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:927: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:928: 	install_palette(saved_palette);
	pea 144(%sp)		|
	jsr _install_palette		|
| voxel.c:930: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (128,%sp),%sp	|,
	rts	
.L378:
| voxel.c:737: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:738: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:926: 	printf("Press any key to exit to TOS.\n");
	pea .LC13		|
	jsr _puts		|
| voxel.c:927: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:928: 	install_palette(saved_palette);
	pea 144(%sp)		|
	jsr _install_palette		|
| voxel.c:930: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (128,%sp),%sp	|,
	rts	
.L245:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp666
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L379		|
.L249:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _226, tmp667
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _234
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 92(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524286,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _706
	add.l #_combined,%a1	|, _706
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_706, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.542
	move.b %d4,%d7	| sample, SR.542
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.542, tmp673
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_678)[_708], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L253		|
.L380:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %a1,%d2	| sample_y, _60
	jgt .L254		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp674
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp675
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp676
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1263, _1551
.L258:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1551, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L258		|
.L259:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp682
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L257		|
.L381:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524286,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _706
	add.l #_combined,%a1	|, _706
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_706, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.542
	move.b %d4,%d7	| sample, SR.542
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.542, tmp673
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_678)[_708], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L380		|
.L253:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp682
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L381		|
.L257:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 88(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _629
	add.l #_combined,%a1	|, _629
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_629, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.540
	move.b %d4,%d7	| sample, SR.540
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.540, tmp688
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_608)[_631], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L262		|
.L382:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %a1,%d2	| sample_y, _60
	jgt .L263		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp689
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp690
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp691
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1271, _1270
.L267:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1270, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L267		|
.L268:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp697
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L266		|
.L383:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _629
	add.l #_combined,%a1	|, _629
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_629, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.540
	move.b %d4,%d7	| sample, SR.540
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.540, tmp688
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_608)[_631], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L382		|
.L262:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp697
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L383		|
.L266:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _234, tmp698
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _232
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 84(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _552
	add.l #_combined,%a1	|, _552
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_552, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.538
	move.b %d4,%d7	| sample, SR.538
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.538, tmp704
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_227)[_554], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L271		|
.L384:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %a1,%d2	| sample_y, _60
	jgt .L272		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp705
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp706
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp707
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1440, _1388
.L276:
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1388, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L276		|
.L277:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp713
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L275		|
.L385:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _552
	add.l #_combined,%a1	|, _552
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d4	| *_552, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d7	| SR.538
	move.b %d4,%d7	| sample, SR.538
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d7,%d7	| SR.538, tmp704
	move.w (%a2,%d7.l),%a1	| (*y_table_shifted_227)[_554], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L384		|
.L271:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp713
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L385		|
.L275:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 80(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:424: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+40,%a4	|, opacity_table_shifted
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _475
	add.l #_combined,%a1	|, _475
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_475, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.536
	move.b %d7,%d4	| sample, SR.536
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.536, tmp719
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1083)[_477], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d0,%d4	| y, sample_y
	jgt .L280		|
.L386:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %d2,%d4	| _60, sample_y
	jlt .L281		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, sample
	move.w %d7,%a1	| sample, tmp720
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d7	|
	move.b (%a4),%d7	| MEM[(unsigned char *)opacity_table_shifted_760],
	move.w %d7,%a2	|, opacity_preshifted
	add.w %a1,%a2	| tmp720, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _500
	move.w %a2,%d7	| offset, _500
	move.l %d7,%a2	| _500, tmp907
	add.l #_pdata_table,%a2	|, tmp907
.L284:
| voxel.c:452: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp728
	add.l %d7,%a1	| tmp728, tmp729
	add.l %a1,%a1	| tmp729, tmp730
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d7	| *_506, *_506
#APP
| 340 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_506, pBlock
| 0 "" 2
| voxel.c:454: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d0,%d4	| y, sample_y
	jle .L284		|
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a4	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp735
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L283		|
.L387:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _475
	add.l #_combined,%a1	|, _475
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_475, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.536
	move.b %d7,%d4	| sample, SR.536
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.536, tmp719
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1083)[_477], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d0,%d4	| y, sample_y
	jle .L386		|
.L280:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a4	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp735
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L387		|
.L283:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _232, tmp736
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _230
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 76(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:424: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+48,%a4	|, opacity_table_shifted
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _398
	add.l #_combined,%a1	|, _398
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_398, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.534
	move.b %d7,%d4	| sample, SR.534
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.534, tmp742
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1087)[_400], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L288		|
.L388:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %d2,%d4	| _60, sample_y
	jlt .L289		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, sample
	move.w %d7,%a1	| sample, tmp743
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d7	|
	move.b (%a4),%d7	| MEM[(unsigned char *)opacity_table_shifted_1092],
	move.w %d7,%a2	|, opacity_preshifted
	add.w %a1,%a2	| tmp743, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _423
	move.w %a2,%d7	| offset, _423
	move.l %d7,%a2	| _423, tmp905
	add.l #_pdata_table,%a2	|, tmp905
.L292:
| voxel.c:452: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp751
	add.l %d7,%a1	| tmp751, tmp752
	add.l %a1,%a1	| tmp752, tmp753
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d7	| *_429, *_429
#APP
| 340 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_429, pBlock
| 0 "" 2
| voxel.c:454: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:455: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d0,%d4	| y, sample_y
	jle .L292		|
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a4	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _230, tmp758
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L291		|
.L389:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _398
	add.l #_combined,%a1	|, _398
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_398, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.534
	move.b %d7,%d4	| sample, SR.534
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.534, tmp742
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1087)[_400], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jge .L388		|
.L288:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a4	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _230, tmp758
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jne .L389		|
.L291:
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 72(%sp),%a3	| %sfp, y_table_shifted
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:424: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+56,%a4	|, opacity_table_shifted
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #517104,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _321
	add.l #_combined,%a1	|, _321
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_321, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.532
	move.b %d7,%d4	| sample, SR.532
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.532, tmp764
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1002)[_323], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L296		|
.L390:
| voxel.c:432: 			if (sample_y < y_min) {
	cmp.w %d2,%d4	| _60, sample_y
	jlt .L297		|
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, sample
	move.w %d7,%a1	| sample, tmp765
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d7	|
	move.b (%a4),%d7	| MEM[(unsigned char *)opacity_table_shifted_813],
	move.w %d7,%a2	|, opacity_preshifted
	add.w %a1,%a2	| tmp765, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _346
	move.w %a2,%d7	| offset, _346
	move.l %d7,%a2	| _346, tmp915
	add.l #_pdata_table,%a2	|, tmp915
.L299:
| voxel.c:452: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp772
	add.l %d7,%a1	| tmp772, tmp773
	add.l %a1,%a1	| tmp773, tmp774
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%a1.l),%d7	| *_352, *_352
#APP
| 340 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_352, pBlock
| 0 "" 2
| voxel.c:454: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:455: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d0,%d4	| y, sample_y
	jle .L299		|
.L300:
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:462: 		opacity_table_shifted++;
	addq.l #1,%a4	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _230, tmp779
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L295		|
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
| voxel.c:351: 	asm (
	move.w %a5,%d7	| tmp928, tmp
#APP
| 351 "voxel.c" 1
	move.l %d1, %d4	| sample_vu, result
	swap %d4	| result
	and.w %d7, %d4	| tmp, result
	lsl.l #3, %d4	| result
	and.w %d1, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d4	| tmp, result
| 0 "" 2
| voxel.c:373: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #517104,%d4	|, index
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d4,%a1	| index, _321
	add.l #_combined,%a1	|, _321
| voxel.c:374: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a1),%d7	| *_321, sample
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d4	| SR.532
	move.b %d7,%d4	| sample, SR.532
| voxel.c:429: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d4,%d4	| SR.532, tmp764
	move.w (%a3,%d4.l),%d4	| (*y_table_shifted_1002)[_323], sample_y
| voxel.c:430: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jge .L390		|
.L296:
| voxel.c:427: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
	jra .L300		|
.L246:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp662
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp663
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp664
	add.l #_pdata_table,%d4	|, _793
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L391		|
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a1	| _793,
	move.l (%a1),%d4	| *_793, _102
	move.w %d2,%a1	| _60, sample_y
	clr.w %d5	| z
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _102, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L250		|
	jra .L251		|
.L254:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp678
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp679
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp680
	add.l #_pdata_table,%d4	|, _716
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L392		|
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a1	| _716,
	move.l (%a1),%d4	| *_716, _1551
	move.w %d2,%a1	| _60, sample_y
	clr.w %d5	| z
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1551, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L258		|
	jra .L259		|
.L263:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp693
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp694
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp695
	add.l #_pdata_table,%d4	|, _639
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L393		|
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a1	| _639,
	move.l (%a1),%d4	| *_639, _1270
	move.w %d2,%a1	| _60, sample_y
	clr.w %d5	| z
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1270, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L267		|
	jra .L268		|
.L272:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp709
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp710
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp711
	add.l #_pdata_table,%d4	|, _562
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L394		|
| voxel.c:387: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d4,%a1	| _562,
	move.l (%a1),%d4	| *_562, _1388
	move.w %d2,%a1	| _60, sample_y
	clr.w %d5	| z
| voxel.c:340: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 340 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1388, pBlock
| 0 "" 2
| voxel.c:444: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:442: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L276		|
	jra .L277		|
.L281:
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d4	| opacity_preshifted
	move.b (%a4),%d4	| MEM[(unsigned char *)opacity_table_shifted_760], opacity_preshifted
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp724
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d4,%a2	| opacity_preshifted, offset
	add.w %d7,%a2	| tmp724, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _500
	move.w %a2,%d7	| offset, _500
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L395		|
	move.w %d2,%d4	| _60, sample_y
	clr.w %d5	| z
	move.l %d7,%a2	| _500, tmp907
	add.l #_pdata_table,%a2	|, tmp907
	jra .L284		|
.L289:
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d4	| opacity_preshifted
	move.b (%a4),%d4	| MEM[(unsigned char *)opacity_table_shifted_1092], opacity_preshifted
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp747
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d4,%a2	| opacity_preshifted, offset
	add.w %d7,%a2	| tmp747, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _423
	move.w %a2,%d7	| offset, _423
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L396		|
	move.w %d2,%d4	| _60, sample_y
	clr.w %d5	| z
	move.l %d7,%a2	| _423, tmp905
	add.l #_pdata_table,%a2	|, tmp905
	jra .L292		|
.L297:
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d4	| opacity_preshifted
	move.b (%a4),%d4	| MEM[(unsigned char *)opacity_table_shifted_813], opacity_preshifted
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp769
| voxel.c:391: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d4,%a2	| opacity_preshifted, offset
	add.w %d7,%a2	| tmp769, offset
| voxel.c:392: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _346
	move.w %a2,%d7	| offset, _346
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d2,%d0	| _60, y
	jlt .L295		|
	move.w %d2,%d4	| _60, sample_y
	clr.w %d5	| z
	move.l %d7,%a2	| _346, tmp915
	add.l #_pdata_table,%a2	|, tmp915
	jra .L299		|
.L396:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _230, tmp749
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L291		|
.L391:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _226, tmp665
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L249		|
.L392:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp681
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L257		|
.L393:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _234, tmp696
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L266		|
.L394:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp712
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L275		|
.L395:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _232, tmp726
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
	jra .L283		|
.L242:
| voxel.c:794: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,118(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, tmp610
| voxel.c:420: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp611
	sub.w %d0,%a0	| tmp610, tmp611
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp611, tmp612
	add.l %a0,%a0	| tmp612, tmp612
	move.l %a0,100(%sp)	| tmp612, %sfp
	move.l %a0,%d1	| tmp612,
	move.l %a0,%d2	| tmp612,
	move.l %a0,%d4	| tmp612,
	move.l %a0,%d5	| tmp612,
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,64(%sp)	| pos.dirx, %sfp
| voxel.c:810: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:421: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+4096,%d1	|,
	move.l %d1,96(%sp)	|, %sfp
	add.l #_y_table+16384,%d2	|,
	move.l %d2,92(%sp)	|, %sfp
	add.l #_y_table+24576,%d4	|,
	move.l %d4,88(%sp)	|, %sfp
	add.l #_y_table+32768,%d5	|,
	move.l %d5,84(%sp)	|, %sfp
	move.l 100(%sp),%d0	| %sfp,
	add.l #_y_table+40960,%d0	|,
	move.l %d0,80(%sp)	|, %sfp
	move.l 100(%sp),%d1	| %sfp,
	add.l #_y_table+49152,%d1	|,
	move.l %d1,76(%sp)	|, %sfp
	move.l 100(%sp),%d2	| %sfp,
	add.l #_y_table+57344,%d2	|,
	move.l %d2,72(%sp)	|, %sfp
| voxel.c:517: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d6	| pdata_table[15][7][0], movep_data
	moveq #0,%d0	| x
	move.w 46(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp618
	add.l #_horizon,%d0	|, tmp618
	move.l %d0,52(%sp)	| tmp618, %sfp
	move.l %d7,68(%sp)	| sample_vu, %sfp
	jra .L304		|
.L314:
	sub.l %a0,%a0	| _1526
| voxel.c:857: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1526,
	move.l 118(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _73
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _73,
	muls.w _pos+6,%d0	| pos.dirx, tmp808
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp809
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp811
	swap %d0	| vect__79.550
	clr.w %d0	| vect__79.550
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp817
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp818
| voxel.c:860: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp820
| voxel.c:859: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp820, vect__79.550
	move.l %d0,(%a0)	| vect__79.550, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:907: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #8,%sp	|,
	lsr.w #2,%d0	|, tmp826
	and.w #8192,%d0	|, _1524
| voxel.c:199: 	data &= mask;
	move.l 48(%sp),%a2	| %sfp,
	move.l 4(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 4B], tmp827
	and.l #-536879105,%d3	|, tmp827
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1524
	move.w %d0,%d1	| _1524, _1524
| voxel.c:199: 	data &= mask;
	move.l (%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119], tmp832
	and.l #-536879105,%d4	|, tmp832
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1524
	swap %d2	| _1524
	clr.w %d2	| _1524
	move.w %d0,%d2	| _1524, _1524
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1524, tmp832
	move.l %d4,(%a2)	| tmp832, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119]
	or.l %d1,%d3	| _1524, tmp827
	move.l %d3,4(%a2)	| tmp827, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 4B]
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp840
	and.b #1,%d0	|, _87
| voxel.c:908: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp843
	ext.w %d0	| tmp842
	neg.w %d0	| tmp844
	lsl.w %d1,%d0	|, _6
| voxel.c:199: 	data &= mask;
	move.l 644(%a2),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 644B], tmp845
	and.l #-536879105,%d3	|, tmp845
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _6
	move.w %d0,%d1	| _6, _6
| voxel.c:199: 	data &= mask;
	move.l 640(%a2),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 640B], tmp850
	and.l #-536879105,%d4	|, tmp850
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _6
	swap %d2	| _6
	clr.w %d2	| _6
	move.w %d0,%d2	| _6, _6
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _6, tmp850
	move.l %d4,640(%a2)	| tmp850, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 640B]
	or.l %d1,%d3	| _6, tmp845
	move.l %d3,644(%a2)	| tmp845, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_119 + 644B]
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp858
	and.b #1,%d1	|, _88
| voxel.c:909: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp861
	ext.w %d1	| tmp860
	moveq #15,%d4	|,
	lsl.w %d4,%d1	|, _1220
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, tmp864
	and.b #1,%d0	|, _89
| voxel.c:910: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp867
	ext.w %d0	| tmp866
	neg.w %d0	| tmp868
	moveq #11,%d7	|,
	lsl.w %d7,%d0	|, _1259
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a2),%d4	| MEM[(short unsigned int *)screen_119 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _1220, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a2),%d3	| MEM[(short unsigned int *)screen_119 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _1220, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a2),%d2	| MEM[(short unsigned int *)screen_119 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1259, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a2)	| data, MEM[(short unsigned int *)screen_119 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1259, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a2)	| data, MEM[(short unsigned int *)screen_119 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a2)	|, MEM[(short unsigned int *)screen_119 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a2)	| data, MEM[(short unsigned int *)screen_119 + 326B]
| voxel.c:775: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,112(%sp)	|, %sfp
	cmp.l #800,104(%sp)	|, %sfp
	jne .L309		|
	jra .L397		|
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
