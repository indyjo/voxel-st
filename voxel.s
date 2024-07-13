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
| voxel.c:120: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L1		|
	tst.b %d0	| dither
	jne .L19		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:120: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.179
	add.l 80(%sp),%a6	| pixels, ivtmp.179
.L5:
| voxel.c:124: 				unsigned char register px = pixels[y*width + 16*chunk + x];
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
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:128: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:128: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:128: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:128: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:128: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:128: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:128: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:128: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:128: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:128: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:128: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:128: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:128: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:128: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:128: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:128: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:130: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:130: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:130: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:130: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:130: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:130: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:130: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:130: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:130: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:130: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:130: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:130: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:130: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:130: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:130: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:130: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:138: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:132: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:132: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:132: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:132: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:132: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:132: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:132: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:132: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:132: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:132: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:121: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.179
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L5		|
| voxel.c:120: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:120: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L6		|
.L1:
| voxel.c:141: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L19:
| voxel.c:120: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.211
| voxel.c:120: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.204
	add.l %a2,%a0	| ivtmp.211, ivtmp.204
	lea (160,%a1),%a3	|, out, tmp719
.L9:
| voxel.c:123: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:122: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:122: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:122: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:122: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L8:
| voxel.c:124: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:125: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:125: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L7		|
| voxel.c:126: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:126: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L7:
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:127: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:128: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:129: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:130: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:131: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:132: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:133: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:123: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:123: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L8		|
| voxel.c:135: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:136: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:137: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:138: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:138: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:121: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.204
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:120: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:120: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.211
	cmp.l 88(%sp),%d6	| height, y
	jeq .L1		|
	move.l 80(%sp),%a0	| pixels, ivtmp.204
	add.l %a2,%a0	| ivtmp.211, ivtmp.204
	lea (160,%a1),%a3	|, out, tmp719
	jra .L9		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L21:
| voxel.c:144: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.217_11]
	cmp.l %d0,%a0	| _3, out
	jne .L21		|
| voxel.c:145: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:153: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:157: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:161: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L36		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L32:
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L33		|
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L33:
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L34		|
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L34:
| voxel.c:235: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L35		|
| voxel.c:235: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L35:
| voxel.c:236: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L36:
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
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
	move.l #_y_table+1024,%d6	|, ivtmp.353
| voxel.c:245: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:244: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:243: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L49:
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:247: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:249: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:249: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _205
	add.w #45,%d2	|, _205
| voxel.c:249: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.353, ivtmp.342
	move.w #-17920,%a2	|, ivtmp.339
.L50:
| voxel.c:247: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.339,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:249: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:246: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.339
	cmp.w #17920,%a2	|, ivtmp.339
	jne .L50		|
| voxel.c:252: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:254: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:254: 		if (TRIGGERS_PROGRESSION(z))
	jne .L51		|
| voxel.c:62: 	return x + x;
	add.w %d7,%d7	| step, step
.L51:
| voxel.c:257: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:258: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L106		|
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:245: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:245: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.353
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:263: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.330
	clr.b %d2	| max_height_lsm_flag.252
	clr.b %d1	| max_height_lsm.251
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.330, ivtmp.323
.L55:
| voxel.c:266: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:266: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.251, _72
	jls .L54		|
| voxel.c:267: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.251
| voxel.c:266: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.252
.L54:
| voxel.c:265: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.323
	cmp.l %a0,%a1	| ivtmp.323, ivtmp.330
	jne .L55		|
| voxel.c:264: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.323, ivtmp.330
	cmp.l #_combined+524289,%a0	|, ivtmp.323
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.252
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.251, max_height
.L57:
| voxel.c:271: 	int bayer[8][8] = {
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
| voxel.c:281: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L58:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
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
	sub.l %a4,%a4	| ivtmp.303
.L81:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L73		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L73:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L74		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L74:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L75		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L75:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L76		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L76:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L77		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L77:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L78		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L78:
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L79		|
| voxel.c:287: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L79:
| voxel.c:292: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _184
	move.b %d7,%d1	|, _184
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _184,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _184
	move.l %d1,68(%sp)	| _184, %sfp
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _166
	and.l %d0,%d7	| mask, _166
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _166, iftmp.11_167
	lsl.w #8,%d6	|, iftmp.11_167
	swap %d6	| iftmp.11_167
	clr.w %d6	| iftmp.11_167
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _166,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_170
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _166,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_176
| voxel.c:294: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.302
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
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
	move.l %d3,%d2	| color1, ivtmp.294
	neg.l %d2	| ivtmp.294
	move.l %a3,%a0	| ivtmp.302, ivtmp.295
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.294, _54
| voxel.c:232: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _54, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_167, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:233: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _54
	jeq .L67		|
	move.l %a2,%d7	| iftmp.12_170,
	or.l %d7,%d1	|, _137
.L67:
| voxel.c:234: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _54
	jeq .L68		|
	move.l %a1,%d7	| iftmp.13_176,
	or.l %d7,%d1	|, _137
.L68:
| voxel.c:235: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _54
	jeq .L69		|
	or.l 44(%sp),%d1	| %sfp, _137
.L69:
| voxel.c:295: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.294, tmp229
| voxel.c:297: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.303, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:297: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:290: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.294
	lea (-3840,%a0),%a0	|, ivtmp.295
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.294,
	jne .L70		|
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.302
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:282: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.303
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.303,
	jne .L81		|
| voxel.c:281: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:281: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L58		|
| voxel.c:306: 	short top_envelope[20] = {
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
| voxel.c:312: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.275
	lea _view_min+80,%a6	|, ivtmp.278
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.280
	lea (156,%sp),%a4	|,, ivtmp.282
	lea _view_max+80,%a3	|, ivtmp.285
	lea _view_max,%a2	|, ivtmp.287
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.275, _320
.L82:
| voxel.c:320: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _40
| voxel.c:320: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_294]
| voxel.c:320: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_316]
| voxel.c:321: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _45
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _45
| voxel.c:321: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _45, MEM[(short int *)_318]
| voxel.c:321: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _45, MEM[(short int *)_295]
| voxel.c:319: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.275, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.268
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L83:
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_46],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_190]
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:323: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L83		|
| voxel.c:324: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L106:
| voxel.c:258: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:260: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:245: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:245: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.353
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.294
	neg.l %d2	| ivtmp.294
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.302, ivtmp.295
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
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_74(D)->dirx, _5
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d1,%d2	|, _9
	add.w #-160,%d2	|, _9
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d4	| pos_74(D)->diry, _11
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d5	| _9,
	muls.w %d3,%d5	| _5, tmp152
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp153
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d4,%d5	| _11, tmp154
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp156
	clr.w %d5	| tmp156
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d4,%d2	| _11, tmp157
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp158
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp158, tmp159
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d5	| tmp159, tmp161
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_74(D)->y
	move.w 2(%a0),%d2	| pos_74(D)->y, pos_74(D)->y
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp163
	clr.w %d2	| tmp163
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_74(D)->x, tmp165
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp166
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp167
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp168
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp169
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp170
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp171
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp172
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp173
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d3	|, tmp174
	asr.w #4,%d3	|, tmp174
	move.w %d3,%a0	| tmp174, tmp175
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp175, tmp176
	add.l %a0,%a0	| tmp176, tmp177
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|,
	muls.w #80,%d3	|, tmp178
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp178, tmp180
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp180, tmp180, tmp181
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp183
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp184
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d1.l),%a0	| tmp181, tmp184, tmp185
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:398: 	y_offset -= y_min;
	move.w 74(%sp),%a4	| y_offset, _25
	sub.w 50(%sp),%a4	| %sfp, _25
| voxel.c:400: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:379: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp188
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:410: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L107		|
	lea _opacity_table+4,%a3	|, ivtmp.388
| voxel.c:401: 	unsigned short z = STEPS_MIN;
	moveq #4,%d6	|, z
| voxel.c:395: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
	lea _combined,%a5	|, tmp227
| voxel.c:366: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp234
.L110:
| voxel.c:341: 	asm (
#APP
| 341 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:416: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d0	| index_mask, index
| voxel.c:418: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d0.l),%d4	| _30->both, _31
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| _31
	move.b %d4,%d0	| _31, _31
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _31, tmp194
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a4,%d3	| _25, sample_y
	add.w (%a1,%d0.l),%d3	| (*y_table_shifted_174)[_32], sample_y
| voxel.c:475: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_197
| voxel.c:420: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L111		|
| voxel.c:422: 			if (z < FOG_START) {
	cmp.w #39,%d6	|, z
	jhi .L112		|
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp195
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp196
| voxel.c:366: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp197
| voxel.c:366: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_131, _132
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _88
	jlt .L133		|
.L113:
| voxel.c:430: 				while (y >= sample_y) {
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
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _132, pBlock
| 0 "" 2
| voxel.c:432: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:430: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _68, pBlock
	jne .L115		|
	move.w %d3,%d0	| _88, prephitmp_197
	subq.w #1,%d0	|, prephitmp_197
	move.w %d0,%d1	| prephitmp_197, y
.L108:
.L114:
| voxel.c:459: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:460: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp224
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:463: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp225
	and.w #15,%d3	|, tmp225
	jeq .L120		|
| voxel.c:410: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.388
	cmp.w #-1,%d1	|, y
	jne .L110		|
.L129:
| voxel.c:475: 	return y + y_min;
	add.w 50(%sp),%d0	| %sfp, <retval>
.L107:
| voxel.c:476: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L112:
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	move.w %d3,46(%sp)	| sample_y, %sfp
	jmi .L134		|
.L116:
| voxel.c:370: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d3	|
	move.b (%a3),%d3	| MEM[(unsigned char *)_151],
	move.w %d3,%a2	|, opacity_preshifted
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp209
| voxel.c:370: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d4,%a2	| tmp209, offset
| voxel.c:371: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d4	| _136
	move.w %a2,%d4	| offset, _136
| voxel.c:448: 				while (y >= sample_y) {
	cmp.w 46(%sp),%d1	| %sfp, y
	jlt .L111		|
	move.l %d4,%a2	| _136, tmp228
	add.l #_pdata_table,%a2	|, tmp228
	move.w 46(%sp),%d3	| %sfp, _208
.L117:
| voxel.c:449: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp212
	and.l %d1,%d0	| y, tmp212
	add.l %d0,%d0	| tmp212, tmp213
	add.l %d0,%d0	| tmp213, tmp214
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d0.l),%d0	| *_41, *_41
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_41, pBlock
| 0 "" 2
| voxel.c:451: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:452: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_197
| voxel.c:448: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _208
	jle .L117		|
.L111:
| voxel.c:459: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:460: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp219
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:463: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp220
	and.w #15,%d3	|, tmp220
	jne .L118		|
.L120:
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp221
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp222
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L118:
| voxel.c:406: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d6	|, z
	jeq .L129		|
| voxel.c:410: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.388
	cmp.w #-1,%d1	|, y
	jne .L110		|
	jra .L129		|
.L133:
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
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
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L135		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L137:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:483: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L137		|
.L135:
| voxel.c:485: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L142		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L143:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:483: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L143		|
.L142:
| voxel.c:490: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:491: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:509: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:510: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:511: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:517: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.437
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L152:
| voxel.c:528: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:529: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:530: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:509: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:510: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:509: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:510: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:509: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:510: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:535: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:535: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:527: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.437
	cmp.l %d3,%a3	| _445, ivtmp.437
	jne .L152		|
| voxel.c:537: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.443
	clr.w %d0	| vect__18.443
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.443
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.443, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:543: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:546: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L160		|
	cmp.w #128,%d0	|, val
	jge .L161		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:548: }
	rts	
.L161:
| voxel.c:546: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:548: }
	rts	
.L160:
| voxel.c:546: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:548: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
| voxel.c:553: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d6	| pos.dirx, _4
	neg.w %d6	| _4
	move.w _pos+8,%d7	| pos.diry, _8
	neg.w %d7	| _8
| voxel.c:556: 	vec3_t blue = { sky_color[0] >> 3, sky_color[1] >> 3, sky_color[2] >> 3 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #3,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #3,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #3,%d0	|, _16
| voxel.c:564: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:566: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	move.l 8(%fp),%d3	| frame, tmp241
	subq.l #3,%d3	|, tmp241
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	moveq #28,%d4	|,
	and.l %d3,%d4	| tmp241,
	move.l %d4,-58(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-80(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	moveq #64,%d4	|,
	sub.w %d2,%d4	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %d4,%d2	| tmp243,
	move.l %d2,-66(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	moveq #64,%d1	|, tmp245
	sub.w -74(%fp),%d1	| %sfp, tmp245
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-70(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:558: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	moveq #64,%d0	|, tmp247
	sub.w -72(%fp),%d0	| %sfp, tmp247
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-62(%fp)	|, %sfp
| voxel.c:587: 		if ((frame & 31) < 4) {
	moveq #28,%d0	|, tmp248
	and.l 8(%fp),%d0	| frame, tmp248
	lea _palette_vectors+6,%a5	|, ivtmp.473
| voxel.c:566: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	lea ___mulsi3,%a3	|, tmp376
	lea (-3,%fp),%a4	|,, tmp378
	jeq .L165		|
	move.l %a4,-78(%fp)	| tmp378, %sfp
	move.l %a0,%a4	|, p
.L177:
| voxel.c:569: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_331], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_331], normal_lcs
	move.w -54(%fp),%d5	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d3	| normal_lcs.a[2], b$a$2
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| b$a$2,
	muls.w %d7,%d0	| _8, tmp250
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp251
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d5,%d1	| b$a$0,
	muls.w %d6,%d1	| _4, tmp252
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp253
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp253, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp255
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp257
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d5,%d1	| b$a$0,
	muls.w %d7,%d1	| _8, tmp258
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp259
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	| b$a$2,
	muls.w %d6,%d2	| _4, tmp260
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp261
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| tmp261, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, tmp263
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp265
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp265, result
| voxel.c:575: 		if (c_sun < 0) c_sun = 0;
	jmi .L204		|
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%a2	| result, _688
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp266
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp268
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d3	|, tmp269
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp271
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp271, _402
| voxel.c:581: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L205		|
.L167:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -80(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _402, tmp273
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp274
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _688,
	move.l -66(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp277
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp277, _29
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _402, tmp279
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp280
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _688,
	move.l -70(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp283, _149
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -72(%fp),%d2	| %sfp, tmp285
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp286
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -62(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _688,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp289
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d2,%d0	| tmp286, _839
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	tst.l -58(%fp)	| %sfp
	jeq .L168		|
.L207:
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, _839
	jcc .L206		|
	add.b %d0,%d0	| _839, tmp293
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	move.b %d0,(%a4)	| tmp293, MEM[(unsigned char *)p_298]
.L171:
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d3	|, accum$c$y
	jge .L191		|
	add.b %d3,%d3	| accum$c$y, iftmp.43_206
.L170:
| voxel.c:599: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a4)	| iftmp.43_206, MEM[(unsigned char *)p_298 + 1B]
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a4	|, p
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d4	|, _29
	jcc .L192		|
.L210:
	add.b %d4,%d4	| _29, iftmp.42_69
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	move.b %d4,-1(%a4)	| iftmp.42_69, MEM[(unsigned char *)p_669 + 4294967295B]
| voxel.c:567: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.473
	cmp.l -78(%fp),%a4	| %sfp, p
	jne .L177		|
.L178:
| voxel.c:602: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:603: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:605: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:606: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L204:
| voxel.c:575: 		if (c_sun < 0) c_sun = 0;
	clr.w %d0	| result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%a2	| result, _688
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	muls.w #123,%d2	|, tmp266
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp268
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d3	|, tmp269
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp271
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp271, _402
| voxel.c:581: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L167		|
.L205:
	clr.w %d2	| _402
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -80(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _402, tmp273
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp274
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _688,
	move.l -66(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp277
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp277, _29
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _402, tmp279
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp280
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _688,
	move.l -70(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp283, _149
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -72(%fp),%d2	| %sfp, tmp285
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp286
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -62(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _688,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp289
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d2,%d0	| tmp286, _839
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	tst.l -58(%fp)	| %sfp
	jne .L207		|
.L168:
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	move.w %d5,%d1	| b$a$0, result
| voxel.c:593: 		if (c_right < 0) c_right = 0;
	jmi .L208		|
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d3	| result, accum$c$y
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, _839
	jcc .L209		|
.L175:
	add.b %d0,%d0	| _839, iftmp.42_761
.L173:
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	move.b %d0,(%a4)	| iftmp.42_761, MEM[(unsigned char *)p_298]
| voxel.c:546: 	return val < 0 ? 0 : (
	tst.w %d3	| accum$c$y
	jge .L171		|
	clr.b %d3	| iftmp.43_206
| voxel.c:599: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a4)	| iftmp.43_206, MEM[(unsigned char *)p_298 + 1B]
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a4	|, p
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d4	|, _29
	jcs .L210		|
.L192:
	st %d4		| iftmp.42_69
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	move.b %d4,-1(%a4)	| iftmp.42_69, MEM[(unsigned char *)p_669 + 4294967295B]
| voxel.c:567: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.473
	cmp.l -78(%fp),%a4	| %sfp, p
	jne .L177		|
	jra .L178		|
.L208:
| voxel.c:593: 		if (c_right < 0) c_right = 0;
	clr.w %d1	| result
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d1,%d3	| result, accum$c$y
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d0	|, _839
	jcs .L175		|
.L209:
	st %d0		| iftmp.42_761
	jra .L173		|
.L191:
	st %d3		| iftmp.43_206
	jra .L170		|
.L206:
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	st (%a4)		| MEM[(unsigned char *)p_298]
	jra .L171		|
.L165:
	move.w %d7,-78(%fp)	| _8, %sfp
	move.w %d6,%d7	| _4, _4
	move.l %a4,%d0	| tmp378, tmp378
	move.l %a0,%a4	|, p
	move.l %a5,-84(%fp)	| ivtmp.486, %sfp
	move.l %d0,%a5	| tmp378, tmp378
| voxel.c:569: 		vec3_t normal_lcs = palette_vectors[i];
	move.l -84(%fp),%a0	| %sfp,
	move.l (%a0),-54(%fp)	| MEM[(union  *)_636], normal_lcs
	move.w 4(%a0),-50(%fp)	| MEM[(union  *)_636], normal_lcs
	move.w -54(%fp),%d2	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d4	| normal_lcs.a[2], b$a$2
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d0	| %sfp,
	muls.w %d2,%d0	| b$a$0, tmp308
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp309
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d1	| _4,
	muls.w %d4,%d1	| b$a$2, tmp310
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp311
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp311, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d0	|, tmp313
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp315
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d1	| _4,
	muls.w %d2,%d1	| b$a$0, tmp316
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp317
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d4,%d3	| b$a$2, tmp318
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp319
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d1	| tmp319, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d1	|, tmp321
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp323
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp323, result
| voxel.c:575: 		if (c_sun < 0) c_sun = 0;
	jmi .L211		|
.L179:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%a2	| result, _684
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d3	| normal_lcs.a[1],
	muls.w #123,%d3	|, tmp324
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp326
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d4	|, tmp327
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp329
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| tmp329, _30
| voxel.c:581: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jmi .L212		|
.L180:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d3,%d4	| _30, tmp331
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp332
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _684,
	move.l -70(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp335
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp335, _568
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d5	| %sfp,
	muls.w %d3,%d5	| _30, tmp337
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp338
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -62(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _684,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp341
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d5	| tmp341, _578
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d2	| b$a$0
	neg.l %d2	| tmp344
	move.l %d2,%d6	| tmp344, tmp345
	lsl.l #7,%d6	|, tmp345
| voxel.c:586: 		if (c_left < 0) c_left = 0;
	tst.w %d2	| result
	jlt .L213		|
.L181:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -80(%fp),%d3	| %sfp, tmp352
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp353
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d3,%d2	| tmp353, tmp354
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _684,
	move.l -66(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp357
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp357, _459
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	tst.l -58(%fp)	| %sfp
	jeq .L214		|
.L182:
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d5	|, _578
	jcc .L189		|
	add.b %d5,%d5	| _578, tmp375
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	move.b %d5,(%a4)	| tmp375, MEM[(unsigned char *)p_371]
.L188:
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d4	|, accum$c$y
	jge .L195		|
.L218:
	add.b %d4,%d4	| accum$c$y, iftmp.43_251
.L185:
| voxel.c:599: 		*p++ = fixp2color(accum.c.y);
	move.b %d4,1(%a4)	| iftmp.43_251, MEM[(unsigned char *)p_371 + 1B]
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a4	|, p
| voxel.c:546: 	return val < 0 ? 0 : (
	tst.w %d2	| _459
	jlt .L196		|
.L216:
	cmp.w #128,%d2	|, _459
	jge .L197		|
	add.b %d2,%d2	| _459, iftmp.43_247
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	move.b %d2,-1(%a4)	| iftmp.43_247, MEM[(unsigned char *)p_88 + 4294967295B]
| voxel.c:567: 	for (int i=1; i<15; i++) {
	addq.l #6,-84(%fp)	|, %sfp
	cmp.l %a4,%a5	| p, tmp378
	jeq .L178		|
.L203:
| voxel.c:569: 		vec3_t normal_lcs = palette_vectors[i];
	move.l -84(%fp),%a0	| %sfp,
	move.l (%a0),-54(%fp)	| MEM[(union  *)_636], normal_lcs
	move.w 4(%a0),-50(%fp)	| MEM[(union  *)_636], normal_lcs
	move.w -54(%fp),%d2	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d4	| normal_lcs.a[2], b$a$2
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d0	| %sfp,
	muls.w %d2,%d0	| b$a$0, tmp308
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp309
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d1	| _4,
	muls.w %d4,%d1	| b$a$2, tmp310
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp311
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp311, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d0	|, tmp313
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp315
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d1	| _4,
	muls.w %d2,%d1	| b$a$0, tmp316
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp317
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d4,%d3	| b$a$2, tmp318
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp319
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d1	| tmp319, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d1	|, tmp321
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp323
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp323, result
| voxel.c:575: 		if (c_sun < 0) c_sun = 0;
	jpl .L179		|
	jra .L211		|
.L213:
| voxel.c:586: 		if (c_left < 0) c_left = 0;
	clr.w %d2	| result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -80(%fp),%d3	| %sfp, tmp352
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp353
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d3,%d2	| tmp353, tmp354
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _684,
	move.l -66(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp357
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp357, _459
| voxel.c:594: 		if (((frame - 3) & 31) < 4) {
	tst.l -58(%fp)	| %sfp
	jne .L182		|
.L214:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d6	| tmp359
	asr.l #7,%d6	|, tmp360
| voxel.c:593: 		if (c_right < 0) c_right = 0;
	tst.w %d6	| result
	jlt .L215		|
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d4	| result, accum$c$y
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d5	|, _578
	jcc .L193		|
.L217:
	add.b %d5,%d5	| _578, iftmp.42_256
.L184:
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	move.b %d5,(%a4)	| iftmp.42_256, MEM[(unsigned char *)p_371]
| voxel.c:546: 	return val < 0 ? 0 : (
	tst.w %d4	| accum$c$y
	jge .L188		|
	clr.b %d4	| iftmp.43_251
| voxel.c:599: 		*p++ = fixp2color(accum.c.y);
	move.b %d4,1(%a4)	| iftmp.43_251, MEM[(unsigned char *)p_371 + 1B]
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a4	|, p
| voxel.c:546: 	return val < 0 ? 0 : (
	tst.w %d2	| _459
	jge .L216		|
.L196:
	clr.b %d2	| iftmp.43_247
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	move.b %d2,-1(%a4)	| iftmp.43_247, MEM[(unsigned char *)p_88 + 4294967295B]
| voxel.c:567: 	for (int i=1; i<15; i++) {
	addq.l #6,-84(%fp)	|, %sfp
	cmp.l %a4,%a5	| p, tmp378
	jne .L203		|
	jra .L178		|
.L211:
| voxel.c:575: 		if (c_sun < 0) c_sun = 0;
	clr.w %d0	| result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%a2	| result, _684
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d3	| normal_lcs.a[1],
	muls.w #123,%d3	|, tmp324
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp326
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #23,%d4	|, tmp327
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp329
| voxel.c:515: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| tmp329, _30
| voxel.c:581: 		if (c_cabinlight < 0) c_cabinlight = 0;
	jpl .L180		|
.L212:
	clr.w %d3	| _30
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d3,%d4	| _30, tmp331
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp332
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _684,
	move.l -70(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp335
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp335, _568
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d5	| %sfp,
	muls.w %d3,%d5	| _30, tmp337
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp338
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -62(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _684,
	jsr (%a3)		| tmp376
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp341
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d5	| tmp341, _578
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d2	| b$a$0
	neg.l %d2	| tmp344
	move.l %d2,%d6	| tmp344, tmp345
	lsl.l #7,%d6	|, tmp345
| voxel.c:586: 		if (c_left < 0) c_left = 0;
	tst.w %d2	| result
	jge .L181		|
	jra .L213		|
.L215:
| voxel.c:593: 		if (c_right < 0) c_right = 0;
	clr.w %d6	| result
| voxel.c:541: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d6,%d4	| result, accum$c$y
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d5	|, _578
	jcs .L217		|
.L193:
	st %d5		| iftmp.42_256
	jra .L184		|
.L189:
| voxel.c:598: 		*p++ = fixp2color(accum.c.z);
	st (%a4)		| MEM[(unsigned char *)p_371]
| voxel.c:546: 	return val < 0 ? 0 : (
	cmp.w #128,%d4	|, accum$c$y
	jlt .L218		|
.L195:
	st %d4		| iftmp.43_251
	jra .L185		|
.L197:
	st %d2		| iftmp.43_247
| voxel.c:600: 		*p++ = fixp2color(accum.c.x);
	move.b %d2,-1(%a4)	| iftmp.43_247, MEM[(unsigned char *)p_88 + 4294967295B]
| voxel.c:567: 	for (int i=1; i<15; i++) {
	addq.l #6,-84(%fp)	|, %sfp
	cmp.l %a4,%a5	| p, tmp378
	jne .L203		|
	jra .L178		|
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
| voxel.c:610: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:611: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:612: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L241		|
| voxel.c:616: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:617: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L237		|
	lea _fclose,%a2	|, tmp103
.L222:
| voxel.c:669: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L232:
| voxel.c:671: 	return 0;
	moveq #0,%d0	| <retval>
.L219:
| voxel.c:672: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L237:
| voxel.c:619: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:619: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:620: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:621: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:623: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:624: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:627: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:626: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:631: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L223:
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L225		|
	move.l %d6,%d0	| remaining, remaining
.L225:
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:628: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L242		|
| voxel.c:629: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:630: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:631: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.508
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L224:
| voxel.c:633: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:634: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:632: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.508, _92
	jne .L224		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L223		|
.L242:
| voxel.c:637: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:638: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:640: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:641: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:642: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L243		|
| voxel.c:646: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:647: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L244		|
| voxel.c:648: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:649: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:650: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:653: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L228:
| voxel.c:650: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:650: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L230		|
	move.l %d7,%d0	| remaining, remaining
.L230:
| voxel.c:650: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:650: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L245		|
| voxel.c:651: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:652: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:653: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.501
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L229:
| voxel.c:655: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:656: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:654: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.501, _73
	jne .L229		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L228		|
.L245:
| voxel.c:659: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:660: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:662: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:663: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:664: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:672: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L241:
| voxel.c:613: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:614: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:671: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L219		|
.L243:
| voxel.c:643: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:644: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L222		|
.L244:
| voxel.c:667: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:669: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L232		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 675 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L248		|
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 675 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:676: }
	movem.l (%sp)+,#1036	|,
	rts	
.L248:
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:676: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:679: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L252:
#APP
| 679 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L252		|
| voxel.c:681: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L253:
#APP
| 681 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:681: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L253		|
| voxel.c:683: 	Bconin(_CON);
#APP
| 683 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:684: }
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
	lea (-128,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:688: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:690: 	Super(0L);
	moveq #0,%d0	| tmp423
#APP
| 690 "voxel.c" 1
	movl	%d0,%sp@-	| tmp423
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:692: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:694: 	lineaa();
	jsr _lineaa		|
| voxel.c:697: 	save_palette(saved_palette);
	pea 140(%sp)		|
	jsr _save_palette		|
| voxel.c:699: 	unsigned short *screen = Physbase();
#APP
| 699 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,58(%sp)	| tmp756, %sfp
| voxel.c:701: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:703: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:705: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:705: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp757
	jeq .L330		|
| voxel.c:710: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:711: 	build_tables();
	jsr _build_tables		|
| voxel.c:712: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:713: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (138,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 142(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:714: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L261		|
| voxel.c:715: 	read_palette_vectors(cockpit.colors);
	move.l 134(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 58(%sp),%a0	| %sfp, ivtmp.625
	move.l %a0,%d0	| ivtmp.625, _1232
	add.l #32000,%d0	|, _1232
	addq.l #4,%sp	|,
.L262:
| voxel.c:144: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.528_1345]
	cmp.l %d0,%a0	| _1232, ivtmp.625
	jne .L262		|
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.616
	lea _view_max,%a2	|, ivtmp.619
	clr.w %d3	| ivtmp.617
	move.l 54(%sp),%d4	| %sfp, _156
.L267:
| voxel.c:719: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_191], _6
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.617, tmp440
	asr.w #4,%d6	|, tmp440
	ext.l %d6	| tmp441
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp441, tmp442
	add.l %d6,%d6	| tmp442, _226
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp445
	lsr.l #3,%d5	|, tmp445
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _231
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _226, tmp446
	add.l %d6,%a0	| _226, tmp446
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _231, tmp447
	add.l %d4,%a0	| _156, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L263		|
	mulu.w #160,%d1	|, tmp448
	add.l %a0,%d1	| pBlock, _1347
.L264:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:483: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1347
	jne .L264		|
.L263:
| voxel.c:720: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1237], _10
| voxel.c:720: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:720: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp450
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp450,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp451
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _226, tmp453
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp453, tmp454
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp454, tmp455
	move.l %d4,%a0	| _156, pBlock
	add.l %d5,%a0	| tmp455, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L265		|
	mulu.w #160,%d1	|, tmp456
	add.l %a0,%d1	| pBlock, _186
.L266:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:483: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _186, pBlock
	jne .L266		|
.L265:
| voxel.c:718: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.617
	cmp.l #_view_min+80,%a1	|, ivtmp.616
	jne .L267		|
| voxel.c:723: 	compute_and_set_bottom_palette(0);
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:724: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:725: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:728: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 138(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 74(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:730: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,146(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (24,%sp),%sp	|,
	clr.w 106(%sp)	| %sfp
| voxel.c:734: 	int frames = 0;
	clr.l 102(%sp)	| %sfp
| voxel.c:732: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,100(%sp)	|, %sfp
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp465
#APP
| 675 "voxel.c" 1
	movw	%d3,%sp@-	| tmp465
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp758
	jeq .L302		|
.L335:
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 675 "voxel.c" 1
	movw	%d3,%sp@-	| tmp465
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp468
	ext.l %d0	| tmp468
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,121(%sp)	| tmp468, %sfp
| voxel.c:738: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L331		|
| voxel.c:743: 		frames++;
	move.l 102(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,116(%sp)	|, %sfp
| voxel.c:110: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.77_249
	move.w (%a0),%d0	| *hw_palette.77_249, _250
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_247
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_245
| voxel.c:748: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	lea _combined,%a5	|, tmp731
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_247, tmp473
	lsr.w #7,%d0	|, tmp473
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp474
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_245, tmp475
	lsr.w #7,%d1	|, tmp475
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp476
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp477
	add.l %d1,%d0	| tmp476, tmp478
	add.l %d0,%d0	| tmp478, tmp479
| voxel.c:748: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a5,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp483
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp483,
	move.w %d7,108(%sp)	|, %sfp
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a2	| __aline, pretmp_1438
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 106(%sp),%d0	| %sfp, tmp484
	and.w #8,%d0	|, tmp484
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, tmp484
	move.w %d0,48(%sp)	| tmp484, %sfp
| voxel.c:749: 		if (desired_height >= 0) {
	tst.w 100(%sp)	| %sfp
	jlt .L332		|
.L270:
| voxel.c:750: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 100(%sp),%a0	| %sfp, desired_height
| voxel.c:750: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,76(%sp)	|, %sfp
	move.w 100(%sp),%d0	| %sfp, tmp493
	moveq #9,%d1	|,
	asr.w %d1,%d0	|, tmp493
	move.w %d0,%a1	| tmp493,
	move.l %a1,-(%sp)	|,
	sub.w 112(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	move.l 84(%sp),%a4	| %sfp,
	jsr (%a4)		|
	addq.l #8,%sp	|,
| voxel.c:752: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L272		|
	move.w #-256,%d0	|, altitude_delta
.L273:
| voxel.c:753: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _27, _37
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:754: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jle .L274		|
.L338:
| voxel.c:754: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -602(%a2),114(%sp)	| MEM[(short int *)pretmp_1438 + 4294966694B], %sfp
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a2),%d1	| MEM[(short int *)pretmp_1438 + 4294966696B], mouse_y
	move.w #2,%a0	|, _1304
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %d1,%a1	| mouse_y,
	move.l %a1,110(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp506
	add.l %a1,%d0	|, tmp506
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp506
	move.l %d0,80(%sp)	| tmp506, %sfp
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 114(%sp),%a1	| %sfp, mouse_x
	move.l %a1,%d1	| mouse_x, tmp508
	add.l #-160,%d1	|, tmp508
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d1	|, _48
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp510
	clr.w %d2	| tmp510
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_245, tmp512
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp512
	move.l %d2,84(%sp)	| tmp512, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, _1304
	move.l %a0,92(%sp)	| _1304, %sfp
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,96(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d1,%d2	| _48,
	lsl.l #4,%d2	|,
	move.l %d2,88(%sp)	|, %sfp
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	move.l %d1,-(%sp)	| _48,
	move.l %d0,%a2	| x, x
	pea -160(%a2)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp761, %sfp
	add.l %a2,%a2	| x, tmp521
	add.l #_horizon,%a2	|, tmp521
	move.l %a2,50(%sp)	| tmp521, %sfp
.L290:
| voxel.c:764: 			short y = render(&pos, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 48(%sp),%d0	| %sfp, tmp522
	lsr.w #3,%d0	|, tmp522
	and.l #65535,%d0	|, _54
| voxel.c:764: 			short y = render(&pos, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _54, tmp524
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%d3	| view_max[_54], _1340
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 48(%sp),%d1	| %sfp, _346
	add.w #-160,%d1	|, _346
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 72(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _346, tmp525
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp526
| voxel.c:383: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 74(%sp),%d4	| %sfp, tmp527
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp529
	clr.w %d4	| tmp529
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 74(%sp),%d1	| %sfp, tmp530
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp531
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 72(%sp),%d2	| %sfp, tmp532
	sub.w %d1,%d2	| tmp531, tmp532
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d4	| tmp532, tmp534
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	move.l 84(%sp),%d2	| %sfp, tmp535
	add.l %d4,%d2	| delta_vu, tmp535
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp536
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp537
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp538
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp539
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp540
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp541
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp, tmp542
	asr.w #4,%d1	|, tmp542
	ext.l %d1	| tmp543
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp543, tmp544
	add.l %d1,%d1	| tmp544, tmp544
	move.l %d1,64(%sp)	| tmp544, %sfp
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp547
	moveq #1,%d5	|,
	and.l %d1,%d5	| tmp547,
	move.l %d5,68(%sp)	|, %sfp
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	| _1340,
	muls.w #80,%d1	|, tmp548
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d1	| %sfp, tmp550
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp550, tmp551
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d1	|, tmp552
	move.l 54(%sp),%a2	| %sfp, pBlock
	add.l %d1,%a2	| tmp552, pBlock
| voxel.c:398: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),58(%sp)	| view_min[_54], %sfp
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	move.l 84(%sp),%a1	| %sfp,
	jsr (%a1)		|
	addq.l #8,%sp	|,
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 80(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp762, y_offset
| voxel.c:398: 	y_offset -= y_min;
	sub.w 58(%sp),%a6	| %sfp, _385
| voxel.c:400: 	short y = y_max - y_min;
	move.w %d3,%a0	| _1340, _1337
	move.w %d3,%d0	| _1340, y
	sub.w 58(%sp),%d0	| %sfp, y
| voxel.c:410: 		if (y < 0) goto done;
	jmi .L275		|
	lea _opacity_table+4,%a3	|, ivtmp.582
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.l 92(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:401: 	unsigned short z = STEPS_MIN;
	moveq #4,%d5	|, z
| voxel.c:395: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L277:
| voxel.c:341: 	asm (
#APP
| 341 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d3, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:416: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:418: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d1.l),%d7	| _398->both, _399
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| _399
	move.b %d7,%d1	| _399, _399
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| _399, tmp566
| voxel.c:419: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a6,%d3	| _385, sample_y
	add.w (%a1,%d1.l),%d3	| (*y_table_shifted_632)[_401], sample_y
| voxel.c:475: 	return y + y_min;
	move.w %d0,%a0	| y, prephitmp_1335
| voxel.c:420: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L278		|
| voxel.c:422: 			if (z < FOG_START) {
	cmp.w #39,%d5	|, z
	jhi .L279		|
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp567
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp568
| voxel.c:366: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp569
| voxel.c:366: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a4	|,
	move.l (%a4,%d7.l),%d1	| *_411, _412
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _413
	jlt .L333		|
.L280:
| voxel.c:430: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _413, y
	jlt .L281		|
	sub.w %d3,%d0	| _413, tmp571
	and.l #65535,%d0	|, tmp572
	addq.l #1,%d0	|, tmp573
	move.l %d0,%a0	| tmp573, tmp575
	add.l %d0,%a0	| tmp573, tmp575
	add.l %a0,%a0	| tmp575, tmp576
	move.l %a0,%d7	| tmp576, tmp577
	add.l %d0,%d7	| tmp573, tmp577
	lsl.l #5,%d7	|, tmp578
	move.l %a2,%d0	| pBlock, _1280
	sub.l %d7,%d0	| tmp578, _1280
.L282:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _412, pBlock
| 0 "" 2
| voxel.c:432: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:430: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _1280
	jne .L282		|
	move.w %d3,%a0	| _413, prephitmp_1335
	subq.w #1,%a0	|, prephitmp_1335
	move.w %a0,%d0	| prephitmp_1335, y
.L281:
| voxel.c:459: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:460: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp725
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:463: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp726
	and.w #15,%d1	|, tmp726
	jne .L287		|
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp593
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp594
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L286:
| voxel.c:406: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d5	|, z
	jeq .L327		|
.L287:
| voxel.c:410: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.582
	cmp.w #-1,%d0	|, y
	jne .L277		|
.L327:
| voxel.c:475: 	return y + y_min;
	add.w 58(%sp),%a0	| %sfp, _1337
	move.w %a0,%d3	| _1337, _1340
.L275:
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.l 50(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_1324], _300
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	sub.w %d0,%a0	| _300, _301
| voxel.c:489: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp595
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp596
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp598
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp598, tmp599
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%d0	| %sfp, tmp600
	move.l 54(%sp),%a1	| %sfp, pBlock
	add.l %d0,%a1	| tmp600, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _301,
	jge .L288		|
	move.w %a0,%d1	| _301,
	mulu.w #160,%d1	|,
	lea (%a1,%d1.l),%a0	| pBlock, tmp601, _1273
	move.l 96(%sp),%d0	| %sfp, movep_data
.L289:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:483: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:481: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%a0	| pBlock, _1273
	jne .L289		|
.L288:
| voxel.c:490: 	horizon[x] = y;
	move.l 50(%sp),%a0	| %sfp,
	move.w %d3,(%a0)	| _1340, MEM[(short int *)_1324]
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 88(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,50(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L290		|
| voxel.c:768: 		compute_and_set_bottom_palette(i);
	move.l 102(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:769: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _64
| voxel.c:769: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _65
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _65,
	muls.w %d1,%d2	| _64, tmp607
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp608
| voxel.c:769: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp608, pos.x
| voxel.c:770: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _71
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _71,
	muls.w %d1,%d3	| _64, tmp611
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp612
| voxel.c:770: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _76
	add.w %d3,%a0	| tmp612, _76
| voxel.c:772: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp614
	sub.l 114(%sp),%d3	| %sfp, tmp614
| voxel.c:772: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp615
| voxel.c:772: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp615, _82
| voxel.c:773: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _82, tmp616
	asr.w #3,%d3	|, tmp616
| voxel.c:773: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _82, tmp617
	asr.w #4,%d4	|, tmp617
| voxel.c:773: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp617, tmp618
| voxel.c:773: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _89
| voxel.c:774: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d1	| _82
	jle .L291		|
| voxel.c:774: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _89, _92
.L292:
| voxel.c:770: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _76, pos.y
| voxel.c:774: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _92, pos.speed
| voxel.c:776: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 114(%sp),%d1	| %sfp, rot
| voxel.c:777: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _71, tmp621
| voxel.c:777: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp622
| voxel.c:777: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| tmp622, _104
| voxel.c:778: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _104, tmp623
| voxel.c:778: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp624
| voxel.c:778: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp624, _111
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _104,
	muls.w %d0,%d1	| _104, tmp625
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp626
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _111,
	muls.w %d2,%d3	| _111, tmp627
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp628
| voxel.c:781: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp628, tmp629
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| tmp629, tmp630
	moveq #-128,%d1	|, tmp631
	add.l %a0,%d1	| tmp630, tmp631
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp632
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _272
	sub.w %d1,%d3	| tmp632, _272
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _272, tmp635
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp636
| voxel.c:782: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp634
	clr.w %d0	| tmp634
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d3	| _111, tmp641
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp642
| voxel.c:782: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp642, tmp634
	move.l %d0,_pos+6	| tmp634, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:785: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:785: 		if (pressed_keys.up) {
	jpl .L293		|
| voxel.c:786: 			if (desired_height < FIXP(0, 0)) {
	tst.w 100(%sp)	| %sfp
	jlt .L303		|
| voxel.c:789: 			desired_height += FIXP(1, 0);
	move.w 100(%sp),%d0	| %sfp, _1348
.L294:
	add.w #128,%d0	|, _1348
	move.w %d0,100(%sp)	| _1348, %sfp
| voxel.c:790: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L293		|
	move.w #32512,100(%sp)	|, %sfp
.L293:
| voxel.c:794: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:794: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L296		|
| voxel.c:795: 			if (desired_height < FIXP(0, 0)) {
	tst.w 100(%sp)	| %sfp
	jlt .L297		|
| voxel.c:798: 			desired_height -= FIXP(1, 0);
	move.w 100(%sp),108(%sp)	| %sfp, %sfp
.L297:
| voxel.c:803: 		if (key == 0x23) {
	cmp.b #35,121(%sp)	|, %sfp
	jeq .L304		|
| voxel.c:798: 			desired_height -= FIXP(1, 0);
	move.w 108(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,100(%sp)	|, %sfp
| voxel.c:799: 			if (desired_height < FIXP(0, 0)) {
	jmi .L334		|
.L298:
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp654
	and.w #8192,%d0	|, _1269
| voxel.c:197: 	data &= mask;
	move.l 54(%sp),%a4	| %sfp,
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B], tmp655
	and.l #-536879105,%d3	|, tmp655
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1269
	move.w %d0,%d1	| _1269, _1269
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157], tmp660
	and.l #-536879105,%d4	|, tmp660
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1269
	swap %d2	| _1269
	clr.w %d2	| _1269
	move.w %d0,%d2	| _1269, _1269
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1269, tmp660
	move.l %d4,(%a4)	| tmp660, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157]
	or.l %d1,%d3	| _1269, tmp655
	move.l %d3,4(%a4)	| tmp655, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B]
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp668
	and.b #1,%d0	|, _123
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp671
	ext.w %d0	| tmp670
	neg.w %d0	| tmp672
	lsl.w %d1,%d0	|, _1327
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B], tmp673
	and.l #-536879105,%d3	|, tmp673
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1327
	move.w %d0,%d1	| _1327, _1327
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B], tmp678
	and.l #-536879105,%d4	|, tmp678
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1327
	swap %d2	| _1327
	clr.w %d2	| _1327
	move.w %d0,%d2	| _1327, _1327
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1327, tmp678
	move.l %d4,640(%a4)	| tmp678, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B]
	or.l %d1,%d3	| _1327, tmp673
	move.l %d3,644(%a4)	| tmp673, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B]
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp686
	and.b #1,%d1	|, _124
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp689
	ext.w %d1	| tmp688
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1258
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp692
	and.b #1,%d0	|, _125
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp695
	ext.w %d0	| tmp694
	neg.w %d0	| tmp696
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1261
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d4	| MEM[(short unsigned int *)screen_157 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d4	| _1258, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d3	| MEM[(short unsigned int *)screen_157 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d3	| _1258, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d2	| MEM[(short unsigned int *)screen_157 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d2	| _1258, data
| voxel.c:818: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 100(%sp),%d1	| %sfp, tmp701
	not.w %d1	| tmp701
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp700
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1250
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1261, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1250, data
	move.w %d4,320(%a4)	| data, MEM[(short unsigned int *)screen_157 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1261, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1250, data
	move.w %d3,322(%a4)	| data, MEM[(short unsigned int *)screen_157 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_157 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1250, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_157 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:743: 		frames++;
	move.l 116(%sp),102(%sp)	| %sfp, %sfp
.L336:
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp465
#APP
| 675 "voxel.c" 1
	movw	%d3,%sp@-	| tmp465
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:675: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp758
	jne .L335		|
.L302:
	clr.b 121(%sp)	| %sfp
| voxel.c:743: 		frames++;
	move.l 102(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,116(%sp)	|, %sfp
| voxel.c:110: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.77_249
	move.w (%a0),%d0	| *hw_palette.77_249, _250
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_247
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_245
| voxel.c:748: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	lea _combined,%a5	|, tmp731
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_247, tmp473
	lsr.w #7,%d0	|, tmp473
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp474
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_245, tmp475
	lsr.w #7,%d1	|, tmp475
| voxel.c:747: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp476
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp477
	add.l %d1,%d0	| tmp476, tmp478
	add.l %d0,%d0	| tmp478, tmp479
| voxel.c:748: 		fixp player_height = pos.z - terrain_height;
	move.b 1(%a5,%d0.l),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	and.w #255,%d0	|, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp483
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp483,
	move.w %d7,108(%sp)	|, %sfp
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a2	| __aline, pretmp_1438
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 106(%sp),%d0	| %sfp, tmp484
	and.w #8,%d0	|, tmp484
| voxel.c:758: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, tmp484
	move.w %d0,48(%sp)	| tmp484, %sfp
| voxel.c:749: 		if (desired_height >= 0) {
	tst.w 100(%sp)	| %sfp
	jge .L270		|
.L332:
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -602(%a2),114(%sp)	| MEM[(short int *)pretmp_1438 + 4294966694B], %sfp
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a2),%d1	| MEM[(short int *)pretmp_1438 + 4294966696B], mouse_y
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d4	|, tmp485
| voxel.c:379: 	short ytable_offset = 256 - player_height;
	move.w #256,%d0	|, tmp486
	sub.w %d4,%d0	| tmp485, tmp486
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %d0,%a0	| tmp486, tmp487
	add.l %a0,%a0	| tmp487, _1304
	move.l #___divsi3,76(%sp)	|, %sfp
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %d1,%a1	| mouse_y,
	move.l %a1,110(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp506
	add.l %a1,%d0	|, tmp506
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp506
	move.l %d0,80(%sp)	| tmp506, %sfp
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 114(%sp),%a1	| %sfp, mouse_x
	move.l %a1,%d1	| mouse_x, tmp508
	add.l #-160,%d1	|, tmp508
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d1	|, _48
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp510
	clr.w %d2	| tmp510
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_245, tmp512
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp512
	move.l %d2,84(%sp)	| tmp512, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, _1304
	move.l %a0,92(%sp)	| _1304, %sfp
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,96(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d1,%d2	| _48,
	lsl.l #4,%d2	|,
	move.l %d2,88(%sp)	|, %sfp
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	move.l %d1,-(%sp)	| _48,
	move.l %d0,%a2	| x, x
	pea -160(%a2)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp761, %sfp
	add.l %a2,%a2	| x, tmp521
	add.l #_horizon,%a2	|, tmp521
	move.l %a2,50(%sp)	| tmp521, %sfp
	jra .L290		|
.L331:
| voxel.c:823: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:824: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 122(%sp),%a0	| %sfp, tmp707
| voxel.c:824: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp707, tmp709
	add.l %a0,%d0	| tmp707, tmp709
	add.l %d0,%d0	| tmp709, tmp710
| voxel.c:825: 	unsigned long millis_per_frame = millis / frames;
	move.l 102(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:826: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp763,
	pea .LC11		|
	jsr _printf		|
| voxel.c:827: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:828: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L261:
| voxel.c:831: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:832: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:833: 	install_palette(saved_palette);
	pea 144(%sp)		|
	jsr _install_palette		|
| voxel.c:835: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (128,%sp),%sp	|,
	rts	
.L333:
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _413
	jra .L280		|
.L334:
| voxel.c:799: 			if (desired_height < FIXP(0, 0)) {
	clr.w 100(%sp)	| %sfp
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp654
	and.w #8192,%d0	|, _1269
| voxel.c:197: 	data &= mask;
	move.l 54(%sp),%a4	| %sfp,
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B], tmp655
	and.l #-536879105,%d3	|, tmp655
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1269
	move.w %d0,%d1	| _1269, _1269
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157], tmp660
	and.l #-536879105,%d4	|, tmp660
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1269
	swap %d2	| _1269
	clr.w %d2	| _1269
	move.w %d0,%d2	| _1269, _1269
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1269, tmp660
	move.l %d4,(%a4)	| tmp660, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157]
	or.l %d1,%d3	| _1269, tmp655
	move.l %d3,4(%a4)	| tmp655, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B]
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp668
	and.b #1,%d0	|, _123
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp671
	ext.w %d0	| tmp670
	neg.w %d0	| tmp672
	lsl.w %d1,%d0	|, _1327
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B], tmp673
	and.l #-536879105,%d3	|, tmp673
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1327
	move.w %d0,%d1	| _1327, _1327
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B], tmp678
	and.l #-536879105,%d4	|, tmp678
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1327
	swap %d2	| _1327
	clr.w %d2	| _1327
	move.w %d0,%d2	| _1327, _1327
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1327, tmp678
	move.l %d4,640(%a4)	| tmp678, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B]
	or.l %d1,%d3	| _1327, tmp673
	move.l %d3,644(%a4)	| tmp673, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B]
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp686
	and.b #1,%d1	|, _124
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp689
	ext.w %d1	| tmp688
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1258
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp692
	and.b #1,%d0	|, _125
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp695
	ext.w %d0	| tmp694
	neg.w %d0	| tmp696
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1261
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d4	| MEM[(short unsigned int *)screen_157 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d4	| _1258, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d3	| MEM[(short unsigned int *)screen_157 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d3	| _1258, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d2	| MEM[(short unsigned int *)screen_157 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d2	| _1258, data
| voxel.c:818: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 100(%sp),%d1	| %sfp, tmp701
	not.w %d1	| tmp701
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp700
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1250
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1261, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1250, data
	move.w %d4,320(%a4)	| data, MEM[(short unsigned int *)screen_157 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1261, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1250, data
	move.w %d3,322(%a4)	| data, MEM[(short unsigned int *)screen_157 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_157 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1250, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_157 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:743: 		frames++;
	move.l 116(%sp),102(%sp)	| %sfp, %sfp
	jra .L336		|
.L279:
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _1428
	jlt .L337		|
.L284:
| voxel.c:370: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a3),%d1	| MEM[(unsigned char *)_1288], opacity_preshifted
| voxel.c:365: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp581
| voxel.c:370: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	move.w %d1,%a4	| opacity_preshifted, offset
	add.w %d7,%a4	| tmp581, offset
| voxel.c:371: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d1	| _425
	move.w %a4,%d1	| offset, _425
| voxel.c:448: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _1428
	jgt .L278		|
	move.l %d1,%a4	| _425, tmp729
	add.l #_pdata_table,%a4	|, tmp729
.L285:
| voxel.c:449: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp584
	and.l %d0,%d1	| y, tmp584
	add.l %d1,%d1	| tmp584, tmp585
	add.l %d1,%d1	| tmp585, tmp586
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%d1.l),%d1	| *_432, *_432
#APP
| 333 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_432, pBlock
| 0 "" 2
| voxel.c:451: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:452: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a0	| y, prephitmp_1335
| voxel.c:448: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _1428
	jle .L285		|
.L278:
| voxel.c:459: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:460: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp591
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:463: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp592
	and.w #15,%d1	|, tmp592
	jne .L286		|
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp593
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp594
| voxel.c:470: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
	jra .L286		|
.L337:
| voxel.c:429: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _1428
	jra .L284		|
.L272:
| voxel.c:753: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L273		|
	move.w #256,%d0	|, altitude_delta
	add.w %d4,%d0	| _27, _37
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:754: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jgt .L338		|
.L274:
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -602(%a2),114(%sp)	| MEM[(short int *)pretmp_1438 + 4294966694B], %sfp
| voxel.c:757: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.w -600(%a2),%d1	| MEM[(short int *)pretmp_1438 + 4294966696B], mouse_y
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, tmp502
| voxel.c:379: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp503
	sub.w %d0,%a0	| tmp502, tmp503
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a0,%a0	| tmp503, tmp504
	add.l %a0,%a0	| tmp504, _1304
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w %d1,%a1	| mouse_y,
	move.l %a1,110(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp506
	add.l %a1,%d0	|, tmp506
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp506
	move.l %d0,80(%sp)	| tmp506, %sfp
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 114(%sp),%a1	| %sfp, mouse_x
	move.l %a1,%d1	| mouse_x, tmp508
	add.l #-160,%d1	|, tmp508
| voxel.c:760: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d1	|, _48
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp510
	clr.w %d2	| tmp510
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_245, tmp512
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp512
	move.l %d2,84(%sp)	| tmp512, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:384: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:404: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, _1304
	move.l %a0,92(%sp)	| _1304, %sfp
| voxel.c:480: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,96(%sp)	| pdata_table[15][7][0], %sfp
	move.l %d1,%d2	| _48,
	lsl.l #4,%d2	|,
	move.l %d2,88(%sp)	|, %sfp
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	move.l %d1,-(%sp)	| _48,
	move.l %d0,%a2	| x, x
	pea -160(%a2)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp761, %sfp
	add.l %a2,%a2	| x, tmp521
	add.l #_horizon,%a2	|, tmp521
	move.l %a2,50(%sp)	| tmp521, %sfp
	jra .L290		|
.L296:
| voxel.c:803: 		if (key == 0x23) {
	cmp.b #35,121(%sp)	|, %sfp
	jne .L298		|
| voxel.c:805: 			if (desired_height < 0) {
	tst.w 100(%sp)	| %sfp
	jge .L304		|
| voxel.c:806: 				desired_height = player_height;
	move.w 108(%sp),100(%sp)	| %sfp, %sfp
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp654
	and.w #8192,%d0	|, _1269
| voxel.c:197: 	data &= mask;
	move.l 54(%sp),%a4	| %sfp,
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B], tmp655
	and.l #-536879105,%d3	|, tmp655
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1269
	move.w %d0,%d1	| _1269, _1269
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157], tmp660
	and.l #-536879105,%d4	|, tmp660
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1269
	swap %d2	| _1269
	clr.w %d2	| _1269
	move.w %d0,%d2	| _1269, _1269
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1269, tmp660
	move.l %d4,(%a4)	| tmp660, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157]
	or.l %d1,%d3	| _1269, tmp655
	move.l %d3,4(%a4)	| tmp655, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B]
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp668
	and.b #1,%d0	|, _123
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp671
	ext.w %d0	| tmp670
	neg.w %d0	| tmp672
	lsl.w %d1,%d0	|, _1327
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B], tmp673
	and.l #-536879105,%d3	|, tmp673
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1327
	move.w %d0,%d1	| _1327, _1327
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B], tmp678
	and.l #-536879105,%d4	|, tmp678
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1327
	swap %d2	| _1327
	clr.w %d2	| _1327
	move.w %d0,%d2	| _1327, _1327
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1327, tmp678
	move.l %d4,640(%a4)	| tmp678, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B]
	or.l %d1,%d3	| _1327, tmp673
	move.l %d3,644(%a4)	| tmp673, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B]
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp686
	and.b #1,%d1	|, _124
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp689
	ext.w %d1	| tmp688
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1258
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp692
	and.b #1,%d0	|, _125
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp695
	ext.w %d0	| tmp694
	neg.w %d0	| tmp696
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1261
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d4	| MEM[(short unsigned int *)screen_157 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d4	| _1258, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d3	| MEM[(short unsigned int *)screen_157 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d3	| _1258, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d2	| MEM[(short unsigned int *)screen_157 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d2	| _1258, data
| voxel.c:818: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 100(%sp),%d1	| %sfp, tmp701
	not.w %d1	| tmp701
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp700
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1250
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1261, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1250, data
	move.w %d4,320(%a4)	| data, MEM[(short unsigned int *)screen_157 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1261, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1250, data
	move.w %d3,322(%a4)	| data, MEM[(short unsigned int *)screen_157 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_157 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1250, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_157 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:743: 		frames++;
	move.l 116(%sp),102(%sp)	| %sfp, %sfp
	jra .L336		|
.L291:
| voxel.c:775: 		else pos.speed += drag;
	add.w %d3,%d1	| _89, _92
	jra .L292		|
.L303:
	move.w 108(%sp),%d0	| %sfp, _1348
	jra .L294		|
.L304:
| voxel.c:808: 				desired_height = -1;
	move.w #-1,100(%sp)	|, %sfp
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:814: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp654
	and.w #8192,%d0	|, _1269
| voxel.c:197: 	data &= mask;
	move.l 54(%sp),%a4	| %sfp,
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B], tmp655
	and.l #-536879105,%d3	|, tmp655
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1269
	move.w %d0,%d1	| _1269, _1269
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157], tmp660
	and.l #-536879105,%d4	|, tmp660
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1269
	swap %d2	| _1269
	clr.w %d2	| _1269
	move.w %d0,%d2	| _1269, _1269
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1269, tmp660
	move.l %d4,(%a4)	| tmp660, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157]
	or.l %d1,%d3	| _1269, tmp655
	move.l %d3,4(%a4)	| tmp655, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 4B]
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp668
	and.b #1,%d0	|, _123
| voxel.c:815: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp671
	ext.w %d0	| tmp670
	neg.w %d0	| tmp672
	lsl.w %d1,%d0	|, _1327
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B], tmp673
	and.l #-536879105,%d3	|, tmp673
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1327
	move.w %d0,%d1	| _1327, _1327
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B], tmp678
	and.l #-536879105,%d4	|, tmp678
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1327
	swap %d2	| _1327
	clr.w %d2	| _1327
	move.w %d0,%d2	| _1327, _1327
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _1327, tmp678
	move.l %d4,640(%a4)	| tmp678, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 640B]
	or.l %d1,%d3	| _1327, tmp673
	move.l %d3,644(%a4)	| tmp673, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_157 + 644B]
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp686
	and.b #1,%d1	|, _124
| voxel.c:816: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp689
	ext.w %d1	| tmp688
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1258
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp692
	and.b #1,%d0	|, _125
| voxel.c:817: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp695
	ext.w %d0	| tmp694
	neg.w %d0	| tmp696
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1261
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d4	| MEM[(short unsigned int *)screen_157 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d4	| _1258, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d3	| MEM[(short unsigned int *)screen_157 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d3	| _1258, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d2	| MEM[(short unsigned int *)screen_157 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d2	| _1258, data
| voxel.c:818: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 100(%sp),%d1	| %sfp, tmp701
	not.w %d1	| tmp701
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp700
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1250
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1261, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1250, data
	move.w %d4,320(%a4)	| data, MEM[(short unsigned int *)screen_157 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1261, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1250, data
	move.w %d3,322(%a4)	| data, MEM[(short unsigned int *)screen_157 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_157 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1250, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_157 + 326B]
	addq.w #8,106(%sp)	|, %sfp
| voxel.c:743: 		frames++;
	move.l 116(%sp),102(%sp)	| %sfp, %sfp
	jra .L336		|
.L330:
| voxel.c:706: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:707: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:831: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:832: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:833: 	install_palette(saved_palette);
	pea 144(%sp)		|
	jsr _install_palette		|
| voxel.c:835: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (128,%sp),%sp	|,
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
