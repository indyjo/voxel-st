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
	move.l 68(%sp),%a6	| %sfp, ivtmp.187
	add.l 80(%sp),%a6	| pixels, ivtmp.187
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
	lea (16,%a6),%a6	|, ivtmp.187
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
	sub.l %a2,%a2	| ivtmp.219
| voxel.c:122: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.212
	add.l %a2,%a0	| ivtmp.219, ivtmp.212
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
	lea (16,%a0),%a0	|, ivtmp.212
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:122: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:122: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.219
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.212
	add.l %a2,%a0	| ivtmp.219, ivtmp.212
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
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.225_11]
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
	move.l #_y_table+1024,%d6	|, ivtmp.361
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
	move.l %d6,%a3	| ivtmp.361, ivtmp.350
	move.w #-17920,%a2	|, ivtmp.347
.L50:
| voxel.c:249: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.347,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:251: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:248: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.347
	cmp.w #17920,%a2	|, ivtmp.347
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
	add.l #1024,%d6	|, ivtmp.361
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:265: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.338
	clr.b %d2	| max_height_lsm_flag.260
	clr.b %d1	| max_height_lsm.259
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.338, ivtmp.331
.L55:
| voxel.c:268: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:268: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.259, _72
	jls .L54		|
| voxel.c:269: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.259
| voxel.c:268: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.260
.L54:
| voxel.c:267: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.331
	cmp.l %a0,%a1	| ivtmp.331, ivtmp.338
	jne .L55		|
| voxel.c:266: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.331, ivtmp.338
	cmp.l #_combined+524289,%a0	|, ivtmp.331
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.260
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.259, max_height
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
	sub.l %a4,%a4	| ivtmp.311
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.310
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
	move.l %d3,%d2	| color1, ivtmp.302
	neg.l %d2	| ivtmp.302
	move.l %a3,%a0	| ivtmp.310, ivtmp.303
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.302, _54
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
	and.l %d2,%d0	| ivtmp.302, tmp229
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.311, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:299: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:292: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.302
	lea (-3840,%a0),%a0	|, ivtmp.303
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.302,
	jne .L70		|
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.310
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:284: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.311
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.311,
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
	lea (116,%sp),%a0	|,, ivtmp.283
	lea _view_min+80,%a6	|, ivtmp.286
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.288
	lea (156,%sp),%a4	|,, ivtmp.290
	lea _view_max+80,%a3	|, ivtmp.293
	lea _view_max,%a2	|, ivtmp.295
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.283, _320
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
	cmp.l %a0,%d1	| ivtmp.283, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.276
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
	add.l #1024,%d6	|, ivtmp.361
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.302
	neg.l %d2	| ivtmp.302
| voxel.c:291: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.310, ivtmp.303
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
	move.l %a1,%a5	| tmp175, tmp105
	move.l 68(%sp),%d5	| z_begin, z_begin
	move.l 72(%sp),%d0	| z_end, z_end
	move.l 76(%sp),%a6	| delta_vu, delta_vu
	move.l 88(%sp),48(%sp)	| y_min, %sfp
	move.b 99(%sp),47(%sp)	| fog, %sfp
| voxel.c:411: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 56(%sp),%d2	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 60(%sp),%a0	| state.pixel, pBlock
| voxel.c:417: 	y_offset -= y_min;
	move.w 86(%sp),%d7	| y_offset, _5
	sub.w 50(%sp),%d7	| %sfp, _5
| voxel.c:419: 	short y = state.y - y_min;
	move.w 64(%sp),%d3	| state.y, _166
| voxel.c:419: 	short y = state.y - y_min;
	move.w %d3,%d1	| _166, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:412: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 82(%sp),%a1	| player_height, ytable_offset
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp122
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d5,%a4	| z_begin, z_begin
	move.l %a4,%d4	| z_begin,
	moveq #10,%d6	|,
	lsl.l %d6,%d4	|,
	lea (%a1,%d4.l),%a2	| tmp122, tmp124, tmp125
	add.l #_y_table,%a2	|, y_table_shifted
| voxel.c:425: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a4	|, opacity_table_shifted
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.w %d5,%d0	| z_begin, z_end
	jeq .L108		|
	tst.w %d1	| y
	jlt .L108		|
	sub.w %d5,%d0	| z_begin, tmp128
	moveq #0,%d6	| tmp129
	move.w %d0,%d6	| tmp128, tmp129
	moveq #10,%d0	|,
	lsl.l %d0,%d6	|, tmp130
	add.l %a2,%d6	| y_table_shifted, _165
.L117:
| voxel.c:343: 	asm (
#APP
| 343 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:368: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l 92(%sp),%d0	| index_mask, index
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d0	|, _91
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d0,%a1	| _91,
	move.w (%a1),%d3	| *_91, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| SR.370
	move.b %d3,%d0	| sample, SR.370
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| SR.370, tmp135
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %d7,%d5	| _5, sample_y
	add.w (%a2,%d0.l),%d5	| (*y_table_shifted_131)[_19], sample_y
| voxel.c:471: 		.y = y + y_min,
	move.w %d1,%d4	| y, prephitmp_138
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d1	| sample_y, y
	jlt .L109		|
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _99
	jlt .L129		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, _171
| voxel.c:434: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L111		|
.L131:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d3	|, tmp136
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d3	|, tmp137
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a1	|,
	move.l (%a1,%d3.l),%d0	| *_96, _97
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| _99, y
	jlt .L109		|
	sub.w %d5,%d1	| _99, tmp139
	and.l #65535,%d1	|, tmp140
	addq.l #1,%d1	|, tmp141
	move.l %d1,%a1	| tmp141, tmp143
	add.l %d1,%a1	| tmp141, tmp143
	add.l %a1,%a1	| tmp143, tmp144
	move.l %a1,%d3	| tmp144, tmp145
	add.l %d1,%d3	| tmp141, tmp145
	lsl.l #5,%d3	|, tmp146
	move.l %a0,%d1	| pBlock, _44
	sub.l %d3,%d1	| tmp146, _44
.L112:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a0)	| _97, pBlock
| 0 "" 2
| voxel.c:441: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:439: 				while (y >= sample_y) {
	cmp.l %d1,%a0	| _44, pBlock
	jne .L112		|
	move.w %d5,%d3	| _99, _147
	subq.w #1,%d3	|, _147
	move.w %d3,%d1	| _147, y
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d2	| delta_vu, tmp167
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l %a2,%d6	| y_table_shifted, _165
	jeq .L130		|
.L115:
	cmp.w #-1,%d1	|, y
	jne .L117		|
| voxel.c:471: 		.y = y + y_min,
	add.w 50(%sp),%d3	| %sfp, _166
.L108:
| voxel.c:473: 	return result;
	move.l %d2,(%a5)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a5)	| pBlock, <retval>.pixel
	move.w %d3,8(%a5)	| _166, <retval>.y
| voxel.c:474: }
	move.l %a5,%d0	| tmp105,
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L129:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _99
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, _171
| voxel.c:434: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jeq .L131		|
.L111:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	| opacity_preshifted
	move.b (%a4)+,%d0	| *opacity_table_shifted_132, opacity_preshifted
	move.w %d0,%a3	| opacity_preshifted, offset
	add.w %d3,%a3	| _171, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _102
	move.w %a3,%d0	| offset, _102
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| _99, y
	jlt .L109		|
	move.w %d5,%d3	| _99, _147
	subq.w #1,%d3	|, _147
	move.l %a0,%a1	| pBlock, pBlock
	move.l %d0,%a3	| _102, tmp170
	add.l #_pdata_table,%a3	|, tmp170
.L114:
| voxel.c:455: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp151
	and.l %d1,%d0	| y, tmp151
	add.l %d0,%d0	| tmp151, tmp152
	add.l %d0,%d0	| tmp152, tmp153
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d0.l),%d0	| *_29, *_29
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a1)	| *_29, pBlock
| 0 "" 2
| voxel.c:457: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a1),%a1	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _147, y
	jne .L114		|
	sub.w %d5,%d4	| _99, tmp158
	and.l #65535,%d4	|, tmp159
	addq.l #1,%d4	|, tmp160
	move.l %d4,%d0	| tmp160, tmp162
	add.l %d4,%d0	| tmp160, tmp162
	add.l %d0,%d0	| tmp162, tmp163
	add.l %d4,%d0	| tmp160, tmp164
	lsl.l #5,%d0	|, tmp165
	sub.l %d0,%a0	| tmp165, pBlock
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d2	| delta_vu, tmp167
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l %a2,%d6	| y_table_shifted, _165
	jne .L115		|
.L130:
	move.w %d3,%d4	| _147, prephitmp_138
| voxel.c:471: 		.y = y + y_min,
	move.w %d4,%d3	| prephitmp_138, _166
	add.w 50(%sp),%d3	| %sfp, _166
.L132:
| voxel.c:473: 	return result;
	move.l %d2,(%a5)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a5)	| pBlock, <retval>.pixel
	move.w %d3,8(%a5)	| _166, <retval>.y
| voxel.c:474: }
	move.l %a5,%d0	| tmp105,
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L109:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d2	| delta_vu, tmp168
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l %a2,%d6	| y_table_shifted, _165
	jne .L117		|
| voxel.c:471: 		.y = y + y_min,
	move.w %d4,%d3	| prephitmp_138, _166
	add.w 50(%sp),%d3	| %sfp, _166
	jra .L132		|
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #16160,-(%sp)	|,
	move.l 32(%sp),%d3	| sample_vu, sample_vu
	move.l 36(%sp),%d5	| delta_vu, delta_vu
| voxel.c:483: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 42(%sp),%a0	| start_height, ytable_offset
| voxel.c:485: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp60
| voxel.c:485: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:491: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:490: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:488: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L136:
	move.w %d2,%d1	| z, z
| voxel.c:501: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a1	| _50, y_table_shifted
| voxel.c:502: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_vu, tmp61
	add.l %d4,%d3	| sample_vu, tmp61
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:493: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L134		|
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
| voxel.c:496: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.396
| voxel.c:496: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.396, tmp66
| voxel.c:497: 			if (sample_y < min_y) {
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L135		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L135:
| voxel.c:505: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp68
	and.w #15,%d1	|, tmp68
	jne .L134		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp69
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:377: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp70
| voxel.c:377: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L134:
| voxel.c:492: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L136		|
| voxel.c:515: }
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
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L140		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L142:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:522: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L142		|
.L140:
| voxel.c:524: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
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
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L147		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L148:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:522: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L148		|
.L147:
| voxel.c:529: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:530: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:548: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:550: }
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:556: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.453
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L157:
| voxel.c:567: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:568: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:569: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:548: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:548: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:548: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:549: 	return c >> 1;
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:574: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:574: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:566: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.453
	cmp.l %d3,%a3	| _445, ivtmp.453
	jne .L157		|
| voxel.c:576: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.459
	clr.w %d0	| vect__18.459
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.459
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.459, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:582: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L165		|
	cmp.w #128,%d0	|, val
	jge .L166		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:587: }
	rts	
.L166:
| voxel.c:585: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:587: }
	rts	
.L165:
| voxel.c:585: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:587: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:592: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:595: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:602: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:604: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.489
| voxel.c:604: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L176:
| voxel.c:607: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:614: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L186		|
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:622: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L187		|
.L171:
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
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:626: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L188		|
.L172:
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L177		|
.L189:
	cmp.w #128,%d4	|, _504
	jge .L178		|
	add.b %d4,%d4	| _504, iftmp.43_290
.L173:
| voxel.c:630: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.43_290, MEM[(unsigned char *)p_252]
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L179		|
.L190:
	cmp.w #128,%d3	|, _75
	jge .L180		|
	add.b %d3,%d3	| _75, iftmp.44_360
.L174:
| voxel.c:631: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.44_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L181		|
.L191:
	cmp.w #128,%d2	|, _404
	jge .L182		|
	add.b %d2,%d2	| _404, iftmp.44_295
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.44_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L176		|
.L192:
| voxel.c:634: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:635: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:637: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:638: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L188:
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L189		|
.L177:
	clr.b %d4	| iftmp.43_290
| voxel.c:630: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.43_290, MEM[(unsigned char *)p_252]
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L190		|
.L179:
	clr.b %d3	| iftmp.44_360
| voxel.c:631: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.44_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L191		|
.L181:
	clr.b %d2	| iftmp.44_295
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.44_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L176		|
	jra .L192		|
.L186:
| voxel.c:614: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:622: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L171		|
.L187:
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
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:626: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L172		|
	jra .L188		|
.L178:
| voxel.c:585: 	return val < 0 ? 0 : (
	st %d4		| iftmp.43_290
	jra .L173		|
.L182:
	st %d2		| iftmp.44_295
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.44_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L176		|
	jra .L192		|
.L180:
| voxel.c:585: 	return val < 0 ? 0 : (
	st %d3		| iftmp.44_360
	jra .L174		|
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
| voxel.c:642: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:643: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:644: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L215		|
| voxel.c:648: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:649: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L211		|
	lea _fclose,%a2	|, tmp103
.L196:
| voxel.c:701: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L206:
| voxel.c:703: 	return 0;
	moveq #0,%d0	| <retval>
.L193:
| voxel.c:704: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L211:
| voxel.c:651: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:651: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:652: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:653: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:655: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:656: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:659: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:658: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:663: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L197:
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L199		|
	move.l %d6,%d0	| remaining, remaining
.L199:
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:660: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L216		|
| voxel.c:661: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:662: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:663: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.511
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L198:
| voxel.c:665: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:666: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:664: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.511, _92
	jne .L198		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L197		|
.L216:
| voxel.c:669: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:670: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:672: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:673: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:674: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L217		|
| voxel.c:678: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:679: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L218		|
| voxel.c:680: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:681: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:682: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:685: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L202:
| voxel.c:682: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:682: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L204		|
	move.l %d7,%d0	| remaining, remaining
.L204:
| voxel.c:682: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:682: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L219		|
| voxel.c:683: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:684: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:685: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.504
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L203:
| voxel.c:687: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:688: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:686: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.504, _73
	jne .L203		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L202		|
.L219:
| voxel.c:691: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:692: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:694: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:695: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:696: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:704: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L215:
| voxel.c:645: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:646: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:703: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L193		|
.L217:
| voxel.c:675: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:676: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L196		|
.L218:
| voxel.c:699: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:701: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L206		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L222		|
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:708: }
	movem.l (%sp)+,#1036	|,
	rts	
.L222:
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:708: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:711: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L226:
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L226		|
| voxel.c:713: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L227:
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:713: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L227		|
| voxel.c:715: 	Bconin(_CON);
#APP
| 715 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:716: }
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
	lea (-180,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:720: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:722: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:725: 	Super(0L);
	moveq #0,%d0	| tmp646
#APP
| 725 "voxel.c" 1
	movl	%d0,%sp@-	| tmp646
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:727: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:729: 	lineaa();
	jsr _lineaa		|
| voxel.c:732: 	save_palette(saved_palette);
	pea 196(%sp)		|
	jsr _save_palette		|
| voxel.c:734: 	unsigned short *screen = Physbase();
#APP
| 734 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,92(%sp)	| tmp1155, %sfp
| voxel.c:736: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:738: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:738: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1156
	jeq .L407		|
| voxel.c:743: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:744: 	build_tables();
	jsr _build_tables		|
| voxel.c:745: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:746: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (190,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 194(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:747: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L235		|
| voxel.c:748: 	read_palette_vectors(cockpit.colors);
	move.l 186(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 88(%sp),%a0	| %sfp, ivtmp.722
	move.l %a0,%d0	| ivtmp.722, _1391
	add.l #32000,%d0	|, _1391
	addq.l #4,%sp	|,
.L236:
| voxel.c:146: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.556_1504]
	cmp.l %d0,%a0	| _1391, ivtmp.722
	jne .L236		|
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.716
	lea _view_max,%a2	|, ivtmp.719
	clr.w %d3	| ivtmp.717
	move.l 84(%sp),%d4	| %sfp, _184
.L241:
| voxel.c:752: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1399], _6
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.717, tmp662
	asr.w #4,%d6	|, tmp662
	ext.l %d6	| tmp663
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp663, tmp664
	add.l %d6,%d6	| tmp664, _199
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp667
	lsr.l #3,%d5	|, tmp667
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _273
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _199, tmp668
	add.l %d6,%a0	| _199, tmp668
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _273, tmp669
	add.l %d4,%a0	| _184, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L237		|
	mulu.w #160,%d1	|, tmp670
	add.l %a0,%d1	| pBlock, _1339
.L238:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:522: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1339
	jne .L238		|
.L237:
| voxel.c:753: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1396], _10
| voxel.c:753: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:753: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp672
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp672,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp673
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _199, tmp675
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp675, tmp676
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp676, tmp677
	move.l %d4,%a0	| _184, pBlock
	add.l %d5,%a0	| tmp677, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L239		|
	mulu.w #160,%d1	|, tmp678
	add.l %a0,%d1	| pBlock, _228
.L240:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:522: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _228, pBlock
	jne .L240		|
.L239:
| voxel.c:751: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.717
	cmp.l #_view_min+80,%a1	|, ivtmp.716
	jne .L241		|
| voxel.c:756: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:757: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:758: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:761: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 194(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 108(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:763: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,202(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 154(%sp)	| %sfp
| voxel.c:767: 	int frames = 0;
	clr.l 150(%sp)	| %sfp
| voxel.c:765: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,144(%sp)	|, %sfp
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|, tmp1150
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp687
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp687
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1157
	jeq .L328		|
.L412:
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp687
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp690
	ext.l %d0	| tmp690
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,173(%sp)	| tmp690, %sfp
| voxel.c:771: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L408		|
| voxel.c:776: 		frames++;
	move.l 150(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,164(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.80_290
	move.w (%a0),%d0	| *hw_palette.80_290, _291
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_288
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_286
| voxel.c:781: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_288, tmp695
	lsr.w #7,%d0	|, tmp695
| voxel.c:780: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp696
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_286, tmp697
	lsr.w #7,%d1	|, tmp697
| voxel.c:780: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp698
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp699
	add.l %d1,%d0	| tmp698, tmp700
	add.l %d0,%d0	| tmp700, tmp701
	move.l %d0,%a0	| tmp701, tmp703
	add.l #_combined+1,%a0	|, tmp703
| voxel.c:781: 		fixp player_height = pos.z - terrain_height;
	clr.w %d0	| combined[_21][_24].D.2699.height
	move.b (%a0),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp705
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp705,
	move.w %d7,162(%sp)	|, %sfp
| voxel.c:782: 		if (desired_height >= 0) {
	tst.w 144(%sp)	| %sfp
	jlt .L409		|
.L244:
| voxel.c:783: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 144(%sp),%a0	| %sfp, desired_height
| voxel.c:783: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,140(%sp)	|, %sfp
	move.w 144(%sp),%d0	| %sfp, tmp713
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp713
	move.w %d0,%a1	| tmp713,
	move.l %a1,-(%sp)	|,
	sub.w 166(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	move.l 148(%sp),%a0	| %sfp,
	jsr (%a0)		|
	addq.l #8,%sp	|,
| voxel.c:785: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L246		|
	move.w #-256,%d0	|, altitude_delta
.L247:
| voxel.c:786: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _27, _37
| voxel.c:787: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jgt .L248		|
.L427:
| voxel.c:786: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _1509
| voxel.c:839: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	moveq #0,%d1	|
	move.w %d0,%d1	| _1509,
	move.l %d1,168(%sp)	|, %sfp
| voxel.c:412: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, tmp721
	sub.w %d0,%d1	| _1509, tmp721
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	ext.l %d1	| tmp722
	add.l %d1,%d1	| tmp722, _1523
| voxel.c:790: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.64_39
	move.w -602(%a0),160(%sp)	| MEM[(short int *)__aline.64_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp726
	clr.w %d2	| tmp726
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_286, tmp728
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp728
	move.l %d2,104(%sp)	| tmp728, %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 154(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,76(%sp)	| _42, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.64_39 + 4294966696B],
	move.l %a0,156(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp729
	add.l %a0,%d0	|, tmp729
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp729
	move.l %d0,132(%sp)	| tmp729, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 160(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp731
	add.l #-160,%d0	|, tmp731
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,102(%sp)	| pos.diry, %sfp
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1523,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,128(%sp)	|, %sfp
	move.l %d1,%d3	| _1523,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,124(%sp)	|, %sfp
	move.l %d1,%d4	| _1523,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,146(%sp)	|, %sfp
	move.l %d1,%d5	| _1523,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,120(%sp)	|, %sfp
	move.l %d1,%d7	| _1523,
	add.l #_y_table+40960,%d7	|,
	move.l %d7,116(%sp)	|, %sfp
	move.l %d1,%d2	| _1523,
	add.l #_y_table+49152,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1523
	move.l %d1,108(%sp)	| _1523, %sfp
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d7	| pdata_table[15][7][0], movep_data
	move.l %d0,%d3	| _48,
	lsl.l #4,%d3	|,
	move.l %d3,136(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 76(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,88(%sp)	| tmp1160, %sfp
	add.l %d2,%d2	| x, tmp741
	add.l #_horizon,%d2	|, tmp741
	move.l %d2,78(%sp)	| tmp741, %sfp
	move.l 128(%sp),%d1	| %sfp,
	add.l #12288,%d1	|,
	move.l %d1,46(%sp)	|, %sfp
	move.l 124(%sp),%d2	| %sfp,
	add.l #8192,%d2	|,
	move.l %d2,50(%sp)	|, %sfp
	add.l #8192,%d4	|,
	move.l %d4,54(%sp)	|, %sfp
	add.l #8192,%d5	|,
	move.l %d5,58(%sp)	|, %sfp
	move.l 116(%sp),%d3	| %sfp,
	add.l #8192,%d3	|,
	move.l %d3,62(%sp)	|, %sfp
	move.l 112(%sp),%d4	| %sfp,
	add.l #8192,%d4	|,
	move.l %d4,66(%sp)	|, %sfp
	move.l 108(%sp),%d5	| %sfp,
	add.l #8192,%d5	|,
	move.l %d5,70(%sp)	|, %sfp
.L311:
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 76(%sp),%d0	| %sfp, _56
	add.w #-160,%d0	|, _56
| voxel.c:806: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	move.w 100(%sp),%d3	| %sfp,
	muls.w %d0,%d3	| _56, tmp742
| voxel.c:806: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	asr.l #8,%d3	|, tmp743
| voxel.c:806: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	add.w 102(%sp),%d3	| %sfp, tmp744
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp746
	clr.w %d3	| tmp746
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	muls.w 102(%sp),%d0	| %sfp, tmp747
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	asr.l #8,%d0	|, tmp748
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w 100(%sp),%d1	| %sfp, tmp749
	sub.w %d0,%d1	| tmp748, tmp749
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp749, tmp751
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _301
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	move.l 104(%sp),%d2	| %sfp, tmp752
	add.l %d3,%d2	| _301, tmp752
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp753
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp754
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp755
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp756
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp757
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp758
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:815: 				.y = view_max[x >> 3],
	move.w 76(%sp),%d0	| %sfp, tmp759
	lsr.w #3,%d0	|, tmp759
	and.l #65535,%d0	|, _71
| voxel.c:815: 				.y = view_max[x >> 3],
	add.l %d0,%d0	| _71, tmp761
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%d5	| view_max[_71], _72
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 76(%sp),%d1	| %sfp, tmp762
	asr.w #4,%d1	|, tmp762
	ext.l %d1	| tmp763
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp763, tmp764
	add.l %d1,%d1	| tmp764, tmp764
	move.l %d1,92(%sp)	| tmp764, %sfp
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 76(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp767
	moveq #1,%d4	|,
	and.l %d1,%d4	| tmp767,
	move.l %d4,96(%sp)	|, %sfp
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d5,%d1	| _72,
	muls.w #80,%d1	|, tmp768
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 92(%sp),%d1	| %sfp, tmp770
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp770, tmp771
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d1	|, tmp772
	move.l 84(%sp),%a2	| %sfp, pBlock
	add.l %d1,%a2	| tmp772, pBlock
| voxel.c:417: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),82(%sp)	| view_min[_71], %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 92(%sp),-(%sp)	| %sfp,
	move.l 148(%sp),%a1	| %sfp,
	jsr (%a1)		|
	addq.l #8,%sp	|,
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 132(%sp),%d4	| %sfp, y_offset
	add.l %d0,%d4	| tmp1161, y_offset
| voxel.c:417: 	y_offset -= y_min;
	sub.w 82(%sp),%d4	| %sfp, _945
| voxel.c:419: 	short y = state.y - y_min;
	move.w %d5,%a0	| _72, _947
| voxel.c:419: 	short y = state.y - y_min;
	move.w %d5,%d0	| _72, y
	sub.w 82(%sp),%d0	| %sfp, y
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	jmi .L302		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 128(%sp),%a0	| %sfp, y_table_shifted
.L258:
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
	add.l #_combined,%d1	|, _965
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _965,
	move.w (%a1),%d1	| *_965, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d5	| SR.554
	move.b %d1,%d5	| sample, SR.554
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d5,%d5	| SR.554, tmp785
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a0,%d5.l),%d5	| (*y_table_shifted_846)[_967], sample_y
	add.w %d4,%d5	| _945, sample_y
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d0,%d5	| y, sample_y
	jle .L250		|
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp786
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 46(%sp),%a0	| %sfp, y_table_shifted
	jne .L258		|
.L252:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _301, tmp802
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _309
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.w #-1,%d0	|, y
	jeq .L402		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 124(%sp),%a0	| %sfp, y_table_shifted
.L267:
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
	add.l #_combined,%d1	|, _876
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _876,
	move.w (%a1),%d1	| *_876, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d5	| SR.552
	move.b %d1,%d5	| sample, SR.552
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d5,%d5	| SR.552, tmp807
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a0,%d5.l),%d5	| (*y_table_shifted_1330)[_878], sample_y
	add.w %d4,%d5	| _945, sample_y
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L264		|
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _885
	jlt .L410		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp809
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp810
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp811
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_890, _891
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _885, y
	jlt .L264		|
.L413:
	sub.w %d5,%d0	| _885, tmp813
	and.l #65535,%d0	|, tmp814
	addq.l #1,%d0	|, tmp815
	move.l %d0,%a1	| tmp815, tmp817
	add.l %d0,%a1	| tmp815, tmp817
	add.l %a1,%a1	| tmp817, tmp818
	move.l %a1,%d6	| tmp818, tmp819
	add.l %d0,%d6	| tmp815, tmp819
	lsl.l #5,%d6	|, tmp820
	move.l %a2,%d0	| pBlock, _1605
	sub.l %d6,%d0	| tmp820, _1605
.L265:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _891, pBlock
| 0 "" 2
| voxel.c:441: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:439: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1605
	jne .L265		|
	move.w %d5,%d0	| _885, y
	subq.w #1,%d0	|, y
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _309, tmp822
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 50(%sp),%a0	| %sfp, y_table_shifted
	jeq .L262		|
	cmp.w #-1,%d0	|, y
	jne .L267		|
.L402:
| voxel.c:471: 		.y = y + y_min,
	move.w 82(%sp),%a0	| %sfp, _947
	subq.w #1,%a0	|, _947
	move.w %a0,%d5	| _947, _72
.L302:
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 78(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_942], _376
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d0,%a0	| _376, _377
| voxel.c:528: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp944
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp945
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 92(%sp),%d0	| %sfp, tmp947
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp947, tmp948
| voxel.c:330: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 96(%sp),%d0	| %sfp, tmp949
	move.l 84(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp949, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _377,
	jge .L309		|
	move.w %a0,%d1	| _377,
	mulu.w #160,%d1	|,
	lea (%a2,%d1.l),%a0	| pBlock, tmp950, _1435
.L310:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d7, 0(%a2)	| movep_data, pBlock
| 0 "" 2
| voxel.c:522: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a2),%a2	|, pBlock
| voxel.c:520: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a2,%a0	| pBlock, _1435
	jne .L310		|
.L309:
| voxel.c:529: 	horizon[x] = y;
	move.l 78(%sp),%a0	| %sfp,
	move.w %d5,(%a0)	| _72, MEM[(short int *)_942]
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,76(%sp)	|, %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 136(%sp),%d1	| %sfp,
	add.l %d1,88(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,78(%sp)	|, %sfp
	cmp.w #319,76(%sp)	|, %sfp
	jls .L311		|
| voxel.c:839: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	move.l 168(%sp),-(%sp)	| %sfp,
	move.l #65408,-(%sp)	|,
	move.l 112(%sp),-(%sp)	| %sfp,
	jsr _ray_elevation		|
| voxel.c:841: 		if (elev_to_sun < -40) {
	lea (12,%sp),%sp	|,
	cmp.w #-40,%d0	|, elev_to_sun
	jlt .L341		|
	move.w #128,%a0	|, _1669
| voxel.c:843: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d0	|, elev_to_sun
	jge .L312		|
| voxel.c:846: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d0	|, tmp953
	add.w %d0,%d0	| tmp953, tmp954
	add.w %d0,%d0	| tmp954, sunlight
| voxel.c:849: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d0,%a0	| sunlight, _1669
.L312:
	move.l %a0,-(%sp)	| _1669,
	move.l 154(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d4	| pos.speed, _88
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d3	| pos.dirx, _89
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _89,
	muls.w %d4,%d0	| _88, tmp960
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp961
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp961, pos.x
| voxel.c:852: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _95
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _95,
	muls.w %d4,%d1	| _88, tmp964
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp965
| voxel.c:852: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, _100
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp967
	sub.l 164(%sp),%d0	| %sfp, tmp967
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp968
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d4,%d0	| _88, _106
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _106, tmp969
	asr.w #3,%d4	|, tmp969
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d5	| _106, tmp970
	asr.w #4,%d5	|, tmp970
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d5,%d4	| tmp970, tmp971
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d4	|, _113
| voxel.c:856: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _106
	jle .L313		|
.L428:
| voxel.c:856: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d4,%d0	| _113, _116
.L314:
| voxel.c:852: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d1,_pos+2	| _100, pos.y
| voxel.c:856: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _116, pos.speed
| voxel.c:858: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 160(%sp),%d1	| %sfp, rot
| voxel.c:859: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d0	| rot,
	muls.w %d2,%d0	| _95, tmp974
| voxel.c:859: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp975
| voxel.c:859: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| _89, _128
| voxel.c:860: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _128, tmp976
| voxel.c:860: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp977
| voxel.c:860: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp977, _135
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _128,
	muls.w %d0,%d1	| _128, tmp978
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp979
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _135,
	muls.w %d2,%d3	| _135, tmp980
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp981
| voxel.c:863: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp981, tmp982
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| tmp982, tmp983
	moveq #-128,%d1	|, tmp984
	add.l %a0,%d1	| tmp983, tmp984
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp985
| voxel.c:170: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _346
	sub.w %d1,%d3	| tmp985, _346
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _346, tmp988
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp989
| voxel.c:864: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp987
	clr.w %d0	| tmp987
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d3	| _135, tmp994
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp995
| voxel.c:864: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp995, tmp987
	move.l %d0,_pos+6	| tmp987, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:867: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:867: 		if (pressed_keys.up) {
	jpl .L315		|
| voxel.c:868: 			if (desired_height < FIXP(0, 0)) {
	tst.w 144(%sp)	| %sfp
	jlt .L343		|
| voxel.c:871: 			desired_height += FIXP(1, 0);
	move.w 144(%sp),%d0	| %sfp, _1671
.L316:
	add.w #128,%d0	|, _1671
	move.w %d0,144(%sp)	| _1671, %sfp
| voxel.c:872: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L315		|
	move.w #32512,144(%sp)	|, %sfp
.L315:
| voxel.c:876: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:876: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L318		|
| voxel.c:877: 			if (desired_height < FIXP(0, 0)) {
	tst.w 144(%sp)	| %sfp
	jlt .L319		|
| voxel.c:880: 			desired_height -= FIXP(1, 0);
	move.w 144(%sp),162(%sp)	| %sfp, %sfp
.L319:
| voxel.c:885: 		if (key == 0x23) {
	cmp.b #35,173(%sp)	|, %sfp
	jeq .L344		|
| voxel.c:880: 			desired_height -= FIXP(1, 0);
	move.w 162(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,144(%sp)	|, %sfp
| voxel.c:881: 			if (desired_height < FIXP(0, 0)) {
	jmi .L411		|
.L320:
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1007
	and.w #8192,%d0	|, _1612
| voxel.c:199: 	data &= mask;
	move.l 84(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B], tmp1008
	and.l #-536879105,%d3	|, tmp1008
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1612
	move.w %d0,%d1	| _1612, _1612
| voxel.c:199: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185], tmp1013
	and.l #-536879105,%d4	|, tmp1013
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1612
	swap %d2	| _1612
	clr.w %d2	| _1612
	move.w %d0,%d2	| _1612, _1612
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1612, tmp1013
	move.l %d4,(%a0)	| tmp1013, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185]
	or.l %d1,%d3	| _1612, tmp1008
	move.l %d3,4(%a0)	| tmp1008, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1021
	and.b #1,%d0	|, _147
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1024
	ext.w %d0	| tmp1023
	neg.w %d0	| tmp1025
	lsl.w %d1,%d0	|, _1716
| voxel.c:199: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B], tmp1026
	and.l #-536879105,%d3	|, tmp1026
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1716
	move.w %d0,%d1	| _1716, _1716
| voxel.c:199: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B], tmp1031
	and.l #-536879105,%d4	|, tmp1031
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1716
	swap %d2	| _1716
	clr.w %d2	| _1716
	move.w %d0,%d2	| _1716, _1716
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1716, tmp1031
	move.l %d4,640(%a0)	| tmp1031, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B]
	or.l %d1,%d3	| _1716, tmp1026
	move.l %d3,644(%a0)	| tmp1026, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1039
	and.b #1,%d1	|, _148
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1042
	ext.w %d1	| tmp1041
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _167
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1045
	and.b #1,%d0	|, _149
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1048
	ext.w %d0	| tmp1047
	neg.w %d0	| tmp1049
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _488
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d2	| MEM[(short unsigned int *)screen_185 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d2	| _167, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d5	| MEM[(short unsigned int *)screen_185 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d5	| _167, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_185 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d4	| _167, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 144(%sp),%d3	| %sfp, tmp1054
	not.w %d3	| tmp1054
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp1053
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _1412
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d2,%d1	| data, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,320(%a0)	| data, MEM[(short unsigned int *)screen_185 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d5,%d1	| data, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,322(%a0)	| data, MEM[(short unsigned int *)screen_185 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_185 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _1412, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_185 + 326B]
	addq.w #8,154(%sp)	|, %sfp
| voxel.c:776: 		frames++;
	move.l 164(%sp),150(%sp)	| %sfp, %sfp
.L416:
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp687
#APP
| 707 "voxel.c" 1
	movw	%d3,%sp@-	| tmp687
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1157
	jne .L412		|
.L328:
	clr.b 173(%sp)	| %sfp
| voxel.c:776: 		frames++;
	move.l 150(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,164(%sp)	|, %sfp
| voxel.c:112: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.80_290
	move.w (%a0),%d0	| *hw_palette.80_290, _291
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_288
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_286
| voxel.c:781: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_288, tmp695
	lsr.w #7,%d0	|, tmp695
| voxel.c:780: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp696
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_286, tmp697
	lsr.w #7,%d1	|, tmp697
| voxel.c:780: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp698
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp699
	add.l %d1,%d0	| tmp698, tmp700
	add.l %d0,%d0	| tmp700, tmp701
	move.l %d0,%a0	| tmp701, tmp703
	add.l #_combined+1,%a0	|, tmp703
| voxel.c:781: 		fixp player_height = pos.z - terrain_height;
	clr.w %d0	| combined[_21][_24].D.2699.height
	move.b (%a0),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp705
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp705,
	move.w %d7,162(%sp)	|, %sfp
| voxel.c:782: 		if (desired_height >= 0) {
	tst.w 144(%sp)	| %sfp
	jge .L244		|
.L409:
| voxel.c:154: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d4	|, _1508
| voxel.c:839: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	moveq #0,%d1	|
	move.w %d4,%d1	| _1508,
	move.l %d1,168(%sp)	|, %sfp
| voxel.c:412: 	short ytable_offset = 256 - player_height;
	move.w #256,%d1	|, tmp706
	sub.w %d4,%d1	| _1508, tmp706
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	ext.l %d1	| tmp707
	add.l %d1,%d1	| tmp707, _1523
	move.l #___divsi3,140(%sp)	|, %sfp
| voxel.c:790: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.64_39
	move.w -602(%a0),160(%sp)	| MEM[(short int *)__aline.64_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp726
	clr.w %d2	| tmp726
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_286, tmp728
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp728
	move.l %d2,104(%sp)	| tmp728, %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 154(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,76(%sp)	| _42, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.64_39 + 4294966696B],
	move.l %a0,156(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp729
	add.l %a0,%d0	|, tmp729
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp729
	move.l %d0,132(%sp)	| tmp729, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 160(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp731
	add.l #-160,%d0	|, tmp731
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,102(%sp)	| pos.diry, %sfp
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1523,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,128(%sp)	|, %sfp
	move.l %d1,%d3	| _1523,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,124(%sp)	|, %sfp
	move.l %d1,%d4	| _1523,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,146(%sp)	|, %sfp
	move.l %d1,%d5	| _1523,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,120(%sp)	|, %sfp
	move.l %d1,%d7	| _1523,
	add.l #_y_table+40960,%d7	|,
	move.l %d7,116(%sp)	|, %sfp
	move.l %d1,%d2	| _1523,
	add.l #_y_table+49152,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1523
	move.l %d1,108(%sp)	| _1523, %sfp
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d7	| pdata_table[15][7][0], movep_data
	move.l %d0,%d3	| _48,
	lsl.l #4,%d3	|,
	move.l %d3,136(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 76(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,88(%sp)	| tmp1160, %sfp
	add.l %d2,%d2	| x, tmp741
	add.l #_horizon,%d2	|, tmp741
	move.l %d2,78(%sp)	| tmp741, %sfp
	move.l 128(%sp),%d1	| %sfp,
	add.l #12288,%d1	|,
	move.l %d1,46(%sp)	|, %sfp
	move.l 124(%sp),%d2	| %sfp,
	add.l #8192,%d2	|,
	move.l %d2,50(%sp)	|, %sfp
	add.l #8192,%d4	|,
	move.l %d4,54(%sp)	|, %sfp
	add.l #8192,%d5	|,
	move.l %d5,58(%sp)	|, %sfp
	move.l 116(%sp),%d3	| %sfp,
	add.l #8192,%d3	|,
	move.l %d3,62(%sp)	|, %sfp
	move.l 112(%sp),%d4	| %sfp,
	add.l #8192,%d4	|,
	move.l %d4,66(%sp)	|, %sfp
	move.l 108(%sp),%d5	| %sfp,
	add.l #8192,%d5	|,
	move.l %d5,70(%sp)	|, %sfp
	jra .L311		|
.L408:
| voxel.c:906: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:907: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 174(%sp),%a0	| %sfp, tmp1060
| voxel.c:907: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp1060, tmp1062
	add.l %a0,%d0	| tmp1060, tmp1062
	add.l %d0,%d0	| tmp1062, tmp1063
| voxel.c:908: 	unsigned long millis_per_frame = millis / frames;
	move.l 150(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:909: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1163,
	pea .LC11		|
	jsr _printf		|
| voxel.c:910: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:911: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L235:
| voxel.c:914: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:915: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:916: 	install_palette(saved_palette);
	pea 196(%sp)		|
	jsr _install_palette		|
| voxel.c:918: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (180,%sp),%sp	|,
	rts	
.L410:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _885
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp809
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp810
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp811
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_890, _891
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _885, y
	jge .L413		|
.L264:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _309, tmp1083
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 50(%sp),%a0	| %sfp, y_table_shifted
	jne .L267		|
.L262:
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 146(%sp),%a0	| %sfp, y_table_shifted
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.w #-1,%d0	|, y
	jeq .L402		|
.L277:
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
	add.l #_combined,%d1	|, _787
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _787,
	move.w (%a1),%d1	| *_787, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d5	| SR.550
	move.b %d1,%d5	| sample, SR.550
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d5,%d5	| SR.550, tmp827
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a0,%d5.l),%d5	| (*y_table_shifted_303)[_789], sample_y
	add.w %d4,%d5	| _945, sample_y
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jge .L269		|
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _309, tmp828
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 54(%sp),%a0	| %sfp, y_table_shifted
	jne .L277		|
.L271:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _309, tmp844
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _307
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.w #-1,%d0	|, y
	jeq .L402		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 120(%sp),%a0	| %sfp, y_table_shifted
.L286:
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
	add.l #_combined,%d1	|, _698
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _698,
	move.w (%a1),%d1	| *_698, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d5	| SR.548
	move.b %d1,%d5	| sample, SR.548
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d5,%d5	| SR.548, tmp849
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a0,%d5.l),%d5	| (*y_table_shifted_162)[_700], sample_y
	add.w %d4,%d5	| _945, sample_y
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L283		|
.L279:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _707
	jlt .L414		|
.L282:
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp851
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp852
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp853
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_712, _713
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _707, y
	jlt .L283		|
	sub.w %d5,%d0	| _707, tmp855
	and.l #65535,%d0	|, tmp856
	addq.l #1,%d0	|, tmp857
	move.l %d0,%a1	| tmp857, tmp859
	add.l %d0,%a1	| tmp857, tmp859
	add.l %a1,%a1	| tmp859, tmp860
	move.l %a1,%d6	| tmp860, tmp861
	add.l %d0,%d6	| tmp857, tmp861
	lsl.l #5,%d6	|, tmp862
	move.l %a2,%d0	| pBlock, _1462
	sub.l %d6,%d0	| tmp862, _1462
.L284:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _713, pBlock
| 0 "" 2
| voxel.c:441: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:439: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1462
	jne .L284		|
	move.w %d5,%d0	| _707, y
	subq.w #1,%d0	|, y
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _307, tmp864
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 58(%sp),%a0	| %sfp, y_table_shifted
	jeq .L281		|
	cmp.w #-1,%d0	|, y
	jeq .L402		|
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
	add.l #_combined,%d1	|, _698
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _698,
	move.w (%a1),%d1	| *_698, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d5	| SR.548
	move.b %d1,%d5	| sample, SR.548
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d5,%d5	| SR.548, tmp849
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w (%a0,%d5.l),%d5	| (*y_table_shifted_162)[_700], sample_y
	add.w %d4,%d5	| _945, sample_y
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jge .L279		|
.L283:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _307, tmp1081
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 58(%sp),%a0	| %sfp, y_table_shifted
	jne .L286		|
.L281:
	cmp.w #-1,%d0	|, y
	jeq .L402		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 116(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:425: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+40,%a6	|, opacity_table_shifted
.L294:
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
	add.l #_combined,%d1	|, _609
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a0	| _609,
	move.w (%a0),%d6	| *_609, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| SR.546
	move.b %d6,%d1	| sample, SR.546
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| SR.546, tmp869
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %d4,%d5	| _945, sample_y
	add.w (%a4,%d1.l),%d5	| (*y_table_shifted_1154)[_611], sample_y
| voxel.c:471: 		.y = y + y_min,
	move.w %d0,%a1	| y, prephitmp_1610
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L288		|
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _618
	jlt .L415		|
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a6)+,%d1	| *opacity_table_shifted_1159, opacity_preshifted
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d6	|, tmp871
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d6,%a3	| tmp871, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _638
	move.w %a3,%d1	| offset, _638
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _618, y
	jlt .L290		|
.L417:
	move.w %d5,%d6	| _618, _1449
	subq.w #1,%d6	|, _1449
	move.l %a2,%a0	| pBlock, pBlock
	move.l %d1,%a3	| _638, tmp1093
	add.l #_pdata_table,%a3	|, tmp1093
.L291:
| voxel.c:455: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp874
	and.l %d0,%d1	| y, tmp874
	add.l %d1,%d1	| tmp874, tmp875
	add.l %d1,%d1	| tmp875, tmp876
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_644, *_644
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a0)	| *_644, pBlock
| 0 "" 2
| voxel.c:457: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d0,%d6	| y, _1449
	jne .L291		|
	sub.w %d5,%a1	| _618, tmp881
	moveq #0,%d1	| tmp882
	move.w %a1,%d1	| tmp881, tmp882
	move.l %d1,%a1	| tmp882, tmp883
	addq.l #1,%a1	|, tmp883
	move.l %a1,%d1	| tmp883, tmp885
	add.l %a1,%d1	| tmp883, tmp885
	add.l %d1,%d1	| tmp885, tmp886
	add.l %a1,%d1	| tmp883, tmp887
	lsl.l #5,%d1	|, tmp888
	sub.l %d1,%a2	| tmp888, pBlock
	move.w %d0,%a1	| y, prephitmp_1610
.L288:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _307, tmp890
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 62(%sp),%a4	| %sfp, y_table_shifted
	jeq .L292		|
	cmp.w #-1,%d0	|, y
	jne .L294		|
.L293:
| voxel.c:471: 		.y = y + y_min,
	move.w 82(%sp),%a0	| %sfp, _947
	add.w %a1,%a0	| prephitmp_1610, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L411:
| voxel.c:881: 			if (desired_height < FIXP(0, 0)) {
	clr.w 144(%sp)	| %sfp
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1007
	and.w #8192,%d0	|, _1612
| voxel.c:199: 	data &= mask;
	move.l 84(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B], tmp1008
	and.l #-536879105,%d3	|, tmp1008
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1612
	move.w %d0,%d1	| _1612, _1612
| voxel.c:199: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185], tmp1013
	and.l #-536879105,%d4	|, tmp1013
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1612
	swap %d2	| _1612
	clr.w %d2	| _1612
	move.w %d0,%d2	| _1612, _1612
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1612, tmp1013
	move.l %d4,(%a0)	| tmp1013, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185]
	or.l %d1,%d3	| _1612, tmp1008
	move.l %d3,4(%a0)	| tmp1008, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1021
	and.b #1,%d0	|, _147
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1024
	ext.w %d0	| tmp1023
	neg.w %d0	| tmp1025
	lsl.w %d1,%d0	|, _1716
| voxel.c:199: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B], tmp1026
	and.l #-536879105,%d3	|, tmp1026
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1716
	move.w %d0,%d1	| _1716, _1716
| voxel.c:199: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B], tmp1031
	and.l #-536879105,%d4	|, tmp1031
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1716
	swap %d2	| _1716
	clr.w %d2	| _1716
	move.w %d0,%d2	| _1716, _1716
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1716, tmp1031
	move.l %d4,640(%a0)	| tmp1031, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B]
	or.l %d1,%d3	| _1716, tmp1026
	move.l %d3,644(%a0)	| tmp1026, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1039
	and.b #1,%d1	|, _148
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1042
	ext.w %d1	| tmp1041
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _167
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1045
	and.b #1,%d0	|, _149
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1048
	ext.w %d0	| tmp1047
	neg.w %d0	| tmp1049
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _488
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d2	| MEM[(short unsigned int *)screen_185 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d2	| _167, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d5	| MEM[(short unsigned int *)screen_185 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d5	| _167, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_185 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d4	| _167, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 144(%sp),%d3	| %sfp, tmp1054
	not.w %d3	| tmp1054
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp1053
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _1412
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d2,%d1	| data, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,320(%a0)	| data, MEM[(short unsigned int *)screen_185 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d5,%d1	| data, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,322(%a0)	| data, MEM[(short unsigned int *)screen_185 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_185 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _1412, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_185 + 326B]
	addq.w #8,154(%sp)	|, %sfp
| voxel.c:776: 		frames++;
	move.l 164(%sp),150(%sp)	| %sfp, %sfp
	jra .L416		|
.L414:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _707
	jra .L282		|
.L415:
	clr.w %d5	| _618
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a6)+,%d1	| *opacity_table_shifted_1159, opacity_preshifted
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d6	|, tmp871
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d6,%a3	| tmp871, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _638
	move.w %a3,%d1	| offset, _638
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _618, y
	jge .L417		|
.L290:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _307, tmp1080
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 62(%sp),%a4	| %sfp, y_table_shifted
	jne .L294		|
.L292:
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _307, tmp891
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _305
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.w #-1,%d0	|, y
	jeq .L293		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 112(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:425: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+48,%a6	|, opacity_table_shifted
.L301:
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
	add.l #_combined,%d1	|, _520
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _520,
	move.w (%a1),%d6	| *_520, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| SR.544
	move.b %d6,%d1	| sample, SR.544
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| SR.544, tmp896
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %d4,%d5	| _945, sample_y
	add.w (%a4,%d1.l),%d5	| (*y_table_shifted_1104)[_522], sample_y
| voxel.c:471: 		.y = y + y_min,
	move.w %d0,%a0	| y, prephitmp_719
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L296		|
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _529
	jlt .L418		|
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a6)+,%d1	| *opacity_table_shifted_1137, opacity_preshifted
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d6	|, tmp898
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d6,%a3	| tmp898, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _549
	move.w %a3,%d1	| offset, _549
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _529, y
	jlt .L296		|
.L423:
	move.w %d5,%d6	| _529, _1445
	subq.w #1,%d6	|, _1445
	move.l %a2,%a1	| pBlock, pBlock
	move.l %d1,%a3	| _549, tmp1092
	add.l #_pdata_table,%a3	|, tmp1092
.L298:
| voxel.c:455: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp901
	and.l %d0,%d1	| y, tmp901
	add.l %d1,%d1	| tmp901, tmp902
	add.l %d1,%d1	| tmp902, tmp903
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_555, *_555
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a1)	| *_555, pBlock
| 0 "" 2
| voxel.c:457: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a1),%a1	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d0,%d6	| y, _1445
	jne .L298		|
	sub.w %d5,%a0	| _529, tmp908
	moveq #0,%d1	| tmp909
	move.w %a0,%d1	| tmp908, tmp909
	move.l %d1,%a0	| tmp909, tmp910
	addq.l #1,%a0	|, tmp910
	move.l %a0,%d1	| tmp910, tmp912
	add.l %a0,%d1	| tmp910, tmp912
	add.l %d1,%d1	| tmp912, tmp913
	add.l %a0,%d1	| tmp910, tmp914
	lsl.l #5,%d1	|, tmp915
	sub.l %d1,%a2	| tmp915, pBlock
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _305, tmp917
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 66(%sp),%a4	| %sfp, y_table_shifted
	jeq .L338		|
	cmp.w #-1,%d0	|, y
	jne .L301		|
	move.w #-1,%a0	|, prephitmp_719
.L300:
| voxel.c:471: 		.y = y + y_min,
	add.w 82(%sp),%a0	| %sfp, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L269:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _796
	jlt .L419		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp829
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp830
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp831
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_801, _802
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _796, y
	jlt .L420		|
.L273:
	sub.w %d5,%d0	| _796, tmp834
	and.l #65535,%d0	|, tmp835
	addq.l #1,%d0	|, tmp836
	move.l %d0,%a1	| tmp836, tmp838
	add.l %d0,%a1	| tmp836, tmp838
	add.l %a1,%a1	| tmp838, tmp839
	move.l %a1,%d6	| tmp839, tmp840
	add.l %d0,%d6	| tmp836, tmp840
	lsl.l #5,%d6	|, tmp841
	move.l %a2,%d0	| pBlock, _1468
	sub.l %d6,%d0	| tmp841, _1468
.L275:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _802, pBlock
| 0 "" 2
| voxel.c:441: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:439: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1468
	jne .L275		|
	move.w %d5,%d0	| _796, y
	subq.w #1,%d0	|, y
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _309, tmp843
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 54(%sp),%a0	| %sfp, y_table_shifted
	jeq .L271		|
	cmp.w #-1,%d0	|, y
	jne .L277		|
| voxel.c:471: 		.y = y + y_min,
	move.w 82(%sp),%a0	| %sfp, _947
	subq.w #1,%a0	|, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L419:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _796
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp829
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp830
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp831
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_801, _802
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _796, y
	jge .L273		|
.L420:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _309, tmp833
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 54(%sp),%a0	| %sfp, y_table_shifted
	jne .L277		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _309, tmp1082
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _307
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 120(%sp),%a0	| %sfp, y_table_shifted
	jra .L286		|
.L250:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _974
	jlt .L421		|
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp787
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp788
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp789
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_979, _980
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d0,%d5	| y, _974
	jgt .L422		|
.L254:
	sub.w %d5,%d0	| _974, tmp792
	and.l #65535,%d0	|, tmp793
	addq.l #1,%d0	|, tmp794
	move.l %d0,%a1	| tmp794, tmp796
	add.l %d0,%a1	| tmp794, tmp796
	add.l %a1,%a1	| tmp796, tmp797
	move.l %a1,%d6	| tmp797, tmp798
	add.l %d0,%d6	| tmp794, tmp798
	lsl.l #5,%d6	|, tmp799
	move.l %a2,%d0	| pBlock, _1080
	sub.l %d6,%d0	| tmp799, _1080
.L256:
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _980, pBlock
| 0 "" 2
| voxel.c:441: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:439: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1080
	jne .L256		|
	move.w %d5,%d0	| _974, y
	subq.w #1,%d0	|, y
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp801
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 46(%sp),%a0	| %sfp, y_table_shifted
	jeq .L252		|
	cmp.w #-1,%d0	|, y
	jne .L258		|
| voxel.c:471: 		.y = y + y_min,
	move.w 82(%sp),%a0	| %sfp, _947
	subq.w #1,%a0	|, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L421:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _974
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d1	|, tmp787
| voxel.c:381: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp788
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp789
| voxel.c:382: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d1.l),%d1	| *_979, _980
| voxel.c:439: 				while (y >= sample_y) {
	cmp.w %d0,%d5	| y, _974
	jle .L254		|
.L422:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _301, tmp791
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 46(%sp),%a0	| %sfp, y_table_shifted
	jne .L258		|
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| _301, tmp1084
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _309
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 124(%sp),%a0	| %sfp, y_table_shifted
	jra .L267		|
.L418:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _529
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a6)+,%d1	| *opacity_table_shifted_1137, opacity_preshifted
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d6	|, tmp898
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d6,%a3	| tmp898, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _549
	move.w %a3,%d1	| offset, _549
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _529, y
	jge .L423		|
.L296:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _305, tmp1079
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 66(%sp),%a4	| %sfp, y_table_shifted
	jne .L301		|
.L299:
	cmp.w #-1,%d0	|, y
	jeq .L300		|
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 108(%sp),%a4	| %sfp, y_table_shifted
| voxel.c:425: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+56,%a6	|, opacity_table_shifted
.L308:
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
	add.l #_combined,%d1	|, _431
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a0	| _431,
	move.w (%a0),%d6	| *_431, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| SR.542
	move.b %d6,%d1	| sample, SR.542
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| SR.542, tmp922
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %d4,%d5	| _945, sample_y
	add.w (%a4,%d1.l),%d5	| (*y_table_shifted_1323)[_433], sample_y
| voxel.c:471: 		.y = y + y_min,
	move.w %d0,%a0	| y, prephitmp_807
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jlt .L303		|
.L426:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	tst.w %d5	| _440
	jlt .L424		|
.L304:
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a6)+,%d1	| *opacity_table_shifted_1045, opacity_preshifted
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d6	|, tmp924
| voxel.c:386: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a3	| opacity_preshifted, offset
	add.w %d6,%a3	| tmp924, offset
| voxel.c:387: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _460
	move.w %a3,%d1	| offset, _460
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d5,%d0	| _440, y
	jlt .L303		|
	move.w %d5,%d6	| _440, _1437
	subq.w #1,%d6	|, _1437
	move.l %a2,%a1	| pBlock, pBlock
	move.l %d1,%a3	| _460, tmp1091
	add.l #_pdata_table,%a3	|, tmp1091
.L305:
| voxel.c:455: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp927
	and.l %d0,%d1	| y, tmp927
	add.l %d1,%d1	| tmp927, tmp928
	add.l %d1,%d1	| tmp928, tmp929
| voxel.c:335: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d1.l),%d1	| *_466, *_466
#APP
| 335 "voxel.c" 1
	movep.l %d1, 0(%a1)	| *_466, pBlock
| 0 "" 2
| voxel.c:457: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a1),%a1	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:454: 				while (y >= sample_y) {
	cmp.w %d0,%d6	| y, _1437
	jne .L305		|
	sub.w %d5,%a0	| _440, tmp934
	moveq #0,%d1	| tmp935
	move.w %a0,%d1	| tmp934, tmp935
	move.l %d1,%a0	| tmp935, tmp936
	addq.l #1,%a0	|, tmp936
	move.l %a0,%d1	| tmp936, tmp938
	add.l %a0,%d1	| tmp936, tmp938
	add.l %d1,%d1	| tmp938, tmp939
	add.l %a0,%d1	| tmp936, tmp940
	lsl.l #5,%d1	|, tmp941
	sub.l %d1,%a2	| tmp941, pBlock
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _305, tmp943
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 70(%sp),%a4	| %sfp, y_table_shifted
	jeq .L425		|
	cmp.w #-1,%d0	|, y
	jeq .L402		|
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
	add.l #_combined,%d1	|, _431
| voxel.c:369: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a0	| _431,
	move.w (%a0),%d6	| *_431, sample
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| SR.542
	move.b %d6,%d1	| sample, SR.542
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| SR.542, tmp922
| voxel.c:430: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %d4,%d5	| _945, sample_y
	add.w (%a4,%d1.l),%d5	| (*y_table_shifted_1323)[_433], sample_y
| voxel.c:471: 		.y = y + y_min,
	move.w %d0,%a0	| y, prephitmp_807
| voxel.c:431: 		if (sample_y <= y) {
	cmp.w %d5,%d0	| sample_y, y
	jge .L426		|
.L303:
| voxel.c:464: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _305, tmp1078
| voxel.c:178: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:428: 	for(short z = z_begin - z_end; z != 0 && y >= 0; z++) {
	cmp.l 70(%sp),%a4	| %sfp, y_table_shifted
	jne .L308		|
| voxel.c:471: 		.y = y + y_min,
	add.w 82(%sp),%a0	| %sfp, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L424:
| voxel.c:433: 			if (sample_y < 0) sample_y = 0;
	clr.w %d5	| _440
	jra .L304		|
.L425:
	move.w %d0,%a0	| y, prephitmp_807
| voxel.c:471: 		.y = y + y_min,
	add.w 82(%sp),%a0	| %sfp, _947
	move.w %a0,%d5	| _947, _72
	jra .L302		|
.L338:
	move.w %d0,%a0	| y, prephitmp_719
	jra .L299		|
.L246:
| voxel.c:786: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L247		|
	move.w #256,%d0	|, altitude_delta
	add.w %d4,%d0	| _27, _37
| voxel.c:787: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jle .L427		|
.L248:
| voxel.c:787: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|, _1523
	move.l #255,168(%sp)	|, %sfp
| voxel.c:790: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.64_39
	move.w -602(%a0),160(%sp)	| MEM[(short int *)__aline.64_39 + 4294966694B], %sfp
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp726
	clr.w %d2	| tmp726
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_286, tmp728
| voxel.c:174: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp728
	move.l %d2,104(%sp)	| tmp728, %sfp
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 154(%sp),%d0	| %sfp, _42
	and.w #8,%d0	|, _42
| voxel.c:795: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _42
	move.w %d0,76(%sp)	| _42, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.64_39 + 4294966696B],
	move.l %a0,156(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp729
	add.l %a0,%d0	|, tmp729
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp729
	move.l %d0,132(%sp)	| tmp729, %sfp
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 160(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp731
	add.l #-160,%d0	|, tmp731
| voxel.c:801: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _48
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:807: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,102(%sp)	| pos.diry, %sfp
| voxel.c:422: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l %d1,%d2	| _1523,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,128(%sp)	|, %sfp
	move.l %d1,%d3	| _1523,
	add.l #_y_table+16384,%d3	|,
	move.l %d3,124(%sp)	|, %sfp
	move.l %d1,%d4	| _1523,
	add.l #_y_table+24576,%d4	|,
	move.l %d4,146(%sp)	|, %sfp
	move.l %d1,%d5	| _1523,
	add.l #_y_table+32768,%d5	|,
	move.l %d5,120(%sp)	|, %sfp
	move.l %d1,%d7	| _1523,
	add.l #_y_table+40960,%d7	|,
	move.l %d7,116(%sp)	|, %sfp
	move.l %d1,%d2	| _1523,
	add.l #_y_table+49152,%d2	|,
	move.l %d2,112(%sp)	|, %sfp
	add.l #_y_table+57344,%d1	|, _1523
	move.l %d1,108(%sp)	| _1523, %sfp
| voxel.c:519: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d7	| pdata_table[15][7][0], movep_data
	move.l %d0,%d3	| _48,
	lsl.l #4,%d3	|,
	move.l %d3,136(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 76(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _48,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,88(%sp)	| tmp1160, %sfp
	add.l %d2,%d2	| x, tmp741
	add.l #_horizon,%d2	|, tmp741
	move.l %d2,78(%sp)	| tmp741, %sfp
	move.l 128(%sp),%d1	| %sfp,
	add.l #12288,%d1	|,
	move.l %d1,46(%sp)	|, %sfp
	move.l 124(%sp),%d2	| %sfp,
	add.l #8192,%d2	|,
	move.l %d2,50(%sp)	|, %sfp
	add.l #8192,%d4	|,
	move.l %d4,54(%sp)	|, %sfp
	add.l #8192,%d5	|,
	move.l %d5,58(%sp)	|, %sfp
	move.l 116(%sp),%d3	| %sfp,
	add.l #8192,%d3	|,
	move.l %d3,62(%sp)	|, %sfp
	move.l 112(%sp),%d4	| %sfp,
	add.l #8192,%d4	|,
	move.l %d4,66(%sp)	|, %sfp
	move.l 108(%sp),%d5	| %sfp,
	add.l #8192,%d5	|,
	move.l %d5,70(%sp)	|, %sfp
	jra .L311		|
.L341:
	sub.l %a0,%a0	| _1669
| voxel.c:849: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1669,
	move.l 154(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d4	| pos.speed, _88
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d3	| pos.dirx, _89
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _89,
	muls.w %d4,%d0	| _88, tmp960
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp961
| voxel.c:851: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp961, pos.x
| voxel.c:852: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _95
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _95,
	muls.w %d4,%d1	| _88, tmp964
| voxel.c:162: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp965
| voxel.c:852: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, _100
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp967
	sub.l 164(%sp),%d0	| %sfp, tmp967
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp968
| voxel.c:854: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d4,%d0	| _88, _106
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _106, tmp969
	asr.w #3,%d4	|, tmp969
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d5	| _106, tmp970
	asr.w #4,%d5	|, tmp970
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d5,%d4	| tmp970, tmp971
| voxel.c:855: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d4	|, _113
| voxel.c:856: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _106
	jgt .L428		|
.L313:
| voxel.c:857: 		else pos.speed += drag;
	add.w %d4,%d0	| _113, _116
	jra .L314		|
.L318:
| voxel.c:885: 		if (key == 0x23) {
	cmp.b #35,173(%sp)	|, %sfp
	jne .L320		|
| voxel.c:887: 			if (desired_height < 0) {
	tst.w 144(%sp)	| %sfp
	jge .L344		|
| voxel.c:888: 				desired_height = player_height;
	move.w 162(%sp),144(%sp)	| %sfp, %sfp
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1007
	and.w #8192,%d0	|, _1612
| voxel.c:199: 	data &= mask;
	move.l 84(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B], tmp1008
	and.l #-536879105,%d3	|, tmp1008
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1612
	move.w %d0,%d1	| _1612, _1612
| voxel.c:199: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185], tmp1013
	and.l #-536879105,%d4	|, tmp1013
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1612
	swap %d2	| _1612
	clr.w %d2	| _1612
	move.w %d0,%d2	| _1612, _1612
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1612, tmp1013
	move.l %d4,(%a0)	| tmp1013, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185]
	or.l %d1,%d3	| _1612, tmp1008
	move.l %d3,4(%a0)	| tmp1008, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1021
	and.b #1,%d0	|, _147
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1024
	ext.w %d0	| tmp1023
	neg.w %d0	| tmp1025
	lsl.w %d1,%d0	|, _1716
| voxel.c:199: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B], tmp1026
	and.l #-536879105,%d3	|, tmp1026
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1716
	move.w %d0,%d1	| _1716, _1716
| voxel.c:199: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B], tmp1031
	and.l #-536879105,%d4	|, tmp1031
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1716
	swap %d2	| _1716
	clr.w %d2	| _1716
	move.w %d0,%d2	| _1716, _1716
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1716, tmp1031
	move.l %d4,640(%a0)	| tmp1031, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B]
	or.l %d1,%d3	| _1716, tmp1026
	move.l %d3,644(%a0)	| tmp1026, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1039
	and.b #1,%d1	|, _148
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1042
	ext.w %d1	| tmp1041
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _167
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1045
	and.b #1,%d0	|, _149
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1048
	ext.w %d0	| tmp1047
	neg.w %d0	| tmp1049
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _488
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d2	| MEM[(short unsigned int *)screen_185 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d2	| _167, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d5	| MEM[(short unsigned int *)screen_185 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d5	| _167, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_185 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d4	| _167, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 144(%sp),%d3	| %sfp, tmp1054
	not.w %d3	| tmp1054
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp1053
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _1412
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d2,%d1	| data, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,320(%a0)	| data, MEM[(short unsigned int *)screen_185 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d5,%d1	| data, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,322(%a0)	| data, MEM[(short unsigned int *)screen_185 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_185 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _1412, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_185 + 326B]
	addq.w #8,154(%sp)	|, %sfp
| voxel.c:776: 		frames++;
	move.l 164(%sp),150(%sp)	| %sfp, %sfp
	jra .L416		|
.L343:
	move.w 162(%sp),%d0	| %sfp, _1671
	jra .L316		|
.L344:
| voxel.c:890: 				desired_height = -1;
	move.w #-1,144(%sp)	|, %sfp
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:896: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1007
	and.w #8192,%d0	|, _1612
| voxel.c:199: 	data &= mask;
	move.l 84(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B], tmp1008
	and.l #-536879105,%d3	|, tmp1008
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1612
	move.w %d0,%d1	| _1612, _1612
| voxel.c:199: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185], tmp1013
	and.l #-536879105,%d4	|, tmp1013
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1612
	swap %d2	| _1612
	clr.w %d2	| _1612
	move.w %d0,%d2	| _1612, _1612
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1612, tmp1013
	move.l %d4,(%a0)	| tmp1013, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185]
	or.l %d1,%d3	| _1612, tmp1008
	move.l %d3,4(%a0)	| tmp1008, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 4B]
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1021
	and.b #1,%d0	|, _147
| voxel.c:897: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1024
	ext.w %d0	| tmp1023
	neg.w %d0	| tmp1025
	lsl.w %d1,%d0	|, _1716
| voxel.c:199: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B], tmp1026
	and.l #-536879105,%d3	|, tmp1026
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1716
	move.w %d0,%d1	| _1716, _1716
| voxel.c:199: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B], tmp1031
	and.l #-536879105,%d4	|, tmp1031
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1716
	swap %d2	| _1716
	clr.w %d2	| _1716
	move.w %d0,%d2	| _1716, _1716
| voxel.c:201: 	*out++ = data;
	or.l %d2,%d4	| _1716, tmp1031
	move.l %d4,640(%a0)	| tmp1031, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 640B]
	or.l %d1,%d3	| _1716, tmp1026
	move.l %d3,644(%a0)	| tmp1026, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_185 + 644B]
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp1039
	and.b #1,%d1	|, _148
| voxel.c:898: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp1042
	ext.w %d1	| tmp1041
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _167
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1045
	and.b #1,%d0	|, _149
| voxel.c:899: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1048
	ext.w %d0	| tmp1047
	neg.w %d0	| tmp1049
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _488
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d2	| MEM[(short unsigned int *)screen_185 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:199: 	data &= mask;
	or.w %d1,%d2	| _167, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d5	| MEM[(short unsigned int *)screen_185 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:203: 	data &= mask;
	or.w %d1,%d5	| _167, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_185 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:211: 	data &= mask;
	or.w %d1,%d4	| _167, data
| voxel.c:900: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 144(%sp),%d3	| %sfp, tmp1054
	not.w %d3	| tmp1054
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp1053
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _1412
| voxel.c:200: 	data |= (color & 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d2,%d1	| data, data
| voxel.c:199: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:200: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,320(%a0)	| data, MEM[(short unsigned int *)screen_185 + 320B]
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d0,%d1	| _488, data
	or.w %d5,%d1	| data, data
| voxel.c:203: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:204: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _1412, data
	move.w %d1,322(%a0)	| data, MEM[(short unsigned int *)screen_185 + 322B]
| voxel.c:208: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_185 + 324B]
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:211: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:212: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _1412, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_185 + 326B]
	addq.w #8,154(%sp)	|, %sfp
| voxel.c:776: 		frames++;
	move.l 164(%sp),150(%sp)	| %sfp, %sfp
	jra .L416		|
.L407:
| voxel.c:739: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:740: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:914: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:915: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:916: 	install_palette(saved_palette);
	pea 196(%sp)		|
	jsr _install_palette		|
| voxel.c:918: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (180,%sp),%sp	|,
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
