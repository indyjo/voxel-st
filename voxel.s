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
| voxel.c:115: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.92
.L3:
| voxel.c:120: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:121: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:122: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:122: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:122: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:122: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:122: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:122: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:122: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:122: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:122: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:122: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:122: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:122: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:122: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:122: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:122: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:122: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:123: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:124: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:124: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:124: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:124: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:124: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:124: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:124: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:124: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:124: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:124: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:124: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:124: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:124: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:124: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:124: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:124: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:125: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:132: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:126: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:126: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:126: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:126: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:126: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:126: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:126: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:126: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:126: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:126: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:126: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:127: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:117: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.92
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L3		|
| voxel.c:116: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L2		|
| voxel.c:135: }
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
| voxel.c:138: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.107_11]
	cmp.l %d0,%a0	| _3, out
	jne .L9		|
| voxel.c:139: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:147: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:151: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:155: }
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
	lea (-404,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.246
| voxel.c:223: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:222: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:221: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp235
	lea _opacity_table,%a5	|, tmp238
.L20:
| voxel.c:146: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _184
	lsr.w #7,%d0	|, _184
| voxel.c:225: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _184, _3
| voxel.c:227: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp185
| voxel.c:227: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp185,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _226
	add.w #60,%d2	|, _226
| voxel.c:227: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.246, ivtmp.235
	move.w #-17920,%a2	|, ivtmp.232
.L21:
| voxel.c:225: 			y_table[z][h] = 60 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.232,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:227: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _226,
	sub.w %d0,%d1	| tmp264,
	move.w %d1,(%a3)+	|, MEM[(short int *)_369]
| voxel.c:224: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.232
	cmp.w #17920,%a2	|, ivtmp.232
	jne .L21		|
| voxel.c:230: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:232: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp169
	and.l %d4,%d0	| z, tmp169
| voxel.c:232: 		if (TRIGGERS_PROGRESSION(z))
	jne .L22		|
| voxel.c:56: 	return x + x;
	add.w %d7,%d7	| step, step
.L22:
| voxel.c:235: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:236: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L79		|
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp173
	sub.l %a0,%d0	| rel_dist, tmp173
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp174
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp174,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _371 * 1]
| voxel.c:223: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:223: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.246
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
.L24:
| voxel.c:242: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_height+512,%d3	|, ivtmp.222
	move.l #_combined,%d6	|, ivtmp.224
	move.l #_colors,%d5	|, ivtmp.225
	clr.b %d4	| max_height_lsm_flag.139
	clr.b %d2	| max_height_lsm.138
.L27:
	move.l %d3,%a1	| ivtmp.222, ivtmp.209
	lea (-512,%a1),%a1	|, ivtmp.209
	move.l %d5,%a2	| ivtmp.225, ivtmp.212
	move.l %d6,%a0	| ivtmp.224, ivtmp.210
.L26:
| voxel.c:245: 			combined[y][x].height = height[y][x];
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_167], _358
| voxel.c:245: 			combined[y][x].height = height[y][x];
	move.b %d0,1(%a0)	| _358, MEM <unsigned char> [(union  *)_75 + 1B]
| voxel.c:246: 			combined[y][x].color = colors[y][x];
	move.b (%a2)+,%d1	| MEM[(unsigned char *)_315], _360
| voxel.c:247: 			if (height[y][x] > max_height)
	cmp.b %d2,%d0	| max_height_lsm.138, _358
	jls .L25		|
| voxel.c:248: 				max_height = height[y][x];
	move.b %d0,%d2	| _358, max_height_lsm.138
| voxel.c:247: 			if (height[y][x] > max_height)
	moveq #1,%d4	|, max_height_lsm_flag.139
.L25:
| voxel.c:246: 			combined[y][x].color = colors[y][x];
	move.b %d1,(%a0)	| _360, MEM <unsigned char> [(union  *)_75]
| voxel.c:244: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.210
	cmp.l %a1,%d3	| ivtmp.209, ivtmp.222
	jne .L26		|
| voxel.c:243: 	for (int y=0; y<HEIGHT; y++) {
	move.l %a1,%d3	| ivtmp.209, ivtmp.222
	add.l #512,%d3	|, ivtmp.222
	add.l #1024,%d6	|, ivtmp.224
	add.l #512,%d5	|, ivtmp.225
	cmp.l #_height+262144,%a1	|, ivtmp.209
	jne .L27		|
	tst.b %d4	| max_height_lsm_flag.139
	jeq .L28		|
	move.b %d2,_max_height	| max_height_lsm.138, max_height
.L28:
| voxel.c:252: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp197
	add.l #192,%d2	|, tmp197
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp197,
	jsr _memcpy		|
	move.l %d2,84(%sp)	| tmp197, %sfp
	lea _pdata_table,%a5	|, tmp236
	move.l %a5,120(%sp)	| tmp236, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:262: 	for (int y = 0; y < 8; y++) {
	sub.l %a6,%a6	| y
.L29:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 72(%sp),%a0	| %sfp,
	move.l (%a0),76(%sp)	| MEM[(int *)_110], %sfp
	move.l 4(%a0),80(%sp)	| MEM[(int *)_110 + 4B], %sfp
	move.l 8(%a0),84(%sp)	| MEM[(int *)_110 + 8B], %sfp
	move.l 12(%a0),88(%sp)	| MEM[(int *)_110 + 12B], %sfp
	move.l 16(%a0),92(%sp)	| MEM[(int *)_110 + 16B], %sfp
	move.l 20(%a0),96(%sp)	| MEM[(int *)_110 + 20B], %sfp
	move.l 24(%a0),100(%sp)	| MEM[(int *)_110 + 24B], %sfp
	move.l 28(%a0),104(%sp)	| MEM[(int *)_110 + 28B], %sfp
	move.l 108(%sp),68(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,52(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.188
.L53:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 76(%sp),%d1	| %sfp,
	sgt %d6		| tmp229
	ext.w %d6	| tmp230
	ext.l %d6	| tmp228
	neg.l %d6	| mask
	cmp.l 80(%sp),%d1	| %sfp,
	jle .L45		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #2,%d0	|,
	or.l %d0,%d6	|, mask
.L45:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 84(%sp),%d1	| %sfp,
	jle .L46		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d6	|, mask
.L46:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L47		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #8,%d0	|,
	or.l %d0,%d6	|, mask
.L47:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 92(%sp),%d1	| %sfp,
	jle .L48		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d6	|, mask
.L48:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 96(%sp),%d1	| %sfp,
	jle .L49		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #32,%d0	|,
	or.l %d0,%d6	|, mask
.L49:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 100(%sp),%d1	| %sfp,
	jle .L50		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d6	|, mask
.L50:
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 52(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L51		|
| voxel.c:268: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	moveq #127,%d0	|,
	not.b %d0	|
	or.l %d0,%d6	|, mask
.L51:
| voxel.c:272: 					int bits = mask & evn;
	move.l %d6,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:275: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:276: 						| ((color1&2) ? bits << 16 : 0)
	move.l 48(%sp),%d0	| %sfp,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,60(%sp)	|, %sfp
| voxel.c:277: 						| ((color1&4) ? bits <<  8 : 0)
	move.l 48(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,64(%sp)	|, %sfp
| voxel.c:279: 					bits = mask & odd;
	and.l #1431655765,%d6	|, bits
| voxel.c:281: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d6,%d0	| bits,
	lsl.w #8,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a2	|, iftmp.19_162
| voxel.c:282: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d6,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a1	|, iftmp.20_163
| voxel.c:283: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d6,%d7	| bits, iftmp.21_164
	lsl.l #8,%d7	|, iftmp.21_164
	move.l 68(%sp),%a3	| %sfp, ivtmp.187
| voxel.c:270: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
	move.l %d7,%d0	| iftmp.21_164, iftmp.21_164
	move.l %a2,%d7	| iftmp.19_162, iftmp.19_162
	move.l %d0,%a2	| iftmp.21_164, iftmp.21_164
.L43:
	btst #1,%d4	|, color1
	jeq .L30		|
	move.l 60(%sp),%d5	| %sfp, iftmp.16_158
.L31:
	btst #0,%d4	|, color1
	jeq .L32		|
	move.l 56(%sp),%d0	| %sfp, iftmp.15_157
.L33:
	or.l %d0,%d5	| iftmp.15_157, tmp207
	btst #2,%d4	|, color1
	jeq .L34		|
	move.l 64(%sp),%d0	| %sfp, iftmp.17_159
.L35:
	or.l %d0,%d5	| iftmp.17_159, tmp211
	btst #3,%d4	|, color1
	jeq .L36		|
	move.l 48(%sp),%d0	| %sfp, bits
	or.l %d0,%d5	| bits, _286
	move.l %d4,%d2	| color1, ivtmp.180
	neg.l %d2	| ivtmp.180
| voxel.c:278: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a3,%a0	| ivtmp.187, ivtmp.181
	move.l %d6,44(%sp)	| bits, %sfp
.L42:
	move.l %d4,%d3	| color1, _377
	add.l %d2,%d3	| ivtmp.180, _377
| voxel.c:273: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp215
	and.l %d2,%d0	| ivtmp.180, tmp215
| voxel.c:273: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp216
| voxel.c:273: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:281: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _377
	jeq .L57		|
	move.l %d7,%d1	| iftmp.19_162, prephitmp_70
	or.l %d5,%d1	| _286, prephitmp_70
.L38:
| voxel.c:282: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _377
	jeq .L39		|
	move.l %a1,%d6	| iftmp.20_163,
	or.l %d6,%d1	|, prephitmp_70
.L39:
| voxel.c:283: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _377
	jeq .L40		|
	move.l %a2,%d6	| iftmp.21_164,
	or.l %d6,%d1	|, prephitmp_70
.L40:
| voxel.c:284: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _377
	jeq .L41		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_70
.L41:
| voxel.c:280: 					pdata_table[index][opacity][y] |= 0
	lsl.l #3,%d0	|, tmp222
	add.l %a4,%d0	| ivtmp.188, tmp223
	lsl.l #3,%d0	|, tmp224
	add.l %a6,%d0	| y, tmp225
	add.l %d0,%d0	| tmp225, tmp226
	add.l %d0,%d0	| tmp226, tmp227
	move.l %d1,(%a5,%d0.l)	| prephitmp_70, pdata_table[index_170][opacity_217][y_216]
| voxel.c:286: 					pdata_table[index2][opacity][y] = pdata_table[index][opacity][y];
	move.l %d1,(%a0)	| prephitmp_70, MEM[(unsigned int *)_231]
| voxel.c:271: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.180
	lea (-3840,%a0),%a0	|, ivtmp.181
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.180,
	jne .L42		|
| voxel.c:270: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d6	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:270: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.187
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L43		|
| voxel.c:263: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.188
	addq.l #8,52(%sp)	|, %sfp
	moveq #32,%d6	|,
	add.l %d6,68(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a4,%d0	| ivtmp.188,
	jne .L53		|
| voxel.c:262: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a6	|, y
| voxel.c:262: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d6	|,
	add.l %d6,72(%sp)	|, %sfp
	addq.l #4,108(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a6,%d0	| y,
	jne .L29		|
| voxel.c:295: 	short top_envelope[20] = {
	move.l #1048590,112(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,116(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,120(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,124(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,128(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,132(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,136(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655371,140(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #786444,144(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #786444,148(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:301: 	short bottom_envelope[20] = {
	move.l #589831,152(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #393221,156(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #327685,160(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #393223,164(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	move.l #524296,168(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	move.l #524296,172(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	move.l #524294,176(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	move.l #262146,180(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	moveq #1,%d1	|,
	move.l %d1,184(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	move.l #65537,188(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (112,%sp),%a0	|,, ivtmp.162
	lea _view_min+80,%a6	|, ivtmp.165
	lea _view_min,%a1	|, tmp237
	move.l %a1,%a5	| tmp237, ivtmp.167
	lea (152,%sp),%a4	|,, ivtmp.169
	lea _view_max+80,%a3	|, ivtmp.172
	lea _view_max,%a2	|, ivtmp.174
	moveq #40,%d1	|, _281
	add.l %a0,%d1	| ivtmp.162, _281
.L54:
| voxel.c:309: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_201], _53
| voxel.c:309: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _53, MEM[(short int *)_275]
| voxel.c:309: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _53, MEM[(short int *)_276]
| voxel.c:310: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w #140,%d0	|, _58
	sub.w (%a4)+,%d0	| MEM[(short int *)_277], _58
| voxel.c:310: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _58, MEM[(short int *)_327]
| voxel.c:310: 	        view_max[i] = view_max[39-i] = 140 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _58, MEM[(short int *)_279]
| voxel.c:308: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.162, _281
	jne .L54		|
	lea _horizon,%a0	|, ivtmp.155
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L55:
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp233
	asr.l #3,%d0	|, tmp233
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp233, tmp234
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_59],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_11]
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:312: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L55		|
| voxel.c:313: }
	movem.l (%sp)+,#31996	|,
	lea (404,%sp),%sp	|,
	rts	
.L79:
| voxel.c:236: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp173
	sub.l %a0,%d0	| rel_dist, tmp173
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp174
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp174,
	jsr (%a4)		| tmp235
	addq.l #8,%sp	|,
| voxel.c:238: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _371 * 1]
| voxel.c:223: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:223: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.246
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L20		|
	jra .L24		|
.L57:
| voxel.c:281: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _286, prephitmp_70
	jra .L38		|
.L36:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _286
	move.l %d4,%d2	| color1, ivtmp.180
	neg.l %d2	| ivtmp.180
| voxel.c:278: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a3,%a0	| ivtmp.187, ivtmp.181
	move.l %d6,44(%sp)	| bits, %sfp
	jra .L42		|
.L34:
	moveq #0,%d0	| iftmp.17_159
	jra .L35		|
.L32:
	moveq #0,%d0	| iftmp.15_157
	jra .L33		|
.L30:
	moveq #0,%d5	| iftmp.16_158
	jra .L31		|
	.even
	.globl	_render
_render:
	subq.l #8,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 56(%sp),%a0	| pos, pos
	move.l 68(%sp),%d1	| x, x
	move.l 76(%sp),%d0	| y_max, y_max
	move.l 80(%sp),48(%sp)	| y_min, %sfp
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_80(D)->dirx, _5
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d1,%d2	|, _9
	add.w #-160,%d2	|, _9
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d4	| pos_80(D)->diry, _11
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d5	| _9,
	muls.w %d3,%d5	| _5, tmp159
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d5	|, tmp160
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d4,%d5	| _11, tmp161
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp163
	clr.w %d5	| tmp163
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d4,%d2	| _11, tmp164
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp165
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp165, tmp166
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d5	| tmp166, tmp168
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_80(D)->y
	move.w 2(%a0),%d2	| pos_80(D)->y, pos_80(D)->y
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp170
	clr.w %d2	| tmp170
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_80(D)->x, tmp172
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp173
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp174
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp175
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp176
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp177
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp178
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp179
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp180
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d3	|, tmp181
	asr.w #4,%d3	|, tmp181
	move.w %d3,%a0	| tmp181, tmp182
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp182, tmp183
	add.l %a0,%a0	| tmp183, tmp184
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|,
	muls.w #80,%d3	|, tmp185
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%a0	| tmp185, tmp187
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp187, tmp187, tmp188
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp190
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp191
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d1.l),%a0	| tmp188, tmp191, tmp192
	add.l 60(%sp),%a0	| out, pBlock
| voxel.c:387: 	y_offset -= y_min;
	move.w 74(%sp),%a4	| y_offset, _28
	sub.w 50(%sp),%a4	| %sfp, _28
| voxel.c:389: 	short y = y_max - y_min;
	move.w %d0,%d1	|, y
	sub.w 50(%sp),%d1	| %sfp, y
| voxel.c:368: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 66(%sp),%a1	| player_height, ytable_offset
| voxel.c:393: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a1,%a1	| ytable_offset, ytable_offset
	add.l %a1,%a1	| ytable_offset, tmp195
| voxel.c:393: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a1	|, y_table_shifted
| voxel.c:399: 		if (y < 0) goto done;
	tst.w %d1	| y
	jlt .L80		|
	lea _opacity_table+4,%a3	|, ivtmp.281
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a6	|, max_height
	add.l %a6,%a6	| max_height, _72
| voxel.c:390: 	unsigned short z = STEPS_MIN;
	moveq #4,%d6	|, z
| voxel.c:384: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
| voxel.c:407: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	lea _combined,%a5	|, tmp242
.L82:
| voxel.c:401: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d1	|, y
	jgt .L83		|
| voxel.c:401: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w (%a1,%a6.l),%d1	| MEM[(short int *)y_table_shifted_177 + _72 * 1], y
	jle .L104		|
.L83:
| voxel.c:330: 	asm (
#APP
| 330 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d0	| sample_vu, result
	swap %d0	| result
	and.w %d3, %d0	| tmp, result
	lsl.l #3, %d0	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d0	| tmp, result
| 0 "" 2
| voxel.c:405: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d0	| index_mask, index
| voxel.c:407: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a5,%d0.l),%d4	| _36->both, _37
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d0	| _37
	move.b %d4,%d0	| _37, _37
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d0,%d0	| _37, tmp204
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a4,%d3	| _28, sample_y
	add.w (%a1,%d0.l),%d3	| (*y_table_shifted_177)[_38], sample_y
| voxel.c:462: 	return y + y_min;
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:409: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L84		|
| voxel.c:411: 			if (z < FOG_START) {
	cmp.w #39,%d6	|, z
	jhi .L85		|
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp205
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d4	|, tmp206
| voxel.c:355: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d4	|, tmp207
| voxel.c:355: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a2	|,
	move.l (%a2,%d4.l),%d4	| *_136, _137
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _20
	jlt .L105		|
.L86:
| voxel.c:419: 				while (y >= sample_y) {
	cmp.w %d3,%d1	| _20, y
	jlt .L87		|
	sub.w %d3,%d1	| _20, tmp209
	and.l #65535,%d1	|, tmp210
	addq.l #1,%d1	|, tmp211
	move.l %d1,%d0	| tmp211, tmp213
	add.l %d1,%d0	| tmp211, tmp213
	add.l %d0,%d0	| tmp213, tmp214
	add.l %d0,%d1	| tmp214, tmp215
	lsl.l #5,%d1	|, tmp216
	move.l %a0,%d0	| pBlock, _61
	sub.l %d1,%d0	| tmp216, _61
.L88:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _137, pBlock
| 0 "" 2
| voxel.c:421: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:419: 				while (y >= sample_y) {
	cmp.l %d0,%a0	| _61, pBlock
	jne .L88		|
	move.w %d3,%d0	| _20, prephitmp_191
	subq.w #1,%d0	|, prephitmp_191
	move.w %d0,%d1	| prephitmp_191, y
.L81:
.L87:
| voxel.c:448: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:449: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp234
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:452: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp235
	and.w #15,%d3	|, tmp235
	jne .L92		|
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L91:
| voxel.c:395: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d6	|, z
	jeq .L101		|
.L92:
| voxel.c:399: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.281
	cmp.w #-1,%d1	|, y
	jne .L82		|
.L101:
| voxel.c:462: 	return y + y_min;
	add.w 50(%sp),%d0	| %sfp, <retval>
.L80:
| voxel.c:463: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
.L105:
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _20
	jra .L86		|
.L85:
	move.w %d3,46(%sp)	| sample_y, %sfp
	jmi .L106		|
.L89:
| voxel.c:359: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d3	|
	move.b (%a3),%d3	| MEM[(unsigned char *)_70],
	move.w %d3,%a2	|, opacity_preshifted
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp219
| voxel.c:359: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d4,%a2	| tmp219, offset
| voxel.c:360: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d4	| _141
	move.w %a2,%d4	| offset, _141
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w 46(%sp),%d1	| %sfp, y
	jlt .L84		|
	move.l %d4,%a2	| _141, tmp237
	add.l #_pdata_table,%a2	|, tmp237
	move.w 46(%sp),%d3	| %sfp, _205
.L90:
| voxel.c:438: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|, tmp222
	and.l %d1,%d0	| y, tmp222
	add.l %d0,%d0	| tmp222, tmp223
	add.l %d0,%d0	| tmp223, tmp224
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a2,%d0.l),%d0	| *_47, *_47
#APP
| 322 "voxel.c" 1
	movep.l %d0, 0(%a0)	| *_47, pBlock
| 0 "" 2
| voxel.c:440: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:441: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	move.w %d1,%d0	| y, prephitmp_191
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d1,%d3	| y, _205
	jle .L90		|
.L84:
| voxel.c:448: 		z++;
	addq.w #1,%d6	|, z
| voxel.c:449: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp229
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:452: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d6,%d3	| z, tmp230
	and.w #15,%d3	|, tmp230
	jne .L91		|
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp231
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp232
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
	jra .L91		|
.L106:
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	clr.w 46(%sp)	| %sfp
	jra .L89		|
.L104:
| voxel.c:462: 	return y + y_min;
	move.w %d1,%d0	| y, <retval>
	add.w 50(%sp),%d0	| %sfp, <retval>
| voxel.c:463: }
	movem.l (%sp)+,#31996	|,
	addq.l #8,%sp	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:467: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:467: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L107		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L109:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:470: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L109		|
.L107:
| voxel.c:472: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	addq.w #1,%a0	|, tmp62
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:467: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d4	| pdata_table[0][7][0], movep_data
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L114		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L115:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:470: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L115		|
.L114:
| voxel.c:477: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:478: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC1:
	.ascii "Tables computed.\0"
.LC2:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-96,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:492: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:494: 	Super(0L);
	moveq #0,%d0	| tmp314
#APP
| 494 "voxel.c" 1
	movl	%d0,%sp@-	| tmp314
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:496: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:498: 	lineaa();
	jsr _lineaa		|
| voxel.c:499: 	build_tables();
	jsr _build_tables		|
| voxel.c:500: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:501:         set_palette();
	jsr _set_palette		|
| voxel.c:502: 	unsigned short *screen = Physbase();
#APP
| 502 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,80(%sp)	| tmp546, %sfp
| voxel.c:503: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp546,
	jsr _draw_image2		|
	move.l 88(%sp),%a0	| %sfp, ivtmp.412
	move.l %a0,%d0	| ivtmp.412, _838
	add.l #32000,%d0	|, _838
	lea (12,%sp),%sp	|,
.L120:
| voxel.c:138: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.321_914]
	cmp.l %d0,%a0	| _838, ivtmp.412
	jne .L120		|
| voxel.c:467: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+480,%d1	| pdata_table[1][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.403
	lea _view_max,%a2	|, ivtmp.406
	clr.w %d3	| ivtmp.404
.L125:
| voxel.c:506: 		fill_column(screen, i*8, 0, view_min[i], 1);
	move.w (%a1)+,%d2	| MEM[(short int *)_846], _1
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d4	| ivtmp.404, tmp322
	asr.w #4,%d4	|, tmp322
	ext.l %d4	| tmp323
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d4	| tmp323, tmp324
	add.l %d4,%d4	| tmp324, _162
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d0	|, tmp327
	lsr.l #3,%d0	|, tmp327
	moveq #1,%d5	|,
	and.l %d5,%d0	|, _167
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%a0	| _162, tmp328
	add.l %d4,%a0	| _162, tmp328
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%a0	| _167, tmp329
	add.l 76(%sp),%a0	| %sfp, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d2	| _1
	jle .L121		|
	mulu.w #160,%d2	|, tmp330
	add.l %a0,%d2	| pBlock, _119
.L122:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:470: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d2,%a0	| _119, pBlock
	jne .L122		|
.L121:
| voxel.c:507: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w (%a2)+,%a0	| MEM[(short int *)_843], _5
| voxel.c:507: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	move.w #199,%d2	|, _7
	sub.w %a0,%d2	| _5, _7
| voxel.c:507: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 1);
	addq.w #1,%a0	|, tmp332
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d5	| tmp332,
	muls.w #80,%d5	|,
	move.l %d5,%a0	|, tmp333
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _162, tmp335
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp335, tmp336
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d0	| tmp336, tmp337
	move.l 76(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp337, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d2	| _7
	jle .L123		|
	move.w %d2,%d0	| _7,
	mulu.w #160,%d0	|, tmp338
	add.l %a0,%d0	| pBlock, _908
.L124:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:470: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _908
	jne .L124		|
.L123:
| voxel.c:505: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.404
	cmp.l #_view_min+80,%a1	|, ivtmp.403
	jne .L125		|
| voxel.c:509: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,136(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:106: 	return *hw_palette;
	move.l _hw_palette,132(%sp)	| hw_palette, %sfp
| voxel.c:522: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,124(%sp)	| __aline, %sfp
| voxel.c:467: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,96(%sp)	| pdata_table[0][7][0], %sfp
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.w _pos+2,112(%sp)	| pos.y, %sfp
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	lea _pos,%a0	|,
	move.w (%a0),102(%sp)	| pos.x, %sfp
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,74(%sp)	| pos.dirx, %sfp
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:533: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,108(%sp)	| pos.speed, %sfp
	moveq #0,%d0	|
	move.b _max_height,%d0	| max_height,
	move.l %d0,%a5	|, max_height
	add.l %a5,%a5	| max_height, max_height
	move.l %a5,50(%sp)	| max_height, %sfp
	clr.w 114(%sp)	| %sfp
| voxel.c:510: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,104(%sp)	|, %sfp
	lea _combined,%a4	|, tmp527
	moveq #0,%d4	| val.10_177
	move.w 102(%sp),%d4	| %sfp, val.10_177
.L148:
| voxel.c:106: 	return *hw_palette;
	move.l 132(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| *hw_palette.49_181, _182
| voxel.c:146: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 112(%sp),%d0	| %sfp, tmp352
	lsr.w #7,%d0	|, tmp352
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d0	|, tmp353
| voxel.c:146: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 102(%sp),%d1	| %sfp, tmp354
	lsr.w #7,%d1	|, tmp354
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	and.l #65535,%d1	|, tmp355
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp356
	add.l %d1,%d0	| tmp355, tmp357
	add.l %d0,%d0	| tmp357, tmp358
| voxel.c:515: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)].height;
	move.b 1(%a4,%d0.l),%d0	| combined[_12][_14].D.2667.height, height_under_player
	and.l #255,%d0	|, height_under_player
| voxel.c:516: 		int player_altitude = height_under_player + 20;
	moveq #20,%d5	|,
	add.l %d5,%d0	|, player_altitude
| voxel.c:518: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 104(%sp),%d1	| %sfp, tmp363
	addq.l #2,%d1	|, tmp363
| voxel.c:518: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp363
	jle .L126		|
	moveq #0,%d1	|, tmp363
	not.b %d1	| tmp363
.L126:
	cmp.l %d0,%d1	| player_altitude, tmp363
	jge .L127		|
	move.l %d1,%d0	| tmp363, player_altitude
.L127:
| voxel.c:519: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 104(%sp),%d1	| %sfp, tmp364
	subq.l #2,%d1	|, tmp364
| voxel.c:519: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,104(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp364
	jle .L128		|
	move.l %d1,104(%sp)	| tmp364, %sfp
.L128:
| voxel.c:523: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 114(%sp),%d0	| %sfp, _21
	and.w #8,%d0	|, _21
| voxel.c:523: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _21
	move.w %d0,48(%sp)	| _21, %sfp
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 124(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.43_18 + 4294966696B],
	move.l %a0,116(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp365
	add.l %a0,%d0	|, tmp365
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp365
	move.l %d0,80(%sp)	| tmp365, %sfp
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 124(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.43_18 + 4294966694B],
	move.l %a1,120(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp366
	add.l #-160,%d0	|, tmp366
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _27
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 112(%sp),%d1	| %sfp,
	swap %d1	| tmp368
	clr.w %d1	| tmp368
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.10_177, tmp370
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp370
	move.l %d1,84(%sp)	| tmp370, %sfp
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 72(%sp),%a5	| %sfp,
	move.l %a5,128(%sp)	|, %sfp
| voxel.c:368: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 106(%sp),%a0	| %sfp, ytable_offset
| voxel.c:393: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp373
| voxel.c:393: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	add.l #_y_table+4096,%a0	|, tmp373
	move.l %a0,92(%sp)	| tmp373, %sfp
	move.l %d0,%d1	| _27,
	lsl.l #4,%d1	|,
	move.l %d1,88(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 48(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _27,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,60(%sp)	| tmp547, %sfp
	add.l %d2,%d2	| x, tmp380
	add.l #_horizon,%d2	|, tmp380
	move.l %d2,54(%sp)	| tmp380, %sfp
.L145:
| voxel.c:529: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	move.w 48(%sp),%d0	| %sfp, tmp381
	lsr.w #3,%d0	|, tmp381
	and.l #65535,%d0	|, _33
| voxel.c:529: 			short y = render(&pos, screen, player_altitude, x, y_offset, view_max[x >> 3], view_min[x >> 3]);
	add.l %d0,%d0	| _33, tmp383
	lea _view_max,%a1	|,
	move.w (%a1,%d0.l),%d3	| view_max[_33], _936
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 48(%sp),%d1	| %sfp, _267
	add.w #-160,%d1	|, _267
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 74(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _267, tmp384
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp385
| voxel.c:372: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 72(%sp),%d4	| %sfp, tmp386
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp388
	clr.w %d4	| tmp388
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 72(%sp),%d1	| %sfp, tmp389
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d1	|, tmp390
| voxel.c:373: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 74(%sp),%d2	| %sfp, tmp391
	sub.w %d1,%d2	| tmp390, tmp391
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d4	| tmp391, tmp393
| voxel.c:158: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	move.l 84(%sp),%d2	| %sfp, tmp394
	add.l %d4,%d2	| delta_vu, tmp394
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp395
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp396
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp397
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp398
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp399
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp400
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp, tmp401
	asr.w #4,%d1	|, tmp401
	ext.l %d1	| tmp402
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp402, tmp403
	add.l %d1,%d1	| tmp403, tmp403
	move.l %d1,64(%sp)	| tmp403, %sfp
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp406
	moveq #1,%d5	|,
	and.l %d1,%d5	| tmp406,
	move.l %d5,68(%sp)	|, %sfp
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d1	| _936,
	muls.w #80,%d1	|, tmp407
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d1	| %sfp, tmp409
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp409, tmp410
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a2	| tmp410, tmp411
	add.l %d5,%a2	|, tmp411
	add.l 76(%sp),%a2	| %sfp, pBlock
| voxel.c:387: 	y_offset -= y_min;
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),58(%sp)	| view_min[_33], %sfp
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 64(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:525: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 80(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp548, y_offset
| voxel.c:387: 	y_offset -= y_min;
	sub.w 58(%sp),%a6	| %sfp, _306
| voxel.c:389: 	short y = y_max - y_min;
	move.w %d3,%a0	| _936, _932
	move.w %d3,%d0	| _936, y
	sub.w 58(%sp),%d0	| %sfp, y
| voxel.c:399: 		if (y < 0) goto done;
	jmi .L129		|
	lea _opacity_table+4,%a3	|, ivtmp.362
| voxel.c:393: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z] + ytable_offset);
	move.l 92(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:390: 	unsigned short z = STEPS_MIN;
	moveq #4,%d5	|, z
| voxel.c:384: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L131:
| voxel.c:401: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	cmp.w #99,%d0	|, y
	jgt .L132		|
| voxel.c:401: 		if (y < OCCLUSION_THRESHOLD_Y && y <= y_table_shifted[0][max_height]) {
	move.l 50(%sp),%a5	| %sfp,
	cmp.w (%a1,%a5.l),%d0	| MEM[(short int *)y_table_shifted_406 + _874 * 1], y
	jle .L171		|
.L132:
| voxel.c:330: 	asm (
#APP
| 330 "voxel.c" 1
	moveq #0xffffff80, %d3	| tmp
	move.l %d2, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d3, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d2, %d3	| sample_vu, tmp
	lsr.w #6, %d3	| tmp
	or.w %d3,%d1	| tmp, result
| 0 "" 2
| voxel.c:405: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:407: 		sample.both = ((sample_t*)((char*)combined + index))->both;
	move.w (%a4,%d1.l),%d7	| _323->both, _324
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	moveq #0,%d1	| _324
	move.b %d7,%d1	| _324, _324
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	add.l %d1,%d1	| _324, tmp425
| voxel.c:408: 		short sample_y = y_table_shifted[0][sample.height] + y_offset;
	move.w %a6,%d3	| _306, sample_y
	add.w (%a1,%d1.l),%d3	| (*y_table_shifted_406)[_326], sample_y
| voxel.c:462: 	return y + y_min;
	move.w %d0,%a0	| y, prephitmp_927
| voxel.c:409: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L133		|
| voxel.c:411: 			if (z < FOG_START) {
	cmp.w #39,%d5	|, z
	jhi .L134		|
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp426
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp426, tmp427
	add.w #224,%d1	|, tmp427
| voxel.c:355: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp428
| voxel.c:355: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a5	|,
	move.l (%a5,%d1.l),%d1	| *_335, _336
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _337
	jlt .L172		|
.L135:
| voxel.c:419: 				while (y >= sample_y) {
	cmp.w %d3,%d0	| _337, y
	jlt .L136		|
	sub.w %d3,%d0	| _337, tmp430
	and.l #65535,%d0	|, tmp431
	addq.l #1,%d0	|, tmp432
	move.l %d0,%a0	| tmp432, tmp434
	add.l %d0,%a0	| tmp432, tmp434
	add.l %a0,%a0	| tmp434, tmp435
	move.l %a0,%d7	| tmp435, tmp436
	add.l %d0,%d7	| tmp432, tmp436
	lsl.l #5,%d7	|, tmp437
	move.l %a2,%d0	| pBlock, _864
	sub.l %d7,%d0	| tmp437, _864
.L137:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _336, pBlock
| 0 "" 2
| voxel.c:421: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:419: 				while (y >= sample_y) {
	cmp.l %a2,%d0	| pBlock, _864
	jne .L137		|
	move.w %d3,%a0	| _337, prephitmp_927
	subq.w #1,%a0	|, prephitmp_927
	move.w %a0,%d0	| prephitmp_927, y
.L136:
| voxel.c:448: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:449: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp520
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:452: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp521
	and.w #15,%d1	|, tmp521
	jne .L142		|
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp452
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp453
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L141:
| voxel.c:395: 	while(z < STEPS_MAX /*&& y >= y_min*/) {
	cmp.w #64,%d5	|, z
	jeq .L168		|
.L142:
| voxel.c:399: 		if (y < 0) goto done;
	addq.l #1,%a3	|, ivtmp.362
	cmp.w #-1,%d0	|, y
	jne .L131		|
.L168:
| voxel.c:462: 	return y + y_min;
	add.w 58(%sp),%a0	| %sfp, _932
	move.w %a0,%d3	| _932, _936
.L129:
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	move.l 54(%sp),%a1	| %sfp,
	move.w (%a1),%d0	| MEM[(short int *)_893], _221
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	sub.w %d0,%a0	| _221, _222
| voxel.c:476: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 0);
	addq.w #1,%d0	|, tmp454
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp455
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp457
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp457, tmp458
| voxel.c:317: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a1	| tmp458, tmp459
	add.l 68(%sp),%a1	| %sfp, tmp459
	add.l 76(%sp),%a1	| %sfp, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	clr.w %d0	|
	cmp.w %a0,%d0	| _222,
	jge .L143		|
	move.w %a0,%d1	| _222,
	mulu.w #160,%d1	|,
	lea (%a1,%d1.l),%a0	| pBlock, tmp460, _857
	move.l 96(%sp),%d0	| %sfp, movep_data
.L144:
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 322 "voxel.c" 1
	movep.l %d0, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:470: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:468: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%a0	| pBlock, _857
	jne .L144		|
.L143:
| voxel.c:477: 	horizon[x] = y;
	move.l 54(%sp),%a0	| %sfp,
	move.w %d3,(%a0)	| _936, MEM[(short int *)_893]
| voxel.c:523: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:523: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 88(%sp),%d1	| %sfp,
	add.l %d1,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,54(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L145		|
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 108(%sp),%d0	| %sfp,
	muls.w 74(%sp),%d0	| %sfp, tmp462
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp463
| voxel.c:533: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,102(%sp)	| tmp463, %sfp
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 108(%sp),%d0	| %sfp,
	muls.w 72(%sp),%d0	| %sfp, tmp464
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp465
| voxel.c:534: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 112(%sp),%d0	| %sfp, _54
| voxel.c:533: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.10_177
	move.w 102(%sp),%d4	| %sfp, val.10_177
	move.w 102(%sp),%d1	| %sfp,
	swap %d1	| _54
	clr.w %d1	| _54
	move.w %d0,%d1	| _54, _54
| voxel.c:534: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,112(%sp)	| _54, %sfp
| voxel.c:536: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp471
	sub.l 116(%sp),%d0	| %sfp, tmp471
| voxel.c:536: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp472
| voxel.c:536: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 108(%sp),%d0	| %sfp, _61
| voxel.c:537: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _61, tmp473
	asr.w #3,%d2	|, tmp473
| voxel.c:537: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _61, tmp474
	asr.w #4,%d3	|, tmp474
| voxel.c:537: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d2	| tmp474, tmp475
| voxel.c:537: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, tmp476
| voxel.c:538: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _61
	jle .L146		|
| voxel.c:538: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| tmp476, _61
	move.w %d0,108(%sp)	| _61, %sfp
| voxel.c:533: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _54, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:538: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 108(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:540: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp479
	not.b %d2	| tmp479
	sub.l 120(%sp),%d2	| %sfp, tmp479
| voxel.c:540: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _77
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _77,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp482
| voxel.c:541: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 74(%sp),%d3	| %sfp, _81
	add.w %d0,%d3	| tmp482, _81
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _77,
	move.w %d3,%a1	| _81,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp486
| voxel.c:542: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 72(%sp),%d1	| %sfp, _85
	sub.w %d0,%d1	| tmp486, _85
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _81,
	muls.w %d3,%d0	| _81, tmp487
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp488
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _85,
	muls.w %d1,%d2	| _85, tmp490
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp491
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp491, tmp492
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp494
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp495
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp495, factor
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp496
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp497
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,74(%sp)	| tmp497, %sfp
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _85, tmp498
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp499
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,72(%sp)	| tmp499, %sfp
| voxel.c:549: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _192
	clr.w %d3	| _192
	move.w %d0,%d3	| tmp499, _192
	move.l %d3,_pos+6	| _192, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:511: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L148		|
.L174:
| voxel.c:556: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:557: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 136(%sp),%a0	| %sfp, tmp507
| voxel.c:557: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp507, tmp509
	add.l %a0,%d0	| tmp507, tmp509
	add.l %d0,%d0	| tmp509, tmp510
| voxel.c:558: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:559: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp551,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.51_137
	move.l 4(%a0),%d0	| stdin.51_137->__bufp, _135
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.51_137->__get_limit, _135
	jcc .L149		|
	addq.l #1,%d0	|, _135
	move.l %d0,4(%a0)	| _135, stdin.51_137->__bufp
| voxel.c:563: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (96,%sp),%sp	|,
	rts	
.L172:
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _337
	jra .L135		|
.L171:
| voxel.c:462: 	return y + y_min;
	move.w 58(%sp),%a0	| %sfp, _932
	add.w %d0,%a0	| y, _932
	move.w %a0,%d3	| _932, _936
	jra .L129		|
.L134:
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	tst.w %d3	| _964
	jlt .L173		|
.L139:
| voxel.c:359: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d1	| opacity_preshifted
	move.b (%a3),%d1	| MEM[(unsigned char *)_872], opacity_preshifted
| voxel.c:354: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _324
| voxel.c:359: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%d1	| tmp440, offset
| voxel.c:360: 	return (unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, _349
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _964
	jgt .L133		|
	move.l %d1,%a5	| _349, tmp530
	add.l #_pdata_table,%a5	|, tmp530
.L140:
| voxel.c:438: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d1	|, tmp443
	and.l %d0,%d1	| y, tmp443
	add.l %d1,%d1	| tmp443, tmp444
	add.l %d1,%d1	| tmp444, tmp445
| voxel.c:322: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a5,%d1.l),%d1	| *_356, *_356
#APP
| 322 "voxel.c" 1
	movep.l %d1, 0(%a2)	| *_356, pBlock
| 0 "" 2
| voxel.c:440: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:441: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	move.w %d0,%a0	| y, prephitmp_927
| voxel.c:437: 				while (y >= sample_y) {
	cmp.w %d0,%d3	| y, _964
	jle .L140		|
.L133:
| voxel.c:448: 		z++;
	addq.w #1,%d5	|, z
| voxel.c:449: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp450
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:452: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d5,%d1	| z, tmp451
	and.w #15,%d1	|, tmp451
	jne .L141		|
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp452
| voxel.c:162: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp453
| voxel.c:456: 			index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
	jra .L141		|
.L173:
| voxel.c:418: 				if (sample_y < 0) sample_y = 0;
	clr.w %d3	| _964
	jra .L139		|
.L146:
| voxel.c:539: 		else pos.speed += drag;
	add.w %d2,%d0	| tmp476, _61
	move.w %d0,108(%sp)	| _61, %sfp
| voxel.c:533: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _54, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:538: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 108(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:540: 		fixp rot = (160 - mouse_x) >> 4;
	moveq #95,%d2	|, tmp479
	not.b %d2	| tmp479
	sub.l 120(%sp),%d2	| %sfp, tmp479
| voxel.c:540: 		fixp rot = (160 - mouse_x) >> 4;
	asr.l #4,%d2	|, _77
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _77,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp482
| voxel.c:541: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 74(%sp),%d3	| %sfp, _81
	add.w %d0,%d3	| tmp482, _81
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _77,
	move.w %d3,%a1	| _81,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp486
| voxel.c:542: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 72(%sp),%d1	| %sfp, _85
	sub.w %d0,%d1	| tmp486, _85
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _81,
	muls.w %d3,%d0	| _81, tmp487
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp488
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _85,
	muls.w %d1,%d2	| _85, tmp490
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp491
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp491, tmp492
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp494
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp495
| voxel.c:548: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp495, factor
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp496
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp497
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,74(%sp)	| tmp497, %sfp
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _85, tmp498
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp499
| voxel.c:154: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,72(%sp)	| tmp499, %sfp
| voxel.c:549: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _192
	clr.w %d3	| _192
	move.w %d0,%d3	| tmp499, _192
	move.l %d3,_pos+6	| _192, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:511: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L148		|
	jra .L174		|
.L149:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.51_137,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:563: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (96,%sp),%sp	|,
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
