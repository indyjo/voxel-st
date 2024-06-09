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
	move.l 76(%sp),%d0	| out,
	add.l #160,%d0	|,
	move.l %d0,60(%sp)	|, %sfp
	move.l 80(%sp),64(%sp)	| pixels, %sfp
	move.l 76(%sp),%d1	| out,
	add.l #32160,%d1	|,
	move.l %d1,68(%sp)	|, %sfp
.L2:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
| voxel.c:98: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.82
.L3:
| voxel.c:103: 				unsigned char register px = pixels[y][16*chunk+x];
	move.b (%a6),%d0	| MEM[(unsigned char *)_159],
	move.w %d0,%a2	|, px
	move.b 1(%a6),%d1	| MEM[(unsigned char *)_159 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a6),%d0	| MEM[(unsigned char *)_159 + 2B],
	move.w %d0,%a0	|, px
	move.b 3(%a6),%d7	| MEM[(unsigned char *)_159 + 3B], px
	move.b 4(%a6),%d6	| MEM[(unsigned char *)_159 + 4B], px
	move.b 5(%a6),%d5	| MEM[(unsigned char *)_159 + 5B], px
	move.b 6(%a6),%d4	| MEM[(unsigned char *)_159 + 6B], px
	move.b 7(%a6),%d3	| MEM[(unsigned char *)_159 + 7B], px
	move.b 8(%a6),%d2	| MEM[(unsigned char *)_159 + 8B], px
	move.b 9(%a6),49(%sp)	| MEM[(unsigned char *)_159 + 9B], %sfp
	move.b 10(%a6),47(%sp)	| MEM[(unsigned char *)_159 + 10B], %sfp
	move.b 11(%a6),53(%sp)	| MEM[(unsigned char *)_159 + 11B], %sfp
	move.b 12(%a6),55(%sp)	| MEM[(unsigned char *)_159 + 12B], %sfp
	move.b 13(%a6),57(%sp)	| MEM[(unsigned char *)_159 + 13B], %sfp
	move.b 14(%a6),59(%sp)	| MEM[(unsigned char *)_159 + 14B], %sfp
	move.b 15(%a6),51(%sp)	| MEM[(unsigned char *)_159 + 15B], %sfp
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:104: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:105: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:105: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:105: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:105: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:105: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:105: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:105: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:105: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:105: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:105: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:105: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:105: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:105: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:105: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:105: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:105: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:107: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:107: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:107: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:107: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:107: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:107: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:107: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:107: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:107: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:107: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:107: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:107: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:107: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:107: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:107: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:107: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:108: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:115: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:109: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:109: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:109: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:109: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:109: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:109: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:109: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:109: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:109: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:109: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:109: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:110: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:100: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.82
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L3		|
| voxel.c:99: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L2		|
| voxel.c:118: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L9:
| voxel.c:121: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.97_11]
	cmp.l %d0,%a0	| _3, out
	jne .L9		|
| voxel.c:122: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:130: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:134: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:138: }
	rts	
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
	lea (-328,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.210
| voxel.c:206: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:205: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:204: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp215
	lea _opacity_table,%a5	|, tmp214
.L20:
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _127
	lsr.w #7,%d0	|, _127
| voxel.c:208: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _127, _3
| voxel.c:210: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp164
| voxel.c:210: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp164,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _86
	add.w #120,%d2	|, _86
| voxel.c:210: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.210, ivtmp.199
	move.w #-17920,%a2	|, ivtmp.196
.L21:
| voxel.c:208: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.196,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:210: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _86,
	sub.w %d0,%d1	| tmp243,
	move.w %d1,(%a3)+	|, MEM[(short int *)_114]
| voxel.c:207: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.196
	cmp.w #17920,%a2	|, ivtmp.196
	jne .L21		|
| voxel.c:213: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:215: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp148
	and.l %d4,%d0	| z, tmp148
| voxel.c:215: 		if (TRIGGERS_PROGRESSION(z))
	jne .L22		|
| voxel.c:56: 	return x + x;
	add.w %d7,%d7	| step, step
.L22:
| voxel.c:218: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:219: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L77		|
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _169 * 1]
| voxel.c:206: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:206: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.210
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
.L24:
| voxel.c:225: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_colors+512,%d4	|, ivtmp.186
	move.l #_height,%d7	|, ivtmp.188
	move.l #_combined,%d6	|, ivtmp.189
	lea _colors+262656,%a3	|, _110
	clr.b %d5	| max_height_lsm_flag.128
	clr.b %d3	| max_height_lsm.127
.L27:
	move.l %d4,%a0	| ivtmp.186, ivtmp.175
	lea (-512,%a0),%a0	|, ivtmp.175
	move.l %d6,%a2	| ivtmp.189, ivtmp.179
	move.l %d7,%a1	| ivtmp.188, ivtmp.177
.L26:
| voxel.c:228: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_273], _305
| voxel.c:228: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _302
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_203], _302
	lsl.w #8,%d0	|, tmp177
| voxel.c:228: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d2	| _305
	move.b %d1,%d2	| _305, _305
| voxel.c:228: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d2,%d0	| _305, _308
| voxel.c:229: 			if (height[y][x] > max_height)
	cmp.b %d3,%d1	| max_height_lsm.127, _305
	jls .L25		|
| voxel.c:230: 				max_height = height[y][x];
	move.b %d1,%d3	| _305, max_height_lsm.127
| voxel.c:229: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.128
.L25:
| voxel.c:228: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.w %d0,(%a2)+	| _308, MEM[(short unsigned int *)_46]
| voxel.c:227: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %a0,%d4	| ivtmp.175, ivtmp.186
	jne .L26		|
| voxel.c:226: 	for (int y=0; y<HEIGHT; y++) {
	move.l %a0,%d4	| ivtmp.175, ivtmp.186
	add.l #512,%d4	|, ivtmp.186
	add.l #512,%d7	|, ivtmp.188
	add.l #1024,%d6	|, ivtmp.189
	cmp.l %a3,%d4	| _110, ivtmp.186
	jne .L27		|
	tst.b %d5	| max_height_lsm_flag.128
	jeq .L28		|
	move.b %d3,_max_height	| max_height_lsm.127, max_height
.L28:
| voxel.c:234: 	int bayer[8][8] = {
	moveq #116,%d2	|, tmp179
	add.l %sp,%d2	|, tmp179
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp179,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp179, %sfp
	lea _pdata_table,%a5	|, tmp216
	move.l %a5,124(%sp)	| tmp216, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:244: 	for (int y = 0; y < 8; y++) {
	sub.l %a6,%a6	| y
.L29:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_278], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_278 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_278 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_278 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_278 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_278 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_278 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_278 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,52(%sp)	|, %sfp
| voxel.c:245: 		for (int opacity = 0; opacity < 8; opacity++) {
	clr.l 68(%sp)	| %sfp
.L53:
	move.l 68(%sp),%d6	| %sfp, opacity
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	addq.l #1,68(%sp)	|, %sfp
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 80(%sp),%a0	| %sfp,
	cmp.l 52(%sp),%a0	| %sfp,
	slt %d7		| tmp211
	ext.w %d7	| tmp212
	ext.l %d7	| tmp210
	neg.l %d7	| mask
	move.l 52(%sp),%d0	| %sfp,
	cmp.l 84(%sp),%d0	| %sfp,
	jle .L45		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #2,%d1	|,
	or.l %d1,%d7	|, mask
.L45:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%a0	| %sfp,
	cmp.l 88(%sp),%a0	| %sfp,
	jle .L46		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d7	|, mask
.L46:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 92(%sp),%d1	| %sfp,
	jle .L47		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #8,%d0	|,
	or.l %d0,%d7	|, mask
.L47:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 96(%sp),%d1	| %sfp,
	jle .L48		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d7	|, mask
.L48:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 100(%sp),%d1	| %sfp,
	jle .L49		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #32,%d0	|,
	or.l %d0,%d7	|, mask
.L49:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L50		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d7	|, mask
.L50:
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 108(%sp),%d1	| %sfp,
	jle .L51		|
| voxel.c:250: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #127,%d0	|,
	not.b %d0	|
	or.l %d0,%d7	|, mask
.L51:
| voxel.c:254: 					int bits = mask & evn;
	move.l %d7,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:257: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:258: 						| ((color1&2) ? bits << 16 : 0)
	move.l 48(%sp),%d0	| %sfp,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,60(%sp)	|, %sfp
| voxel.c:259: 						| ((color1&4) ? bits <<  8 : 0)
	move.l 48(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,64(%sp)	|, %sfp
| voxel.c:261: 					bits = mask & odd;
	and.l #1431655765,%d7	|, bits
| voxel.c:263: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d7,%d0	| bits,
	lsl.w #8,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, iftmp.19_105
| voxel.c:264: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d7,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.20_106
| voxel.c:265: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d7,%d0	| bits,
	lsl.l #8,%d0	|,
	move.l %d0,%a1	|, iftmp.21_107
	move.l 72(%sp),%a4	| %sfp, ivtmp.152
| voxel.c:252: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
	lsl.l #8,%d6	|, tmp217
.L43:
	btst #1,%d4	|, color1
	jeq .L30		|
	move.l 60(%sp),%d5	| %sfp, iftmp.16_101
.L31:
	btst #0,%d4	|, color1
	jeq .L32		|
	move.l 56(%sp),%d0	| %sfp, iftmp.15_100
.L33:
	or.l %d0,%d5	| iftmp.15_100, tmp189
	btst #2,%d4	|, color1
	jeq .L34		|
	move.l 64(%sp),%d0	| %sfp, iftmp.17_102
.L35:
	or.l %d0,%d5	| iftmp.17_102, tmp193
	btst #3,%d4	|, color1
	jeq .L36		|
	move.l 48(%sp),%d0	| %sfp, bits
	or.l %d0,%d5	| bits, _235
	move.l %d4,%d2	| color1, ivtmp.145
	neg.l %d2	| ivtmp.145
| voxel.c:260: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.152, ivtmp.146
	move.l %d7,44(%sp)	| bits, %sfp
.L42:
	move.l %d2,%d3	| ivtmp.145, _200
	add.l %d4,%d3	| color1, _200
| voxel.c:255: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp197
	and.l %d2,%d0	| ivtmp.145, tmp197
| voxel.c:255: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp198
| voxel.c:255: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:263: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _200
	jeq .L55		|
	move.l %a3,%d1	| iftmp.19_105, prephitmp_136
	or.l %d5,%d1	| _235, prephitmp_136
.L38:
| voxel.c:264: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _200
	jeq .L39		|
	move.l %a2,%d7	| iftmp.20_106,
	or.l %d7,%d1	|, prephitmp_136
.L39:
| voxel.c:265: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _200
	jeq .L40		|
	move.l %a1,%d7	| iftmp.21_107,
	or.l %d7,%d1	|, prephitmp_136
.L40:
| voxel.c:266: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _200
	jeq .L41		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_136
.L41:
| voxel.c:262: 					pdata_table[opacity][index][y] |= 0
	add.l %d6,%d0	| tmp217, tmp205
	lsl.l #3,%d0	|, tmp206
	add.l %a6,%d0	| y, tmp207
	add.l %d0,%d0	| tmp207, tmp208
	add.l %d0,%d0	| tmp208, tmp209
	move.l %d1,(%a5,%d0.l)	| prephitmp_136, pdata_table[opacity_194][index_144][y_155]
| voxel.c:268: 					pdata_table[opacity][index2][y] = pdata_table[opacity][index][y];
	move.l %d1,(%a0)	| prephitmp_136, MEM[(unsigned int *)_226]
| voxel.c:253: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.145
	lea (-480,%a0),%a0	|, ivtmp.146
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.145,
	jne .L42		|
| voxel.c:252: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:252: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (512,%a4),%a4	|, ivtmp.152
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L43		|
| voxel.c:245: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,52(%sp)	|, %sfp
	add.l #8192,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l 68(%sp),%d7	| %sfp,
	jne .L53		|
| voxel.c:244: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a6	|, y
| voxel.c:244: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d1	|,
	add.l %d1,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a6,%d7	| y,
	jne .L29		|
	lea _horizon,%a0	|, vectp_horizon.134
.L52:
| voxel.c:275: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d1	|,
	move.l %d1,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.134_201]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.134
	jne .L52		|
| voxel.c:276: }
	movem.l (%sp)+,#31996	|,
	lea (328,%sp),%sp	|,
	rts	
.L77:
| voxel.c:219: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:221: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _169 * 1]
| voxel.c:206: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:206: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.210
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
	jra .L24		|
.L55:
| voxel.c:263: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _235, prephitmp_136
	jra .L38		|
.L36:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _235
	move.l %d4,%d2	| color1, ivtmp.145
	neg.l %d2	| ivtmp.145
| voxel.c:260: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.152, ivtmp.146
	move.l %d7,44(%sp)	| bits, %sfp
	jra .L42		|
.L34:
	moveq #0,%d0	| iftmp.17_102
	jra .L35		|
.L32:
	moveq #0,%d0	| iftmp.15_100
	jra .L33		|
.L30:
	moveq #0,%d5	| iftmp.16_101
	jra .L31		|
	.even
	.globl	_render
_render:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 52(%sp),%a0	| pos, pos
	move.l 64(%sp),%d0	| x, x
	move.w 70(%sp),46(%sp)	| y_offset, %sfp
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d2	| pos_87(D)->dirx, _9
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d0,%d1	|, _13
	add.w #-160,%d1	|, _13
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d3	| pos_87(D)->diry, _15
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d1,%d5	| _13,
	muls.w %d2,%d5	| _9, tmp152
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp153
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d3,%d5	| _15, tmp154
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp156
	clr.w %d5	| tmp156
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d3,%d1	| _15, tmp157
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp158
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d1,%d2	| tmp158, tmp159
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d5	| tmp159, tmp161
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_87(D)->y
	move.w 2(%a0),%d2	| pos_87(D)->y, pos_87(D)->y
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp163
	clr.w %d2	| tmp163
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_87(D)->x, tmp165
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp166
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp167
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp168
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp169
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp170
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp171
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp172
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp173
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp174
	asr.w #4,%d1	|, tmp174
	ext.l %d1	| tmp175
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp175, tmp176
	add.l %d1,%d1	| tmp176, tmp177
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d1	|, tmp178
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp178, tmp179
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp181
	moveq #1,%d3	|,
	and.l %d3,%d0	|, tmp182
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp179, tmp183
	add.l %d0,%a0	| tmp182, tmp183
	add.l 56(%sp),%a0	| out, pBlock
	moveq #0,%d0	| _69
	move.b _max_height,%d0	| max_height, _69
| voxel.c:316: 	short ytable_offset = 256 - player_height;
	move.w #256,%a2	|, ytable_offset
	sub.w 62(%sp),%a2	| player_height, ytable_offset
	move.l %d0,%a1	| _69, tmp186
	lea (2048,%a1),%a1	|, tmp186
	lea (%a1,%a2.w),%a1	|, tmp187
	add.l %a1,%a1	| tmp187, tmp188
	add.l #_y_table,%a1	|, ivtmp.243
	neg.l %d0	| _69
	move.l %d0,%a3	| _69, tmp190
	add.l %d0,%a3	| tmp190, tmp191
| voxel.c:340: 	int z = STEPS_MIN;
	moveq #4,%d4	|, z
| voxel.c:339: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:336: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
	lea _combined,%a4	|, tmp237
| voxel.c:376: 				unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a6	|, tmp243
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lea _pdata_table,%a5	|, tmp245
.L79:
| voxel.c:293: 	asm (
#APP
| 293 "voxel.c" 1
	move.l %d2, %d3	| sample_vu, tmp
	lsr.l #6, %d3	| tmp
	move.l %d3, %d1	| tmp, result
	and.l #0x0003fe, %d3	| tmp
	lsr.l #7, %d1	| result
	and.l #0x07fc00, %d1	| result
	or.l %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:350: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:351: 		unsigned short height_color = *((unsigned short*)((char*)combined + index));
	move.w (%a4,%d1.l),%d1	| *_39, height_color
| voxel.c:353: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	moveq #0,%d3	| tmp197
	move.b %d1,%d3	| height_color, tmp197
	add.l %d3,%d3	| tmp197, tmp199
	lea (%a1,%d3.l),%a2	| ivtmp.243, tmp199, tmp200
| voxel.c:353: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	move.w 46(%sp),%d3	| %sfp, sample_y
	add.w (%a2,%a3.l),%d3	| (*_42)[_43], sample_y
| voxel.c:354: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, <retval>
	jlt .L81		|
| voxel.c:356: 			if (z < FOG_START) {
	moveq #39,%d7	|,
	cmp.l %d4,%d7	| z,
	jlt .L82		|
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp202
	and.l #65535,%d1	|, tmp203
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	add.l #1792,%d1	|, tmp204
	lsl.l #5,%d1	|, tmp205
	move.l (%a5,%d1.l),%d1	| pdata_table[7][_49][0], movep_data
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _81
	jlt .L106		|
.L83:
| voxel.c:364: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _81, <retval>
	jlt .L84		|
	sub.w %d3,%d0	| _81, tmp206
	and.l #65535,%d0	|, tmp207
	addq.l #1,%d0	|, tmp208
	move.l %d0,%a2	| tmp208, tmp210
	add.l %d0,%a2	| tmp208, tmp210
	add.l %a2,%a2	| tmp210, tmp211
	add.l %a2,%d0	| tmp211, tmp212
	lsl.l #5,%d0	|, tmp212
	move.l %d0,%a2	| tmp212, tmp213
	move.l %a0,%d0	| pBlock, _24
	sub.l %a2,%d0	| tmp213, _24
.L85:
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 285 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:366: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:364: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _24, pBlock
	jne .L85		|
	move.w %d3,%d0	| _81, <retval>
	subq.w #1,%d0	|, <retval>
.L84:
| voxel.c:393: 		z++;
	addq.l #1,%d4	|, z
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp234
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp235
	and.l %d4,%d1	| z, tmp235
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	jeq .L92		|
| voxel.c:341: 	while(z < STEPS_MAX) {
	lea (1024,%a1),%a1	|, ivtmp.243
.L91:
| voxel.c:346: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w #99,%d0	|, <retval>
	jgt .L79		|
| voxel.c:346: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w (%a1),%d0	| MEM[(short int *)_79], <retval>
	jgt .L79		|
| voxel.c:406: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L106:
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _81
	jra .L83		|
.L82:
	tst.w %d3	| _179
	jlt .L107		|
.L86:
	moveq #0,%d7	|
	move.b (%a6,%d4.l),%d7	| MEM[(unsigned char *)&opacity_table + _78 * 1],
	lsl.l #8,%d7	|,
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp218
	and.l #65535,%d1	|, tmp219
	add.l %d7,%d1	| tmp217, tmp220
	lsl.l #5,%d1	|, _166
| voxel.c:382: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _179, <retval>
	jlt .L81		|
	move.l %d1,%a2	| _166, tmp238
	add.l #_pdata_table,%a2	|, tmp238
.L87:
| voxel.c:383: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp222
	and.l %d0,%d1	| <retval>, tmp222
	add.l %d1,%d1	| tmp222, tmp223
	add.l %d1,%d1	| tmp223, tmp224
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d1.l),%d1	| *_57, *_57
#APP
| 285 "voxel.c" 1
	movep.l %d1, 0(%a0)	| *_57, pBlock
| 0 "" 2
| voxel.c:385: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, <retval>
| voxel.c:382: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| <retval>, _179
	jle .L87		|
.L81:
| voxel.c:393: 		z++;
	addq.l #1,%d4	|, z
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp229
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp230
	and.l %d4,%d1	| z, tmp230
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	jne .L88		|
.L92:
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:400: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp232
| voxel.c:400: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L88:
| voxel.c:341: 	while(z < STEPS_MAX) {
	lea (1024,%a1),%a1	|, ivtmp.243
	moveq #64,%d1	|,
	cmp.l %d4,%d1	| z,
	jne .L91		|
| voxel.c:406: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L107:
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _179
	jra .L86		|
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:411: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:411: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:413: 	while (remaining_lines > 0) {
	tst.w %d1	| _5
	jle .L109		|
	and.l #65535,%d1	|, _5
	move.l %d1,%a1	| _5, tmp74
	add.l %d1,%a1	| _5, tmp74
	add.l %a1,%a1	| tmp74, tmp75
	add.l %a1,%d1	| tmp75, tmp76
	lsl.l #5,%d1	|, tmp77
	move.l %a0,%a1	| pBlock, _33
	sub.l %d1,%a1	| tmp77, _33
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp79
.L110:
#APP
| 285 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:415: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:413: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _33
	jne .L110		|
.L109:
| voxel.c:418: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:419: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC1:
	.ascii "Tables computed.\0"
.LC2:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-88,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:433: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:435: 	Super(0L);
	moveq #0,%d0	| tmp272
#APP
| 435 "voxel.c" 1
	movl	%d0,%sp@-	| tmp272
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:437: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:439: 	lineaa();
	jsr _lineaa		|
| voxel.c:440: 	build_tables();
	jsr _build_tables		|
| voxel.c:441: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:442:         set_palette();
	jsr _set_palette		|
| voxel.c:443: 	unsigned short *screen = Physbase();
#APP
| 443 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,72(%sp)	| tmp489, %sfp
| voxel.c:444: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp489,
	jsr _draw_image2		|
	move.l 80(%sp),%a0	| %sfp, ivtmp.331
	move.l %a0,%d0	| ivtmp.331, _730
	add.l #32000,%d0	|, _730
	lea (12,%sp),%sp	|,
.L115:
| voxel.c:121: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.268_800]
	cmp.l %d0,%a0	| _730, ivtmp.331
	jne .L115		|
| voxel.c:446: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,128(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:89: 	return *hw_palette;
	move.l _hw_palette,120(%sp)	| hw_palette, %sfp
| voxel.c:459: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,112(%sp)	| __aline, %sfp
| voxel.c:452: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,100(%sp)	| pos.y, %sfp
| voxel.c:452: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),90(%sp)	| pos.x, %sfp
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,66(%sp)	| pos.dirx, %sfp
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,64(%sp)	| pos.diry, %sfp
| voxel.c:470: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,96(%sp)	| pos.speed, %sfp
	moveq #0,%d0	| _782
	move.b _max_height,%d0	| max_height, _782
	move.l %d0,%a1	| _782,
	lea (2048,%a1),%a1	|,
	move.l %a1,124(%sp)	|, %sfp
	neg.l %d0	| tmp286
	move.l %d0,%a4	| tmp286, tmp287
	add.l %d0,%a4	| tmp286, tmp287
	clr.w 102(%sp)	| %sfp
| voxel.c:447: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,92(%sp)	|, %sfp
	lea _combined,%a5	|, tmp469
	moveq #0,%d4	| val.10_129
	move.w 90(%sp),%d4	| %sfp, val.10_129
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l %a4,%a6	| tmp287, tmp287
.L138:
| voxel.c:89: 	return *hw_palette;
	move.l 120(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| *hw_palette.44_133, _134
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 100(%sp),%d0	| %sfp, tmp290
	lsr.w #7,%d0	|, tmp290
| voxel.c:452: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp291
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 90(%sp),%d1	| %sfp, tmp292
	lsr.w #7,%d1	|, tmp292
| voxel.c:452: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp293
| voxel.c:452: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp294
	add.l %d1,%d0	| tmp293, tmp295
	add.l %d0,%d0	| tmp295, tmp296
| voxel.c:453: 		int player_altitude = height_under_player + 20;
	move.b 1(%a5,%d0.l),%d0	| combined[_2][_4], tmp298
	and.l #255,%d0	|, tmp298
	moveq #20,%d7	|,
	add.l %d7,%d0	|, player_altitude
| voxel.c:455: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 92(%sp),%d1	| %sfp, tmp300
	addq.l #2,%d1	|, tmp300
| voxel.c:455: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp300
	jle .L116		|
	moveq #0,%d1	|, tmp300
	not.b %d1	| tmp300
.L116:
	cmp.l %d0,%d1	| player_altitude, tmp300
	jge .L117		|
	move.l %d1,%d0	| tmp300, player_altitude
.L117:
| voxel.c:456: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 92(%sp),%d1	| %sfp, tmp301
	subq.l #2,%d1	|, tmp301
| voxel.c:456: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,92(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp301
	jle .L118		|
	move.l %d1,92(%sp)	| tmp301, %sfp
.L118:
| voxel.c:460: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 102(%sp),%d0	| %sfp, _12
	and.w #8,%d0	|, _12
| voxel.c:460: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _12
	move.w %d0,46(%sp)	| _12, %sfp
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 112(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.38_8 + 4294966696B],
	move.l %a0,104(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp302
	add.l %a0,%d0	|, tmp302
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp302
	move.l %d0,72(%sp)	| tmp302, %sfp
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 112(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.38_8 + 4294966694B],
	move.l %a1,108(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp303
	add.l #-160,%d0	|, tmp303
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _18
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 100(%sp),%d1	| %sfp,
	swap %d1	| tmp305
	clr.w %d1	| tmp305
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.10_129, tmp307
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp307
	move.l %d1,76(%sp)	| tmp307, %sfp
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 64(%sp),%a2	| %sfp,
	move.l %a2,116(%sp)	|, %sfp
	move.l %d0,%d1	| _18,
	lsl.l #4,%d1	|,
	move.l %d1,84(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 46(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _18,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,52(%sp)	| tmp490, %sfp
	add.l %d2,%d2	| x, tmp314
	add.l #_horizon,%d2	|, tmp314
	move.l %d2,48(%sp)	| tmp314, %sfp
| voxel.c:316: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 94(%sp),%a0	| %sfp, ytable_offset
	move.w %a0,%a2	| ytable_offset,
	move.l 124(%sp),%a1	| %sfp,
	lea (%a2,%a1.l),%a0	|, tmp317
	add.l %a0,%a0	| tmp317, tmp318
	add.l #_y_table,%a0	|, tmp318
	move.l %a0,80(%sp)	| tmp318, %sfp
.L135:
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 56(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:462: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %d0,%a4	| tmp491, y_offset
	add.l 72(%sp),%a4	| %sfp, y_offset
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 46(%sp),%d0	| %sfp, _217
	add.w #-160,%d0	|, _217
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 66(%sp),%d5	| %sfp,
	muls.w %d0,%d5	| _217, tmp324
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp325
| voxel.c:324: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 64(%sp),%d5	| %sfp, tmp326
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp328
	clr.w %d5	| tmp328
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 64(%sp),%d0	| %sfp, tmp329
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d0	|, tmp330
| voxel.c:325: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 66(%sp),%d1	| %sfp, tmp331
	sub.w %d0,%d1	| tmp330, tmp331
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d5	| tmp331, tmp333
| voxel.c:141: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	move.l 76(%sp),%d1	| %sfp, tmp334
	add.l %d5,%d1	| delta_vu, tmp334
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp335
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d1	| delta_vu, tmp336
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp337
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d1	| delta_vu, tmp338
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp339
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d1	| delta_vu, tmp340
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp, tmp341
	asr.w #4,%d0	|, tmp341
	ext.l %d0	| tmp342
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp342, tmp343
	add.l %d0,%d0	| tmp343, tmp343
	move.l %d0,56(%sp)	| tmp343, %sfp
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 46(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp346
	moveq #1,%d2	|,
	and.l %d0,%d2	| tmp346,
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 56(%sp),%d0	| %sfp, tmp347
	add.l #15920,%d0	|, tmp347
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp347, tmp348
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp348, tmp349
	add.l %d2,%a0	|, tmp349
	add.l 68(%sp),%a0	| %sfp, pBlock
	move.l 80(%sp),%a2	| %sfp, ivtmp.307
| voxel.c:339: 	short y = 199;
	move.w #199,%d0	|, y
| voxel.c:336: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
| voxel.c:340: 	int z = STEPS_MIN;
	moveq #4,%d4	|, z
.L119:
| voxel.c:293: 	asm (
#APP
| 293 "voxel.c" 1
	move.l %d1, %d3	| sample_vu, tmp
	lsr.l #6, %d3	| tmp
	move.l %d3, %d2	| tmp, result
	and.l #0x0003fe, %d3	| tmp
	lsr.l #7, %d2	| result
	and.l #0x07fc00, %d2	| result
	or.l %d3,%d2	| tmp, result
| 0 "" 2
| voxel.c:350: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d2	| index_mask, index
| voxel.c:351: 		unsigned short height_color = *((unsigned short*)((char*)combined + index));
	move.w (%a5,%d2.l),%d2	| *_265, height_color
| voxel.c:353: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	moveq #0,%d3	| tmp355
	move.b %d2,%d3	| height_color, tmp355
	add.l %d3,%d3	| tmp355, tmp357
	lea (%a2,%d3.l),%a1	| ivtmp.307, tmp357, tmp358
| voxel.c:353: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	move.w (%a1,%a6.l),%d3	| (*_270)[_271], sample_y
	add.w %a4,%d3	| y_offset, sample_y
| voxel.c:411: 	short remaining_lines = y - horizon[x];
	move.w %d0,%a1	| y, prephitmp_777
| voxel.c:354: 		if (sample_y <= y) {
	cmp.w %d0,%d3	| y, sample_y
	jgt .L121		|
| voxel.c:356: 			if (z < FOG_START) {
	moveq #39,%d7	|,
	cmp.l %d4,%d7	| z,
	jlt .L122		|
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d2	|, tmp360
	and.l #65535,%d2	|, tmp361
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	add.l #1792,%d2	|, tmp362
	lsl.l #5,%d2	|, tmp363
	lea _pdata_table,%a3	|,
	move.l (%a3,%d2.l),%d2	| pdata_table[7][_278][0], movep_data
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _280
	jlt .L162		|
.L123:
| voxel.c:364: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _280
	jgt .L124		|
	sub.w %d3,%d0	| _280, tmp364
	and.l #65535,%d0	|, tmp365
	addq.l #1,%d0	|, tmp366
	move.l %d0,%a1	| tmp366, tmp368
	add.l %d0,%a1	| tmp366, tmp368
	add.l %a1,%a1	| tmp368, tmp369
	move.l %a1,%d7	| tmp369, tmp370
	add.l %d0,%d7	| tmp366, tmp370
	lsl.l #5,%d7	|, tmp371
	move.l %a0,%d0	| pBlock, _769
	sub.l %d7,%d0	| tmp371, _769
.L125:
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 285 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:366: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:364: 				while (y >= sample_y) {
	cmp.l %a0,%d0	| pBlock, _769
	jne .L125		|
	move.w %d3,%a1	| _280, prephitmp_777
	subq.w #1,%a1	|, prephitmp_777
	move.w %a1,%d0	| prephitmp_777, y
.L124:
| voxel.c:393: 		z++;
	addq.l #1,%d4	|, z
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d1	| delta_vu, tmp462
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d2	|, tmp463
	and.l %d4,%d2	| z, tmp463
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	jeq .L142		|
| voxel.c:341: 	while(z < STEPS_MAX) {
	lea (1024,%a2),%a2	|, ivtmp.307
.L141:
| voxel.c:346: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w #99,%d0	|, y
	jgt .L119		|
| voxel.c:346: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w (%a2),%d0	| MEM[(short int *)_788], y
	jgt .L119		|
| voxel.c:411: 	short remaining_lines = y - horizon[x];
	move.w %d0,%a1	| y, prephitmp_777
.L130:
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	| y,
	muls.w #80,%d1	|, tmp391
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 56(%sp),%d1	| %sfp, tmp393
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp393, tmp394
| voxel.c:280: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp394, tmp395
	add.l 60(%sp),%a0	| %sfp, tmp395
	add.l 68(%sp),%a0	| %sfp, pBlock
| voxel.c:411: 	short remaining_lines = y - horizon[x];
	move.w %a1,%d1	| prephitmp_777, _187
	move.l 48(%sp),%a2	| %sfp,
	sub.w (%a2),%d1	| MEM[(short int *)_737], _187
| voxel.c:413: 	while (remaining_lines > 0) {
	tst.w %d1	| _187
	jle .L133		|
	and.l #65535,%d1	|, _187
	move.l %d1,%a1	| _187, tmp398
	add.l %d1,%a1	| _187, tmp398
	add.l %a1,%a1	| tmp398, tmp399
	add.l %a1,%d1	| tmp399, tmp400
	lsl.l #5,%d1	|, tmp401
	move.l %a0,%a1	| pBlock, _756
	sub.l %d1,%a1	| tmp401, _756
.L134:
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	|
#APP
| 285 "voxel.c" 1
	movep.l %d1, 0(%a0)	|, pBlock
| 0 "" 2
| voxel.c:415: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:413: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _756
	jne .L134		|
.L133:
| voxel.c:418: 	horizon[x] = y;
	move.l 48(%sp),%a0	| %sfp,
	move.w %d0,(%a0)	| y, MEM[(short int *)_737]
| voxel.c:460: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,46(%sp)	|, %sfp
| voxel.c:460: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 84(%sp),%d1	| %sfp,
	add.l %d1,52(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,48(%sp)	|, %sfp
	cmp.w #319,46(%sp)	|, %sfp
	jls .L135		|
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 96(%sp),%d0	| %sfp,
	muls.w 66(%sp),%d0	| %sfp, tmp404
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp405
| voxel.c:470: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,90(%sp)	| tmp405, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 96(%sp),%d0	| %sfp,
	muls.w 64(%sp),%d0	| %sfp, tmp406
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp407
| voxel.c:471: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 100(%sp),%d0	| %sfp, _39
| voxel.c:470: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.10_129
	move.w 90(%sp),%d4	| %sfp, val.10_129
	move.w 90(%sp),%d1	| %sfp,
	swap %d1	| _39
	clr.w %d1	| _39
	move.w %d0,%d1	| _39, _39
| voxel.c:471: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,100(%sp)	| _39, %sfp
| voxel.c:473: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp413
	sub.l 104(%sp),%d0	| %sfp, tmp413
| voxel.c:473: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp414
| voxel.c:473: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 96(%sp),%d0	| %sfp, _46
| voxel.c:474: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _46, tmp415
	asr.w #3,%d2	|, tmp415
| voxel.c:474: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _46, tmp416
	asr.w #4,%d3	|, tmp416
| voxel.c:474: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d2	| tmp416, tmp417
| voxel.c:474: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, tmp418
| voxel.c:475: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _46
	jle .L136		|
| voxel.c:475: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| tmp418, _46
	move.w %d0,96(%sp)	| _46, %sfp
| voxel.c:470: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:475: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 96(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:477: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d2	|, tmp421
	not.b %d2	| tmp421
	sub.l 108(%sp),%d2	| %sfp, tmp421
| voxel.c:477: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d2	|, _62
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp424
| voxel.c:478: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 66(%sp),%d3	| %sfp, _66
	add.w %d0,%d3	| tmp424, _66
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _62,
	move.w %d3,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp428
| voxel.c:479: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 64(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp428, _70
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _66,
	muls.w %d3,%d0	| _66, tmp429
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp430
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _70,
	muls.w %d1,%d2	| _70, tmp432
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp433
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp433, tmp434
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp436
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp437
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp437, factor
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp438
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp439
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,66(%sp)	| tmp439, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp440
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp441
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,64(%sp)	| tmp441, %sfp
| voxel.c:486: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _144
	clr.w %d3	| _144
	move.w %d0,%d3	| tmp441, _144
	move.l %d3,_pos+6	| _144, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:448: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,102(%sp)	|, %sfp
	cmp.w #6400,102(%sp)	|, %sfp
	jne .L138		|
.L164:
| voxel.c:493: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:494: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 128(%sp),%a0	| %sfp, tmp449
| voxel.c:494: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp449, tmp451
	add.l %a0,%d0	| tmp449, tmp451
	add.l %d0,%d0	| tmp451, tmp452
| voxel.c:495: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:496: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp494,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.46_120
	move.l 4(%a0),%d0	| stdin.46_120->__bufp, _118
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.46_120->__get_limit, _118
	jcc .L139		|
	addq.l #1,%d0	|, _118
	move.l %d0,4(%a0)	| _118, stdin.46_120->__bufp
| voxel.c:500: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (88,%sp),%sp	|,
	rts	
.L162:
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _280
	jra .L123		|
.L122:
	tst.w %d3	| _833
	jlt .L163		|
.L127:
	lea _opacity_table,%a3	|,
	moveq #0,%d7	| MEM[(unsigned char *)&opacity_table + _789 * 1]
	move.b (%a3,%d4.l),%d7	| MEM[(unsigned char *)&opacity_table + _789 * 1], MEM[(unsigned char *)&opacity_table + _789 * 1]
	lsl.l #8,%d7	|, tmp375
| voxel.c:362: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d2	|, tmp376
	and.l #65535,%d2	|, tmp377
	add.l %d2,%d7	| tmp377, tmp378
	lsl.l #5,%d7	|, _184
| voxel.c:382: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _833
	jgt .L121		|
	move.l %d7,%a3	| _184, tmp464
	add.l #_pdata_table,%a3	|, tmp464
.L128:
| voxel.c:383: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|,
	and.l %d0,%d2	| y,
	move.l %d2,%a1	|, tmp380
	add.l %d2,%a1	| tmp380, tmp381
	add.l %a1,%a1	| tmp381, tmp382
| voxel.c:285: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a1.l),%d2	| *_297, *_297
#APP
| 285 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_297, pBlock
| 0 "" 2
| voxel.c:385: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:386: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a1	| y, prephitmp_777
| voxel.c:382: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _833
	jle .L128		|
.L121:
| voxel.c:393: 		z++;
	addq.l #1,%d4	|, z
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d1	| delta_vu, tmp387
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_vu
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d2	|, tmp388
	and.l %d4,%d2	| z, tmp388
| voxel.c:396: 		if (TRIGGERS_PROGRESSION(z)) {
	jne .L129		|
.L142:
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp389
| voxel.c:145: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:400: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp390
| voxel.c:400: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L129:
| voxel.c:341: 	while(z < STEPS_MAX) {
	lea (1024,%a2),%a2	|, ivtmp.307
	moveq #64,%d7	|,
	cmp.l %d4,%d7	| z,
	jne .L141		|
	jra .L130		|
.L163:
| voxel.c:363: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _833
	jra .L127		|
.L136:
| voxel.c:476: 		else pos.speed += drag;
	add.w %d2,%d0	| tmp418, _46
	move.w %d0,96(%sp)	| _46, %sfp
| voxel.c:470: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:475: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 96(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:477: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d2	|, tmp421
	not.b %d2	| tmp421
	sub.l 108(%sp),%d2	| %sfp, tmp421
| voxel.c:477: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d2	|, _62
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp424
| voxel.c:478: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 66(%sp),%d3	| %sfp, _66
	add.w %d0,%d3	| tmp424, _66
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _62,
	move.w %d3,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp428
| voxel.c:479: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 64(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp428, _70
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _66,
	muls.w %d3,%d0	| _66, tmp429
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp430
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _70,
	muls.w %d1,%d2	| _70, tmp432
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp433
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp433, tmp434
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp436
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp437
| voxel.c:485: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp437, factor
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp438
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp439
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,66(%sp)	| tmp439, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp440
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp441
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,64(%sp)	| tmp441, %sfp
| voxel.c:486: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _144
	clr.w %d3	| _144
	move.w %d0,%d3	| tmp441, _144
	move.l %d3,_pos+6	| _144, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:448: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,102(%sp)	|, %sfp
	cmp.w #6400,102(%sp)	|, %sfp
	jne .L138		|
	jra .L164		|
.L139:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.46_120,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:500: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (88,%sp),%sp	|,
	rts	
	.globl	_pos
	.data
	.even
_pos:
| x:
	.word	18560
| y:
	.word	-22016
| z:
	.word	12800
| dirx:
	.word	-49
| diry:
	.word	-118
| speed:
	.word	128
	.globl	_hw_palette
	.even
_hw_palette:
	.long	16745024
	.globl	_horizon
	.bss
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
