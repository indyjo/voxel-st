| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_get_color
_get_color:
| voxel.c:72: }
	move.l _hw_palette,%a0	| hw_palette, hw_palette
	move.w (%a0),%d0	| *hw_palette.0_1,
	rts	
	.even
	.globl	_set_color
_set_color:
| voxel.c:78: } 
	rts	
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
.L6:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
| voxel.c:80: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.74
.L7:
| voxel.c:85: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:86: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:87: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:87: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:87: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:87: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:87: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:87: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:87: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:87: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:87: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:87: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:87: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:87: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:87: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:87: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:87: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:87: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:88: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:89: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:89: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:89: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:89: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:89: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:89: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:89: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:89: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:89: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:89: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:89: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:89: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:89: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:89: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:89: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:89: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:90: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:97: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:91: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:91: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:91: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:91: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:91: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:91: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:91: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:91: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:91: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:91: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:91: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:92: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:82: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.74
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L7		|
| voxel.c:81: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L6		|
| voxel.c:100: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L13:
| voxel.c:103: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.89_11]
	cmp.l %d0,%a0	| _3, out
	jne .L13		|
| voxel.c:104: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:112: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:116: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:120: }
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
	lea (-276,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d5	|, ivtmp.189
| voxel.c:166: void build_tables() {
	move.w #-17920,%a3	|, ivtmp.191
	lea ___divsi3,%a4	|, tmp122
.L24:
| voxel.c:173: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d5,%a2	| ivtmp.189, ivtmp.182
| voxel.c:172: 		for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d2	|, z
| voxel.c:171: 		fixp step = FIXP(1,0);
	move.w #128,%d4	|, step
| voxel.c:170: 		fixp dist = FIXP(1,0);
	move.w %d4,%d3	| step, dist
.L27:
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d0	| dist, tmp97
	lsr.w #7,%d0	|, tmp97
| voxel.c:173: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d0,%d1	|,
	and.l #511,%d1	|,
	move.l %d1,-(%sp)	|,
	move.l %a3,-(%sp)	| ivtmp.191,
	jsr (%a4)		| tmp122
	addq.l #8,%sp	|,
| voxel.c:173: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #120,%d1	|,
	sub.w %d0,%d1	| tmp126,
	move.w %d1,(%a2)	|, MEM[(short int *)_235]
| voxel.c:177: 			dist += step;
	add.w %d4,%d3	| step, dist
| voxel.c:179: 			if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp104
	and.l %d2,%d0	| z, tmp104
| voxel.c:179: 			if (TRIGGERS_PROGRESSION(z))
	jne .L26		|
| voxel.c:45: 	return x + x;
	add.w %d4,%d4	| step, step
.L26:
| voxel.c:172: 		for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d2	|, z
| voxel.c:172: 		for (int z=1; z<STEPS_MAX; z++) {
	lea (1024,%a2),%a2	|, ivtmp.182
	moveq #64,%d0	|,
	cmp.l %d2,%d0	| z,
	jne .L27		|
| voxel.c:169: 	for (int h=0; h<256+256; h++) {
	addq.l #2,%d5	|, ivtmp.189
	lea (70,%a3),%a3	|, ivtmp.191
	cmp.w #17920,%a3	|, ivtmp.191
	jne .L24		|
	move.l #_height,%d4	|, ivtmp.172
	move.l #_combined,%d3	|, ivtmp.173
	move.l #_colors+512,%d2	|, ivtmp.174
.L25:
	move.l %d2,%a0	| ivtmp.174, ivtmp.160
	lea (-512,%a0),%a0	|, ivtmp.160
| voxel.c:170: 		fixp dist = FIXP(1,0);
	move.l %d3,%a2	| ivtmp.173, ivtmp.164
	move.l %d4,%a1	| ivtmp.172, ivtmp.162
.L29:
| voxel.c:188: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _11
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_106], _11
	lsl.w #8,%d0	|, tmp107
| voxel.c:188: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d1	| _14
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_96], _14
| voxel.c:188: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d1,%d0	| _14, tmp107
	move.w %d0,(%a2)+	| tmp107, MEM[(short unsigned int *)_95]
| voxel.c:187: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %d2,%a0	| ivtmp.174, ivtmp.160
	jne .L29		|
| voxel.c:186: 	for (int y=0; y<HEIGHT; y++) {
	add.l #512,%d4	|, ivtmp.172
	add.l #1024,%d3	|, ivtmp.173
	add.l #512,%d2	|, ivtmp.174
	cmp.l #_colors+262656,%d2	|, ivtmp.174
	jne .L25		|
| voxel.c:192: 	int bayer[8][8] = {
	lea (64,%sp),%a3	|,, tmp109
	pea 256.w		|
	pea .LC0		|
	move.l %a3,-(%sp)	| tmp109,
	jsr _memcpy		|
	move.l #_pdata_table,68(%sp)	|, %sfp
	lea (12,%sp),%sp	|,
	clr.l 60(%sp)	| %sfp
.L31:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	move.l (%a3),%a6	| MEM[(int *)_137], _84
	move.l 4(%a3),%a5	| MEM[(int *)_137 + 4B], _94
	move.l 8(%a3),%a4	| MEM[(int *)_137 + 8B], _104
	move.l 12(%a3),%d7	| MEM[(int *)_137 + 12B], _114
	move.l 16(%a3),%d6	| MEM[(int *)_137 + 16B], _124
	move.l 20(%a3),44(%sp)	| MEM[(int *)_137 + 20B], %sfp
	move.l 24(%a3),48(%sp)	| MEM[(int *)_137 + 24B], %sfp
	move.l 28(%a3),52(%sp)	| MEM[(int *)_137 + 28B], %sfp
	move.l 56(%sp),%a2	| %sfp, ivtmp.145
	move.w #8,%a1	|, ivtmp.143
.L46:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a6,%a1	| _84, ivtmp.143
	sgt %d2		| tmp119
	ext.w %d2	| tmp120
	ext.l %d2	| tmp118
	neg.l %d2	| bits
	cmp.l %a5,%a1	| _94, ivtmp.143
	jle .L38		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #2,%d1	|,
	or.l %d1,%d2	|, bits
.L38:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a4,%a1	| _104, ivtmp.143
	jle .L39		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d2	|, bits
.L39:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %d7,%a1	| _114, ivtmp.143
	jle .L40		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #8,%d1	|,
	or.l %d1,%d2	|, bits
.L40:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %d6,%a1	| _124, ivtmp.143
	jle .L41		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d2	|, bits
.L41:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 44(%sp),%a1	| %sfp, ivtmp.143
	jle .L42		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #32,%d1	|,
	or.l %d1,%d2	|, bits
.L42:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 48(%sp),%a1	| %sfp, ivtmp.143
	jle .L43		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d2	|, bits
.L43:
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 52(%sp),%a1	| %sfp, ivtmp.143
	jle .L44		|
| voxel.c:206: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #127,%d1	|,
	not.b %d1	|
	or.l %d1,%d2	|, bits
.L44:
| voxel.c:210: 					| ((color&1) ? bits << 24 : 0)
	move.l %d2,%d5	| bits, iftmp.15_63
	lsl.w #8,%d5	|, iftmp.15_63
	swap %d5	| iftmp.15_63
	clr.w %d5	| iftmp.15_63
| voxel.c:211: 					| ((color&2) ? bits << 16 : 0)
	move.l %d2,%d4	| bits, iftmp.16_64
	swap %d4	| iftmp.16_64
	clr.w %d4	| iftmp.16_64
| voxel.c:212: 					| ((color&4) ? bits <<  8 : 0)
	move.l %d2,%d3	| bits, iftmp.17_65
	lsl.l #8,%d3	|, iftmp.17_65
	move.l %a2,%a0	| ivtmp.145, ivtmp.137
| voxel.c:208: 			for (int color = 0; color < 16; color++) {
	moveq #0,%d0	| color
.L36:
| voxel.c:210: 					| ((color&1) ? bits << 24 : 0)
	btst #0,%d0	|, color
	jeq .L47		|
	move.l %d5,%d1	| iftmp.15_63, prephitmp_90
.L32:
| voxel.c:211: 					| ((color&2) ? bits << 16 : 0)
	btst #1,%d0	|, color
	jeq .L33		|
| voxel.c:211: 					| ((color&2) ? bits << 16 : 0)
	or.l %d4,%d1	| iftmp.16_64, prephitmp_90
.L33:
| voxel.c:212: 					| ((color&4) ? bits <<  8 : 0)
	btst #2,%d0	|, color
	jeq .L34		|
| voxel.c:212: 					| ((color&4) ? bits <<  8 : 0)
	or.l %d3,%d1	| iftmp.17_65, prephitmp_90
.L34:
| voxel.c:213: 					| ((color&8) ? bits <<  0 : 0);
	btst #3,%d0	|, color
	jeq .L35		|
| voxel.c:213: 					| ((color&8) ? bits <<  0 : 0);
	or.l %d2,%d1	| bits, prephitmp_90
.L35:
| voxel.c:209: 				pdata_table[y][opacity][color] = 0
	move.l %d1,(%a0)+	| prephitmp_90, MEM[(unsigned int *)_40]
| voxel.c:208: 			for (int color = 0; color < 16; color++) {
	addq.l #1,%d0	|, color
| voxel.c:208: 			for (int color = 0; color < 16; color++) {
	moveq #16,%d1	|,
	cmp.l %d0,%d1	| color,
	jne .L36		|
| voxel.c:203: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,%a1	|, ivtmp.143
	lea (64,%a2),%a2	|, ivtmp.145
	moveq #72,%d0	|,
	cmp.l %a1,%d0	| ivtmp.143,
	jne .L46		|
| voxel.c:202: 	for (int y = 0; y < 8; y++) {
	lea (32,%a3),%a3	|, ivtmp.151
	addq.l #8,60(%sp)	|, %sfp
	add.l #512,56(%sp)	|, %sfp
	moveq #64,%d0	|,
	cmp.l 60(%sp),%d0	| %sfp,
	jne .L31		|
	lea _horizon,%a0	|, vectp_horizon.122
.L45:
| voxel.c:218: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d1	|,
	move.l %d1,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.122_54]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.122
	jne .L45		|
| voxel.c:219: }
	movem.l (%sp)+,#31996	|,
	lea (276,%sp),%sp	|,
	rts	
.L47:
| voxel.c:210: 					| ((color&1) ? bits << 24 : 0)
	moveq #0,%d1	| prephitmp_90
	jra .L32		|
	.even
	.globl	_render
_render:
	lea (-16,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%a2	| pos, pos
	move.l 76(%sp),%d5	| x, x
	move.w 82(%sp),%d6	| y_offset, y_offset
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 6(%a2),%a5	| pos_102(D)->dirx, _1
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	moveq #0,%d4	| _3
	move.w %d5,%d4	| x, _3
	move.l %d4,%a6	| _3, _4
	lea (-160,%a6),%a6	|, _4
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 8(%a2),%d2	| pos_102(D)->diry, _5
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	lea ___mulsi3,%a4	|, tmp125
	move.l %a6,-(%sp)	| _4,
	move.w %d2,%a0	| _5,
	move.l %a0,-(%sp)	|,
	jsr (%a4)		| tmp125
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	lea ___divsi3,%a3	|, tmp130
	pea -320.w		|
	move.l %d0,-(%sp)	| tmp211,
	jsr (%a3)		| tmp130
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w %a5,%d3	| _1, delta_u
	add.w %d0,%d3	| tmp212, delta_u
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.l %a6,-(%sp)	| _4,
	move.w %a5,%a5	| _1,
	move.l %a5,-(%sp)	|,
	jsr (%a4)		| tmp125
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	pea 320.w		|
	move.l %d0,-(%sp)	| tmp213,
	jsr (%a3)		| tmp130
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.w %d2,%a0	| _5, delta_v
	add.w %d0,%a0	| tmp214, delta_v
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	move.w %d3,%d2	| delta_u, tmp140
	add.w %d3,%d2	| delta_u, tmp140
	add.w %d2,%d2	| tmp140, tmp141
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	add.w (%a2),%d2	| pos_102(D)->x, sample_u
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	move.w %a0,%d0	| delta_v, tmp142
	add.w %a0,%d0	| delta_v, tmp142
	add.w %d0,%d0	| tmp142, tmp143
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	add.w 2(%a2),%d0	| pos_102(D)->y, sample_v
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d5,%d1	|, tmp144
	lsr.w #4,%d1	|, tmp144
	and.l #65535,%d1	|, tmp145
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp145, tmp146
	add.l %d1,%d1	| tmp146, tmp147
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d1	|, tmp148
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp148, tmp149
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d5	|, tmp151
	moveq #1,%d7	|,
	and.l %d7,%d5	|, tmp152
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a4	| tmp149, tmp153
	add.l %d5,%a4	| tmp152, tmp153
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 68(%sp),%a4	| out, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	move.w #199,%d5	|, y
| voxel.c:274: 	short horizon_y = 0;
	clr.w 54(%sp)	| %sfp
| voxel.c:270: 	unsigned short color = 0;
	clr.w 52(%sp)	| %sfp
| voxel.c:268: 	int z = STEPS_MIN;
	move.w #4,%a6	|, z
| voxel.c:254: 	short sample_y = 200;
	move.w #200,%a1	|, sample_y
	add.l %d4,%d4	| _3, _3
	move.l %d4,56(%sp)	| _3, %sfp
	lea _combined,%a3	|, tmp207
	lea _y_table,%a2	|, tmp208
	move.l 72(%sp),%d7	| player_height, player_height
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #63,%d1	|,
	cmp.l %a6,%d1	| z,
	jlt .L86		|
.L101:
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.l %a6,%d1	| z, z
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	cmp.w %a1,%d5	| sample_y, y
	jge .L82		|
	move.w %d5,48(%sp)	| y, %sfp
	move.l %d7,44(%sp)	| player_height, %sfp
.L70:
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d0,%d4	| sample_v, tmp155
	lsr.w #7,%d4	|, tmp155
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d4	|,
	move.l %d4,%a1	|, tmp156
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d4	| sample_u, tmp157
	lsr.w #7,%d4	|, tmp157
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d4	|, tmp158
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	move.l %a1,%d5	| tmp156,
	moveq #9,%d7	|,
	lsl.l %d7,%d5	|,
	move.l %d5,%a1	|, tmp159
	add.l %d4,%a1	| tmp158, tmp160
	add.l %a1,%a1	| tmp160, tmp161
	move.w (%a3,%a1.l),%d4	| combined[_41][_43], height_color
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	|
	move.b %d4,%d5	| height_color,
	move.l %d5,%a5	|, tmp164
	lea (256,%a5),%a5	|, tmp165
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 44(%sp),%a5	| %sfp, tmp166
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.l %d1,%d5	| z,
	lsl.l %d7,%d5	|,
	move.l %d5,%a1	|, tmp167
	add.l %a5,%a1	| tmp166, tmp168
	add.l %a1,%a1	| tmp168, tmp169
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w (%a2,%a1.l),%a1	| y_table[z_159][_45], sample_y
	add.w %d6,%a1	| y_offset, sample_y
| voxel.c:320: 				z++;
	addq.l #1,%d1	|, z
| voxel.c:321: 				sample_u += delta_u;
	add.w %d3,%d2	| delta_u, sample_u
| voxel.c:322: 				sample_v += delta_v;
	add.w %a0,%d0	| delta_v, sample_v
| voxel.c:324: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d7	|,
	and.l %d1,%d7	| z,
| voxel.c:324: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L68		|
| voxel.c:45: 	return x + x;
	add.w %d3,%d3	| delta_u, delta_u
	add.w %a0,%a0	| delta_v, delta_v
.L68:
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #64,%d5	|,
	cmp.l %d1,%d5	| z,
	jeq .L93		|
	move.w 48(%sp),%d7	| %sfp,
	cmp.w %a1,%d7	| sample_y,
	jlt .L70		|
	move.w %d7,%d5	|, y
	move.l 44(%sp),%d7	| %sfp, player_height
| voxel.c:283: 			color = height_color >> 8;
	lsr.w #8,%d4	|,
	move.w %d4,52(%sp)	|, %sfp
.L82:
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	tst.w 52(%sp)	| %sfp
	jeq .L83		|
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d4	|
	move.w 52(%sp),%d4	| %sfp,
	move.l %d4,%a5	|, prephitmp_228
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #31,%d4	|,
	cmp.l %d1,%d4	| z,
	jge .L84		|
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #-32,%d4	|, tmp177
	add.l %d1,%d4	| z, tmp177
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	jmi .L99		|
	asr.l #2,%d4	|, tmp177
	move.l %d4,44(%sp)	| tmp177, %sfp
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d4	|,
	sub.l 44(%sp),%d4	| %sfp,
	move.l %d4,48(%sp)	|, %sfp
.L74:
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d4	|, tmp181
	and.l %d5,%d4	| y, tmp181
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d4	|, tmp182
	add.l 48(%sp),%d4	| %sfp, tmp183
	lsl.l #4,%d4	|, tmp184
	add.l %a5,%d4	| prephitmp_228, tmp185
	add.l %d4,%d4	| tmp185, tmp186
	add.l %d4,%d4	| tmp186, tmp187
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a5	|,
	move.l (%a5,%d4.l),%d4	| pdata_table[_61][iftmp.30_95][prephitmp_228], pdata_table[_61][iftmp.30_95][prephitmp_228]
#APP
| 356 "voxel.c" 1
	movep.l %d4, 0(%a4)	| pdata_table[_61][iftmp.30_95][prephitmp_228], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a4),%a4	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d5,.L76	| y,
.L77:
| voxel.c:360: 	horizon[x] = horizon_y - 1;
	move.w 54(%sp),%a5	| %sfp,
	subq.w #1,%a5	|,
	lea _horizon,%a0	|,
	move.l 56(%sp),%a1	| %sfp,
	move.w %a5,(%a0,%a1.l)	|, horizon[_3]
| voxel.c:361: }
	movem.l (%sp)+,#31996	|,
	lea (16,%sp),%sp	|,
	rts	
.L76:
	moveq #63,%d4	|,
	cmp.l %a6,%d4	| z,
	jlt .L100		|
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	move.l %d1,%a6	| z, z
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #63,%d1	|,
	cmp.l %a6,%d1	| z,
	jge .L101		|
.L86:
	move.l %a6,%d1	| z, z
.L69:
| voxel.c:344: 			if (y > horizon_y) {
	cmp.w 54(%sp),%d5	| %sfp, y
	jle .L72		|
	move.w %d5,54(%sp)	| y, %sfp
.L72:
| voxel.c:348: 			if (y <= horizon[x]) {
	lea _horizon,%a5	|,
	move.l 56(%sp),%d4	| %sfp,
	cmp.w (%a5,%d4.l),%d5	| horizon[_3], y
	jle .L77		|
	sub.l %a5,%a5	| prephitmp_228
| voxel.c:342: 			color = 0;
	clr.w 52(%sp)	| %sfp
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d4	|,
	move.l %d4,48(%sp)	|, %sfp
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d4	|, tmp181
	and.l %d5,%d4	| y, tmp181
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d4	|, tmp182
	add.l 48(%sp),%d4	| %sfp, tmp183
	lsl.l #4,%d4	|, tmp184
	add.l %a5,%d4	| prephitmp_228, tmp185
	add.l %d4,%d4	| tmp185, tmp186
	add.l %d4,%d4	| tmp186, tmp187
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a5	|,
	move.l (%a5,%d4.l),%d4	| pdata_table[_61][iftmp.30_95][prephitmp_228], pdata_table[_61][iftmp.30_95][prephitmp_228]
#APP
| 356 "voxel.c" 1
	movep.l %d4, 0(%a4)	| pdata_table[_61][iftmp.30_95][prephitmp_228], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a4),%a4	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d5,.L76	| y,
	jra .L77		|
.L99:
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #-29,%d4	|, tmp177
	add.l %d1,%d4	| z, tmp177
	asr.l #2,%d4	|, tmp177
	move.l %d4,44(%sp)	| tmp177, %sfp
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d4	|,
	sub.l 44(%sp),%d4	| %sfp,
	move.l %d4,48(%sp)	|, %sfp
	jra .L74		|
.L93:
	move.w 48(%sp),%d5	| %sfp, y
	move.l 44(%sp),%d7	| %sfp, player_height
	jra .L69		|
.L83:
	sub.l %a5,%a5	| prephitmp_228
	moveq #7,%d4	|,
	move.l %d4,48(%sp)	|, %sfp
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d4	|, tmp181
	and.l %d5,%d4	| y, tmp181
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d4	|, tmp182
	add.l 48(%sp),%d4	| %sfp, tmp183
	lsl.l #4,%d4	|, tmp184
	add.l %a5,%d4	| prephitmp_228, tmp185
	add.l %d4,%d4	| tmp185, tmp186
	add.l %d4,%d4	| tmp186, tmp187
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a5	|,
	move.l (%a5,%d4.l),%d4	| pdata_table[_61][iftmp.30_95][prephitmp_228], pdata_table[_61][iftmp.30_95][prephitmp_228]
#APP
| 356 "voxel.c" 1
	movep.l %d4, 0(%a4)	| pdata_table[_61][iftmp.30_95][prephitmp_228], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a4),%a4	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d5,.L76	| y,
	jra .L77		|
.L84:
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d4	|,
	move.l %d4,48(%sp)	|, %sfp
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d4	|, tmp181
	and.l %d5,%d4	| y, tmp181
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d4	|, tmp182
	add.l 48(%sp),%d4	| %sfp, tmp183
	lsl.l #4,%d4	|, tmp184
	add.l %a5,%d4	| prephitmp_228, tmp185
	add.l %d4,%d4	| tmp185, tmp186
	add.l %d4,%d4	| tmp186, tmp187
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a5	|,
	move.l (%a5,%d4.l),%d4	| pdata_table[_61][iftmp.30_95][prephitmp_228], pdata_table[_61][iftmp.30_95][prephitmp_228]
#APP
| 356 "voxel.c" 1
	movep.l %d4, 0(%a4)	| pdata_table[_61][iftmp.30_95][prephitmp_228], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a4),%a4	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d5,.L76	| y,
	jra .L77		|
.L100:
| voxel.c:348: 			if (y <= horizon[x]) {
	lea _horizon,%a0	|,
	move.l 56(%sp),%a1	| %sfp,
	move.w (%a0,%a1.l),%d1	| horizon[_3], _259
	move.w 54(%sp),%a0	| %sfp, horizon_y
.L79:
| voxel.c:344: 			if (y > horizon_y) {
	cmp.w %a0,%d5	| horizon_y, y
	jle .L78		|
	move.w %d5,%a0	| y, horizon_y
.L78:
| voxel.c:348: 			if (y <= horizon[x]) {
	cmp.w %d5,%d1	| y, _259
	jge .L94		|
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d0	|, tmp193
	and.l %d5,%d0	| y, tmp193
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp194
	add.l #_pdata_table+448,%d0	|, tmp196
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	move.l %d0,%a1	| tmp196,
	move.l (%a1),%d0	| pdata_table[_272][7][0], pdata_table[_272][7][0]
#APP
| 356 "voxel.c" 1
	movep.l %d0, 0(%a4)	| pdata_table[_272][7][0], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a4),%a4	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d5,.L79	| y,
.L94:
	move.w %a0,54(%sp)	| horizon_y, %sfp
| voxel.c:360: 	horizon[x] = horizon_y - 1;
	move.w 54(%sp),%a5	| %sfp,
	subq.w #1,%a5	|,
	lea _horizon,%a0	|,
	move.l 56(%sp),%a1	| %sfp,
	move.w %a5,(%a0,%a1.l)	|, horizon[_3]
| voxel.c:361: }
	movem.l (%sp)+,#31996	|,
	lea (16,%sp),%sp	|,
	rts	
.LC1:
	.ascii "Tables computed.\0"
.LC2:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-60,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:375: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:377: 	Super(0L);
	moveq #0,%d0	| tmp243
#APP
| 377 "voxel.c" 1
	movl	%d0,%sp@-	| tmp243
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:379: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:381: 	lineaa();
	jsr _lineaa		|
| voxel.c:382: 	build_tables();
	jsr _build_tables		|
| voxel.c:383: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:384:         set_palette();
	jsr _set_palette		|
| voxel.c:385: 	draw_image2(Physbase(), colors);
#APP
| 385 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
| voxel.c:385: 	draw_image2(Physbase(), colors);
#NO_APP
	pea _colors		|
	move.l %d0,-(%sp)	| tmp434,
	jsr _draw_image2		|
| voxel.c:386: 	clear_screen(Physbase());
#APP
| 386 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a0	| tmp435, ivtmp.268
	add.l #32000,%d0	|, _448
	lea (12,%sp),%sp	|,
.L103:
| voxel.c:103: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.225_420]
	cmp.l %a0,%d0	| ivtmp.268, _448
	jne .L103		|
| voxel.c:387: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,100(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:393: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,%d3	| pos.y, _43
| voxel.c:393: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),%d4	| pos.x, _37
	clr.w 84(%sp)	| %sfp
| voxel.c:388: 	int last_player_altitude = 40;
	move.w #40,%a5	|, last_player_altitude
	lea _combined,%a4	|, tmp411
	lea _y_table,%a6	|, tmp419
.L122:
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d0	| _43, tmp255
	lsr.w #7,%d0	|, tmp255
| voxel.c:393: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp256
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d4,%d1	| _37, tmp257
	lsr.w #7,%d1	|, tmp257
| voxel.c:393: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp258
| voxel.c:393: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp259
	add.l %d1,%d0	| tmp258, tmp260
	add.l %d0,%d0	| tmp260, tmp261
| voxel.c:394: 		int player_altitude = height_under_player + 20;
	move.b 1(%a4,%d0.l),%d0	| combined[_4][_6], tmp263
	and.l #255,%d0	|, tmp263
	moveq #20,%d3	|,
	add.l %d3,%d0	|, player_altitude
| voxel.c:396: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l %a5,%d1	| last_player_altitude, tmp265
	addq.l #2,%d1	|, tmp265
| voxel.c:396: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp265
	jle .L104		|
	moveq #0,%d1	|, tmp265
	not.b %d1	| tmp265
.L104:
	cmp.l %d0,%d1	| player_altitude, tmp265
	jge .L105		|
	move.l %d1,%d0	| tmp265, player_altitude
.L105:
| voxel.c:397: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %a5,%d1	| last_player_altitude, tmp266
	subq.l #2,%d1	|, tmp266
| voxel.c:397: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,%a5	| player_altitude, last_player_altitude
	cmp.l %d0,%d1	| last_player_altitude, tmp266
	jle .L106		|
	move.l %d1,%a5	| tmp266, last_player_altitude
.L106:
| voxel.c:400: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.33_10
| voxel.c:401: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 84(%sp),%d1	| %sfp, tmp267
	and.w #8,%d1	|, tmp267
| voxel.c:401: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d1	|, x
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	move.w -600(%a0),%a1	| MEM[(short int *)__aline.33_10 + 4294966696B],
	move.l %a1,86(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp268
	add.l %a1,%d0	|, tmp268
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	asr.l #2,%d0	|, tmp269
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	move.w %d0,90(%sp)	| tmp269, %sfp
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	move.w -602(%a0),%a0	| MEM[(short int *)__aline.33_10 + 4294966694B],
	move.l %a0,92(%sp)	|, %sfp
	move.l %a0,%d0	|, tmp270
	add.l #-160,%d0	|, tmp270
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	asr.l #2,%d0	|, _21
	and.l #65535,%d1	|,
	move.l %d1,64(%sp)	|, %sfp
	move.l %d0,%d3	| _21,
	lsl.l #4,%d3	|,
	move.l %d3,96(%sp)	|, %sfp
	move.l %d1,%d3	|, _23
	add.l #-160,%d3	|, _23
	move.l %d0,-(%sp)	| _21,
	move.l %d3,-(%sp)	| _23,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,72(%sp)	| tmp436, %sfp
	move.l 64(%sp),%d0	| %sfp, tmp276
	add.l %d0,%d0	|, tmp276
	add.l #_horizon,%d0	|, tmp276
	move.l %d0,60(%sp)	| tmp276, %sfp
	move.l %a5,%a3	| last_player_altitude, last_player_altitude
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	pea -160.w		|
	move.l 76(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	move.w 90(%sp),%a5	| %sfp, _27
	add.w %d0,%a5	| tmp437, _27
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
#APP
| 402 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp438, _129
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+8,70(%sp)	| pos.diry, %sfp
	move.w 70(%sp),%a0	| %sfp,
	move.l %a0,76(%sp)	|, %sfp
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.l %a0,-(%sp)	|,
	move.l %d3,-(%sp)	| _23,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	pea -320.w		|
	move.l %d0,-(%sp)	| tmp439,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 68(%sp),%d2	| %sfp, delta_u
	add.w %d0,%d2	| tmp440, delta_u
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.l %d3,-(%sp)	| _23,
	move.w 72(%sp),%a1	| %sfp,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	pea 320.w		|
	move.l %d0,-(%sp)	| tmp441,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.w 70(%sp),%a0	| %sfp, delta_v
	add.w %d0,%a0	| tmp442, delta_v
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	lea _pos,%a1	|,
	move.w (%a1),80(%sp)	| pos.x, %sfp
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	move.w %d2,%d5	| delta_u, tmp300
	add.w %d2,%d5	| delta_u, tmp300
	add.w %d5,%d5	| tmp300, tmp301
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	add.w 80(%sp),%d5	| %sfp, sample_u
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	move.w _pos+2,82(%sp)	| pos.y, %sfp
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	move.w %a0,%d4	| delta_v, tmp303
	add.w %a0,%d4	| delta_v, tmp303
	add.w %d4,%d4	| tmp303, tmp304
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	add.w 82(%sp),%d4	| %sfp, sample_v
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 66(%sp),%d0	| %sfp, tmp305
	lsr.w #4,%d0	|, tmp305
	and.l #65535,%d0	|, tmp306
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp306, tmp307
	add.l %d0,%d0	| tmp307, tmp308
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d0	|, tmp309
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp309, tmp310
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 64(%sp),%d1	| %sfp, tmp312
	lsr.l #3,%d1	|, tmp312
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp313
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d1	| tmp310, tmp314
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a2	| tmp314, pBlock
| voxel.c:270: 	unsigned short color = 0;
	clr.w %d6	| color
| voxel.c:268: 	int z = STEPS_MIN;
	moveq #4,%d7	|, z
| voxel.c:254: 	short sample_y = 200;
	move.w #200,%a1	|, sample_y
| voxel.c:274: 	short horizon_y = 0;
	clr.w 58(%sp)	| %sfp
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	move.w #199,%d3	|, y
	move.w %a1,44(%sp)	| sample_y, %sfp
.L107:
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #63,%d0	|,
	cmp.l %d7,%d0	| z,
	jlt .L128		|
.L153:
	move.l %d7,%d0	| z, z
	cmp.w 44(%sp),%d3	| %sfp, y
	jge .L118		|
	move.l %d7,50(%sp)	| z, %sfp
.L110:
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d4,%d1	| sample_v, tmp316
	lsr.w #7,%d1	|, tmp316
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d1	|, tmp317
| voxel.c:111: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d6	| sample_u, tmp318
	lsr.w #7,%d6	|, tmp318
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d6	|, tmp319
| voxel.c:280: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d7	|,
	lsl.l %d7,%d1	|, tmp320
	add.l %d6,%d1	| tmp319, tmp321
	add.l %d1,%d1	| tmp321, tmp322
	move.w (%a4,%d1.l),%d6	| combined[_213][_217], height_color
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d1	| tmp325
	move.b %d6,%d1	| height_color, tmp325
	move.l %d1,%a1	| tmp325, tmp326
	lea (256,%a1),%a1	|, tmp326
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l %a3,%a1	| last_player_altitude, tmp327
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.l %d0,%d1	| z, tmp328
	lsl.l %d7,%d1	|, tmp328
	add.l %a1,%d1	| tmp327, tmp329
	add.l %d1,%d1	| tmp329, tmp330
| voxel.c:282: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w %a5,%a1	| _27, sample_y
	add.w (%a6,%d1.l),%a1	| y_table[z_317][_222], sample_y
| voxel.c:320: 				z++;
	addq.l #1,%d0	|, z
| voxel.c:321: 				sample_u += delta_u;
	add.w %d2,%d5	| delta_u, sample_u
| voxel.c:322: 				sample_v += delta_v;
	add.w %a0,%d4	| delta_v, sample_v
| voxel.c:324: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp331
	and.l %d0,%d1	| z, tmp331
| voxel.c:324: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L108		|
| voxel.c:45: 	return x + x;
	add.w %d2,%d2	| delta_u, delta_u
	add.w %a0,%a0	| delta_v, delta_v
.L108:
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #64,%d1	|,
	cmp.l %d0,%d1	| z,
	jeq .L143		|
	cmp.w %a1,%d3	| sample_y, y
	jlt .L110		|
	move.w %a1,44(%sp)	| sample_y, %sfp
	move.l 50(%sp),%d7	| %sfp, z
| voxel.c:283: 			color = height_color >> 8;
	lsr.w #8,%d6	|, color
.L118:
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	tst.w %d6	| color
	jeq .L125		|
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d1	|
	move.w %d6,%d1	| color,
	move.l %d1,%a1	|, prephitmp_505
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #31,%d1	|,
	cmp.l %d0,%d1	| z,
	jge .L126		|
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #-32,%d1	|, tmp336
	add.l %d0,%d1	| z, tmp336
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	jmi .L151		|
	asr.l #2,%d1	|, tmp336
	move.l %d1,46(%sp)	| tmp336, %sfp
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d1	|,
	sub.l 46(%sp),%d1	| %sfp,
	move.l %d1,54(%sp)	|, %sfp
.L114:
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d1	|, tmp340
	and.l %d3,%d1	| y, tmp340
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d1	|, tmp341
	add.l 54(%sp),%d1	| %sfp, tmp342
	lsl.l #4,%d1	|, tmp343
	add.l %a1,%d1	| prephitmp_505, tmp344
	add.l %d1,%d1	| tmp344, tmp345
	add.l %d1,%d1	| tmp345, tmp346
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a1	|,
	move.l (%a1,%d1.l),%d1	| pdata_table[_261][iftmp.30_264][prephitmp_505], pdata_table[_261][iftmp.30_264][prephitmp_505]
#APP
| 356 "voxel.c" 1
	movep.l %d1, 0(%a2)	| pdata_table[_261][iftmp.30_264][prephitmp_505], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d3	|, y
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	cmp.w #-1,%d3	|, y
	jeq .L113		|
.L154:
	moveq #63,%d1	|,
	cmp.l %d7,%d1	| z,
	jlt .L152		|
	move.l %d0,%d7	| z, z
| voxel.c:278: 		while (z < STEPS_MAX && y < sample_y) {
	moveq #63,%d0	|,
	cmp.l %d7,%d0	| z,
	jge .L153		|
.L128:
	move.l %d7,%d0	| z, z
.L109:
| voxel.c:344: 			if (y > horizon_y) {
	cmp.w 58(%sp),%d3	| %sfp, y
	jle .L112		|
	move.w %d3,58(%sp)	| y, %sfp
.L112:
| voxel.c:348: 			if (y <= horizon[x]) {
	move.l 60(%sp),%a1	| %sfp,
	cmp.w (%a1),%d3	| MEM[(short int *)_439], y
	jle .L113		|
	sub.l %a1,%a1	| prephitmp_505
| voxel.c:342: 			color = 0;
	clr.w %d6	| color
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d1	|,
	move.l %d1,54(%sp)	|, %sfp
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d1	|, tmp340
	and.l %d3,%d1	| y, tmp340
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d1	|, tmp341
	add.l 54(%sp),%d1	| %sfp, tmp342
	lsl.l #4,%d1	|, tmp343
	add.l %a1,%d1	| prephitmp_505, tmp344
	add.l %d1,%d1	| tmp344, tmp345
	add.l %d1,%d1	| tmp345, tmp346
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a1	|,
	move.l (%a1,%d1.l),%d1	| pdata_table[_261][iftmp.30_264][prephitmp_505], pdata_table[_261][iftmp.30_264][prephitmp_505]
#APP
| 356 "voxel.c" 1
	movep.l %d1, 0(%a2)	| pdata_table[_261][iftmp.30_264][prephitmp_505], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d3	|, y
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	cmp.w #-1,%d3	|, y
	jne .L154		|
.L113:
| voxel.c:360: 	horizon[x] = horizon_y - 1;
	move.w 58(%sp),%a1	| %sfp,
	subq.w #1,%a1	|,
	move.l 60(%sp),%a0	| %sfp,
	move.w %a1,(%a0)	|, MEM[(short int *)_440]
| voxel.c:401: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	moveq #16,%d0	|,
	add.l %d0,64(%sp)	|, %sfp
	move.l 96(%sp),%d3	| %sfp,
	add.l %d3,72(%sp)	|, %sfp
	moveq #32,%d4	|,
	add.l %d4,60(%sp)	|, %sfp
	cmp.w #319,66(%sp)	|, %sfp
	jhi .L142		|
	move.l 64(%sp),%d3	| %sfp, _23
	add.l #-160,%d3	|, _23
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	pea -160.w		|
	move.l 76(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
	move.w 90(%sp),%a5	| %sfp, _27
	add.w %d0,%a5	| tmp437, _27
| voxel.c:402: 			render(&pos, Physbase(), player_altitude, x, ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160);
#APP
| 402 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp438, _129
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+8,70(%sp)	| pos.diry, %sfp
	move.w 70(%sp),%a0	| %sfp,
	move.l %a0,76(%sp)	|, %sfp
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.l %a0,-(%sp)	|,
	move.l %d3,-(%sp)	| _23,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	pea -320.w		|
	move.l %d0,-(%sp)	| tmp439,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:247: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 68(%sp),%d2	| %sfp, delta_u
	add.w %d0,%d2	| tmp440, delta_u
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.l %d3,-(%sp)	| _23,
	move.w 72(%sp),%a1	| %sfp,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	pea 320.w		|
	move.l %d0,-(%sp)	| tmp441,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:248: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.w 70(%sp),%a0	| %sfp, delta_v
	add.w %d0,%a0	| tmp442, delta_v
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	lea _pos,%a1	|,
	move.w (%a1),80(%sp)	| pos.x, %sfp
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	move.w %d2,%d5	| delta_u, tmp300
	add.w %d2,%d5	| delta_u, tmp300
	add.w %d5,%d5	| tmp300, tmp301
| voxel.c:251: 	sample_u += STEPS_MIN * delta_u;
	add.w 80(%sp),%d5	| %sfp, sample_u
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	move.w _pos+2,82(%sp)	| pos.y, %sfp
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	move.w %a0,%d4	| delta_v, tmp303
	add.w %a0,%d4	| delta_v, tmp303
	add.w %d4,%d4	| tmp303, tmp304
| voxel.c:252: 	sample_v += STEPS_MIN * delta_v;
	add.w 82(%sp),%d4	| %sfp, sample_v
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 66(%sp),%d0	| %sfp, tmp305
	lsr.w #4,%d0	|, tmp305
	and.l #65535,%d0	|, tmp306
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp306, tmp307
	add.l %d0,%d0	| tmp307, tmp308
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d0	|, tmp309
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp309, tmp310
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 64(%sp),%d1	| %sfp, tmp312
	lsr.l #3,%d1	|, tmp312
	moveq #1,%d3	|,
	and.l %d3,%d1	|, tmp313
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d1	| tmp310, tmp314
| voxel.c:273: 	unsigned char * pBlock = ((unsigned char *)&out[199*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a2	| tmp314, pBlock
| voxel.c:270: 	unsigned short color = 0;
	clr.w %d6	| color
| voxel.c:268: 	int z = STEPS_MIN;
	moveq #4,%d7	|, z
| voxel.c:254: 	short sample_y = 200;
	move.w #200,%a1	|, sample_y
| voxel.c:274: 	short horizon_y = 0;
	clr.w 58(%sp)	| %sfp
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	move.w #199,%d3	|, y
	move.w %a1,44(%sp)	| sample_y, %sfp
	jra .L107		|
.L151:
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #-29,%d1	|, tmp336
	add.l %d0,%d1	| z, tmp336
	asr.l #2,%d1	|, tmp336
	move.l %d1,46(%sp)	| tmp336, %sfp
| voxel.c:354: 		int opacity = (color == 0 || z < STEPS_MAX/2) ? 7 : 7 - (8 * (z-STEPS_MAX/2) / (STEPS_MAX/2));
	moveq #7,%d1	|,
	sub.l 46(%sp),%d1	| %sfp,
	move.l %d1,54(%sp)	|, %sfp
	jra .L114		|
.L143:
	move.w %a1,44(%sp)	| sample_y, %sfp
	move.l 50(%sp),%d7	| %sfp, z
	jra .L109		|
.L125:
	sub.l %a1,%a1	| prephitmp_505
	moveq #7,%d1	|,
	move.l %d1,54(%sp)	|, %sfp
	jra .L114		|
.L126:
	moveq #7,%d1	|,
	move.l %d1,54(%sp)	|, %sfp
	jra .L114		|
.L142:
| voxel.c:405: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.l %a3,%a5	| last_player_altitude, last_player_altitude
	move.w _pos+10,%d0	| pos.speed, _31
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 68(%sp),%d1	| %sfp,
	muls.w %d0,%d1	| _31, tmp356
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp357
| voxel.c:405: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w 80(%sp),%d4	| %sfp, _37
	add.w %d1,%d4	| tmp357, _37
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 70(%sp),%d1	| %sfp,
	muls.w %d0,%d1	| _31, tmp358
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp359
| voxel.c:406: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w 82(%sp),%d3	| %sfp, _43
	add.w %d1,%d3	| tmp359, _43
| voxel.c:407: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d1	|, tmp360
	sub.l 86(%sp),%d1	| %sfp, tmp360
| voxel.c:407: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d1	|, tmp361
| voxel.c:407: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d1,%d0	| tmp361, _49
| voxel.c:408: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _49, tmp362
	asr.w #3,%d1	|, tmp362
| voxel.c:408: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _49, tmp363
	asr.w #4,%d2	|, tmp363
| voxel.c:408: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d2,%d1	| tmp363, tmp364
| voxel.c:408: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, tmp365
| voxel.c:409: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _49
	jle .L120		|
| voxel.c:409: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| tmp365, _59
| voxel.c:405: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.w %d4,(%a0)	| _37, pos.x
| voxel.c:406: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d3,_pos+2	| _43, pos.y
| voxel.c:409: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _59, pos.speed
| voxel.c:411: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d5	|, tmp369
	not.b %d5	| tmp369
	sub.l 92(%sp),%d5	| %sfp, tmp369
| voxel.c:411: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d5	|, _65
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 76(%sp),-(%sp)	| %sfp,
	move.l %d5,-(%sp)	| _65,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp443, tmp372
	asr.l #7,%d2	|, tmp372
| voxel.c:412: 		pos.dirx += fixp_mul(rot, pos.diry);
	add.w 68(%sp),%d2	| %sfp, _69
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _65,
	move.w %d2,%a1	| _69,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp376
| voxel.c:413: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d5	| %sfp, _73
	sub.w %d0,%d5	| tmp376, _73
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _69,
	muls.w %d2,%d1	| _69, tmp377
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp378
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d5,%d0	| _73,
	muls.w %d5,%d0	| _73, tmp380
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp381
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp381, tmp382
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d1	|
	lea -128(%a0,%d1.l),%a0	|,
	move.l %a0,%d0	|, tmp384
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp385
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d1	|, factor
	sub.w %d0,%d1	| tmp385, factor
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| factor,
	muls.w %d2,%d0	| _69, tmp388
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp389
| voxel.c:420: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp387
	clr.w %d0	| tmp387
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d1	| _73, tmp394
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp395
| voxel.c:420: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| tmp395, tmp387
	move.l %d0,_pos+6	| tmp387, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:389: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,84(%sp)	|, %sfp
	cmp.w #6400,84(%sp)	|, %sfp
	jne .L122		|
.L155:
| voxel.c:426: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:427: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 100(%sp),%a0	| %sfp, tmp397
| voxel.c:427: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp397, tmp399
	add.l %a0,%d0	| tmp397, tmp399
	add.l %d0,%d0	| tmp399, tmp400
| voxel.c:428: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:429: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp445,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.38_125
	move.l 4(%a0),%d0	| stdin.38_125->__bufp, _123
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.38_125->__get_limit, _123
	jcc .L123		|
	addq.l #1,%d0	|, _123
	move.l %d0,4(%a0)	| _123, stdin.38_125->__bufp
| voxel.c:433: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (60,%sp),%sp	|,
	rts	
.L120:
| voxel.c:410: 		else pos.speed += drag;
	add.w %d1,%d0	| tmp365, _59
| voxel.c:405: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.w %d4,(%a0)	| _37, pos.x
| voxel.c:406: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d3,_pos+2	| _43, pos.y
| voxel.c:409: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _59, pos.speed
| voxel.c:411: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d5	|, tmp369
	not.b %d5	| tmp369
	sub.l 92(%sp),%d5	| %sfp, tmp369
| voxel.c:411: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d5	|, _65
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 76(%sp),-(%sp)	| %sfp,
	move.l %d5,-(%sp)	| _65,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp443, tmp372
	asr.l #7,%d2	|, tmp372
| voxel.c:412: 		pos.dirx += fixp_mul(rot, pos.diry);
	add.w 68(%sp),%d2	| %sfp, _69
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _65,
	move.w %d2,%a1	| _69,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp376
| voxel.c:413: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d5	| %sfp, _73
	sub.w %d0,%d5	| tmp376, _73
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	| _69,
	muls.w %d2,%d1	| _69, tmp377
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp378
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d5,%d0	| _73,
	muls.w %d5,%d0	| _73, tmp380
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp381
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp381, tmp382
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d1	|
	lea -128(%a0,%d1.l),%a0	|,
	move.l %a0,%d0	|, tmp384
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp385
| voxel.c:419: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d1	|, factor
	sub.w %d0,%d1	| tmp385, factor
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| factor,
	muls.w %d2,%d0	| _69, tmp388
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp389
| voxel.c:420: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp387
	clr.w %d0	| tmp387
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d1	| _73, tmp394
| voxel.c:119: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp395
| voxel.c:420: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| tmp395, tmp387
	move.l %d0,_pos+6	| tmp387, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:389: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,84(%sp)	|, %sfp
	cmp.w #6400,84(%sp)	|, %sfp
	jne .L122		|
	jra .L155		|
.L152:
| voxel.c:348: 			if (y <= horizon[x]) {
	move.l 60(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_438], _430
	move.w 58(%sp),%d1	| %sfp, horizon_y
.L117:
| voxel.c:344: 			if (y > horizon_y) {
	cmp.w %d1,%d3	| horizon_y, y
	jle .L116		|
	move.w %d3,%d1	| y, horizon_y
.L116:
| voxel.c:348: 			if (y <= horizon[x]) {
	cmp.w %d0,%d3	| _430, y
	jle .L146		|
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d2	|, tmp350
	and.l %d3,%d2	| y, tmp350
| voxel.c:355: 		register unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #9,%d4	|,
	lsl.l %d4,%d2	|, tmp351
	move.l %d2,%a0	| tmp351, tmp353
	add.l #_pdata_table+448,%a0	|, tmp353
| voxel.c:356: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	move.l (%a0),%d2	| pdata_table[_418][7][0], pdata_table[_418][7][0]
#APP
| 356 "voxel.c" 1
	movep.l %d2, 0(%a2)	| pdata_table[_418][7][0], pBlock
| 0 "" 2
| voxel.c:357: 		pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
| voxel.c:276: 	for(short y=199; y >= 0; y-=LINES_SKIP) {
	dbra %d3,.L117	| y,
.L146:
	move.w %d1,58(%sp)	| horizon_y, %sfp
	jra .L113		|
.L123:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.38_125,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:433: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (60,%sp),%sp	|,
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
	.globl	_pdata_table
	.even
_pdata_table:
	.skip 4096
	.globl	_y_table
	.even
_y_table:
	.skip 65536
	.globl	_combined
	.even
_combined:
	.skip 524288
