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
| voxel.c:101: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.83
.L3:
| voxel.c:106: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:107: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:108: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:108: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:108: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:108: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:108: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:108: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:108: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:108: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:108: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:108: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:108: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:108: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:108: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:108: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:108: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:108: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:110: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:110: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:110: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:110: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:110: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:110: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:110: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:110: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:110: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:110: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:110: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:110: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:110: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:110: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:110: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:110: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:118: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:112: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:112: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:112: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:112: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:112: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:112: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:112: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:112: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:112: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:112: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:112: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:113: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:103: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.83
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L3		|
| voxel.c:102: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L2		|
| voxel.c:121: }
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
| voxel.c:124: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.98_11]
	cmp.l %d0,%a0	| _3, out
	jne .L9		|
| voxel.c:125: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:133: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:137: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:141: }
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
	lea (-408,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.236
| voxel.c:209: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:208: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:207: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp242
	lea _opacity_table,%a5	|, tmp246
.L20:
| voxel.c:132: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _187
	lsr.w #7,%d0	|, _187
| voxel.c:211: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _187, _3
| voxel.c:213: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:213: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp242
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _229
	add.w #60,%d2	|, _229
| voxel.c:213: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.236, ivtmp.225
	move.w #-17920,%a2	|, ivtmp.222
.L21:
| voxel.c:211: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.222,
	jsr (%a4)		| tmp242
	addq.l #8,%sp	|,
| voxel.c:213: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _229,
	sub.w %d0,%d1	| tmp272,
	move.w %d1,(%a3)+	|, MEM[(short int *)_100]
| voxel.c:210: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.222
	cmp.w #17920,%a2	|, ivtmp.222
	jne .L21		|
| voxel.c:216: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:218: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:218: 		if (TRIGGERS_PROGRESSION(z))
	jne .L22		|
| voxel.c:56: 	return x + x;
	add.w %d7,%d7	| step, step
.L22:
| voxel.c:221: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:222: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L79		|
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp178
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp242
	addq.l #8,%sp	|,
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp273, MEM[(unsigned char *)&opacity_table + _342 * 1]
| voxel.c:209: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:209: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.236
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
.L24:
| voxel.c:228: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_colors+512,%d4	|, ivtmp.212
	move.l #_height,%d7	|, ivtmp.214
	move.l #_combined,%d6	|, ivtmp.215
	lea _colors+262656,%a3	|, _233
	clr.b %d5	| max_height_lsm_flag.130
	clr.b %d3	| max_height_lsm.129
.L27:
	move.l %d4,%a0	| ivtmp.212, ivtmp.201
	lea (-512,%a0),%a0	|, ivtmp.201
	move.l %d6,%a2	| ivtmp.215, ivtmp.205
	move.l %d7,%a1	| ivtmp.214, ivtmp.203
.L26:
| voxel.c:231: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_53], _368
| voxel.c:231: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _365
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_169], _365
	lsl.w #8,%d0	|, tmp202
| voxel.c:231: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d2	| _368
	move.b %d1,%d2	| _368, _368
| voxel.c:231: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d2,%d0	| _368, _371
| voxel.c:232: 			if (height[y][x] > max_height)
	cmp.b %d3,%d1	| max_height_lsm.129, _368
	jls .L25		|
| voxel.c:233: 				max_height = height[y][x];
	move.b %d1,%d3	| _368, max_height_lsm.129
| voxel.c:232: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.130
.L25:
| voxel.c:231: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.w %d0,(%a2)+	| _371, MEM[(short unsigned int *)_55]
| voxel.c:230: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %a0,%d4	| ivtmp.201, ivtmp.212
	jne .L26		|
| voxel.c:229: 	for (int y=0; y<HEIGHT; y++) {
	move.l %a0,%d4	| ivtmp.201, ivtmp.212
	add.l #512,%d4	|, ivtmp.212
	add.l #512,%d7	|, ivtmp.214
	add.l #1024,%d6	|, ivtmp.215
	cmp.l %a3,%d4	| _233, ivtmp.212
	jne .L27		|
	tst.b %d5	| max_height_lsm_flag.130
	jeq .L28		|
	move.b %d3,_max_height	| max_height_lsm.129, max_height
.L28:
| voxel.c:237: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp204
	add.l #196,%d2	|, tmp204
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp204,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp204, %sfp
	lea _pdata_table,%a5	|, tmp244
	move.l %a5,124(%sp)	| tmp244, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:247: 	for (int y = 0; y < 8; y++) {
	sub.l %a6,%a6	| y
.L29:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_114], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_114 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_114 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_114 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_114 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_114 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_114 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_114 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,52(%sp)	|, %sfp
| voxel.c:248: 		for (int opacity = 0; opacity < 8; opacity++) {
	clr.l 68(%sp)	| %sfp
.L53:
	move.l 68(%sp),%d6	| %sfp, opacity
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	addq.l #1,68(%sp)	|, %sfp
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d7		| tmp236
	ext.w %d7	| tmp237
	ext.l %d7	| tmp235
	neg.l %d7	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L45		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #2,%d0	|,
	or.l %d0,%d7	|, mask
.L45:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L46		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d7	|, mask
.L46:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 92(%sp),%d1	| %sfp,
	jle .L47		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #8,%d0	|,
	or.l %d0,%d7	|, mask
.L47:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 96(%sp),%d1	| %sfp,
	jle .L48		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d7	|, mask
.L48:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 100(%sp),%d1	| %sfp,
	jle .L49		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #32,%d0	|,
	or.l %d0,%d7	|, mask
.L49:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L50		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d7	|, mask
.L50:
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 108(%sp),%d1	| %sfp,
	jle .L51		|
| voxel.c:253: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #127,%d0	|,
	not.b %d0	|
	or.l %d0,%d7	|, mask
.L51:
| voxel.c:257: 					int bits = mask & evn;
	move.l %d7,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:260: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:261: 						| ((color1&2) ? bits << 16 : 0)
	move.l 48(%sp),%d0	| %sfp,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,60(%sp)	|, %sfp
| voxel.c:262: 						| ((color1&4) ? bits <<  8 : 0)
	move.l 48(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,64(%sp)	|, %sfp
| voxel.c:264: 					bits = mask & odd;
	and.l #1431655765,%d7	|, bits
| voxel.c:266: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d7,%d0	| bits,
	lsl.w #8,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, iftmp.19_166
| voxel.c:267: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d7,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.20_167
| voxel.c:268: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d7,%d0	| bits,
	lsl.l #8,%d0	|,
	move.l %d0,%a1	|, iftmp.21_168
	move.l 72(%sp),%a4	| %sfp, ivtmp.178
| voxel.c:255: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
	lsl.l #8,%d6	|, tmp243
.L43:
	btst #1,%d4	|, color1
	jeq .L30		|
	move.l 60(%sp),%d5	| %sfp, iftmp.16_162
.L31:
	btst #0,%d4	|, color1
	jeq .L32		|
	move.l 56(%sp),%d0	| %sfp, iftmp.15_161
.L33:
	or.l %d0,%d5	| iftmp.15_161, tmp214
	btst #2,%d4	|, color1
	jeq .L34		|
	move.l 64(%sp),%d0	| %sfp, iftmp.17_163
.L35:
	or.l %d0,%d5	| iftmp.17_163, tmp218
	btst #3,%d4	|, color1
	jeq .L36		|
	move.l 48(%sp),%d0	| %sfp, bits
	or.l %d0,%d5	| bits, _312
	move.l %d4,%d2	| color1, ivtmp.171
	neg.l %d2	| ivtmp.171
| voxel.c:263: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.178, ivtmp.172
	move.l %d7,44(%sp)	| bits, %sfp
.L42:
	move.l %d4,%d3	| color1, _387
	add.l %d2,%d3	| ivtmp.171, _387
| voxel.c:258: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp222
	and.l %d2,%d0	| ivtmp.171, tmp222
| voxel.c:258: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp223
| voxel.c:258: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:266: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _387
	jeq .L57		|
	move.l %a3,%d1	| iftmp.19_166, prephitmp_263
	or.l %d5,%d1	| _312, prephitmp_263
.L38:
| voxel.c:267: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _387
	jeq .L39		|
	move.l %a2,%d7	| iftmp.20_167,
	or.l %d7,%d1	|, prephitmp_263
.L39:
| voxel.c:268: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _387
	jeq .L40		|
	move.l %a1,%d7	| iftmp.21_168,
	or.l %d7,%d1	|, prephitmp_263
.L40:
| voxel.c:269: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _387
	jeq .L41		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_263
.L41:
| voxel.c:265: 					pdata_table[opacity][index][y] |= 0
	add.l %d6,%d0	| tmp243, tmp230
	lsl.l #3,%d0	|, tmp231
	add.l %a6,%d0	| y, tmp232
	add.l %d0,%d0	| tmp232, tmp233
	add.l %d0,%d0	| tmp233, tmp234
	move.l %d1,(%a5,%d0.l)	| prephitmp_263, pdata_table[opacity_276][index_271][y_219]
| voxel.c:271: 					pdata_table[opacity][index2][y] = pdata_table[opacity][index][y];
	move.l %d1,(%a0)	| prephitmp_263, MEM[(unsigned int *)_70]
| voxel.c:256: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.171
	lea (-480,%a0),%a0	|, ivtmp.172
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.171,
	jne .L42		|
| voxel.c:255: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:255: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (512,%a4),%a4	|, ivtmp.178
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L43		|
| voxel.c:248: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,52(%sp)	|, %sfp
	add.l #8192,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l 68(%sp),%d7	| %sfp,
	jne .L53		|
| voxel.c:247: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a6	|, y
| voxel.c:247: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d1	|,
	add.l %d1,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a6,%d7	| y,
	jne .L29		|
| voxel.c:280: 	short top_envelope[20] = {
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
| voxel.c:286: 	short bottom_envelope[20] = {
	move.l #589831,156(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #393221,160(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #327685,164(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #393223,168(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	move.l #524296,172(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	move.l #524296,176(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	move.l #524294,180(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	move.l #262146,184(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	moveq #1,%d1	|,
	move.l %d1,188(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	move.l #65537,192(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (116,%sp),%a0	|,, ivtmp.153
	lea _view_min+80,%a6	|, ivtmp.156
	lea _view_min,%a1	|, tmp245
	move.l %a1,%a5	| tmp245, ivtmp.158
	lea (156,%sp),%a4	|,, ivtmp.160
	lea _view_max+80,%a3	|, ivtmp.163
	lea _view_max,%a2	|, ivtmp.165
	moveq #40,%d1	|, _310
	add.l %a0,%d1	| ivtmp.153, _310
.L54:
| voxel.c:294: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_191], _57
| voxel.c:294: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _57, MEM[(short int *)_305]
| voxel.c:294: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _57, MEM[(short int *)_306]
| voxel.c:295: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w #140,%d0	|, _62
	sub.w (%a4)+,%d0	| MEM[(short int *)_307], _62
| voxel.c:295: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _62, MEM[(short int *)_308]
| voxel.c:295: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _62, MEM[(short int *)_309]
| voxel.c:293: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.153, _310
	jne .L54		|
	lea _horizon,%a0	|, ivtmp.146
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L55:
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp240
	asr.l #3,%d0	|, tmp240
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp240, tmp241
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_63],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_361]
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L55		|
| voxel.c:298: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L79:
| voxel.c:222: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp178
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp242
	addq.l #8,%sp	|,
| voxel.c:224: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp273, MEM[(unsigned char *)&opacity_table + _342 * 1]
| voxel.c:209: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:209: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.236
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
	jra .L24		|
.L57:
| voxel.c:266: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _312, prephitmp_263
	jra .L38		|
.L36:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _312
	move.l %d4,%d2	| color1, ivtmp.171
	neg.l %d2	| ivtmp.171
| voxel.c:263: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.178, ivtmp.172
	move.l %d7,44(%sp)	| bits, %sfp
	jra .L42		|
.L34:
	moveq #0,%d0	| iftmp.17_163
	jra .L35		|
.L32:
	moveq #0,%d0	| iftmp.15_161
	jra .L33		|
.L30:
	moveq #0,%d5	| iftmp.16_162
	jra .L31		|
	.even
	.globl	_render
_render:
	subq.l #8,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 56(%sp),%a0	| pos, pos
	move.l 68(%sp),%d4	| x, x
	move.l 76(%sp),%d1	| y_max, y_max
	move.w 74(%sp),%a5	| y_offset, y_offset
	move.w %d1,%d0	| y_max, y_max
	move.w 82(%sp),%d6	| y_min, y_min
| voxel.c:338: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:342: 	short (*y_table_with_offset)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, _3
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d5	| pos_87(D)->dirx, _9
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d4,%d2	|, _13
	add.w #-160,%d2	|, _13
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d7	| pos_87(D)->diry, _15
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d3	| _13,
	muls.w %d5,%d3	| _9, tmp152
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d3	|, tmp153
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d7,%d3	| _15, tmp154
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp156
	clr.w %d3	| tmp156
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d7,%d2	| _15, tmp157
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp158
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d5	| tmp158, tmp159
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d5,%d3	| tmp159, tmp161
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, delta_vu
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_87(D)->y
	move.w 2(%a0),%d2	| pos_87(D)->y, pos_87(D)->y
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp163
	clr.w %d2	| tmp163
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_87(D)->x, tmp165
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp166
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp167
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp168
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp169
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp170
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp171
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp172
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp173
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d4,%d5	|, tmp174
	asr.w #4,%d5	|, tmp174
	move.w %d5,%a0	| tmp174, tmp175
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp175, tmp176
	add.l %a0,%a0	| tmp176, tmp177
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d5	|,
	muls.w #80,%d5	|, tmp178
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| tmp178, tmp180
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %a0,%d5	| tmp180, tmp181
	add.l %a0,%d5	| tmp180, tmp181
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d4	|, tmp183
	moveq #1,%d7	|,
	and.l %d7,%d4	|, tmp184
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| tmp181, tmp185
	add.l %d4,%a0	| tmp184, tmp185
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	cmp.w %d1,%d6	| y_max, y_min
	jgt .L80		|
	moveq #0,%d1	| _182
	move.b _max_height,%d1	| max_height, _182
	move.l %d1,%d4	| _182, tmp186
	add.l #2048,%d4	|, tmp186
	add.l %d4,%a1	| tmp186, tmp187
	add.l %a1,%a1	| tmp187, tmp188
	add.l #_y_table,%a1	|, ivtmp.264
	neg.l %d1	| _182
	move.l %d1,%a4	| _182, tmp190
	add.l %d1,%a4	| tmp190, tmp191
| voxel.c:362: 	int z = STEPS_MIN;
	moveq #4,%d7	|, z
| voxel.c:358: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d5	|, index_mask
| voxel.c:373: 		unsigned short height_color = *((unsigned short*)((char*)combined + index));
	lea _combined,%a6	|, tmp224
	move.l %a0,44(%sp)	| pBlock, %sfp
	move.l %d7,%a0	| z, z
	move.w %d6,%a3	| y_min, y_min
.L92:
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	lea (%a1,%a4.l),%a2	| ivtmp.264, tmp191, _224
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w #99,%d0	|, y_max
	jgt .L82		|
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w (%a1),%d0	| MEM[(short int *)_174], y_max
	jle .L80		|
.L82:
| voxel.c:315: 	asm (
#APP
| 315 "voxel.c" 1
	move.l %d2, %d4	| sample_vu, tmp
	lsr.l #6, %d4	| tmp
	move.l %d4, %d1	| tmp, result
	and.l #0x0003fe, %d4	| tmp
	lsr.l #7, %d1	| result
	and.l #0x07fc00, %d1	| result
	or.l %d4,%d1	| tmp, result
| 0 "" 2
| voxel.c:372: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d5,%d1	| index_mask, index
| voxel.c:373: 		unsigned short height_color = *((unsigned short*)((char*)combined + index));
	move.w (%a6,%d1.l),%d1	| *_39, height_color
| voxel.c:375: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	moveq #0,%d4	| tmp197
	move.b %d1,%d4	| height_color, tmp197
	add.l %d4,%d4	| tmp197, tmp198
| voxel.c:375: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	move.w (%a2,%d4.l),%a2	| (*_224)[_43], sample_y
	add.w %a5,%a2	| y_offset, sample_y
| voxel.c:415: 		z++;
	move.l %a0,%d4	| z, _219
	addq.l #1,%d4	|, _219
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp199
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d6	|, _221
	and.l %d4,%d6	| _219, _221
| voxel.c:376: 		if (sample_y <= y) {
	cmp.w %a2,%d0	| sample_y, y_max
	jlt .L83		|
| voxel.c:378: 			if (z < FOG_START) {
	moveq #39,%d7	|,
	cmp.l %a0,%d7	| z,
	jcs .L84		|
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp201
	and.l #65535,%d1	|, tmp202
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	add.l #1792,%d1	|, tmp203
	lsl.l #5,%d1	|, tmp204
	lea _pdata_table,%a0	|,
	move.l (%a0,%d1.l),48(%sp)	| pdata_table[7][_49][0], %sfp
| voxel.c:385: 				if (sample_y < y_min) sample_y = y_min;
	move.w %a3,%d1	| y_min, _81
	move.w %a2,%d7	| sample_y,
	cmp.w %a3,%d7	| y_min,
	jle .L85		|
	move.w %a2,%d1	| sample_y, _81
.L85:
| voxel.c:386: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| _81, y_max
	jlt .L109		|
	move.l 44(%sp),%a0	| %sfp, pBlock
	move.l 48(%sp),%d7	| %sfp, movep_data
.L87:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d7, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:388: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y_max
| voxel.c:386: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| _81, y_max
	jge .L87		|
	move.l %a0,44(%sp)	| pBlock, %sfp
.L109:
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	tst.l %d6	| _221
	jeq .L93		|
.L94:
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	lea (1024,%a1),%a1	|, ivtmp.264
	cmp.w %a3,%d0	| y_min, y_max
	jlt .L80		|
	move.l %d4,%a0	| _219, z
	jra .L92		|
.L84:
| voxel.c:385: 				if (sample_y < y_min) sample_y = y_min;
	move.w %a3,48(%sp)	| y_min, %sfp
	move.w %a2,%d7	| sample_y,
	cmp.w %a3,%d7	| y_min,
	jle .L89		|
	move.w %a2,48(%sp)	| sample_y, %sfp
.L89:
	lea _opacity_table-1,%a0	|,
	moveq #0,%d7	|
	move.b (%a0,%d4.l),%d7	| MEM[(unsigned char *)&opacity_table + 4294967295B + _187 * 1],
	lsl.l #8,%d7	|,
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp208
	and.l #65535,%d1	|, tmp209
	add.l %d7,%d1	| tmp207, tmp210
	lsl.l #5,%d1	|, _63
| voxel.c:404: 				while (y >= sample_y) {
	cmp.w 48(%sp),%d0	| %sfp, y_max
	jlt .L83		|
	move.l %d1,%a2	| _63, tmp223
	add.l #_pdata_table,%a2	|, tmp223
	move.l 44(%sp),%a0	| %sfp, pBlock
	move.w 48(%sp),%d7	| %sfp, _212
.L90:
| voxel.c:405: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp212
	and.l %d0,%d1	| y_max, tmp212
	add.l %d1,%d1	| tmp212, tmp213
	add.l %d1,%d1	| tmp213, tmp214
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d1.l),%d1	| *_57, *_57
#APP
| 307 "voxel.c" 1
	movep.l %d1, 0(%a0)	| *_57, pBlock
| 0 "" 2
| voxel.c:407: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y_max
| voxel.c:404: 				while (y >= sample_y) {
	cmp.w %d0,%d7	| y_max, _212
	jle .L90		|
	move.l %a0,44(%sp)	| pBlock, %sfp
.L83:
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	tst.l %d6	| _221
	jne .L91		|
.L93:
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| delta_vu, tmp219
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, delta_vu
| voxel.c:422: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp220
| voxel.c:422: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L91:
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	moveq #64,%d1	|,
	cmp.l %d4,%d1	| _219,
	jne .L94		|
.L80:
| voxel.c:428: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:432: 	unsigned int movep_data = pdata_table[7][color][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:432: 	unsigned int movep_data = pdata_table[7][color][0];
	add.l #1792,%d0	|, tmp71
	lsl.l #5,%d0	|, tmp72
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[7][_1][0], movep_data
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L112		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp73
	add.l %a0,%d0	| pBlock, _31
.L114:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:435: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L114		|
.L112:
| voxel.c:437: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp81
	add.l %d2,%d2	| _2, tmp82
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	addq.w #1,%a0	|, tmp62
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:432: 	unsigned int movep_data = pdata_table[7][color][0];
	move.l _pdata_table+57344,%d4	| pdata_table[7][0][0], movep_data
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L119		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp77
	add.l %a0,%d0	| pBlock, _35
.L120:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:435: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L120		|
.L119:
| voxel.c:442: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:443: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC1:
	.ascii "Tables computed.\0"
.LC2:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-104,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:457: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:459: 	Super(0L);
	moveq #0,%d0	| tmp309
#APP
| 459 "voxel.c" 1
	movl	%d0,%sp@-	| tmp309
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:461: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:463: 	lineaa();
	jsr _lineaa		|
| voxel.c:464: 	build_tables();
	jsr _build_tables		|
| voxel.c:465: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:466:         set_palette();
	jsr _set_palette		|
| voxel.c:467: 	unsigned short *screen = Physbase();
#APP
| 467 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,80(%sp)	| tmp530, %sfp
| voxel.c:468: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp530,
	jsr _draw_image2		|
	move.l 88(%sp),%a0	| %sfp, ivtmp.390
	move.l %a0,%d0	| ivtmp.390, _857
	add.l #32000,%d0	|, _857
	lea (12,%sp),%sp	|,
.L125:
| voxel.c:124: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.305_954]
	cmp.l %d0,%a0	| _857, ivtmp.390
	jne .L125		|
| voxel.c:432: 	unsigned int movep_data = pdata_table[7][color][0];
	move.l _pdata_table+57376,%d1	| pdata_table[7][1][0], movep_data
	lea _view_min,%a1	|, ivtmp.381
	lea _view_max,%a2	|, ivtmp.384
	move.l #_view_min+80,%d3	|, _863
	clr.w %d2	| ivtmp.382
.L130:
| voxel.c:471: 		fill_column(screen, i*8, 0, view_min[i], 1);
	move.w (%a1)+,%d4	| MEM[(short int *)_865], _1
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d5	| ivtmp.382, tmp318
	asr.w #4,%d5	|, tmp318
	ext.l %d5	| tmp319
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp319, tmp320
	add.l %d5,%d5	| tmp320, _163
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%d0	|, tmp323
	lsr.l #3,%d0	|, tmp323
	moveq #1,%d6	|,
	and.l %d6,%d0	|, _168
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _163, tmp324
	add.l %d5,%a0	| _163, tmp324
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%a0	| _168, tmp325
	add.l 76(%sp),%a0	| %sfp, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _1
	jle .L126		|
	mulu.w #160,%d4	|, tmp326
	add.l %a0,%d4	| pBlock, _874
.L127:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:435: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d4	| pBlock, _874
	jne .L127		|
.L126:
| voxel.c:472: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w (%a2)+,%a0	| MEM[(short int *)_862], _5
| voxel.c:472: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w #199,%d4	|, _7
	sub.w %a0,%d4	| _5, _7
| voxel.c:472: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	addq.w #1,%a0	|, tmp328
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp328,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp329
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _163, tmp331
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp331, tmp332
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d0	| tmp332, tmp333
	move.l 76(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp333, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d4	| _7
	jle .L128		|
	move.w %d4,%d0	| _7,
	mulu.w #160,%d0	|, tmp334
	add.l %a0,%d0	| pBlock, _137
.L129:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:435: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d0,%a0	| _137, pBlock
	jne .L129		|
.L128:
| voxel.c:470: 	for (int i=0; i<40; i++) {
	addq.w #8,%d2	|, ivtmp.382
	cmp.l %d3,%a1	| _863, ivtmp.381
	jne .L130		|
| voxel.c:474: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,144(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:92: 	return *hw_palette;
	move.l _hw_palette,132(%sp)	| hw_palette, %sfp
| voxel.c:487: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,124(%sp)	| __aline, %sfp
| voxel.c:432: 	unsigned int movep_data = pdata_table[7][color][0];
	move.l #57344,%d0	|, tmp338
	lea _pdata_table,%a0	|,
	move.l (%a0,%d0.l),96(%sp)	| pdata_table[7][0][0], %sfp
| voxel.c:480: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,112(%sp)	| pos.y, %sfp
| voxel.c:480: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a1	|,
	move.w (%a1),102(%sp)	| pos.x, %sfp
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,74(%sp)	| pos.dirx, %sfp
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:498: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,108(%sp)	| pos.speed, %sfp
	moveq #0,%d0	| _897
	move.b _max_height,%d0	| max_height, _897
	move.l %d0,%a0	| _897,
	lea (2048,%a0),%a0	|,
	move.l %a0,136(%sp)	|, %sfp
	neg.l %d0	| tmp345
	move.l %d0,%a5	| tmp345, tmp346
	add.l %d0,%a5	| tmp345, tmp346
	clr.w 114(%sp)	| %sfp
| voxel.c:475: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,104(%sp)	|, %sfp
	lea _combined,%a4	|, tmp517
	moveq #0,%d4	| val.10_178
	move.w 102(%sp),%d4	| %sfp, val.10_178
| voxel.c:398: 				unsigned char opacity = opacity_table[z];
	move.l %a5,140(%sp)	| tmp346, %sfp
.L152:
| voxel.c:92: 	return *hw_palette;
	move.l 132(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| *hw_palette.44_182, _183
| voxel.c:132: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 112(%sp),%d0	| %sfp, tmp349
	lsr.w #7,%d0	|, tmp349
| voxel.c:480: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp350
| voxel.c:132: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 102(%sp),%d1	| %sfp, tmp351
	lsr.w #7,%d1	|, tmp351
| voxel.c:480: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp352
| voxel.c:480: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp353
	add.l %d1,%d0	| tmp352, tmp354
	add.l %d0,%d0	| tmp354, tmp355
| voxel.c:481: 		int player_altitude = height_under_player + 20;
	move.b 1(%a4,%d0.l),%d0	| combined[_12][_14], tmp357
	and.l #255,%d0	|, tmp357
	moveq #20,%d6	|,
	add.l %d6,%d0	|, player_altitude
| voxel.c:483: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 104(%sp),%d1	| %sfp, tmp359
	addq.l #2,%d1	|, tmp359
| voxel.c:483: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp359
	jle .L131		|
	moveq #0,%d1	|, tmp359
	not.b %d1	| tmp359
.L131:
	cmp.l %d0,%d1	| player_altitude, tmp359
	jge .L132		|
	move.l %d1,%d0	| tmp359, player_altitude
.L132:
| voxel.c:484: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 104(%sp),%d1	| %sfp, tmp360
	subq.l #2,%d1	|, tmp360
| voxel.c:484: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,104(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp360
	jle .L133		|
	move.l %d1,104(%sp)	| tmp360, %sfp
.L133:
| voxel.c:488: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 114(%sp),%d0	| %sfp, _21
	and.w #8,%d0	|, _21
| voxel.c:488: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _21
	move.w %d0,54(%sp)	| _21, %sfp
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 124(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.38_18 + 4294966696B],
	move.l %a0,116(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp361
	add.l %a0,%d0	|, tmp361
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp361
	move.l %d0,80(%sp)	| tmp361, %sfp
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 124(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.38_18 + 4294966694B],
	move.l %a1,120(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp362
	add.l #-160,%d0	|, tmp362
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _27
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 112(%sp),%d1	| %sfp,
	swap %d1	| tmp364
	clr.w %d1	| tmp364
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.10_178, tmp366
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp366
	move.l %d1,84(%sp)	| tmp366, %sfp
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 72(%sp),%a0	| %sfp,
	move.l %a0,128(%sp)	|, %sfp
	move.l %d0,%d1	| _27,
	lsl.l #4,%d1	|,
	move.l %d1,88(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 54(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _27,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp531, %sfp
	add.l %d2,%d2	| x, tmp373
	add.l #_horizon,%d2	|, tmp373
	move.l %d2,56(%sp)	| tmp373, %sfp
| voxel.c:338: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 106(%sp),%a0	| %sfp, ytable_offset
	move.w %a0,%d0	| ytable_offset,
	ext.l %d0	|
	move.l 136(%sp),%a1	| %sfp,
	lea (%a1,%d0.l),%a0	|, tmp376
	add.l %a0,%a0	| tmp376, tmp377
	add.l #_y_table,%a0	|, tmp377
	move.l %a0,92(%sp)	| tmp377, %sfp
	move.l 140(%sp),%a5	| %sfp, tmp346
.L149:
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:490: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 80(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp532, y_offset
| voxel.c:494: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 54(%sp),%d0	| %sfp, tmp383
	lsr.w #3,%d0	|, tmp383
	and.l #65535,%d0	|, _33
| voxel.c:494: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _33, tmp385
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),%d6	| view_min[_33], _34
| voxel.c:494: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	lea _view_max,%a1	|,
	move.w (%a1,%d0.l),%d0	| view_max[_33], y
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 54(%sp),%d1	| %sfp, _271
	add.w #-160,%d1	|, _271
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 74(%sp),%d3	| %sfp,
	muls.w %d1,%d3	| _271, tmp388
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d3	|, tmp389
| voxel.c:346: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 72(%sp),%d3	| %sfp, tmp390
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp392
	clr.w %d3	| tmp392
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 72(%sp),%d1	| %sfp, tmp393
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp394
| voxel.c:347: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 74(%sp),%d2	| %sfp, tmp395
	sub.w %d1,%d2	| tmp394, tmp395
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d3	| tmp395, tmp397
| voxel.c:144: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, delta_vu
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	move.l 84(%sp),%d2	| %sfp, tmp398
	add.l %d3,%d2	| delta_vu, tmp398
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp399
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp400
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp401
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp402
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp403
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp404
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d1	| %sfp, tmp405
	asr.w #4,%d1	|, tmp405
	ext.l %d1	| tmp406
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp406, tmp407
	add.l %d1,%d1	| tmp407, tmp407
	move.l %d1,64(%sp)	| tmp407, %sfp
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp410
	moveq #1,%d4	|,
	and.l %d1,%d4	| tmp410,
	move.l %d4,68(%sp)	|, %sfp
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	| y,
	muls.w #80,%d1	|, tmp411
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d1	| %sfp, tmp413
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp413, tmp414
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp414, tmp415
	add.l %d4,%a0	|, tmp415
	add.l 76(%sp),%a0	| %sfp, pBlock
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	cmp.w %d6,%d0	| _34, y
	jlt .L136		|
	move.l 92(%sp),%a1	| %sfp, ivtmp.339
| voxel.c:358: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d5	|, index_mask
| voxel.c:362: 	int z = STEPS_MIN;
	moveq #4,%d7	|, z
	move.w %d6,%a3	| _34, _34
	move.l %a0,44(%sp)	| pBlock, %sfp
	move.l %d7,%a0	| z, z
.L146:
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	lea (%a1,%a5.l),%a2	| ivtmp.339, tmp346, _994
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w #99,%d0	|, y
	jgt .L135		|
| voxel.c:368: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_with_offset[z][max_height]) {
	cmp.w (%a1),%d0	| MEM[(short int *)_915], y
	jle .L136		|
.L135:
| voxel.c:315: 	asm (
#APP
| 315 "voxel.c" 1
	move.l %d2, %d4	| sample_vu, tmp
	lsr.l #6, %d4	| tmp
	move.l %d4, %d1	| tmp, result
	and.l #0x0003fe, %d4	| tmp
	lsr.l #7, %d1	| result
	and.l #0x07fc00, %d1	| result
	or.l %d4,%d1	| tmp, result
| 0 "" 2
| voxel.c:372: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d5,%d1	| index_mask, index
| voxel.c:373: 		unsigned short height_color = *((unsigned short*)((char*)combined + index));
	move.w (%a4,%d1.l),%d1	| *_321, height_color
| voxel.c:375: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	moveq #0,%d4	| tmp421
	move.b %d1,%d4	| height_color, tmp421
	add.l %d4,%d4	| tmp421, tmp422
| voxel.c:375: 		short sample_y = y_table_with_offset[z][h] + y_offset;
	move.w %a6,%d6	|,
	add.w (%a2,%d4.l),%d6	| (*_994)[_327],
	move.w %d6,%a2	|, sample_y
| voxel.c:415: 		z++;
	move.l %a0,%d4	| z, _988
	addq.l #1,%d4	|, _988
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d6	|, _989
	and.l %d4,%d6	| _988, _989
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| delta_vu, tmp423
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:376: 		if (sample_y <= y) {
	cmp.w %a2,%d0	| sample_y, y
	jlt .L137		|
| voxel.c:378: 			if (z < FOG_START) {
	moveq #39,%d7	|,
	cmp.l %a0,%d7	| z,
	jcs .L138		|
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp425
	and.l #65535,%d1	|, tmp426
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	add.l #1792,%d1	|, tmp427
	lsl.l #5,%d1	|, tmp428
	lea _pdata_table,%a0	|,
	move.l (%a0,%d1.l),48(%sp)	| pdata_table[7][_334][0], %sfp
| voxel.c:385: 				if (sample_y < y_min) sample_y = y_min;
	move.w %a3,%d1	| _34, _336
	move.w %a2,%d7	| sample_y,
	cmp.w %a3,%d7	| _34,
	jle .L139		|
	move.w %a2,%d1	| sample_y, _336
.L139:
| voxel.c:386: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| _336, y
	jlt .L181		|
	move.l 48(%sp),%d7	| %sfp, movep_data
	move.l 44(%sp),%a0	| %sfp, pBlock
.L141:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d7, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:388: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:389: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:386: 				while (y >= sample_y) {
	cmp.w %d1,%d0	| _336, y
	jge .L141		|
	move.l %a0,44(%sp)	| pBlock, %sfp
.L181:
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	tst.l %d6	| _989
	jeq .L155		|
.L156:
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	lea (1024,%a1),%a1	|, ivtmp.339
	cmp.w %a3,%d0	| _34, y
	jlt .L136		|
	move.l %d4,%a0	| _988, z
	jra .L146		|
.L138:
| voxel.c:385: 				if (sample_y < y_min) sample_y = y_min;
	move.w %a3,48(%sp)	| _34, %sfp
	move.w %a2,%d7	| sample_y,
	cmp.w %a3,%d7	| _34,
	jle .L143		|
	move.w %a2,48(%sp)	| sample_y, %sfp
.L143:
	lea _opacity_table-1,%a0	|,
	moveq #0,%d7	|
	move.b (%a0,%d4.l),%d7	| MEM[(unsigned char *)&opacity_table + 4294967295B + _902 * 1],
	lsl.l #8,%d7	|,
| voxel.c:384: 				unsigned int movep_data = pdata_table[7][height_color >> 8][0];
	lsr.w #8,%d1	|, tmp432
	and.l #65535,%d1	|, tmp433
	add.l %d7,%d1	| tmp431, tmp434
	lsl.l #5,%d1	|, _243
| voxel.c:404: 				while (y >= sample_y) {
	cmp.w 48(%sp),%d0	| %sfp, y
	jlt .L137		|
	move.l %d1,%a2	| _243, tmp513
	add.l #_pdata_table,%a2	|, tmp513
	move.l 44(%sp),%a0	| %sfp, pBlock
	move.w 48(%sp),%d7	| %sfp, _985
.L144:
| voxel.c:405: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp436
	and.l %d0,%d1	| y, tmp436
	add.l %d1,%d1	| tmp436, tmp437
	add.l %d1,%d1	| tmp437, tmp438
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d1.l),%d1	| *_353, *_353
#APP
| 307 "voxel.c" 1
	movep.l %d1, 0(%a0)	| *_353, pBlock
| 0 "" 2
| voxel.c:407: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:408: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:404: 				while (y >= sample_y) {
	cmp.w %d0,%d7	| y, _985
	jle .L144		|
	move.l %a0,44(%sp)	| pBlock, %sfp
.L137:
| voxel.c:418: 		if (TRIGGERS_PROGRESSION(z)) {
	tst.l %d6	| _989
	jne .L145		|
.L155:
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d3	| delta_vu, tmp443
| voxel.c:148: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, delta_vu
| voxel.c:422: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d5,%d5	| index_mask, tmp444
| voxel.c:422: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d5	|, index_mask
.L145:
| voxel.c:363: 	while(z < STEPS_MAX && y >= y_min) {
	moveq #64,%d1	|,
	cmp.l %d4,%d1	| _988,
	jne .L156		|
.L136:
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.l 56(%sp),%a1	| %sfp,
	move.w (%a1),%a0	| MEM[(short int *)_958], _222
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d0,%d1	| y, _223
	sub.w %a0,%d1	| _222, _223
| voxel.c:441: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %a0,%d2	| _222, tmp445
	addq.w #1,%d2	|, tmp445
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp446
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d2	| %sfp, tmp448
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp448, tmp449
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp449, tmp450
	add.l 68(%sp),%a0	| %sfp, tmp450
	add.l 76(%sp),%a0	| %sfp, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _223
	jle .L147		|
	mulu.w #160,%d1	|, tmp451
	add.l %a0,%d1	| pBlock, _887
	move.l 96(%sp),%d2	| %sfp, movep_data
.L148:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:435: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:433: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _887
	jne .L148		|
.L147:
| voxel.c:442: 	horizon[x] = y;
	move.l 56(%sp),%a0	| %sfp,
	move.w %d0,(%a0)	| y, MEM[(short int *)_958]
| voxel.c:488: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,54(%sp)	|, %sfp
| voxel.c:488: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 88(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,56(%sp)	|, %sfp
	cmp.w #319,54(%sp)	|, %sfp
	jls .L149		|
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 108(%sp),%d0	| %sfp,
	muls.w 74(%sp),%d0	| %sfp, tmp453
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp454
| voxel.c:498: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,102(%sp)	| tmp454, %sfp
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 108(%sp),%d0	| %sfp,
	muls.w 72(%sp),%d0	| %sfp, tmp455
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp456
| voxel.c:499: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 112(%sp),%d0	| %sfp, _55
| voxel.c:498: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.10_178
	move.w 102(%sp),%d4	| %sfp, val.10_178
	move.w 102(%sp),%d1	| %sfp,
	swap %d1	| _55
	clr.w %d1	| _55
	move.w %d0,%d1	| _55, _55
| voxel.c:499: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,112(%sp)	| _55, %sfp
| voxel.c:501: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp462
	sub.l 116(%sp),%d0	| %sfp, tmp462
| voxel.c:501: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp463
| voxel.c:501: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 108(%sp),%d0	| %sfp, _62
| voxel.c:502: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _62, tmp464
	asr.w #3,%d2	|, tmp464
| voxel.c:502: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _62, tmp465
	asr.w #4,%d3	|, tmp465
| voxel.c:502: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d2	| tmp465, tmp466
| voxel.c:502: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, tmp467
| voxel.c:503: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _62
	jle .L150		|
| voxel.c:503: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| tmp467, _62
	move.w %d0,108(%sp)	| _62, %sfp
| voxel.c:498: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _55, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:503: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 108(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:505: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp470
	not.b %d2	| tmp470
	sub.l 120(%sp),%d2	| %sfp, tmp470
| voxel.c:505: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _78
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _78,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp473
| voxel.c:506: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 74(%sp),%d3	| %sfp, _82
	add.w %d0,%d3	| tmp473, _82
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _78,
	move.w %d3,%a1	| _82,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp477
| voxel.c:507: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 72(%sp),%d1	| %sfp, _86
	sub.w %d0,%d1	| tmp477, _86
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _82,
	muls.w %d3,%d0	| _82, tmp478
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp479
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _86,
	muls.w %d1,%d2	| _86, tmp481
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp482
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp482, tmp483
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp485
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp486
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp486, factor
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp487
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp488
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,74(%sp)	| tmp488, %sfp
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _86, tmp489
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp490
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,72(%sp)	| tmp490, %sfp
| voxel.c:514: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _193
	clr.w %d3	| _193
	move.w %d0,%d3	| tmp490, _193
	move.l %d3,_pos+6	| _193, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:476: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L152		|
.L184:
| voxel.c:521: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:522: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 144(%sp),%a0	| %sfp, tmp498
| voxel.c:522: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp498, tmp500
	add.l %a0,%d0	| tmp498, tmp500
	add.l %d0,%d0	| tmp500, tmp501
| voxel.c:523: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:524: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp535,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.46_138
	move.l 4(%a0),%d0	| stdin.46_138->__bufp, _136
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.46_138->__get_limit, _136
	jcc .L153		|
	addq.l #1,%d0	|, _136
	move.l %d0,4(%a0)	| _136, stdin.46_138->__bufp
| voxel.c:528: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (104,%sp),%sp	|,
	rts	
.L150:
| voxel.c:504: 		else pos.speed += drag;
	add.w %d2,%d0	| tmp467, _62
	move.w %d0,108(%sp)	| _62, %sfp
| voxel.c:498: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _55, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:503: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 108(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:505: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp470
	not.b %d2	| tmp470
	sub.l 120(%sp),%d2	| %sfp, tmp470
| voxel.c:505: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _78
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _78,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp473
| voxel.c:506: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 74(%sp),%d3	| %sfp, _82
	add.w %d0,%d3	| tmp473, _82
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _78,
	move.w %d3,%a1	| _82,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp477
| voxel.c:507: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 72(%sp),%d1	| %sfp, _86
	sub.w %d0,%d1	| tmp477, _86
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _82,
	muls.w %d3,%d0	| _82, tmp478
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp479
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _86,
	muls.w %d1,%d2	| _86, tmp481
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp482
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp482, tmp483
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp485
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp486
| voxel.c:513: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp486, factor
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp487
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp488
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,74(%sp)	| tmp488, %sfp
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _86, tmp489
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp490
| voxel.c:140: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,72(%sp)	| tmp490, %sfp
| voxel.c:514: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _193
	clr.w %d3	| _193
	move.w %d0,%d3	| tmp490, _193
	move.l %d3,_pos+6	| _193, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:476: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L152		|
	jra .L184		|
.L153:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.46_138,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:528: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (104,%sp),%sp	|,
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
