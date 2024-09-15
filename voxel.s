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
	move.l 68(%sp),%a6	| %sfp, ivtmp.180
	add.l 80(%sp),%a6	| pixels, ivtmp.180
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
	lea (16,%a6),%a6	|, ivtmp.180
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
	sub.l %a2,%a2	| ivtmp.212
| voxel.c:122: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.205
	add.l %a2,%a0	| ivtmp.212, ivtmp.205
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
	lea (16,%a0),%a0	|, ivtmp.205
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:122: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:122: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.212
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.205
	add.l %a2,%a0	| ivtmp.212, ivtmp.205
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
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.218_11]
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
	move.l #_y_table+1024,%d6	|, ivtmp.354
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
	move.w %d0,%d2	|, _205
	add.w #45,%d2	|, _205
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.354, ivtmp.343
	move.w #-17920,%a2	|, ivtmp.340
.L50:
| voxel.c:249: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.340,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:248: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.340
	cmp.w #17920,%a2	|, ivtmp.340
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
	add.l #1024,%d6	|, ivtmp.354
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:265: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.331
	clr.b %d2	| max_height_lsm_flag.253
	clr.b %d1	| max_height_lsm.252
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.331, ivtmp.324
.L55:
| voxel.c:268: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:268: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.252, _72
	jls .L54		|
| voxel.c:269: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.252
| voxel.c:268: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.253
.L54:
| voxel.c:267: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.324
	cmp.l %a0,%a1	| ivtmp.324, ivtmp.331
	jne .L55		|
| voxel.c:266: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.324, ivtmp.331
	cmp.l #_combined+524289,%a0	|, ivtmp.324
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.253
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.252, max_height
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
	sub.l %a4,%a4	| ivtmp.304
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
	moveq #0,%d1	| _184
	move.b %d7,%d1	|, _184
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _184,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _184
	move.l %d1,68(%sp)	| _184, %sfp
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _166
	and.l %d0,%d7	| mask, _166
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _166, iftmp.11_167
	lsl.w #8,%d6	|, iftmp.11_167
	swap %d6	| iftmp.11_167
	clr.w %d6	| iftmp.11_167
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _166,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_170
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _166,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_176
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.303
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
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
	move.l %d3,%d2	| color1, ivtmp.295
	neg.l %d2	| ivtmp.295
	move.l %a3,%a0	| ivtmp.303, ivtmp.296
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.295, _54
| voxel.c:234: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _54, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_167, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:235: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _54
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_170,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:236: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _54
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_176,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:237: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _54
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:297: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.295, tmp229
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.304, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:292: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.295
	lea (-3840,%a0),%a0	|, ivtmp.296
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.295,
	jne .L70		|
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.303
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:284: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.304
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.304,
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
	lea (116,%sp),%a0	|,, ivtmp.276
	lea _view_min+80,%a6	|, ivtmp.279
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.281
	lea (156,%sp),%a4	|,, ivtmp.283
	lea _view_max+80,%a3	|, ivtmp.286
	lea _view_max,%a2	|, ivtmp.288
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.276, _320
.L82:
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _40
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_294]
| voxel.c:322: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_316]
| voxel.c:323: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _45
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _45
| voxel.c:323: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _45, MEM[(short int *)_318]
| voxel.c:323: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _45, MEM[(short int *)_295]
| voxel.c:321: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.276, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.269
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L83:
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_46],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_190]
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:325: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:326: }
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
	add.l #1024,%d6	|, ivtmp.354
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.295
	neg.l %d2	| ivtmp.295
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.303, ivtmp.296
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
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d4	| z_begin, z_begin
	move.l 72(%sp),%d7	| delta_vu, delta_vu
	move.l 84(%sp),%d6	| index_mask, index_mask
	move.w 82(%sp),%d5	| y_min, y_min
	move.b 91(%sp),47(%sp)	| fog, %sfp
| voxel.c:410: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:411: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:412: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:415: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 78(%sp),%a0	| player_height, ytable_offset
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp99
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d4,%a5	| z_begin, z_begin
	move.l %a5,%d0	| z_begin,
	moveq #10,%d2	|,
	lsl.l %d2,%d0	|,
	lea (%a0,%d0.l),%a4	| tmp99, tmp101, tmp102
	add.l #_y_table,%a4	|, y_table_shifted
| voxel.c:419: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a5	|, opacity_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	sub.w 70(%sp),%d4	| z_end, z
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	jpl .L108		|
	cmp.w %d1,%d5	| y, y_min
	jgt .L108		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp129
.L117:
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d0	| tmp
	move.l %d3, %d2	| sample_vu, result
	swap %d2	| result
	and.w %d0, %d2	| tmp, result
	lsl.l #3, %d2	| result
	and.w %d3, %d0	| sample_vu, tmp
	lsr.w #6, %d0	| tmp
	or.w %d0,%d2	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d2	| index_mask, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d2,%a0	| index, _77
	add.l #_combined,%a0	|, _77
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a0),%d0	| *_77, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d2	| SR.363
	move.b %d0,%d2	| sample, SR.363
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d2,%d2	| SR.363, tmp108
	move.w (%a4,%d2.l),%d2	| (*y_table_shifted_119)[_12], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L109		|
| voxel.c:427: 			if (sample_y < y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jlt .L110		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, sample
	move.w %d0,%a0	| sample, _19
| voxel.c:433: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L112		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	lea (224,%a0),%a0	|, tmp123
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| tmp124
	move.w %a0,%d0	| tmp123, tmp124
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d0.l),%d0	| *_132, _35
.L114:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L114		|
.L115:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp122
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L108		|
	cmp.w %d1,%d5	| y, y_min
	jle .L117		|
.L108:
| voxel.c:466: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:467: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L109:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L115		|
.L119:
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
.L112:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	| opacity_preshifted
	move.b (%a5),%d0	| MEM[(unsigned char *)opacity_table_shifted_120], opacity_preshifted
	move.w %d0,%a3	| opacity_preshifted, offset
	add.w %a0,%a3	| _19, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _91
	move.w %a3,%d0	| offset, _91
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L115		|
	move.l %d0,%a3	| _91, tmp126
	add.l #_pdata_table,%a3	|, tmp126
.L116:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp115
	add.l %d0,%a0	| tmp115, tmp116
	add.l %a0,%a0	| tmp116, tmp117
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a0.l),%d0	| *_18, *_18
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L115		|
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp115
	add.l %d0,%a0	| tmp115, tmp116
	add.l %a0,%a0	| tmp116, tmp117
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a0.l),%d0	| *_18, *_18
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L116		|
	jra .L115		|
.L110:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, sample
	move.w %d0,%a0	| sample, _19
| voxel.c:433: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L119		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	lea (224,%a0),%a0	|, tmp109
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| tmp110
	move.w %a0,%d2	| tmp109, tmp110
	add.l #_pdata_table,%d2	|, _85
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L130		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d2,%a0	| _85,
	move.l (%a0),%d0	| *_85, _35
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L114		|
	jra .L115		|
.L130:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp111
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:466: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:467: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #16160,-(%sp)	|,
	move.l 32(%sp),%d3	| sample_vu, sample_vu
	move.l 36(%sp),%d5	| delta_vu, delta_vu
| voxel.c:476: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 42(%sp),%a0	| start_height, ytable_offset
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp60
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:484: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:483: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:481: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L134:
	move.w %d2,%d1	| z, z
| voxel.c:494: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a1	| _50, y_table_shifted
| voxel.c:495: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_vu, tmp61
	add.l %d4,%d3	| sample_vu, tmp61
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:486: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L132		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d4, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d4, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _37
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a2	| _37,
	move.w (%a2),%d1	| *_37, sample
| voxel.c:489: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.388
| voxel.c:489: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.388, tmp66
| voxel.c:490: 			if (sample_y < min_y) {
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L133		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L133:
| voxel.c:498: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp68
	and.w #15,%d1	|, tmp68
	jne .L132		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp69
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:377: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp70
| voxel.c:377: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L132:
| voxel.c:485: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L134		|
| voxel.c:508: }
	movem.l (%sp)+,#1276	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L138		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L140:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:515: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L140		|
.L138:
| voxel.c:517: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L145		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L146:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:515: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L146		|
.L145:
| voxel.c:522: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:523: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:541: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:542: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:543: }
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:549: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.445
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L155:
| voxel.c:560: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:561: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:562: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:541: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:542: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:541: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:542: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:541: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:542: 	return c >> 1;
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:567: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:567: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:559: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.445
	cmp.l %d3,%a3	| _445, ivtmp.445
	jne .L155		|
| voxel.c:569: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.451
	clr.w %d0	| vect__18.451
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.451
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.451, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:575: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L163		|
	cmp.w #128,%d0	|, val
	jge .L164		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:580: }
	rts	
.L164:
| voxel.c:578: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:580: }
	rts	
.L163:
| voxel.c:578: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:580: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:585: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:588: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:595: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:597: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:609: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:590: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.481
| voxel.c:597: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L174:
| voxel.c:600: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:607: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L184		|
| voxel.c:609: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:615: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L185		|
.L169:
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
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:619: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:620: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L186		|
.L170:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L175		|
.L187:
	cmp.w #128,%d4	|, _504
	jge .L176		|
	add.b %d4,%d4	| _504, iftmp.36_290
.L171:
| voxel.c:623: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L177		|
.L188:
	cmp.w #128,%d3	|, _75
	jge .L178		|
	add.b %d3,%d3	| _75, iftmp.37_360
.L172:
| voxel.c:624: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:625: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L179		|
.L189:
	cmp.w #128,%d2	|, _404
	jge .L180		|
	add.b %d2,%d2	| _404, iftmp.37_295
| voxel.c:625: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:598: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.481
	cmp.l %a0,%a4	|, tmp230
	jne .L174		|
.L190:
| voxel.c:627: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:628: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:630: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:631: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L186:
| voxel.c:620: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L187		|
.L175:
	clr.b %d4	| iftmp.36_290
| voxel.c:623: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.36_290, MEM[(unsigned char *)p_252]
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L188		|
.L177:
	clr.b %d3	| iftmp.37_360
| voxel.c:624: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.37_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:625: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:578: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L189		|
.L179:
	clr.b %d2	| iftmp.37_295
| voxel.c:625: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:598: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.481
	cmp.l %a0,%a4	|, tmp230
	jne .L174		|
	jra .L190		|
.L184:
| voxel.c:607: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:609: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:615: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L169		|
.L185:
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
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:573: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:547: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:619: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:620: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L170		|
	jra .L186		|
.L176:
| voxel.c:578: 	return val < 0 ? 0 : (
	st %d4		| iftmp.36_290
	jra .L171		|
.L180:
	st %d2		| iftmp.37_295
| voxel.c:625: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.37_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:598: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.481
	cmp.l %a0,%a4	|, tmp230
	jne .L174		|
	jra .L190		|
.L178:
| voxel.c:578: 	return val < 0 ? 0 : (
	st %d3		| iftmp.37_360
	jra .L172		|
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
| voxel.c:635: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:636: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:637: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L213		|
| voxel.c:641: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:642: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L209		|
	lea _fclose,%a2	|, tmp103
.L194:
| voxel.c:694: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L204:
| voxel.c:696: 	return 0;
	moveq #0,%d0	| <retval>
.L191:
| voxel.c:697: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L209:
| voxel.c:644: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:644: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:645: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:646: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:648: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:649: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:652: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:651: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:656: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L195:
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L197		|
	move.l %d6,%d0	| remaining, remaining
.L197:
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:653: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L214		|
| voxel.c:654: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:655: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:656: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.503
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L196:
| voxel.c:658: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:659: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:657: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.503, _92
	jne .L196		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L195		|
.L214:
| voxel.c:662: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:663: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:665: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:666: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:667: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L215		|
| voxel.c:671: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:672: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L216		|
| voxel.c:673: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:674: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:675: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:678: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L200:
| voxel.c:675: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:675: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L202		|
	move.l %d7,%d0	| remaining, remaining
.L202:
| voxel.c:675: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:675: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L217		|
| voxel.c:676: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:677: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:678: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.496
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L201:
| voxel.c:680: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:681: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:679: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.496, _73
	jne .L201		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L200		|
.L217:
| voxel.c:684: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:685: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:687: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:688: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:689: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:697: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L213:
| voxel.c:638: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:639: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:696: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L191		|
.L215:
| voxel.c:668: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:669: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L194		|
.L216:
| voxel.c:692: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:694: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L204		|
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
	jeq .L220		|
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
.L220:
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
.L224:
#APP
| 704 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L224		|
| voxel.c:706: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L225:
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
	jeq .L225		|
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
	.ascii "Rendering took %dms per frame.\12\0"
.LC12:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-148,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:713: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:715: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:718: 	Super(0L);
	moveq #0,%d0	| tmp631
#APP
| 718 "voxel.c" 1
	movl	%d0,%sp@-	| tmp631
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
	pea 164(%sp)		|
	jsr _save_palette		|
| voxel.c:727: 	unsigned short *screen = Physbase();
#APP
| 727 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,64(%sp)	| tmp1061, %sfp
| voxel.c:729: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:731: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:731: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1062
	jeq .L420		|
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
	lea (158,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 162(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:740: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L233		|
| voxel.c:741: 	read_palette_vectors(cockpit.colors);
	move.l 154(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 60(%sp),%a0	| %sfp, ivtmp.729
	move.l %a0,%d0	| ivtmp.729, _1558
	add.l #32000,%d0	|, _1558
	addq.l #4,%sp	|,
.L234:
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.551_1820]
	cmp.l %d0,%a0	| _1558, ivtmp.729
	jne .L234		|
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.720
	lea _view_max,%a2	|, ivtmp.723
	move.l #_view_min+80,%d4	|, _1584
	clr.w %d3	| ivtmp.721
	move.l 56(%sp),%d5	| %sfp, _194
	move.l %d2,%a3	| cockpit$pixels, cockpit$pixels
.L239:
| voxel.c:745: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1586], _6
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d7	| ivtmp.721, tmp647
	asr.w #4,%d7	|, tmp647
	ext.l %d7	| tmp648
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%d7	| tmp648, tmp649
	add.l %d7,%d7	| tmp649, _283
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d6	|, tmp652
	lsr.l #3,%d6	|, tmp652
	moveq #1,%d2	|,
	and.l %d2,%d6	|, _288
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%a0	| _283, tmp653
	add.l %d7,%a0	| _283, tmp653
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _288, tmp654
	add.l %d5,%a0	| _194, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L235		|
	mulu.w #160,%d1	|, tmp655
	add.l %a0,%d1	| pBlock, _1601
.L236:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:515: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1601
	jne .L236		|
.L235:
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1583], _10
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:746: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp657
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d2	| tmp657,
	muls.w #80,%d2	|,
	move.l %d2,%a0	|, tmp658
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%a0	| _283, tmp660
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp660, tmp661
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d6	| tmp661, tmp662
	move.l %d5,%a0	| _194, pBlock
	add.l %d6,%a0	| tmp662, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L237		|
	mulu.w #160,%d1	|, tmp663
	add.l %a0,%d1	| pBlock, _1270
.L238:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:515: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1270
	jne .L238		|
.L237:
| voxel.c:744: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.721
	cmp.l %d4,%a1	| _1584, ivtmp.720
	jne .L239		|
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
	move.w 162(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %a3,-(%sp)	| cockpit$pixels,
	move.l 80(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:758: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,170(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 122(%sp)	| %sfp
| voxel.c:762: 	int frames = 0;
	clr.l 118(%sp)	| %sfp
| voxel.c:760: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,116(%sp)	|, %sfp
| voxel.c:756: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d7	|, fog_enabled
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp1058
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp672
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp672
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1063
	jeq .L341		|
.L425:
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp672
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp675
	ext.l %d0	| tmp675
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,133(%sp)	| tmp675, %sfp
| voxel.c:766: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L421		|
| voxel.c:771: 		frames++;
	move.l 118(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,134(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.73_305
	move.w (%a0),%d0	| *hw_palette.73_305, _306
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_303
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_301
| voxel.c:776: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_303, tmp680
	lsr.w #7,%d0	|, tmp680
| voxel.c:775: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp681
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_301, tmp682
	lsr.w #7,%d1	|, tmp682
| voxel.c:775: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp683
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp684
	add.l %d1,%d0	| tmp683, tmp685
	add.l %d0,%d0	| tmp685, tmp686
| voxel.c:776: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp690
	move.w %d4,%a1	| _27,
	sub.w %d0,%a1	| tmp690,
	move.w %a1,130(%sp)	|, %sfp
| voxel.c:777: 		if (desired_height >= 0) {
	tst.w 116(%sp)	| %sfp
	jlt .L422		|
.L242:
| voxel.c:778: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 116(%sp),%a0	| %sfp, desired_height
| voxel.c:778: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 116(%sp),%d0	| %sfp, tmp698
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp698
| voxel.c:778: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp698,
	move.l %a1,-(%sp)	|,
	sub.w 134(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:780: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L244		|
	move.w #-256,%d0	|, altitude_delta
.L245:
| voxel.c:781: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _27, _37
| voxel.c:782: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jgt .L246		|
.L445:
| voxel.c:781: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _1563
| voxel.c:836: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	moveq #0,%d1	|
	move.w %d0,%d1	| _1563,
	move.l %d1,138(%sp)	|, %sfp
| voxel.c:415: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, tmp706
	sub.w %d0,%d1	| _1563, tmp706
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	ext.l %d1	| tmp707
	add.l %d1,%d1	| tmp707, _1577
| voxel.c:785: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.57_39
	move.w -602(%a0),128(%sp)	| MEM[(short int *)__aline.57_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp711
	clr.w %d2	| tmp711
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_301, tmp713
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp713
	move.l %d2,76(%sp)	| tmp713, %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 122(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,46(%sp)	| _42, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.57_39 + 4294966696B],
	move.l %a0,124(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp714
	add.l %a0,%d0	|, tmp714
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp714
	move.l %d0,80(%sp)	| tmp714, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 128(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp716
	add.l #-160,%d0	|, tmp716
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1577,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,108(%sp)	|, %sfp
	move.l %d1,%d4	| _1577,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,104(%sp)	|, %sfp
	move.l %d1,%d5	| _1577,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d1,%d2	| _1577,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,96(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+49152,%d3	|,
	move.l %d3,92(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1577
	move.l %d1,88(%sp)	| _1577, %sfp
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d6	| pdata_table[15][7][0], movep_data
	move.l %d0,%d4	| _48,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp1066, %sfp
	add.l %d2,%d2	| x, tmp726
	add.l #_horizon,%d2	|, tmp726
	move.l %d2,48(%sp)	| tmp726, %sfp
.L320:
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 46(%sp),%d0	| %sfp, _56
	add.w #-160,%d0	|, _56
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	move.w 72(%sp),%d3	| %sfp,
	muls.w %d0,%d3	| _56, tmp727
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	asr.l #8,%d3	|, tmp728
| voxel.c:801: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	add.w 74(%sp),%d3	| %sfp, tmp729
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp731
	clr.w %d3	| tmp731
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	muls.w 74(%sp),%d0	| %sfp, tmp732
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	asr.l #8,%d0	|, tmp733
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 72(%sp),%d1	| %sfp, tmp734
	sub.w %d0,%d1	| tmp733, tmp734
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp734, tmp736
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _316
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l 76(%sp),%d2	| %sfp, tmp737
	add.l %d3,%d2	| _316, tmp737
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp738
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp739
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp740
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp741
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp742
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp743
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:811: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 46(%sp),%d0	| %sfp, tmp744
	lsr.w #3,%d0	|, tmp744
	and.l #65535,%d0	|,
	move.l %d0,%a4	|, _71
| voxel.c:811: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d0,%a4	| _71, tmp746
	lea _view_max,%a1	|,
	move.w (%a1,%a4.l),%a3	| view_max[_71], _1811
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp, tmp747
	asr.w #4,%d0	|, tmp747
	ext.l %d0	| tmp748
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp748, tmp749
	add.l %d0,%d0	| tmp749, tmp749
	move.l %d0,64(%sp)	| tmp749, %sfp
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp752
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp752,
	move.l %d1,68(%sp)	|, %sfp
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a3,%d0	| _1811,
	muls.w #80,%d0	|, tmp753
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp755
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp755, tmp756
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	|, tmp757
	move.l 56(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp757, pBlock
| voxel.c:810: 				.y = view_max[x >> 3] - y_offset,
	move.w %a3,%d4	| _1811, _1807
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 80(%sp),%d0	| %sfp, tmp1067
	move.l %d0,52(%sp)	| tmp1067, %sfp
| voxel.c:810: 				.y = view_max[x >> 3] - y_offset,
	move.w %a3,%d0	| _1811, y
	sub.w 54(%sp),%d0	| %sfp, y
| voxel.c:814: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a1	|,
	move.w (%a1,%a4.l),%a0	| view_min[_71], y_min
	sub.w 54(%sp),%a0	| %sfp, y_min
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L316		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 112(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-12,%d4	|, z
.L255:
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _903
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _903,
	move.w (%a3),%d5	| *_903, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.549
	move.b %d5,%d1	| sample, SR.549
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.549, tmp770
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_796)[_905], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jgt .L248		|
| voxel.c:427: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L249		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp771
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp772
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp773
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d5	| *_1837, _687
.L253:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _687, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L253		|
.L254:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp779
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L252		|
.L427:
	cmp.w %a0,%d0	| y_min, y
	jge .L255		|
.L305:
| voxel.c:829: 			state.y += y_offset;
	move.w %d0,%d4	| y, _1807
	add.w 54(%sp),%d4	| %sfp, _1807
	move.w %d4,%a3	| _1807, _1811
.L316:
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 48(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1013], _390
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d0,%d4	| _390, _391
| voxel.c:521: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp882
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp883
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp885
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp885, tmp886
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp887
	move.l 56(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp887, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _391
	jle .L318		|
	mulu.w #160,%d4	|, tmp888
	add.l %a0,%d4	| pBlock, _1716
.L319:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d6, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:515: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:513: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d4	| pBlock, _1716
	jne .L319		|
.L318:
| voxel.c:522: 	horizon[x] = y;
	move.l 48(%sp),%a1	| %sfp,
	move.w %a3,(%a1)	| _1811, MEM[(short int *)_1013]
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 84(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,48(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L320		|
| voxel.c:836: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	move.l 138(%sp),-(%sp)	| %sfp,
	move.l #65408,-(%sp)	|,
	move.l 84(%sp),-(%sp)	| %sfp,
	jsr _ray_elevation		|
| voxel.c:838: 		if (elev_to_sun < -40) {
	lea (12,%sp),%sp	|,
	cmp.w #-40,%d0	|, elev_to_sun
	jlt .L345		|
	move.w #128,%a0	|, _1821
| voxel.c:840: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d0	|, elev_to_sun
	jge .L321		|
| voxel.c:843: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d0	|, tmp891
	add.w %d0,%d0	| tmp891, tmp892
	add.w %d0,%d0	| tmp892, sunlight
| voxel.c:846: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d0,%a0	| sunlight, _1821
.L321:
	move.l %a0,-(%sp)	| _1821,
	move.l 122(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _96
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _97
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _97,
	muls.w %d1,%d2	| _96, tmp898
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp899
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp899, pos.x
| voxel.c:849: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _103
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _103,
	muls.w %d1,%d3	| _96, tmp902
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp903
| voxel.c:849: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _108
	add.w %d3,%a0	| tmp903, _108
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp905
	sub.l 132(%sp),%d3	| %sfp, tmp905
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp906
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp906, _114
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _114, tmp907
	asr.w #3,%d3	|, tmp907
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _114, tmp908
	asr.w #4,%d4	|, tmp908
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp908, tmp909
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _121
| voxel.c:853: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _114
	jle .L322		|
.L446:
| voxel.c:853: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _121, _124
.L323:
| voxel.c:849: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _108, pos.y
| voxel.c:853: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _124, pos.speed
| voxel.c:855: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 128(%sp),%d1	| %sfp, rot
| voxel.c:856: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _103, tmp912
| voxel.c:856: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp913
| voxel.c:856: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| tmp913, _136
| voxel.c:857: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _136, tmp914
| voxel.c:857: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp915
| voxel.c:857: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp915, _143
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _136,
	muls.w %d0,%d1	| _136, tmp916
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp917
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _143,
	muls.w %d2,%d3	| _143, tmp918
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp919
| voxel.c:860: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp919, tmp920
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| tmp920, tmp921
	moveq #-128,%d1	|, tmp922
	add.l %a0,%d1	| tmp921, tmp922
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp923
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _361
	sub.w %d1,%d3	| tmp923, _361
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _361, tmp926
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp927
| voxel.c:861: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp925
	clr.w %d0	| tmp925
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d3	| _143, tmp932
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp933
| voxel.c:861: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp933, tmp925
	move.l %d0,_pos+6	| tmp925, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:864: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:864: 		if (pressed_keys.up) {
	jpl .L324		|
| voxel.c:865: 			if (desired_height < FIXP(0, 0)) {
	tst.w 116(%sp)	| %sfp
	jlt .L347		|
| voxel.c:868: 			desired_height += FIXP(1, 0);
	move.w 116(%sp),%d0	| %sfp, _1823
.L325:
	add.w #128,%d0	|, _1823
	move.w %d0,116(%sp)	| _1823, %sfp
| voxel.c:869: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L324		|
	move.w #32512,116(%sp)	|, %sfp
.L324:
| voxel.c:873: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:873: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L327		|
| voxel.c:874: 			if (desired_height < FIXP(0, 0)) {
	tst.w 116(%sp)	| %sfp
	jlt .L328		|
| voxel.c:877: 			desired_height -= FIXP(1, 0);
	move.w 116(%sp),130(%sp)	| %sfp, %sfp
.L328:
| voxel.c:882: 		if (key == 0x23) {
	cmp.b #35,133(%sp)	|, %sfp
	jeq .L348		|
| voxel.c:877: 			desired_height -= FIXP(1, 0);
	move.w 130(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,116(%sp)	|, %sfp
| voxel.c:878: 			if (desired_height < FIXP(0, 0)) {
	jmi .L423		|
.L331:
| voxel.c:889: 		} else if (key == 0x20) {
	cmp.b #32,133(%sp)	|, %sfp
	jeq .L424		|
.L329:
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp945
	and.w #8192,%d0	|, _1531
| voxel.c:199: 	data &= mask;
	move.l 56(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B], tmp946
	and.l #-536879105,%d3	|, tmp946
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1531
	move.w %d0,%d1	| _1531, _1531
| voxel.c:199: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195], tmp951
	and.l #-536879105,%d4	|, tmp951
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1531
	swap %d2	| _1531
	clr.w %d2	| _1531
	move.w %d0,%d2	| _1531, _1531
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1531, tmp951
	move.l %d4,(%a3)	| tmp951, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195]
	or.l %d1,%d3	| _1531, tmp946
	move.l %d3,4(%a3)	| tmp946, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp959
	and.b #1,%d0	|, _155
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp962
	ext.w %d0	| tmp961
	neg.w %d0	| tmp963
	lsl.w %d1,%d0	|, _1450
| voxel.c:199: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B], tmp964
	and.l #-536879105,%d3	|, tmp964
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1450
	move.w %d0,%d1	| _1450, _1450
| voxel.c:199: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B], tmp969
	and.l #-536879105,%d4	|, tmp969
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1450
	swap %d2	| _1450
	clr.w %d2	| _1450
	move.w %d0,%d2	| _1450, _1450
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1450, tmp969
	move.l %d4,640(%a3)	| tmp969, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B]
	or.l %d1,%d3	| _1450, tmp964
	move.l %d3,644(%a3)	| tmp964, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp977
	and.b #1,%d1	|, _156
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp980
	ext.w %d1	| tmp979
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _50
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp983
	and.b #1,%d0	|, _157
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp986
	ext.w %d0	| tmp985
	neg.w %d0	| tmp987
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1870
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d4	| MEM[(short unsigned int *)screen_195 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _50, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d3	| MEM[(short unsigned int *)screen_195 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _50, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d2	| MEM[(short unsigned int *)screen_195 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d2	| _50, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 116(%sp),%d1	| %sfp, tmp992
	not.w %d1	| tmp992
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp991
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1642
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1870, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1642, data
	move.w %d4,320(%a3)	| data, MEM[(short unsigned int *)screen_195 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1870, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1642, data
	move.w %d3,322(%a3)	| data, MEM[(short unsigned int *)screen_195 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_195 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1642, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_195 + 326B]
	addq.w #8,122(%sp)	|, %sfp
| voxel.c:771: 		frames++;
	move.l 134(%sp),118(%sp)	| %sfp, %sfp
.L426:
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp672
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp672
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:700: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1063
	jne .L425		|
.L341:
	clr.b 133(%sp)	| %sfp
| voxel.c:771: 		frames++;
	move.l 118(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,134(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.73_305
	move.w (%a0),%d0	| *hw_palette.73_305, _306
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_303
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_301
| voxel.c:776: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_303, tmp680
	lsr.w #7,%d0	|, tmp680
| voxel.c:775: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp681
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_301, tmp682
	lsr.w #7,%d1	|, tmp682
| voxel.c:775: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp683
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp684
	add.l %d1,%d0	| tmp683, tmp685
	add.l %d0,%d0	| tmp685, tmp686
| voxel.c:776: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp690
	move.w %d4,%a1	| _27,
	sub.w %d0,%a1	| tmp690,
	move.w %a1,130(%sp)	|, %sfp
| voxel.c:777: 		if (desired_height >= 0) {
	tst.w 116(%sp)	| %sfp
	jge .L242		|
.L422:
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d4	|, _1562
| voxel.c:836: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	moveq #0,%d1	|
	move.w %d4,%d1	| _1562,
	move.l %d1,138(%sp)	|, %sfp
| voxel.c:415: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, tmp691
	sub.w %d4,%d1	| _1562, tmp691
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	ext.l %d1	| tmp692
	add.l %d1,%d1	| tmp692, _1577
| voxel.c:785: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.57_39
	move.w -602(%a0),128(%sp)	| MEM[(short int *)__aline.57_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp711
	clr.w %d2	| tmp711
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_301, tmp713
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp713
	move.l %d2,76(%sp)	| tmp713, %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 122(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,46(%sp)	| _42, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.57_39 + 4294966696B],
	move.l %a0,124(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp714
	add.l %a0,%d0	|, tmp714
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp714
	move.l %d0,80(%sp)	| tmp714, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 128(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp716
	add.l #-160,%d0	|, tmp716
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1577,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,108(%sp)	|, %sfp
	move.l %d1,%d4	| _1577,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,104(%sp)	|, %sfp
	move.l %d1,%d5	| _1577,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d1,%d2	| _1577,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,96(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+49152,%d3	|,
	move.l %d3,92(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1577
	move.l %d1,88(%sp)	| _1577, %sfp
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d6	| pdata_table[15][7][0], movep_data
	move.l %d0,%d4	| _48,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp1066, %sfp
	add.l %d2,%d2	| x, tmp726
	add.l #_horizon,%d2	|, tmp726
	move.l %d2,48(%sp)	| tmp726, %sfp
	jra .L320		|
.L421:
| voxel.c:906: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:907: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 142(%sp),%a0	| %sfp, tmp998
| voxel.c:907: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp998, tmp1000
	add.l %a0,%d0	| tmp998, tmp1000
	add.l %d0,%d0	| tmp1000, tmp1001
| voxel.c:908: 	unsigned long millis_per_frame = millis / frames;
	move.l 118(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:909: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1069,
	pea .LC11		|
	jsr _printf		|
| voxel.c:910: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:911: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L233:
| voxel.c:914: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:915: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:916: 	install_palette(saved_palette);
	pea 164(%sp)		|
	jsr _install_palette		|
| voxel.c:918: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (148,%sp),%sp	|,
	rts	
.L424:
	eor.b #1,%d7	|, fog_enabled
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp945
	and.w #8192,%d0	|, _1531
| voxel.c:199: 	data &= mask;
	move.l 56(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B], tmp946
	and.l #-536879105,%d3	|, tmp946
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1531
	move.w %d0,%d1	| _1531, _1531
| voxel.c:199: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195], tmp951
	and.l #-536879105,%d4	|, tmp951
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1531
	swap %d2	| _1531
	clr.w %d2	| _1531
	move.w %d0,%d2	| _1531, _1531
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1531, tmp951
	move.l %d4,(%a3)	| tmp951, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195]
	or.l %d1,%d3	| _1531, tmp946
	move.l %d3,4(%a3)	| tmp946, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp959
	and.b #1,%d0	|, _155
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp962
	ext.w %d0	| tmp961
	neg.w %d0	| tmp963
	lsl.w %d1,%d0	|, _1450
| voxel.c:199: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B], tmp964
	and.l #-536879105,%d3	|, tmp964
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1450
	move.w %d0,%d1	| _1450, _1450
| voxel.c:199: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B], tmp969
	and.l #-536879105,%d4	|, tmp969
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1450
	swap %d2	| _1450
	clr.w %d2	| _1450
	move.w %d0,%d2	| _1450, _1450
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1450, tmp969
	move.l %d4,640(%a3)	| tmp969, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B]
	or.l %d1,%d3	| _1450, tmp964
	move.l %d3,644(%a3)	| tmp964, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp977
	and.b #1,%d1	|, _156
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp980
	ext.w %d1	| tmp979
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _50
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp983
	and.b #1,%d0	|, _157
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp986
	ext.w %d0	| tmp985
	neg.w %d0	| tmp987
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1870
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d4	| MEM[(short unsigned int *)screen_195 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _50, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d3	| MEM[(short unsigned int *)screen_195 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _50, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d2	| MEM[(short unsigned int *)screen_195 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d2	| _50, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 116(%sp),%d1	| %sfp, tmp992
	not.w %d1	| tmp992
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp991
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1642
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1870, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1642, data
	move.w %d4,320(%a3)	| data, MEM[(short unsigned int *)screen_195 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1870, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1642, data
	move.w %d3,322(%a3)	| data, MEM[(short unsigned int *)screen_195 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_195 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1642, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_195 + 326B]
	addq.w #8,122(%sp)	|, %sfp
| voxel.c:771: 		frames++;
	move.l 134(%sp),118(%sp)	| %sfp, %sfp
	jra .L426		|
.L423:
| voxel.c:878: 			if (desired_height < FIXP(0, 0)) {
	clr.w 116(%sp)	| %sfp
| voxel.c:889: 		} else if (key == 0x20) {
	cmp.b #32,133(%sp)	|, %sfp
	jne .L329		|
	jra .L424		|
.L248:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp779
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L427		|
.L252:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _316, tmp780
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _324
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 108(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _826
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _826,
	move.w (%a3),%d5	| *_826, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.547
	move.b %d5,%d1	| sample, SR.547
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.547, tmp785
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_875)[_828], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jgt .L258		|
.L428:
| voxel.c:427: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L259		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp786
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp787
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp788
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d5	| *_791, _610
.L263:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _610, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L263		|
.L264:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp794
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L262		|
.L429:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _826
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _826,
	move.w (%a3),%d5	| *_826, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.547
	move.b %d5,%d1	| sample, SR.547
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.547, tmp785
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_875)[_828], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L428		|
.L258:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp794
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L429		|
.L262:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 104(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _749
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _749,
	move.w (%a3),%d5	| *_749, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.545
	move.b %d5,%d1	| sample, SR.545
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.545, tmp799
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_805)[_751], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jlt .L266		|
.L430:
| voxel.c:427: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L267		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp800
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp801
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp802
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d5	| *_637, _532
.L271:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _532, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L271		|
.L272:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp808
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L270		|
.L431:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _749
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _749,
	move.w (%a3),%d5	| *_749, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.545
	move.b %d5,%d1	| sample, SR.545
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.545, tmp799
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_805)[_751], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L430		|
.L266:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp808
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L431		|
.L270:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _324, tmp809
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _322
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 100(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _672
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _672,
	move.w (%a3),%d5	| *_672, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.543
	move.b %d5,%d1	| sample, SR.543
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.543, tmp814
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_88)[_674], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jgt .L275		|
.L432:
| voxel.c:427: 			if (sample_y < y_min) {
	cmp.w %a0,%d1	| y_min, sample_y
	jlt .L276		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp815
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp816
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp817
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d5	| *_489, _481
.L280:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _481, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L280		|
.L281:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp823
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L279		|
.L433:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _672
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _672,
	move.w (%a3),%d5	| *_672, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.543
	move.b %d5,%d1	| sample, SR.543
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.543, tmp814
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_88)[_674], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L432		|
.L275:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp823
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L433		|
.L279:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 96(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:419: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+40,%a5	|, opacity_table_shifted
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _595
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _595,
	move.w (%a1),%d5	| *_595, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.541
	move.b %d5,%d1	| sample, SR.541
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.541, tmp828
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_1169)[_597], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L284		|
.L434:
| voxel.c:427: 			if (sample_y < y_min) {
	move.w %a1,%d1	| sample_y,
	cmp.w %a0,%d1	| y_min,
	jlt .L285		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1550
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L287		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp1021
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp1022
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d1	| *_231, _1866
.L290:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1866, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L290		|
.L291:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp842
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L289		|
.L435:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _595
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _595,
	move.w (%a1),%d5	| *_595, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.541
	move.b %d5,%d1	| sample, SR.541
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.541, tmp828
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_1169)[_597], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L434		|
.L284:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp842
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L435		|
.L289:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _322, tmp843
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _320
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 92(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:419: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+48,%a5	|, opacity_table_shifted
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _517
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _517,
	move.w (%a3),%d5	| *_517, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.539
	move.b %d5,%d1	| sample, SR.539
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.539, tmp848
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_1116)[_519], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L295		|
.L436:
| voxel.c:427: 			if (sample_y < y_min) {
	move.w %a1,%d1	| sample_y,
	cmp.w %a0,%d1	| y_min,
	jlt .L296		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1551
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L298		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp1018
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp1019
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d1	| *_1776, _1614
.L301:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1614, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L301		|
.L302:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _320, tmp862
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L300		|
.L437:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _517
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _517,
	move.w (%a3),%d5	| *_517, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.539
	move.b %d5,%d1	| sample, SR.539
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.539, tmp848
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_1116)[_519], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L436		|
.L295:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _320, tmp862
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jne .L437		|
.L300:
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 88(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:419: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+56,%a5	|, opacity_table_shifted
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #517104,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _439
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _439,
	move.w (%a3),%d5	| *_439, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.537
	move.b %d5,%d1	| sample, SR.537
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.537, tmp867
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_931)[_441], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L306		|
.L438:
| voxel.c:427: 			if (sample_y < y_min) {
	move.w %a1,%d1	| sample_y,
	cmp.w %a0,%d1	| y_min,
	jlt .L307		|
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1552
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jeq .L308		|
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a5),%d1	| MEM[(unsigned char *)opacity_table_shifted_1087], opacity_preshifted
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d5,%a3	| _1552, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _464
	move.w %a3,%d1	| offset, _464
	move.l %d1,%a3	| _464, tmp1027
	add.l #_pdata_table,%a3	|, tmp1027
.L314:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp874
	and.l %d0,%d1	| y, tmp874
	add.l %d1,%d1	| tmp874, tmp875
	add.l %d1,%d1	| tmp875, tmp876
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_470, *_470
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_470, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L314		|
.L311:
| voxel.c:456: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:457: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _320, tmp881
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L305		|
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d5	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d5, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d5	| sample_vu, tmp
	lsr.w #6, %d5	| tmp
	or.w %d5,%d1	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #517104,%d1	|, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _439
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a3	| _439,
	move.w (%a3),%d5	| *_439, sample
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.537
	move.b %d5,%d1	| sample, SR.537
| voxel.c:424: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.537, tmp867
	move.w (%a4,%d1.l),%a1	| (*y_table_shifted_931)[_441], sample_y
| voxel.c:425: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L438		|
.L306:
| voxel.c:422: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L311		|
.L249:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp775
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d5,%d1	| tmp775, tmp776
	add.w #224,%d1	|, tmp776
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp777
	add.l #_pdata_table,%d1	|, _913
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L439		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a3	| _913,
	move.l (%a3),%d5	| *_913, _687
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _687, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L253		|
	jra .L254		|
.L259:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp790
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d5,%d1	| tmp790, tmp791
	add.w #224,%d1	|, tmp791
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp792
	add.l #_pdata_table,%d1	|, _836
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L440		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a3	| _836,
	move.l (%a3),%d5	| *_836, _610
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _610, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L263		|
	jra .L264		|
.L267:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp804
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d5,%d1	| tmp804, tmp805
	add.w #224,%d1	|, tmp805
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp806
	add.l #_pdata_table,%d1	|, _759
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L441		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a3	| _759,
	move.l (%a3),%d5	| *_759, _532
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _532, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| sample_y, y
	jge .L271		|
	jra .L272		|
.L276:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, tmp819
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d5,%d1	| tmp819, tmp820
	add.w #224,%d1	|, tmp820
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp821
	add.l #_pdata_table,%d1	|, _682
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L442		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a3	| _682,
	move.l (%a3),%d5	| *_682, _481
	move.w %a0,%d1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d5, 0(%a2)	| _481, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d0,%d1	| y, sample_y
	jle .L280		|
	jra .L281		|
.L343:
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
.L287:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a5),%d1	| MEM[(unsigned char *)opacity_table_shifted_83], opacity_preshifted
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d5,%a3	| _1550, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _620
	move.w %a3,%d1	| offset, _620
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L291		|
	move.l %d1,%a3	| _620, tmp1031
	add.l #_pdata_table,%a3	|, tmp1031
.L292:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp835
	and.l %d0,%d1	| y, tmp835
	add.l %d1,%d1	| tmp835, tmp836
	add.l %d1,%d1	| tmp836, tmp837
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_626, *_626
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_626, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L291		|
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp835
	and.l %d0,%d1	| y, tmp835
	add.l %d1,%d1	| tmp835, tmp836
	add.l %d1,%d1	| tmp836, tmp837
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_626, *_626
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_626, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L292		|
	jra .L291		|
.L285:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1550
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L343		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp829
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp830
	add.l #_pdata_table,%d5	|, _605
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L443		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d5,%a1	| _605,
	move.l (%a1),%d1	| *_605, _1866
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1866, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L290		|
	jra .L291		|
.L344:
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
.L298:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a5),%d1	| MEM[(unsigned char *)opacity_table_shifted_1128], opacity_preshifted
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d5,%a3	| _1551, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _542
	move.w %a3,%d1	| offset, _542
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L302		|
	move.l %d1,%a3	| _542, tmp1029
	add.l #_pdata_table,%a3	|, tmp1029
.L303:
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp855
	and.l %d0,%d1	| y, tmp855
	add.l %d1,%d1	| tmp855, tmp856
	add.l %d1,%d1	| tmp856, tmp857
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_548, *_548
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_548, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L302		|
| voxel.c:447: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp855
	and.l %d0,%d1	| y, tmp855
	add.l %d1,%d1	| tmp855, tmp856
	add.l %d1,%d1	| tmp856, tmp857
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_548, *_548
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_548, pBlock
| 0 "" 2
| voxel.c:449: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:450: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L303		|
	jra .L302		|
.L296:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1551
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L344		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp849
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp850
	add.l #_pdata_table,%d5	|, _527
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L444		|
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d5,%a1	| _527,
	move.l (%a1),%d1	| *_527, _1614
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1614, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L301		|
	jra .L302		|
.L307:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d5	|, _1552
| voxel.c:433: 			if (!fog) {
	tst.b %d7	| fog_enabled
	jne .L310		|
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
.L308:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d5	|, tmp868
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d5	|, tmp869
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d5.l),%d1	| *_449, _450
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L311		|
.L312:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _450, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L311		|
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _450, pBlock
| 0 "" 2
| voxel.c:439: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:440: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %a1,%d0	| sample_y, y
	jge .L312		|
	jra .L311		|
.L310:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a5),%d1	| MEM[(unsigned char *)opacity_table_shifted_1087], opacity_preshifted
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d5,%a3	| _1552, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _464
	move.w %a3,%d1	| offset, _464
| voxel.c:446: 				while (y >= sample_y) {
	cmp.w %a0,%d0	| y_min, y
	jlt .L305		|
	move.w %a0,%a1	| y_min, sample_y
	clr.w %d4	| z
	move.l %d1,%a3	| _464, tmp1027
	add.l #_pdata_table,%a3	|, tmp1027
	jra .L314		|
.L441:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp807
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L270		|
.L442:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp822
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L279		|
.L439:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _316, tmp778
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L252		|
.L440:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _324, tmp793
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L262		|
.L444:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _320, tmp851
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L300		|
.L443:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _322, tmp831
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	jra .L289		|
.L244:
| voxel.c:781: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L245		|
	move.w #256,%d0	|, altitude_delta
	add.w %d4,%d0	| _27, _37
| voxel.c:782: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jle .L445		|
.L246:
| voxel.c:782: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|, _1577
	move.l #255,138(%sp)	|, %sfp
| voxel.c:785: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.57_39
	move.w -602(%a0),128(%sp)	| MEM[(short int *)__aline.57_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp711
	clr.w %d2	| tmp711
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_301, tmp713
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp713
	move.l %d2,76(%sp)	| tmp713, %sfp
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 122(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:790: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,46(%sp)	| _42, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.57_39 + 4294966696B],
	move.l %a0,124(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp714
	add.l %a0,%d0	|, tmp714
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp714
	move.l %d0,80(%sp)	| tmp714, %sfp
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 128(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp716
	add.l #-160,%d0	|, tmp716
| voxel.c:796: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:802: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:416: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1577,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,108(%sp)	|, %sfp
	move.l %d1,%d4	| _1577,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,104(%sp)	|, %sfp
	move.l %d1,%d5	| _1577,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d1,%d2	| _1577,
	add.l #_y_table+40960,%d2	|,
	move.l %d2,96(%sp)	|, %sfp
	move.l %d1,%d3	| _1577,
	add.l #_y_table+49152,%d3	|,
	move.l %d3,92(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1577
	move.l %d1,88(%sp)	| _1577, %sfp
| voxel.c:512: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d6	| pdata_table[15][7][0], movep_data
	move.l %d0,%d4	| _48,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp1066, %sfp
	add.l %d2,%d2	| x, tmp726
	add.l #_horizon,%d2	|, tmp726
	move.l %d2,48(%sp)	| tmp726, %sfp
	jra .L320		|
.L345:
	sub.l %a0,%a0	| _1821
| voxel.c:846: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1821,
	move.l 122(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _96
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _97
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _97,
	muls.w %d1,%d2	| _96, tmp898
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp899
| voxel.c:848: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp899, pos.x
| voxel.c:849: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _103
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _103,
	muls.w %d1,%d3	| _96, tmp902
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp903
| voxel.c:849: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _108
	add.w %d3,%a0	| tmp903, _108
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp905
	sub.l 132(%sp),%d3	| %sfp, tmp905
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp906
| voxel.c:851: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp906, _114
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _114, tmp907
	asr.w #3,%d3	|, tmp907
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _114, tmp908
	asr.w #4,%d4	|, tmp908
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp908, tmp909
| voxel.c:852: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _121
| voxel.c:853: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _114
	jgt .L446		|
.L322:
| voxel.c:854: 		else pos.speed += drag;
	add.w %d3,%d1	| _121, _124
	jra .L323		|
.L327:
| voxel.c:882: 		if (key == 0x23) {
	cmp.b #35,133(%sp)	|, %sfp
	jne .L331		|
| voxel.c:884: 			if (desired_height < 0) {
	tst.w 116(%sp)	| %sfp
	jge .L348		|
| voxel.c:885: 				desired_height = player_height;
	move.w 130(%sp),116(%sp)	| %sfp, %sfp
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp945
	and.w #8192,%d0	|, _1531
| voxel.c:199: 	data &= mask;
	move.l 56(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B], tmp946
	and.l #-536879105,%d3	|, tmp946
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1531
	move.w %d0,%d1	| _1531, _1531
| voxel.c:199: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195], tmp951
	and.l #-536879105,%d4	|, tmp951
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1531
	swap %d2	| _1531
	clr.w %d2	| _1531
	move.w %d0,%d2	| _1531, _1531
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1531, tmp951
	move.l %d4,(%a3)	| tmp951, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195]
	or.l %d1,%d3	| _1531, tmp946
	move.l %d3,4(%a3)	| tmp946, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp959
	and.b #1,%d0	|, _155
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp962
	ext.w %d0	| tmp961
	neg.w %d0	| tmp963
	lsl.w %d1,%d0	|, _1450
| voxel.c:199: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B], tmp964
	and.l #-536879105,%d3	|, tmp964
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1450
	move.w %d0,%d1	| _1450, _1450
| voxel.c:199: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B], tmp969
	and.l #-536879105,%d4	|, tmp969
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1450
	swap %d2	| _1450
	clr.w %d2	| _1450
	move.w %d0,%d2	| _1450, _1450
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1450, tmp969
	move.l %d4,640(%a3)	| tmp969, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B]
	or.l %d1,%d3	| _1450, tmp964
	move.l %d3,644(%a3)	| tmp964, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp977
	and.b #1,%d1	|, _156
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp980
	ext.w %d1	| tmp979
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _50
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp983
	and.b #1,%d0	|, _157
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp986
	ext.w %d0	| tmp985
	neg.w %d0	| tmp987
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1870
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d4	| MEM[(short unsigned int *)screen_195 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _50, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d3	| MEM[(short unsigned int *)screen_195 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _50, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d2	| MEM[(short unsigned int *)screen_195 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d2	| _50, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 116(%sp),%d1	| %sfp, tmp992
	not.w %d1	| tmp992
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp991
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1642
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1870, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1642, data
	move.w %d4,320(%a3)	| data, MEM[(short unsigned int *)screen_195 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1870, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1642, data
	move.w %d3,322(%a3)	| data, MEM[(short unsigned int *)screen_195 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_195 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1642, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_195 + 326B]
	addq.w #8,122(%sp)	|, %sfp
| voxel.c:771: 		frames++;
	move.l 134(%sp),118(%sp)	| %sfp, %sfp
	jra .L426		|
.L347:
	move.w 130(%sp),%d0	| %sfp, _1823
	jra .L325		|
.L348:
| voxel.c:887: 				desired_height = -1;
	move.w #-1,116(%sp)	|, %sfp
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp945
	and.w #8192,%d0	|, _1531
| voxel.c:199: 	data &= mask;
	move.l 56(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B], tmp946
	and.l #-536879105,%d3	|, tmp946
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1531
	move.w %d0,%d1	| _1531, _1531
| voxel.c:199: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195], tmp951
	and.l #-536879105,%d4	|, tmp951
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1531
	swap %d2	| _1531
	clr.w %d2	| _1531
	move.w %d0,%d2	| _1531, _1531
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1531, tmp951
	move.l %d4,(%a3)	| tmp951, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195]
	or.l %d1,%d3	| _1531, tmp946
	move.l %d3,4(%a3)	| tmp946, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp959
	and.b #1,%d0	|, _155
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp962
	ext.w %d0	| tmp961
	neg.w %d0	| tmp963
	lsl.w %d1,%d0	|, _1450
| voxel.c:199: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B], tmp964
	and.l #-536879105,%d3	|, tmp964
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1450
	move.w %d0,%d1	| _1450, _1450
| voxel.c:199: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B], tmp969
	and.l #-536879105,%d4	|, tmp969
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1450
	swap %d2	| _1450
	clr.w %d2	| _1450
	move.w %d0,%d2	| _1450, _1450
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1450, tmp969
	move.l %d4,640(%a3)	| tmp969, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 640B]
	or.l %d1,%d3	| _1450, tmp964
	move.l %d3,644(%a3)	| tmp964, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_195 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp977
	and.b #1,%d1	|, _156
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp980
	ext.w %d1	| tmp979
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _50
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp983
	and.b #1,%d0	|, _157
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp986
	ext.w %d0	| tmp985
	neg.w %d0	| tmp987
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1870
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d4	| MEM[(short unsigned int *)screen_195 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d4	| _50, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d3	| MEM[(short unsigned int *)screen_195 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d3	| _50, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d2	| MEM[(short unsigned int *)screen_195 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d2	| _50, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 116(%sp),%d1	| %sfp, tmp992
	not.w %d1	| tmp992
	moveq #15,%d5	|,
	lsr.w %d5,%d1	|, tmp991
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1642
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1870, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1642, data
	move.w %d4,320(%a3)	| data, MEM[(short unsigned int *)screen_195 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1870, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1642, data
	move.w %d3,322(%a3)	| data, MEM[(short unsigned int *)screen_195 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_195 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1642, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_195 + 326B]
	addq.w #8,122(%sp)	|, %sfp
| voxel.c:771: 		frames++;
	move.l 134(%sp),118(%sp)	| %sfp, %sfp
	jra .L426		|
.L420:
| voxel.c:732: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:733: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:914: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:915: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:916: 	install_palette(saved_palette);
	pea 164(%sp)		|
	jsr _install_palette		|
| voxel.c:918: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (148,%sp),%sp	|,
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
