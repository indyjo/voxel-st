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
	move.l 68(%sp),%a6	| %sfp, ivtmp.182
	add.l 80(%sp),%a6	| pixels, ivtmp.182
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
	lea (16,%a6),%a6	|, ivtmp.182
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
	sub.l %a2,%a2	| ivtmp.214
| voxel.c:120: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.207
	add.l %a2,%a0	| ivtmp.214, ivtmp.207
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
	lea (16,%a0),%a0	|, ivtmp.207
	cmp.l %a1,%a3	| out, tmp719
	jne .L9		|
| voxel.c:120: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:120: 	for (int y=0; y<height; y++) {
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
| voxel.c:144: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.220_11]
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
	move.l #_y_table+1024,%d6	|, ivtmp.356
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
	move.l %d6,%a3	| ivtmp.356, ivtmp.345
	move.w #-17920,%a2	|, ivtmp.342
.L50:
| voxel.c:247: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.342,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:249: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:246: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.342
	cmp.w #17920,%a2	|, ivtmp.342
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
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
.L53:
| voxel.c:263: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.333
	clr.b %d2	| max_height_lsm_flag.255
	clr.b %d1	| max_height_lsm.254
.L56:
	lea (-1024,%a1),%a0	|, ivtmp.333, ivtmp.326
.L55:
| voxel.c:266: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:266: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.254, _72
	jls .L54		|
| voxel.c:267: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.254
| voxel.c:266: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.255
.L54:
| voxel.c:265: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.326
	cmp.l %a0,%a1	| ivtmp.326, ivtmp.333
	jne .L55		|
| voxel.c:264: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.326, ivtmp.333
	cmp.l #_combined+524289,%a0	|, ivtmp.326
	jne .L56		|
	tst.b %d2	| max_height_lsm_flag.255
	jeq .L57		|
	move.b %d1,_max_height	| max_height_lsm.254, max_height
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
	sub.l %a4,%a4	| ivtmp.306
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.305
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
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
	move.l %d7,44(%sp)	| _166, %sfp
.L70:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.297, _54
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
	and.l %d2,%d0	| ivtmp.297, tmp229
| voxel.c:297: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.306, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:297: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:290: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.297
	lea (-3840,%a0),%a0	|, ivtmp.298
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.297,
	jne .L70		|
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.305
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L71		|
| voxel.c:282: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.306
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.306,
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
	cmp.l %a0,%d1	| ivtmp.278, _320
	jne .L82		|
	lea _horizon,%a0	|, ivtmp.271
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
	add.l #1024,%d6	|, ivtmp.356
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L49		|
	jra .L53		|
.L65:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.297
	neg.l %d2	| ivtmp.297
| voxel.c:289: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.305, ivtmp.298
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
	move.l 56(%sp),%d5	| delta_vu, delta_vu
	move.l 68(%sp),%d3	| x, x
	move.l 76(%sp),%d0	| y_max, y_max
	move.l 80(%sp),%a6	| y_min, y_min
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	move.l 52(%sp),%d2	| sample_vu, tmp124
	add.l %d5,%d2	| delta_vu, tmp124
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp125
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp126
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp127
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp128
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp129
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp130
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _16
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	|, tmp131
	asr.w #4,%d1	|, tmp131
	ext.l %d1	| tmp132
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp132, tmp133
	add.l %d1,%d1	| tmp133, tmp134
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|,
	muls.w #80,%d4	|, tmp135
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d1	| tmp135, tmp137
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp137, tmp138
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d3	|, tmp140
	moveq #1,%d4	|,
	and.l %d4,%d3	|, tmp141
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp138, tmp142
	add.l %d3,%a0	| tmp141, tmp142
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:401: 	y_offset -= y_min;
	move.w 74(%sp),%d7	| y_offset,
	sub.w %a6,%d7	| tmp9,
	move.w %d7,46(%sp)	|, %sfp
| voxel.c:403: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w %a6,%d1	| tmp9, y
| voxel.c:387: 	short ytable_offset = 256 - player_height;
	move.w #256,%a2	|, ytable_offset
	sub.w 66(%sp),%a2	| player_height, ytable_offset
| voxel.c:407: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a2,%a2	| ytable_offset, ytable_offset
	add.l %a2,%a2	| ytable_offset, tmp145
| voxel.c:407: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a2	|, y_table_shifted
| voxel.c:413: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L107		|
	lea _opacity_table+4,%a4	|, ivtmp.391
| voxel.c:404: 	unsigned short z = STEPS_MIN;
	moveq #4,%d4	|, z
| voxel.c:398: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
| voxel.c:374: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|, tmp189
.L110:
| voxel.c:341: 	asm (
#APP
| 341 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| _16, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| _16, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:366: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d0	| index_mask, index
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	add.l #_combined,%d0	|, _95
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	move.l %d0,%a3	| _95,
	move.w (%a3),%a1	| _95->both, _96
| voxel.c:420: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a1,%d3	|,
	moveq #0,%d0	| _96
	move.b %d3,%d0	|, _96
| voxel.c:420: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _96, tmp150
| voxel.c:420: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w 46(%sp),%d3	| %sfp, sample_y
	add.w (%a2,%d0.l),%d3	| (*y_table_shifted_143)[_11], sample_y
| voxel.c:476: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_164
| voxel.c:421: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L111		|
| voxel.c:423: 			if (z < FOG_START) {
	cmp.w #39,%d4	|, z
	jhi .L112		|
| voxel.c:373: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %a1,%d7	| _96,
	and.w #-256,%d7	|,
	move.w %d7,%a1	|, tmp151
| voxel.c:373: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	lea (224,%a1),%a1	|, tmp152
| voxel.c:374: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| tmp153
	move.w %a1,%d7	| tmp152, tmp153
| voxel.c:374: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d7.l),%d7	| *_100, _101
| voxel.c:430: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _110
	jlt .L133		|
.L113:
| voxel.c:431: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _110, y
	jlt .L114		|
	sub.w %d3,%d1	| _110, tmp155
	and.l #65535,%d1	|, tmp156
	addq.l #1,%d1	|, tmp157
	move.l %d1,%d0	| tmp157, tmp159
	add.l %d1,%d0	| tmp157, tmp159
	add.l %d0,%d0	| tmp159, tmp160
	add.l %d0,%d1	| tmp160, tmp161
	lsl.l #5,%d1	|, tmp162
	move.l %a0,%d0	| pBlock, _44
	sub.l %d1,%d0	| tmp162, _44
.L115:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d7, 0(%a0)	| _101, pBlock
| 0 "" 2
| voxel.c:433: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:431: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _44, pBlock
	jne .L115		|
	move.w %d3,%d0	| _110, prephitmp_164
	subq.w #1,%d0	|, prephitmp_164
	move.w %d0,%d1	| prephitmp_164, y
.L108:
.L114:
| voxel.c:460: 		z++;
	addq.w #1,%d4	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp180
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _16
| voxel.c:464: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d4,%d3	| z, tmp181
	and.w #15,%d3	|, tmp181
	jeq .L120		|
| voxel.c:413: 		if (y < 0) goto done;
	addq.l #1,%a4	|, ivtmp.391
	cmp.w #-1,%d1	|, y
	jne .L110		|
.L129:
| voxel.c:476: 	return y + y_min;
	add.w %a6,%d0	|, <retval>
.L107:
| voxel.c:477: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L112:
| voxel.c:430: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _175
	jlt .L134		|
.L116:
| voxel.c:378: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d7	|
	move.b (%a4),%d7	| MEM[(unsigned char *)_118],
	move.w %d7,%a3	|, opacity_preshifted
| voxel.c:373: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %a1,%d7	| _96,
	and.w #-256,%d7	|,
| voxel.c:378: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp165, offset
| voxel.c:379: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	|
	move.w %a3,%d7	| offset,
	move.l %d7,%a3	|, _105
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _175
	jgt .L111		|
	add.l #_pdata_table,%a3	|, tmp183
.L117:
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a1	|, tmp168
	add.l %d0,%a1	| tmp168, tmp169
	add.l %a1,%a1	| tmp169, tmp170
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a1.l),%d0	| *_20, *_20
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_20, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:453: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_164
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _175
	jle .L117		|
.L111:
| voxel.c:460: 		z++;
	addq.w #1,%d4	|, z
| voxel.c:461: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp175
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _16
| voxel.c:464: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d4,%d3	| z, tmp176
	and.w #15,%d3	|, tmp176
	jne .L118		|
.L120:
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp177
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:471: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp178
| voxel.c:471: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L118:
| voxel.c:409: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d4	|, z
	jeq .L129		|
| voxel.c:413: 		if (y < 0) goto done;
	addq.l #1,%a4	|, ivtmp.391
	cmp.w #-1,%d1	|, y
	jne .L110		|
	jra .L129		|
.L133:
| voxel.c:430: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _110
	jra .L113		|
.L134:
	clr.w %d3	| _175
	jra .L116		|
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #16160,-(%sp)	|,
	move.l 32(%sp),%d3	| sample_vu, sample_vu
	move.l 36(%sp),%d5	| delta_vu, delta_vu
| voxel.c:485: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 42(%sp),%a0	| start_height, ytable_offset
| voxel.c:487: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp60
| voxel.c:487: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _47
| voxel.c:493: 	unsigned short z = 0;
	clr.w %d2	| _10
| voxel.c:492: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:490: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L138:
	move.w %d2,%d1	| _10, z
| voxel.c:503: 		z++;
	addq.w #1,%d2	|, _10
	move.l %a0,%a1	| _47, y_table_shifted
| voxel.c:504: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _47
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_vu, tmp61
	add.l %d4,%d3	| sample_vu, tmp61
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:495: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L136		|
| voxel.c:341: 	asm (
#APP
| 341 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d4, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d4, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:366: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	add.l #_combined,%d1	|, _39
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	move.l %d1,%a2	| _39,
	move.w (%a2),%d1	| _39->both, _40
| voxel.c:498: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, _40
| voxel.c:498: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| _40, tmp66
| voxel.c:499: 			if (sample_y < min_y) {
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_61)[_5], (*y_table_shifted_61)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_61)[_5]
	jge .L137		|
	move.w %d1,%d0	| (*y_table_shifted_61)[_5], <retval>
.L137:
| voxel.c:507: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| _10, tmp68
	and.w #15,%d1	|, tmp68
	jne .L136		|
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp69
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:514: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp70
| voxel.c:514: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L136:
| voxel.c:494: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, _10
	jne .L138		|
| voxel.c:519: }
	movem.l (%sp)+,#1276	|,
	rts	
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
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L142		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L144:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:526: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L144		|
.L142:
| voxel.c:528: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
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
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L149		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L150:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:526: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L150		|
.L149:
| voxel.c:533: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:534: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:552: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:553: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:554: }
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:560: }
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
.L159:
| voxel.c:571: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:572: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:573: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:552: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:553: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:552: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:553: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:552: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:553: 	return c >> 1;
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:578: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:578: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:570: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.453
	cmp.l %d3,%a3	| _445, ivtmp.453
	jne .L159		|
| voxel.c:580: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.459
	clr.w %d0	| vect__18.459
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.459
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.459, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:586: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L167		|
	cmp.w #128,%d0	|, val
	jge .L168		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:591: }
	rts	
.L168:
| voxel.c:589: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:591: }
	rts	
.L167:
| voxel.c:589: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:591: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:596: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:599: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:606: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:608: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:620: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:601: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.489
| voxel.c:608: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L178:
| voxel.c:611: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| b$a$0,
	muls.w %d7,%d2	| _4, tmp164
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp165
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp166
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp167
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp167, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp169
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp171
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d3	| b$a$2,
	muls.w %d7,%d3	| _4, tmp172
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp173
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -78(%fp),%d0	| %sfp, tmp174
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp175
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:618: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L188		|
| voxel.c:620: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:626: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L189		|
.L173:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:630: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:631: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L190		|
.L174:
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L179		|
.L191:
	cmp.w #128,%d4	|, _504
	jge .L180		|
	add.b %d4,%d4	| _504, iftmp.40_290
.L175:
| voxel.c:634: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.40_290, MEM[(unsigned char *)p_252]
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L181		|
.L192:
	cmp.w #128,%d3	|, _75
	jge .L182		|
	add.b %d3,%d3	| _75, iftmp.41_360
.L176:
| voxel.c:635: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.41_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:636: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L183		|
.L193:
	cmp.w #128,%d2	|, _404
	jge .L184		|
	add.b %d2,%d2	| _404, iftmp.41_295
| voxel.c:636: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.41_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:609: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L178		|
.L194:
| voxel.c:638: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:639: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:641: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:642: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L190:
| voxel.c:631: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L191		|
.L179:
	clr.b %d4	| iftmp.40_290
| voxel.c:634: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.40_290, MEM[(unsigned char *)p_252]
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L192		|
.L181:
	clr.b %d3	| iftmp.41_360
| voxel.c:635: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.41_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:636: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:589: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L193		|
.L183:
	clr.b %d2	| iftmp.41_295
| voxel.c:636: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.41_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:609: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L178		|
	jra .L194		|
.L188:
| voxel.c:618: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:620: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:626: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L173		|
.L189:
	clr.w %d2	| _184
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:584: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:558: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:630: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:631: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L174		|
	jra .L190		|
.L180:
| voxel.c:589: 	return val < 0 ? 0 : (
	st %d4		| iftmp.40_290
	jra .L175		|
.L184:
	st %d2		| iftmp.41_295
| voxel.c:636: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.41_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:609: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.489
	cmp.l %a0,%a4	|, tmp230
	jne .L178		|
	jra .L194		|
.L182:
| voxel.c:589: 	return val < 0 ? 0 : (
	st %d3		| iftmp.41_360
	jra .L176		|
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
| voxel.c:646: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:647: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:648: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L217		|
| voxel.c:652: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:653: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L213		|
	lea _fclose,%a2	|, tmp103
.L198:
| voxel.c:705: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L208:
| voxel.c:707: 	return 0;
	moveq #0,%d0	| <retval>
.L195:
| voxel.c:708: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L213:
| voxel.c:655: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:655: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:656: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:657: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:659: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:660: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:663: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:662: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:667: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L199:
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L201		|
	move.l %d6,%d0	| remaining, remaining
.L201:
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:664: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L218		|
| voxel.c:665: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:666: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:667: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.511
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L200:
| voxel.c:669: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:670: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:668: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.511, _92
	jne .L200		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L199		|
.L218:
| voxel.c:673: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:674: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:676: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:677: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:678: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L219		|
| voxel.c:682: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:683: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L220		|
| voxel.c:684: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:685: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:686: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:689: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L204:
| voxel.c:686: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:686: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L206		|
	move.l %d7,%d0	| remaining, remaining
.L206:
| voxel.c:686: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:686: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L221		|
| voxel.c:687: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:688: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:689: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.504
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L205:
| voxel.c:691: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:692: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:690: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.504, _73
	jne .L205		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L204		|
.L221:
| voxel.c:695: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:696: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:698: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:699: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:700: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:708: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L217:
| voxel.c:649: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:650: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:707: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L195		|
.L219:
| voxel.c:679: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:680: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L198		|
.L220:
| voxel.c:703: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:705: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L208		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L224		|
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:712: }
	movem.l (%sp)+,#1036	|,
	rts	
.L224:
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:712: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:715: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L228:
#APP
| 715 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L228		|
| voxel.c:717: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L229:
#APP
| 717 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:717: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L229		|
| voxel.c:719: 	Bconin(_CON);
#APP
| 719 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:720: }
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
	lea (-88,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:724: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:726: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:729: 	Super(0L);
	moveq #0,%d0	| tmp390
#APP
| 729 "voxel.c" 1
	movl	%d0,%sp@-	| tmp390
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:731: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:733: 	lineaa();
	jsr _lineaa		|
| voxel.c:736: 	save_palette(saved_palette);
	pea 104(%sp)		|
	jsr _save_palette		|
| voxel.c:738: 	unsigned short *screen = Physbase();
#APP
| 738 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a4	| tmp679, _180
| voxel.c:740: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:742: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:742: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp680
	jeq .L289		|
| voxel.c:747: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:748: 	build_tables();
	jsr _build_tables		|
| voxel.c:749: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:750: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (98,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 102(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:751: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L237		|
| voxel.c:752: 	read_palette_vectors(cockpit.colors);
	move.l 94(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l %a4,%a0	| _180, ivtmp.608
	move.l %a4,%d0	| _180, _882
	add.l #32000,%d0	|, _882
	addq.l #4,%sp	|,
.L238:
| voxel.c:144: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.528_1031]
	cmp.l %d0,%a0	| _882, ivtmp.608
	jne .L238		|
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.599
	lea _view_max,%a2	|, ivtmp.602
	move.l #_view_min+80,%d4	|, _888
	clr.w %d3	| ivtmp.600
.L243:
| voxel.c:756: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_890], _5
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.600, tmp406
	asr.w #4,%d6	|, tmp406
	ext.l %d6	| tmp407
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp407, tmp408
	add.l %d6,%d6	| tmp408, _253
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp411
	lsr.l #3,%d5	|, tmp411
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _258
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _253, tmp412
	add.l %d6,%a0	| _253, tmp412
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _258, tmp413
	lea (%a4,%a0.l),%a0	| _180, tmp413, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L239		|
	mulu.w #160,%d1	|, tmp414
	add.l %a0,%d1	| pBlock, _899
.L240:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:526: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _899
	jne .L240		|
.L239:
| voxel.c:757: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_887], _9
| voxel.c:757: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _11
	sub.w %a0,%d1	| _9, _11
| voxel.c:757: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp416
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp416,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp417
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _253, tmp419
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp419, tmp420
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp420, tmp421
	lea (%a4,%d5.l),%a0	| _180, tmp421, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L241		|
	mulu.w #160,%d1	|, tmp422
	add.l %a0,%d1	| pBlock, _638
.L242:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:526: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _638
	jne .L242		|
.L241:
| voxel.c:755: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.600
	cmp.l %d4,%a1	| _888, ivtmp.599
	jne .L243		|
| voxel.c:760: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:761: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:762: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:765: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 102(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	pea 19200(%a4)		|
	jsr _draw_image2		|
| voxel.c:767: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,110(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
	clr.w 62(%sp)	| %sfp
| voxel.c:771: 	int frames = 0;
	clr.l 58(%sp)	| %sfp
| voxel.c:769: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,56(%sp)	|, %sfp
| voxel.c:787: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	lea ___divsi3,%a3	|, tmp675
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp431
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp431
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp681
	jeq .L268		|
.L293:
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp431
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp434
	ext.l %d0	| tmp434
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,71(%sp)	| tmp434, %sfp
| voxel.c:775: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L290		|
| voxel.c:780: 		frames++;
	move.l 58(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,74(%sp)	|, %sfp
| voxel.c:110: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.77_276
	move.w (%a0),%d0	| *hw_palette.77_276, _277
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_274
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_272
| voxel.c:785: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _25
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_274, tmp439
	lsr.w #7,%d0	|, tmp439
| voxel.c:784: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp440
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_272, tmp441
	lsr.w #7,%d1	|, tmp441
| voxel.c:784: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp442
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp443
	add.l %d1,%d0	| tmp442, tmp444
	add.l %d0,%d0	| tmp444, tmp445
| voxel.c:785: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_19][_22].D.2699.height, combined[_19][_22].D.2699.height
	and.w #255,%d0	|, combined[_19][_22].D.2699.height
	lsl.w #7,%d0	|, tmp449
	move.w %d4,%a1	| _25,
	sub.w %d0,%a1	| tmp449,
	move.w %a1,72(%sp)	|, %sfp
| voxel.c:786: 		if (desired_height >= 0) {
	tst.w 56(%sp)	| %sfp
	jlt .L291		|
.L246:
| voxel.c:787: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 56(%sp),%a0	| %sfp, desired_height
| voxel.c:787: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 56(%sp),%d0	| %sfp, tmp457
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp457
| voxel.c:787: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp457,
	move.l %a1,-(%sp)	|,
	sub.w 76(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr (%a3)		| tmp675
	addq.l #8,%sp	|,
| voxel.c:789: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L248		|
	move.w #-256,%d0	|, altitude_delta
.L249:
| voxel.c:790: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _25, _35
| voxel.c:791: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _35
	jgt .L250		|
.L295:
| voxel.c:790: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _35, pos.z
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _912
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	moveq #0,%d1	|
	move.w %d0,%d1	| _912,
	move.l %d1,52(%sp)	|, %sfp
| voxel.c:485: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp465
	sub.w %d0,%a0	| _912, tmp465
| voxel.c:487: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp465, tmp466
	add.l %a0,%a0	| tmp466, tmp466
	move.l %a0,78(%sp)	| tmp466, %sfp
| voxel.c:794: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.61_37
	move.w -602(%a0),68(%sp)	| MEM[(short int *)__aline.61_37 + 4294966694B], %sfp
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp470
	clr.w %d2	| tmp470
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_272, tmp472
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 62(%sp),%d0	| %sfp, tmp473
	and.w #8,%d0	|, tmp473
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d1	| tmp473, x
	addq.w #3,%d1	|, x
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.61_37 + 4294966696B],
	move.l %a0,64(%sp)	|, %sfp
	move.w #-100,%a2	|, tmp474
	add.l %a0,%a2	|, tmp474
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a2,%d5	| tmp474,
	asr.l #2,%d5	|,
	move.l %d5,%a5	|, _43
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 68(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp476
	add.l #-160,%d0	|, tmp476
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,%d6	| pos.dirx, pretmp_929
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,%a6	| pos.diry, pretmp_932
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d5	| pdata_table[15][7][0], pretmp_937
	moveq #0,%d7	| ivtmp.568
	move.w %d1,%d7	| x, ivtmp.568
	move.l %d0,%d3	| _46, _976
	lsl.l #4,%d3	|, _976
	move.l %d0,-(%sp)	| _46,
	move.l %d7,%a0	| ivtmp.568,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,%d4	| tmp684, ivtmp.570
	move.l %d7,%a1	| ivtmp.568, tmp485
	add.l %d7,%a1	| ivtmp.568, tmp485
	move.l %a1,%a2	| tmp485, ivtmp.573
	add.l #_horizon,%a2	|, ivtmp.573
	move.l %d2,48(%sp)	| sample_vu, %sfp
	move.l %d7,%d2	| ivtmp.568, ivtmp.568
	move.l %d5,44(%sp)	| pretmp_937, %sfp
	move.w %a6,%d5	| pretmp_932, pretmp_932
	move.l %d3,%a6	| _976, _976
.L253:
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w %d2,%d0	|, tmp486
	lsr.w #3,%d0	|, tmp486
	and.l #65535,%d0	|, _69
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _69, tmp488
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	lea _view_min,%a1	|,
	move.w (%a1,%d0.l),%a1	| view_min[_69],
	move.l %a1,-(%sp)	|,
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%a0	| view_max[_69],
	move.l %a0,-(%sp)	|,
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l %d4,-(%sp)	| ivtmp.570,
	jsr (%a3)		| tmp675
	addq.l #8,%sp	|,
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	pea (%a5,%d0.l)		|
	move.l %d2,-(%sp)	| ivtmp.568,
	move.l 68(%sp),-(%sp)	| %sfp,
	move.l %a4,-(%sp)	| _180,
| voxel.c:804: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	move.w %d2,%d1	|, _54
	add.w #-160,%d1	|, _54
	move.w %d1,%d0	| _54,
	muls.w %d6,%d0	| pretmp_929, tmp499
| voxel.c:804: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	asr.l #8,%d0	|, tmp500
| voxel.c:804: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8),
	add.w %d5,%d0	| pretmp_932, tmp501
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp503
	clr.w %d0	| tmp503
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	muls.w %d5,%d1	| pretmp_932, tmp504
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	asr.l #8,%d1	|, tmp505
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w %d6,%d3	| pretmp_929, tmp506
	sub.w %d1,%d3	| tmp505, tmp506
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d0	| tmp506, tmp508
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	and.l #-65538,%d0	|, tmp508
	move.l %d0,-(%sp)	| tmp508,
	move.l 76(%sp),-(%sp)	| %sfp,
	jsr _render		|
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w (%a2),%d3	| MEM[(short int *)_516], _339
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d1	| y, _340
	sub.w %d3,%d1	| _339, _340
| voxel.c:532: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d3	|, tmp511
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d7	| tmp511,
	muls.w #80,%d7	|, tmp512
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	asr.w #4,%d3	|,
	move.w %d3,%a0	| tmp514, tmp515
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp515, tmp516
	add.l %a0,%a0	| tmp516, tmp517
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%d3	| tmp512, tmp518
	add.l %a0,%d3	| tmp517, tmp518
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%a1	| tmp518, tmp519
	add.l %d3,%a1	| tmp518, tmp519
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%d7	| ivtmp.568,
	lsr.l #3,%d7	|,
	moveq #1,%d3	|,
	and.l %d3,%d7	|,
	move.l %d7,%a0	|, tmp522
| voxel.c:328: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp519, tmp523
	lea (%a4,%a0.l),%a0	| _180, tmp523, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	lea (32,%sp),%sp	|,
	tst.w %d1	| _340
	jle .L251		|
	mulu.w #160,%d1	|, tmp524
	add.l %a0,%d1	| pBlock, _968
	move.l 44(%sp),%d7	| %sfp, pretmp_937
.L252:
| voxel.c:333: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 333 "voxel.c" 1
	movep.l %d7, 0(%a0)	| pretmp_937, pBlock
| 0 "" 2
| voxel.c:526: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:524: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _968
	jne .L252		|
	move.l %d7,44(%sp)	| pretmp_937, %sfp
.L251:
| voxel.c:533: 	horizon[x] = y;
	move.w %d0,(%a2)	| y, MEM[(short int *)_516]
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	moveq #16,%d7	|,
	add.l %d7,%d2	|, ivtmp.568
	add.l %a6,%d4	| _976, ivtmp.570
	lea (32,%a2),%a2	|, ivtmp.573
	cmp.w #319,%d2	|, ivtmp.568
	jls .L253		|
| voxel.c:487: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 48(%sp),%d2	| %sfp, sample_vu
	move.l 78(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d4	|, delta_vu
	not.w %d4	| delta_vu
| voxel.c:492: 	short min_y = 0x7fff;
	move.w #32767,%d6	|, min_y
| voxel.c:490: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d5	|, index_mask
| voxel.c:493: 	unsigned short z = 0;
	clr.w %d1	| z
.L256:
	move.l %d2,%d3	| sample_vu, sample_vu
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp526
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:504: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.w %d1,%d0	| z, z
| voxel.c:503: 		z++;
	addq.w #1,%d1	|, z
| voxel.c:495: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d0	|, z
	jls .L254		|
| voxel.c:341: 	asm (
#APP
| 341 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d7, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d0	| tmp, result
| 0 "" 2
| voxel.c:366: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d5,%d0	| index_mask, index
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	add.l #_combined,%d0	|, _377
| voxel.c:368: 		sample.both = ((volatile sample_t*)((char*)combined + index))->both;
	move.l %d0,%a2	| _377,
	move.w (%a2),%d0	| _377->both, _378
| voxel.c:498: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d0	|, _378
| voxel.c:498: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d0,%d0	| _378, tmp531
| voxel.c:499: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| (*y_table_shifted_640)[_380], (*y_table_shifted_640)[_380]
	cmp.w %d6,%d0	| min_y, (*y_table_shifted_640)[_380]
	jge .L255		|
	move.w %d0,%d6	| (*y_table_shifted_640)[_380], min_y
.L255:
| voxel.c:507: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp533
	and.w #15,%d0	|, tmp533
	jne .L254		|
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp534
| voxel.c:176: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:514: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp535
| voxel.c:514: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L254:
| voxel.c:494: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L256		|
| voxel.c:815: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d6	|, min_y
	jlt .L269		|
	move.w #128,%a0	|, _981
| voxel.c:817: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d6	|, min_y
	jge .L257		|
| voxel.c:820: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d6	|, tmp536
	add.w %d6,%d6	| tmp536, tmp537
	add.w %d6,%d6	| tmp537, sunlight
| voxel.c:822: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d6,%a0	| sunlight, _981
.L257:
	move.l %a0,-(%sp)	| _981,
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _86
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _87
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _87,
	muls.w %d3,%d1	| _86, tmp543
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp544
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d1,(%a0)	| tmp544, pos.x
| voxel.c:824: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _93
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _93,
	muls.w %d3,%d1	| _86, tmp547
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp548
| voxel.c:824: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _98
	add.w %d1,%a0	| tmp548, _98
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d1	|, tmp550
	sub.l 72(%sp),%d1	| %sfp, tmp550
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d1	|, tmp551
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| _86, _104
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _104, tmp552
	asr.w #3,%d3	|, tmp552
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _104, tmp553
	asr.w #4,%d4	|, tmp553
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp553, tmp554
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _111
| voxel.c:828: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _104
	jle .L258		|
.L296:
| voxel.c:828: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _111, _114
.L259:
| voxel.c:824: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _98, pos.y
| voxel.c:828: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _114, pos.speed
| voxel.c:830: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 68(%sp),%d1	| %sfp, rot
| voxel.c:831: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _93, tmp557
| voxel.c:831: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp558
| voxel.c:831: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| tmp558, _126
| voxel.c:832: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _126, tmp559
| voxel.c:832: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp560
| voxel.c:832: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp560, _133
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _126,
	muls.w %d0,%d1	| _126, tmp561
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp562
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _133,
	muls.w %d2,%d3	| _133, tmp563
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp564
| voxel.c:835: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp564, tmp565
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| tmp565, tmp566
	moveq #-128,%d1	|, tmp567
	add.l %a0,%d1	| tmp566, tmp567
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp568
| voxel.c:168: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _311
	sub.w %d1,%d3	| tmp568, _311
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _311, tmp571
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp572
| voxel.c:836: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp570
	clr.w %d0	| tmp570
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d3	| _133, tmp577
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp578
| voxel.c:836: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp578, tmp570
	move.l %d0,_pos+6	| tmp570, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:839: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:839: 		if (pressed_keys.up) {
	jpl .L260		|
| voxel.c:840: 			if (desired_height < FIXP(0, 0)) {
	tst.w 56(%sp)	| %sfp
	jlt .L271		|
| voxel.c:843: 			desired_height += FIXP(1, 0);
	move.w 56(%sp),%d0	| %sfp, _983
.L261:
	add.w #128,%d0	|, _983
	move.w %d0,56(%sp)	| _983, %sfp
| voxel.c:844: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L260		|
	move.w #32512,56(%sp)	|, %sfp
.L260:
| voxel.c:848: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:848: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L263		|
| voxel.c:849: 			if (desired_height < FIXP(0, 0)) {
	tst.w 56(%sp)	| %sfp
	jlt .L264		|
| voxel.c:852: 			desired_height -= FIXP(1, 0);
	move.w 56(%sp),72(%sp)	| %sfp, %sfp
.L264:
| voxel.c:857: 		if (key == 0x23) {
	cmp.b #35,71(%sp)	|, %sfp
	jeq .L272		|
| voxel.c:852: 			desired_height -= FIXP(1, 0);
	move.w 72(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,56(%sp)	|, %sfp
| voxel.c:853: 			if (desired_height < FIXP(0, 0)) {
	jmi .L292		|
.L265:
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp590
	and.w #8192,%d0	|, _965
| voxel.c:197: 	data &= mask;
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B], tmp591
	and.l #-536879105,%d3	|, tmp591
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _965
	move.w %d0,%d1	| _965, _965
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181], tmp596
	and.l #-536879105,%d4	|, tmp596
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _965
	swap %d2	| _965
	clr.w %d2	| _965
	move.w %d0,%d2	| _965, _965
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _965, tmp596
	move.l %d4,(%a4)	| tmp596, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181]
	or.l %d1,%d3	| _965, tmp591
	move.l %d3,4(%a4)	| tmp591, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B]
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d7	|,
	lsr.w %d7,%d0	|, tmp604
	and.b #1,%d0	|, _145
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp607
	ext.w %d0	| tmp606
	neg.w %d0	| tmp608
	lsl.w %d7,%d0	|, _972
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B], tmp609
	and.l #-536879105,%d3	|, tmp609
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _972
	move.w %d0,%d1	| _972, _972
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B], tmp614
	and.l #-536879105,%d4	|, tmp614
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _972
	swap %d2	| _972
	clr.w %d2	| _972
	move.w %d0,%d2	| _972, _972
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _972, tmp614
	move.l %d4,640(%a4)	| tmp614, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B]
	or.l %d1,%d3	| _972, tmp609
	move.l %d3,644(%a4)	| tmp609, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B]
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp622
	and.b #1,%d1	|, _146
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp625
	ext.w %d1	| tmp624
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _902
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d3	|,
	lsr.w %d3,%d0	|, tmp628
	and.b #1,%d0	|, _147
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp631
	ext.w %d0	| tmp630
	neg.w %d0	| tmp632
	moveq #11,%d4	|,
	lsl.w %d4,%d0	|, _1027
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d2	| MEM[(short unsigned int *)screen_181 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d2	| _902, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d5	| MEM[(short unsigned int *)screen_181 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d5	| _902, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d4	| MEM[(short unsigned int *)screen_181 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d4	| _902, data
| voxel.c:872: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 56(%sp),%d3	| %sfp, tmp637
	not.w %d3	| tmp637
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp636
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _944
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w %d2,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,320(%a4)	| data, MEM[(short unsigned int *)screen_181 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d5,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,322(%a4)	| data, MEM[(short unsigned int *)screen_181 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_181 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _944, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_181 + 326B]
	addq.w #8,62(%sp)	|, %sfp
| voxel.c:780: 		frames++;
	move.l 74(%sp),58(%sp)	| %sfp, %sfp
.L294:
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp431
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp431
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp681
	jne .L293		|
.L268:
	clr.b 71(%sp)	| %sfp
| voxel.c:780: 		frames++;
	move.l 58(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,74(%sp)	|, %sfp
| voxel.c:110: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.77_276
	move.w (%a0),%d0	| *hw_palette.77_276, _277
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_274
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_272
| voxel.c:785: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _25
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_274, tmp439
	lsr.w #7,%d0	|, tmp439
| voxel.c:784: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp440
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_272, tmp441
	lsr.w #7,%d1	|, tmp441
| voxel.c:784: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp442
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp443
	add.l %d1,%d0	| tmp442, tmp444
	add.l %d0,%d0	| tmp444, tmp445
| voxel.c:785: 		fixp player_height = pos.z - terrain_height;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_19][_22].D.2699.height, combined[_19][_22].D.2699.height
	and.w #255,%d0	|, combined[_19][_22].D.2699.height
	lsl.w #7,%d0	|, tmp449
	move.w %d4,%a1	| _25,
	sub.w %d0,%a1	| tmp449,
	move.w %a1,72(%sp)	|, %sfp
| voxel.c:786: 		if (desired_height >= 0) {
	tst.w 56(%sp)	| %sfp
	jge .L246		|
.L291:
| voxel.c:152: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d4	|, _911
| voxel.c:806: 			short y = render(player_vu, delta_vu, screen, fixp_int(pos.z), x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	moveq #0,%d1	|
	move.w %d4,%d1	| _911,
	move.l %d1,52(%sp)	|, %sfp
| voxel.c:485: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp450
	sub.w %d4,%a0	| _911, tmp450
| voxel.c:487: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp450, tmp451
	add.l %a0,%a0	| tmp451, tmp451
	move.l %a0,78(%sp)	| tmp451, %sfp
| voxel.c:794: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.61_37
	move.w -602(%a0),68(%sp)	| MEM[(short int *)__aline.61_37 + 4294966694B], %sfp
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp470
	clr.w %d2	| tmp470
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_272, tmp472
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 62(%sp),%d0	| %sfp, tmp473
	and.w #8,%d0	|, tmp473
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d1	| tmp473, x
	addq.w #3,%d1	|, x
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.61_37 + 4294966696B],
	move.l %a0,64(%sp)	|, %sfp
	move.w #-100,%a2	|, tmp474
	add.l %a0,%a2	|, tmp474
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a2,%d5	| tmp474,
	asr.l #2,%d5	|,
	move.l %d5,%a5	|, _43
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 68(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp476
	add.l #-160,%d0	|, tmp476
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,%d6	| pos.dirx, pretmp_929
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,%a6	| pos.diry, pretmp_932
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d5	| pdata_table[15][7][0], pretmp_937
	moveq #0,%d7	| ivtmp.568
	move.w %d1,%d7	| x, ivtmp.568
	move.l %d0,%d3	| _46, _976
	lsl.l #4,%d3	|, _976
	move.l %d0,-(%sp)	| _46,
	move.l %d7,%a0	| ivtmp.568,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,%d4	| tmp684, ivtmp.570
	move.l %d7,%a1	| ivtmp.568, tmp485
	add.l %d7,%a1	| ivtmp.568, tmp485
	move.l %a1,%a2	| tmp485, ivtmp.573
	add.l #_horizon,%a2	|, ivtmp.573
	move.l %d2,48(%sp)	| sample_vu, %sfp
	move.l %d7,%d2	| ivtmp.568, ivtmp.568
	move.l %d5,44(%sp)	| pretmp_937, %sfp
	move.w %a6,%d5	| pretmp_932, pretmp_932
	move.l %d3,%a6	| _976, _976
	jra .L253		|
.L290:
| voxel.c:877: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:878: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 82(%sp),%a0	| %sfp, tmp643
| voxel.c:878: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp643, tmp645
	add.l %a0,%d0	| tmp643, tmp645
	add.l %d0,%d0	| tmp645, tmp646
| voxel.c:879: 	unsigned long millis_per_frame = millis / frames;
	move.l 58(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:880: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp687,
	pea .LC11		|
	jsr _printf		|
| voxel.c:881: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:882: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L237:
| voxel.c:885: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:886: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:887: 	install_palette(saved_palette);
	pea 104(%sp)		|
	jsr _install_palette		|
| voxel.c:889: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (88,%sp),%sp	|,
	rts	
.L292:
| voxel.c:853: 			if (desired_height < FIXP(0, 0)) {
	clr.w 56(%sp)	| %sfp
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp590
	and.w #8192,%d0	|, _965
| voxel.c:197: 	data &= mask;
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B], tmp591
	and.l #-536879105,%d3	|, tmp591
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _965
	move.w %d0,%d1	| _965, _965
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181], tmp596
	and.l #-536879105,%d4	|, tmp596
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _965
	swap %d2	| _965
	clr.w %d2	| _965
	move.w %d0,%d2	| _965, _965
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _965, tmp596
	move.l %d4,(%a4)	| tmp596, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181]
	or.l %d1,%d3	| _965, tmp591
	move.l %d3,4(%a4)	| tmp591, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B]
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d7	|,
	lsr.w %d7,%d0	|, tmp604
	and.b #1,%d0	|, _145
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp607
	ext.w %d0	| tmp606
	neg.w %d0	| tmp608
	lsl.w %d7,%d0	|, _972
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B], tmp609
	and.l #-536879105,%d3	|, tmp609
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _972
	move.w %d0,%d1	| _972, _972
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B], tmp614
	and.l #-536879105,%d4	|, tmp614
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _972
	swap %d2	| _972
	clr.w %d2	| _972
	move.w %d0,%d2	| _972, _972
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _972, tmp614
	move.l %d4,640(%a4)	| tmp614, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B]
	or.l %d1,%d3	| _972, tmp609
	move.l %d3,644(%a4)	| tmp609, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B]
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp622
	and.b #1,%d1	|, _146
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp625
	ext.w %d1	| tmp624
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _902
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d3	|,
	lsr.w %d3,%d0	|, tmp628
	and.b #1,%d0	|, _147
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp631
	ext.w %d0	| tmp630
	neg.w %d0	| tmp632
	moveq #11,%d4	|,
	lsl.w %d4,%d0	|, _1027
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d2	| MEM[(short unsigned int *)screen_181 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d2	| _902, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d5	| MEM[(short unsigned int *)screen_181 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d5	| _902, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d4	| MEM[(short unsigned int *)screen_181 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d4	| _902, data
| voxel.c:872: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 56(%sp),%d3	| %sfp, tmp637
	not.w %d3	| tmp637
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp636
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _944
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w %d2,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,320(%a4)	| data, MEM[(short unsigned int *)screen_181 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d5,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,322(%a4)	| data, MEM[(short unsigned int *)screen_181 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_181 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _944, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_181 + 326B]
	addq.w #8,62(%sp)	|, %sfp
| voxel.c:780: 		frames++;
	move.l 74(%sp),58(%sp)	| %sfp, %sfp
	jra .L294		|
.L248:
| voxel.c:790: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L249		|
	move.w #256,%d0	|, altitude_delta
	add.w %d4,%d0	| _25, _35
| voxel.c:791: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _35
	jle .L295		|
.L250:
| voxel.c:791: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d4	|,
	move.l %d4,78(%sp)	|, %sfp
	move.l #255,52(%sp)	|, %sfp
| voxel.c:794: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.61_37
	move.w -602(%a0),68(%sp)	| MEM[(short int *)__aline.61_37 + 4294966694B], %sfp
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp470
	clr.w %d2	| tmp470
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_272, tmp472
| voxel.c:172: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 62(%sp),%d0	| %sfp, tmp473
	and.w #8,%d0	|, tmp473
| voxel.c:797: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d1	| tmp473, x
	addq.w #3,%d1	|, x
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.61_37 + 4294966696B],
	move.l %a0,64(%sp)	|, %sfp
	move.w #-100,%a2	|, tmp474
	add.l %a0,%a2	|, tmp474
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %a2,%d5	| tmp474,
	asr.l #2,%d5	|,
	move.l %d5,%a5	|, _43
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 68(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp476
	add.l #-160,%d0	|, tmp476
| voxel.c:799: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+6,%d6	| pos.dirx, pretmp_929
| voxel.c:805: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8));
	move.w _pos+8,%a6	| pos.diry, pretmp_932
| voxel.c:523: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d5	| pdata_table[15][7][0], pretmp_937
	moveq #0,%d7	| ivtmp.568
	move.w %d1,%d7	| x, ivtmp.568
	move.l %d0,%d3	| _46, _976
	lsl.l #4,%d3	|, _976
	move.l %d0,-(%sp)	| _46,
	move.l %d7,%a0	| ivtmp.568,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,%d4	| tmp684, ivtmp.570
	move.l %d7,%a1	| ivtmp.568, tmp485
	add.l %d7,%a1	| ivtmp.568, tmp485
	move.l %a1,%a2	| tmp485, ivtmp.573
	add.l #_horizon,%a2	|, ivtmp.573
	move.l %d2,48(%sp)	| sample_vu, %sfp
	move.l %d7,%d2	| ivtmp.568, ivtmp.568
	move.l %d5,44(%sp)	| pretmp_937, %sfp
	move.w %a6,%d5	| pretmp_932, pretmp_932
	move.l %d3,%a6	| _976, _976
	jra .L253		|
.L263:
| voxel.c:857: 		if (key == 0x23) {
	cmp.b #35,71(%sp)	|, %sfp
	jne .L265		|
| voxel.c:859: 			if (desired_height < 0) {
	tst.w 56(%sp)	| %sfp
	jge .L272		|
| voxel.c:860: 				desired_height = player_height;
	move.w 72(%sp),56(%sp)	| %sfp, %sfp
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp590
	and.w #8192,%d0	|, _965
| voxel.c:197: 	data &= mask;
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B], tmp591
	and.l #-536879105,%d3	|, tmp591
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _965
	move.w %d0,%d1	| _965, _965
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181], tmp596
	and.l #-536879105,%d4	|, tmp596
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _965
	swap %d2	| _965
	clr.w %d2	| _965
	move.w %d0,%d2	| _965, _965
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _965, tmp596
	move.l %d4,(%a4)	| tmp596, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181]
	or.l %d1,%d3	| _965, tmp591
	move.l %d3,4(%a4)	| tmp591, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B]
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d7	|,
	lsr.w %d7,%d0	|, tmp604
	and.b #1,%d0	|, _145
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp607
	ext.w %d0	| tmp606
	neg.w %d0	| tmp608
	lsl.w %d7,%d0	|, _972
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B], tmp609
	and.l #-536879105,%d3	|, tmp609
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _972
	move.w %d0,%d1	| _972, _972
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B], tmp614
	and.l #-536879105,%d4	|, tmp614
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _972
	swap %d2	| _972
	clr.w %d2	| _972
	move.w %d0,%d2	| _972, _972
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _972, tmp614
	move.l %d4,640(%a4)	| tmp614, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B]
	or.l %d1,%d3	| _972, tmp609
	move.l %d3,644(%a4)	| tmp609, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B]
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp622
	and.b #1,%d1	|, _146
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp625
	ext.w %d1	| tmp624
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _902
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d3	|,
	lsr.w %d3,%d0	|, tmp628
	and.b #1,%d0	|, _147
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp631
	ext.w %d0	| tmp630
	neg.w %d0	| tmp632
	moveq #11,%d4	|,
	lsl.w %d4,%d0	|, _1027
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d2	| MEM[(short unsigned int *)screen_181 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d2	| _902, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d5	| MEM[(short unsigned int *)screen_181 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d5	| _902, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d4	| MEM[(short unsigned int *)screen_181 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d4	| _902, data
| voxel.c:872: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 56(%sp),%d3	| %sfp, tmp637
	not.w %d3	| tmp637
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp636
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _944
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w %d2,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,320(%a4)	| data, MEM[(short unsigned int *)screen_181 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d5,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,322(%a4)	| data, MEM[(short unsigned int *)screen_181 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_181 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _944, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_181 + 326B]
	addq.w #8,62(%sp)	|, %sfp
| voxel.c:780: 		frames++;
	move.l 74(%sp),58(%sp)	| %sfp, %sfp
	jra .L294		|
.L269:
	sub.l %a0,%a0	| _981
| voxel.c:822: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _981,
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _86
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _87
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _87,
	muls.w %d3,%d1	| _86, tmp543
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp544
| voxel.c:823: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d1,(%a0)	| tmp544, pos.x
| voxel.c:824: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _93
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _93,
	muls.w %d3,%d1	| _86, tmp547
| voxel.c:160: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp548
| voxel.c:824: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _98
	add.w %d1,%a0	| tmp548, _98
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d1	|, tmp550
	sub.l 72(%sp),%d1	| %sfp, tmp550
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d1	|, tmp551
| voxel.c:826: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| _86, _104
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _104, tmp552
	asr.w #3,%d3	|, tmp552
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _104, tmp553
	asr.w #4,%d4	|, tmp553
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp553, tmp554
| voxel.c:827: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _111
| voxel.c:828: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _104
	jgt .L296		|
.L258:
| voxel.c:829: 		else pos.speed += drag;
	add.w %d3,%d1	| _111, _114
	jra .L259		|
.L272:
| voxel.c:862: 				desired_height = -1;
	move.w #-1,56(%sp)	|, %sfp
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:868: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp590
	and.w #8192,%d0	|, _965
| voxel.c:197: 	data &= mask;
	move.l 4(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B], tmp591
	and.l #-536879105,%d3	|, tmp591
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _965
	move.w %d0,%d1	| _965, _965
| voxel.c:197: 	data &= mask;
	move.l (%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181], tmp596
	and.l #-536879105,%d4	|, tmp596
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _965
	swap %d2	| _965
	clr.w %d2	| _965
	move.w %d0,%d2	| _965, _965
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _965, tmp596
	move.l %d4,(%a4)	| tmp596, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181]
	or.l %d1,%d3	| _965, tmp591
	move.l %d3,4(%a4)	| tmp591, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 4B]
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d7	|,
	lsr.w %d7,%d0	|, tmp604
	and.b #1,%d0	|, _145
| voxel.c:869: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp607
	ext.w %d0	| tmp606
	neg.w %d0	| tmp608
	lsl.w %d7,%d0	|, _972
| voxel.c:197: 	data &= mask;
	move.l 644(%a4),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B], tmp609
	and.l #-536879105,%d3	|, tmp609
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _972
	move.w %d0,%d1	| _972, _972
| voxel.c:197: 	data &= mask;
	move.l 640(%a4),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B], tmp614
	and.l #-536879105,%d4	|, tmp614
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _972
	swap %d2	| _972
	clr.w %d2	| _972
	move.w %d0,%d2	| _972, _972
| voxel.c:199: 	*out++ = data;
	or.l %d2,%d4	| _972, tmp614
	move.l %d4,640(%a4)	| tmp614, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 640B]
	or.l %d1,%d3	| _972, tmp609
	move.l %d3,644(%a4)	| tmp609, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_181 + 644B]
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp622
	and.b #1,%d1	|, _146
| voxel.c:870: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp625
	ext.w %d1	| tmp624
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _902
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d3	|,
	lsr.w %d3,%d0	|, tmp628
	and.b #1,%d0	|, _147
| voxel.c:871: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp631
	ext.w %d0	| tmp630
	neg.w %d0	| tmp632
	moveq #11,%d4	|,
	lsl.w %d4,%d0	|, _1027
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w 320(%a4),%d2	| MEM[(short unsigned int *)screen_181 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:197: 	data &= mask;
	or.w %d1,%d2	| _902, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a4),%d5	| MEM[(short unsigned int *)screen_181 + 322B], data
	and.w #30719,%d5	|, data
| voxel.c:201: 	data &= mask;
	or.w %d1,%d5	| _902, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a4),%d4	| MEM[(short unsigned int *)screen_181 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:209: 	data &= mask;
	or.w %d1,%d4	| _902, data
| voxel.c:872: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 56(%sp),%d3	| %sfp, tmp637
	not.w %d3	| tmp637
	moveq #15,%d7	|,
	lsr.w %d7,%d3	|, tmp636
	moveq #13,%d1	|,
	lsl.w %d1,%d3	|, _944
| voxel.c:198: 	data |= (color & 1) << (15-x);
	move.w %d2,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:197: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:198: 	data |= (color & 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,320(%a4)	| data, MEM[(short unsigned int *)screen_181 + 320B]
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d5,%d1	| data, data
	or.w %d0,%d1	| _1027, data
| voxel.c:201: 	data &= mask;
	and.w #-8193,%d1	|, data
| voxel.c:202: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d3,%d1	| _944, data
	move.w %d1,322(%a4)	| data, MEM[(short unsigned int *)screen_181 + 322B]
| voxel.c:206: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a4)	|, MEM[(short unsigned int *)screen_181 + 324B]
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:209: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:210: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| _944, data
	move.w %d0,326(%a4)	| data, MEM[(short unsigned int *)screen_181 + 326B]
	addq.w #8,62(%sp)	|, %sfp
| voxel.c:780: 		frames++;
	move.l 74(%sp),58(%sp)	| %sfp, %sfp
	jra .L294		|
.L271:
	move.w 72(%sp),%d0	| %sfp, _983
	jra .L261		|
.L289:
| voxel.c:743: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:744: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:885: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:886: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:887: 	install_palette(saved_palette);
	pea 104(%sp)		|
	jsr _install_palette		|
| voxel.c:889: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (88,%sp),%sp	|,
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
