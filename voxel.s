| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_get_color
_get_color:
| voxel.c:95: }
	move.l _hw_palette,%a0	| hw_palette, hw_palette
	move.w (%a0),%d0	| *hw_palette.0_1,
	rts	
	.even
	.globl	_set_color
_set_color:
| voxel.c:101: } 
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
| voxel.c:103: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.88
.L7:
| voxel.c:108: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:109: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:110: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:110: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:110: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:110: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:110: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:110: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:110: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:110: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:110: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:110: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:110: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:110: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:110: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:110: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:110: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:110: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:111: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:112: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:112: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:112: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:112: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:112: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:112: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:112: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:112: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:112: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:112: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:112: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:112: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:112: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:112: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:112: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:112: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:113: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:120: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:114: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:114: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:114: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:114: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:114: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:114: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:114: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:114: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:114: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:114: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:114: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:115: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:105: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.88
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L7		|
| voxel.c:104: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L6		|
| voxel.c:123: }
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
| voxel.c:126: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.103_11]
	cmp.l %d0,%a0	| _3, out
	jne .L13		|
| voxel.c:127: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:135: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:139: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:143: }
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
	lea (-332,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.218
| voxel.c:211: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:210: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:209: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp215
	lea _opacity_table,%a5	|, tmp214
.L24:
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _127
	lsr.w #7,%d0	|, _127
| voxel.c:213: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _127, _3
| voxel.c:215: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp164
| voxel.c:215: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp164,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _86
	add.w #120,%d2	|, _86
| voxel.c:215: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.218, ivtmp.207
	move.w #-17920,%a2	|, ivtmp.204
.L25:
| voxel.c:213: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.204,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:215: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _86,
	sub.w %d0,%d1	| tmp243,
	move.w %d1,(%a3)+	|, MEM[(short int *)_154]
| voxel.c:212: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.204
	cmp.w #17920,%a2	|, ivtmp.204
	jne .L25		|
| voxel.c:218: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:220: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp148
	and.l %d4,%d0	| z, tmp148
| voxel.c:220: 		if (TRIGGERS_PROGRESSION(z))
	jne .L26		|
| voxel.c:59: 	return x + x;
	add.w %d7,%d7	| step, step
.L26:
| voxel.c:223: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:224: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L81		|
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _23 * 1]
| voxel.c:211: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:211: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.218
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
.L28:
| voxel.c:230: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_colors+512,%d4	|, ivtmp.194
	move.l #_height,%d7	|, ivtmp.196
	move.l #_combined,%d6	|, ivtmp.197
	clr.b %d5	| max_height_lsm_flag.134
	clr.b %d3	| max_height_lsm.133
.L31:
	move.l %d4,%a0	| ivtmp.194, ivtmp.183
	lea (-512,%a0),%a0	|, ivtmp.183
	move.l %d6,%a2	| ivtmp.197, ivtmp.187
	move.l %d7,%a1	| ivtmp.196, ivtmp.185
.L30:
| voxel.c:233: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_276], _305
| voxel.c:233: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _302
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_48], _302
	lsl.w #8,%d0	|, tmp177
| voxel.c:233: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d2	| _305
	move.b %d1,%d2	| _305, _305
| voxel.c:233: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d2,%d0	| _305, _308
| voxel.c:234: 			if (height[y][x] > max_height)
	cmp.b %d3,%d1	| max_height_lsm.133, _305
	jls .L29		|
| voxel.c:235: 				max_height = height[y][x];
	move.b %d1,%d3	| _305, max_height_lsm.133
| voxel.c:234: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.134
.L29:
| voxel.c:233: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.w %d0,(%a2)+	| _308, MEM[(short unsigned int *)_255]
| voxel.c:232: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %d4,%a0	| ivtmp.194, ivtmp.183
	jne .L30		|
| voxel.c:231: 	for (int y=0; y<HEIGHT; y++) {
	add.l #512,%d4	|, ivtmp.194
	add.l #512,%d7	|, ivtmp.196
	add.l #1024,%d6	|, ivtmp.197
	cmp.l #_colors+262656,%d4	|, ivtmp.194
	jne .L31		|
	tst.b %d5	| max_height_lsm_flag.134
	jeq .L32		|
	move.b %d3,_max_height	| max_height_lsm.133, max_height
.L32:
| voxel.c:239: 	int bayer[8][8] = {
	moveq #120,%d2	|, tmp179
	add.l %sp,%d2	|, tmp179
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp179,
	jsr _memcpy		|
	move.l %d2,84(%sp)	| tmp179, %sfp
	lea _pdata_table,%a6	|, tmp216
	move.l %a6,128(%sp)	| tmp216, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:249: 	for (int y = 0; y < 8; y++) {
	clr.l 112(%sp)	| %sfp
.L33:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 72(%sp),%a0	| %sfp,
	move.l (%a0),76(%sp)	| MEM[(int *)_37], %sfp
	move.l 4(%a0),80(%sp)	| MEM[(int *)_37 + 4B], %sfp
	move.l 8(%a0),84(%sp)	| MEM[(int *)_37 + 8B], %sfp
	move.l 12(%a0),88(%sp)	| MEM[(int *)_37 + 12B], %sfp
	move.l 16(%a0),92(%sp)	| MEM[(int *)_37 + 16B], %sfp
	move.l 20(%a0),96(%sp)	| MEM[(int *)_37 + 20B], %sfp
	move.l 24(%a0),100(%sp)	| MEM[(int *)_37 + 24B], %sfp
	move.l 28(%a0),104(%sp)	| MEM[(int *)_37 + 28B], %sfp
	move.l 116(%sp),68(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,48(%sp)	|, %sfp
| voxel.c:250: 		for (int opacity = 0; opacity < 8; opacity++) {
	clr.l 64(%sp)	| %sfp
	move.l 112(%sp),%d1	| %sfp,
	lsl.l #3,%d1	|,
	move.l %d1,108(%sp)	|, %sfp
.L57:
	move.l 64(%sp),%d0	| %sfp, opacity
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 76(%sp),%a0	| %sfp,
	sgt %d7		| tmp211
	ext.w %d7	| tmp212
	ext.l %d7	| tmp210
	neg.l %d7	| mask
	cmp.l 80(%sp),%a0	| %sfp,
	jle .L49		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #2,%d1	|,
	or.l %d1,%d7	|, mask
.L49:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L50		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #4,%d1	|,
	or.l %d1,%d7	|, mask
.L50:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 88(%sp),%a0	| %sfp,
	jle .L51		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #8,%d1	|,
	or.l %d1,%d7	|, mask
.L51:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 92(%sp),%a0	| %sfp,
	jle .L52		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #16,%d1	|,
	or.l %d1,%d7	|, mask
.L52:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 96(%sp),%a0	| %sfp,
	jle .L53		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #32,%d1	|,
	or.l %d1,%d7	|, mask
.L53:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L54		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #64,%d1	|,
	or.l %d1,%d7	|, mask
.L54:
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 104(%sp),%a0	| %sfp,
	jle .L55		|
| voxel.c:255: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #127,%d1	|,
	not.b %d1	|
	or.l %d1,%d7	|, mask
.L55:
| voxel.c:259: 					int bits = mask & evn;
	move.l %d7,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,%a5	|, bits
| voxel.c:262: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,52(%sp)	|, %sfp
| voxel.c:263: 						| ((color1&2) ? bits << 16 : 0)
	move.l %a5,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:264: 						| ((color1&4) ? bits <<  8 : 0)
	move.l %a5,%d1	| bits,
	lsl.l #8,%d1	|,
	move.l %d1,60(%sp)	|, %sfp
| voxel.c:266: 					bits = mask & odd;
	and.l #1431655765,%d7	|, bits
| voxel.c:268: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d7,%d1	| bits,
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a3	|, iftmp.20_105
| voxel.c:269: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d7,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.21_106
| voxel.c:270: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d7,%d1	| bits,
	lsl.l #8,%d1	|,
	move.l %d1,%a1	|, iftmp.22_107
	move.l 68(%sp),%a4	| %sfp, ivtmp.158
| voxel.c:257: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
| voxel.c:267: 					pdata_table[y][opacity][index] |= 0
	move.l 108(%sp),%d6	| %sfp, tmp205
	add.l %d0,%d6	| opacity, tmp205
	lsl.l #8,%d6	|, tmp206
.L47:
	btst #1,%d4	|, color1
	jeq .L34		|
	move.l 56(%sp),%d5	| %sfp, iftmp.17_101
.L35:
	btst #0,%d4	|, color1
	jeq .L36		|
	move.l 52(%sp),%d0	| %sfp, iftmp.16_100
.L37:
	or.l %d0,%d5	| iftmp.16_100, tmp189
	btst #2,%d4	|, color1
	jeq .L38		|
	move.l 60(%sp),%d0	| %sfp, iftmp.18_102
.L39:
	or.l %d0,%d5	| iftmp.18_102, tmp193
	btst #3,%d4	|, color1
	jeq .L40		|
	move.l %a5,%d0	| bits, bits
	or.l %d0,%d5	| bits, _235
	move.l %d4,%d2	| color1, ivtmp.151
	neg.l %d2	| ivtmp.151
| voxel.c:265: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.158, ivtmp.152
	move.l %d7,44(%sp)	| bits, %sfp
.L46:
	move.l %d2,%d3	| ivtmp.151, _200
	add.l %d4,%d3	| color1, _200
| voxel.c:260: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp197
	and.l %d2,%d0	| ivtmp.151, tmp197
| voxel.c:260: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp198
| voxel.c:260: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:268: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _200
	jeq .L59		|
	move.l %a3,%d1	| iftmp.20_105, prephitmp_136
	or.l %d5,%d1	| _235, prephitmp_136
.L42:
| voxel.c:269: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _200
	jeq .L43		|
	move.l %a2,%d7	| iftmp.21_106,
	or.l %d7,%d1	|, prephitmp_136
.L43:
| voxel.c:270: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _200
	jeq .L44		|
	move.l %a1,%d7	| iftmp.22_107,
	or.l %d7,%d1	|, prephitmp_136
.L44:
| voxel.c:271: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _200
	jeq .L45		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_136
.L45:
| voxel.c:267: 					pdata_table[y][opacity][index] |= 0
	add.l %d6,%d0	| tmp206, tmp207
	add.l %d0,%d0	| tmp207, tmp208
	add.l %d0,%d0	| tmp208, tmp209
	move.l %d1,(%a6,%d0.l)	| prephitmp_136, pdata_table[y_155][opacity_194][index_144]
| voxel.c:273: 					pdata_table[y][opacity][index2] = pdata_table[y][opacity][index];
	move.l %d1,(%a0)	| prephitmp_136, MEM[(unsigned int *)_226]
| voxel.c:258: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.151
	lea (-60,%a0),%a0	|, ivtmp.152
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.151,
	jne .L46		|
| voxel.c:257: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:257: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (64,%a4),%a4	|, ivtmp.158
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L47		|
| voxel.c:250: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,48(%sp)	|, %sfp
	add.l #1024,68(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l 64(%sp),%d7	| %sfp,
	jne .L57		|
| voxel.c:249: 	for (int y = 0; y < 8; y++) {
	addq.l #1,112(%sp)	|, %sfp
| voxel.c:249: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,72(%sp)	|, %sfp
	add.l #8192,116(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l 112(%sp),%d0	| %sfp,
	jne .L33		|
	lea _horizon,%a0	|, vectp_horizon.140
.L56:
| voxel.c:280: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d7	|,
	move.l %d7,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.140_201]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.140
	jne .L56		|
| voxel.c:281: }
	movem.l (%sp)+,#31996	|,
	lea (332,%sp),%sp	|,
	rts	
.L81:
| voxel.c:224: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:226: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _23 * 1]
| voxel.c:211: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:211: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.218
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
	jra .L28		|
.L59:
| voxel.c:268: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _235, prephitmp_136
	jra .L42		|
.L40:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _235
	move.l %d4,%d2	| color1, ivtmp.151
	neg.l %d2	| ivtmp.151
| voxel.c:265: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.158, ivtmp.152
	move.l %d7,44(%sp)	| bits, %sfp
	jra .L46		|
.L38:
	moveq #0,%d0	| iftmp.18_102
	jra .L39		|
.L36:
	moveq #0,%d0	| iftmp.16_100
	jra .L37		|
.L34:
	moveq #0,%d5	| iftmp.17_101
	jra .L35		|
	.even
	.globl	_render
_render:
	lea (-12,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 60(%sp),%a0	| pos, pos
	move.l 72(%sp),%d0	| x, x
	move.w 78(%sp),%a6	| y_offset, y_offset
| voxel.c:340: 	short ytable_offset = 256 - player_height;
	move.w #256,%d6	|, ytable_offset
	sub.w 70(%sp),%d6	| player_height, ytable_offset
| voxel.c:341: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d1	| max_height
	move.b _max_height,%d1	| max_height, max_height
	add.w %d6,%d1	| ytable_offset, max_height_ytable_index
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_86(D)->dirx, _11
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d0,%d2	|, _15
	add.w #-160,%d2	|, _15
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d5	| pos_86(D)->diry, _17
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d4	| _15,
	muls.w %d3,%d4	| _11, tmp130
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp131
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d5,%d4	| _17, tmp132
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp134
	clr.w %d4	| tmp134
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d5,%d2	| _17, tmp135
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp136
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp136, tmp137
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d4	| tmp137, tmp139
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_86(D)->y
	move.w 2(%a0),%d2	| pos_86(D)->y, pos_86(D)->y
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp141
	clr.w %d2	| tmp141
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_86(D)->x, tmp143
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp144
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp145
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp146
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp147
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp148
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp149
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp150
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp151
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|, tmp152
	asr.w #4,%d3	|, tmp152
	move.w %d3,%a0	| tmp152, tmp153
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp153, tmp154
	add.l %a0,%a0	| tmp154, tmp155
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (15920,%a0),%a0	|, tmp156
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp156, tmp156, tmp157
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp159
	moveq #1,%d3	|,
	and.l %d3,%d0	|, tmp160
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp157, tmp160, tmp161
	add.l 64(%sp),%a0	| out, pBlock
| voxel.c:391: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.l _combined_lin,%a5	| combined_lin, combined_lin.30_37
| voxel.c:375: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:373: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,44(%sp)	|, %sfp
| voxel.c:367: 	unsigned short color = 0;
	clr.w %d5	| color
| voxel.c:365: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:353: 	short sample_y = 200;
	move.w #200,%d7	|, sample_y
| voxel.c:453: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a4	|, tmp199
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lea _pdata_table,%a3	|, tmp200
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %d6,%a1	| ytable_offset,
	move.l %a1,48(%sp)	|, %sfp
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a2	|, tmp202
	move.w %d1,%a1	| max_height_ytable_index,
	move.l %a1,52(%sp)	|, %sfp
	move.l #524287,%a1	|, index_mask
.L90:
| voxel.c:378: 		if (y < sample_y) {
	cmp.w %d7,%d0	| sample_y, <retval>
	jge .L83		|
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d1	| z, tmp195
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d0	|, <retval>
	jle .L97		|
	moveq #9,%d5	|,
	lsl.l %d5,%d1	|, tmp195
.L84:
| voxel.c:318: 	asm (
#APP
| 318 "voxel.c" 1
	move.l %d2, %d6	| sample_vu, tmp
	lsr.l #6, %d6	| tmp
	move.l %d6, %d5	| tmp, result
	and.l #0x0003fe, %d6	| tmp
	lsr.l #7, %d5	| result
	and.l #0x07fc00, %d5	| result
	or.l %d6,%d5	| tmp, result
| 0 "" 2
| voxel.c:390: 			unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	move.l %a1,%d6	| index_mask,
	and.l %d6,%d5	|, index
| voxel.c:391: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.w (%a5,%d5.l),%d5	| *_38, height_color
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d6	| tmp172
	move.b %d5,%d6	| height_color, tmp172
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l 48(%sp),%d6	| %sfp, tmp175
	add.l %d6,%d1	| tmp175, tmp176
	add.l %d1,%d1	| tmp176, tmp177
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %a6,%d7	| y_offset, sample_y
	add.w (%a2,%d1.l),%d7	| y_table[z_65][_42], sample_y
| voxel.c:394: 			color = height_color >> 8;
	lsr.w #8,%d5	|, color
| voxel.c:427: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp178
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:430: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp179
	and.l %d3,%d1	| z, tmp179
| voxel.c:430: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L86		|
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp180
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:434: 					index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %a1,%a1	| index_mask, tmp181
| voxel.c:434: 					index_mask = (index_mask << 1) & 0x7fbfd;
	move.l %a1,%d1	| tmp181,
	and.l #523261,%d1	|,
	move.l %d1,%a1	|, index_mask
.L86:
| voxel.c:376: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d6	|,
	cmp.l %d3,%d6	| z,
	jne .L90		|
| voxel.c:473: }
	movem.l (%sp)+,#31996	|,
	lea (12,%sp),%sp	|,
	rts	
.L83:
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d1	|, tmp185
	and.l %d0,%d1	| <retval>, tmp185
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d6	| opacity
	move.b (%a4,%d3.l),%d6	| opacity_table[z_65], opacity
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d1	|, tmp187
	add.l %d6,%d1	| opacity, tmp188
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d5,%d6	| color, color
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #8,%d1	|, tmp190
	add.l %d6,%d1	| color, tmp191
	add.l %d1,%d1	| tmp191, tmp192
	add.l %d1,%d1	| tmp192, tmp193
	move.l (%a3,%d1.l),%d1	| pdata_table[_50][_51][_52], movep_data
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:459: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, <retval>
| voxel.c:462: 			if (opacity == 7) {
	cmp.b #7,(%a4,%d3.l)	|, opacity_table[z_65]
	jeq .L103		|
.L87:
| voxel.c:376: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L90		|
| voxel.c:473: }
	movem.l (%sp)+,#31996	|,
	lea (12,%sp),%sp	|,
	rts	
.L103:
| voxel.c:463: 				if (sample_y < 0) sample_y = 0;
	tst.w %d7	| sample_y
	jlt .L104		|
.L99:
| voxel.c:464: 				while (y >= sample_y) {
	cmp.w %d0,%d7	| <retval>, sample_y
	jgt .L87		|
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:466: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, <retval>
	jra .L99		|
.L97:
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	moveq #9,%d6	|,
	lsl.l %d6,%d1	|, tmp195
	move.l %d1,%d5	| tmp195, tmp165
	add.l 52(%sp),%d5	| %sfp, tmp165
	add.l %d5,%d5	| tmp165, tmp166
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w (%a2,%d5.l),%d0	| y_table[z_65][_35], <retval>
	jgt .L84		|
| voxel.c:473: }
	movem.l (%sp)+,#31996	|,
	lea (12,%sp),%sp	|,
	rts	
.L104:
| voxel.c:463: 				if (sample_y < 0) sample_y = 0;
	clr.w %d7	| sample_y
	jra .L99		|
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:478: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:478: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:480: 	while (remaining_lines > 0) {
	tst.w %d1	| _5
	jle .L106		|
	and.l #65535,%d1	|, _5
	move.l %d1,%a1	| _5, tmp74
	add.l %d1,%a1	| _5, tmp74
	add.l %a1,%a1	| tmp74, tmp75
	add.l %a1,%d1	| tmp75, tmp76
	lsl.l #5,%d1	|, tmp77
	move.l %a0,%a1	| pBlock, _33
	sub.l %d1,%a1	| tmp77, _33
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp79
.L107:
#APP
| 310 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:482: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:480: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _33
	jne .L107		|
.L106:
| voxel.c:485: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:486: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC1:
	.ascii "Tables computed.\0"
.LC2:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-92,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:500: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:502: 	Super(0L);
	moveq #0,%d0	| tmp248
#APP
| 502 "voxel.c" 1
	movl	%d0,%sp@-	| tmp248
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:504: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:506: 	lineaa();
	jsr _lineaa		|
| voxel.c:507: 	build_tables();
	jsr _build_tables		|
| voxel.c:508: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:509:         set_palette();
	jsr _set_palette		|
| voxel.c:510: 	unsigned short *screen = Physbase();
#APP
| 510 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,82(%sp)	| tmp447, %sfp
| voxel.c:511: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp447,
	jsr _draw_image2		|
	move.l 90(%sp),%a0	| %sfp, ivtmp.301
	move.l %a0,%d0	| ivtmp.301, _122
	add.l #32000,%d0	|, _122
	lea (12,%sp),%sp	|,
.L112:
| voxel.c:126: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.256_763]
	cmp.l %a0,%d0	| ivtmp.301, _122
	jne .L112		|
| voxel.c:513: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,132(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:526: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,118(%sp)	| __aline, %sfp
| voxel.c:341: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d1	|
	move.b _max_height,%d1	| max_height,
	move.w %d1,126(%sp)	|, %sfp
| voxel.c:391: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.l _combined_lin,%a2	| combined_lin, combined_lin.30_261
| voxel.c:519: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,106(%sp)	| pos.y, %sfp
| voxel.c:519: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),100(%sp)	| pos.x, %sfp
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,76(%sp)	| pos.dirx, %sfp
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,74(%sp)	| pos.diry, %sfp
| voxel.c:537: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,102(%sp)	| pos.speed, %sfp
	clr.w 108(%sp)	| %sfp
| voxel.c:514: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,94(%sp)	|, %sfp
	moveq #0,%d4	| val.11_129
	move.w 100(%sp),%d4	| %sfp, val.11_129
| voxel.c:453: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a3	|, tmp431
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lea _pdata_table,%a4	|, tmp432
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a5	|, tmp434
| voxel.c:353: 	short sample_y = 200;
	move.l %a2,128(%sp)	| combined_lin.30_261, %sfp
.L130:
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 106(%sp),%d0	| %sfp, tmp263
	lsr.w #7,%d0	|, tmp263
| voxel.c:519: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp264
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 100(%sp),%d1	| %sfp, tmp265
	lsr.w #7,%d1	|, tmp265
| voxel.c:519: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp266
| voxel.c:519: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp267
	add.l %d1,%d0	| tmp266, tmp268
	add.l %d0,%d0	| tmp268, tmp269
| voxel.c:520: 		int player_altitude = height_under_player + 20;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_2][_4], tmp271
	and.l #255,%d0	|, tmp271
	moveq #20,%d1	|,
	add.l %d1,%d0	|, player_altitude
| voxel.c:522: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 94(%sp),%d1	| %sfp, tmp273
	addq.l #2,%d1	|, tmp273
| voxel.c:522: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp273
	jle .L113		|
	moveq #0,%d1	|, tmp273
	not.b %d1	| tmp273
.L113:
	cmp.l %d0,%d1	| player_altitude, tmp273
	jge .L114		|
	move.l %d1,%d0	| tmp273, player_altitude
.L114:
| voxel.c:523: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 94(%sp),%d1	| %sfp, tmp274
	subq.l #2,%d1	|, tmp274
| voxel.c:523: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,94(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp274
	jle .L115		|
	move.l %d1,94(%sp)	| tmp274, %sfp
.L115:
| voxel.c:527: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 108(%sp),%d0	| %sfp, _12
	and.w #8,%d0	|, _12
| voxel.c:527: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _12
	move.w %d0,48(%sp)	| _12, %sfp
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 118(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.39_8 + 4294966696B],
	move.l %a0,110(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp275
	add.l %a0,%d0	|, tmp275
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp275
	move.l %d0,82(%sp)	| tmp275, %sfp
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 118(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.39_8 + 4294966694B],
	move.l %a1,114(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp276
	add.l #-160,%d0	|, tmp276
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _18
| voxel.c:340: 	short ytable_offset = 256 - player_height;
	move.w #256,%d3	|, _197
	sub.w 96(%sp),%d3	| %sfp, _197
| voxel.c:341: 	short max_height_ytable_index = max_height + ytable_offset;
	move.w 126(%sp),%d2	| %sfp, max_height_ytable_index
	add.w %d3,%d2	| _197, max_height_ytable_index
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 106(%sp),%d1	| %sfp,
	swap %d1	| tmp278
	clr.w %d1	| tmp278
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.11_129, tmp280
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp280
	move.l %d1,86(%sp)	| tmp280, %sfp
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 74(%sp),%a0	| %sfp,
	move.l %a0,122(%sp)	|, %sfp
	move.l %d0,%d1	| _18,
	lsl.l #4,%d1	|,
	move.l %d1,90(%sp)	|, %sfp
	moveq #0,%d4	| x
	move.w 48(%sp),%d4	| %sfp, x
	move.l %d0,-(%sp)	| _18,
	move.l %d4,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp448, %sfp
	add.l %d4,%d4	| x, tmp287
	add.l #_horizon,%d4	|, tmp287
	move.l %d4,54(%sp)	| tmp287, %sfp
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %d3,%a1	| _197,
	move.l %a1,50(%sp)	|, %sfp
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.w %d2,%a0	| max_height_ytable_index,
	move.l %a0,62(%sp)	|, %sfp
	move.l 128(%sp),%a2	| %sfp, combined_lin.30_261
.L127:
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:529: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %d0,%a1	| tmp449, y_offset
	add.l 82(%sp),%a1	| %sfp, y_offset
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 48(%sp),%d0	| %sfp, _216
	add.w #-160,%d0	|, _216
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 76(%sp),%d4	| %sfp,
	muls.w %d0,%d4	| _216, tmp293
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp294
| voxel.c:345: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 74(%sp),%d4	| %sfp, tmp295
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp297
	clr.w %d4	| tmp297
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 74(%sp),%d0	| %sfp, tmp298
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d0	|, tmp299
| voxel.c:346: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 76(%sp),%d1	| %sfp, tmp300
	sub.w %d0,%d1	| tmp299, tmp300
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d4	| tmp300, tmp302
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	move.l 86(%sp),%d2	| %sfp, tmp303
	add.l %d4,%d2	| delta_vu, tmp303
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp304
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp305
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp306
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp307
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp308
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp309
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp, tmp310
	asr.w #4,%d0	|, tmp310
	ext.l %d0	| tmp311
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp311, tmp312
	add.l %d0,%d0	| tmp312, tmp312
	move.l %d0,66(%sp)	| tmp312, %sfp
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp315
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp315,
	move.l %d1,70(%sp)	|, %sfp
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 66(%sp),%d0	| %sfp, tmp316
	add.l #15920,%d0	|, tmp316
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp316, tmp317
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp317, tmp318
	add.l %d1,%a0	|, tmp318
	add.l 78(%sp),%a0	| %sfp, pBlock
| voxel.c:367: 	unsigned short color = 0;
	clr.w %d5	| color
| voxel.c:373: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d7	|, index_mask
| voxel.c:365: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:375: 	short y = 199;
	move.w #199,%d1	|, y
| voxel.c:353: 	short sample_y = 200;
	move.w #200,%a6	|, sample_y
.L124:
| voxel.c:460: 			y -= LINES_SKIP;
	move.w %d1,44(%sp)	| y, %sfp
| voxel.c:378: 		if (y < sample_y) {
	cmp.w %a6,%d1	| sample_y, y
	jge .L116		|
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d0	| z, tmp423
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d1	|, y
	jle .L142		|
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp423
.L117:
| voxel.c:318: 	asm (
#APP
| 318 "voxel.c" 1
	move.l %d2, %d6	| sample_vu,
	lsr.l #6, %d6	|
	move.l %d6, %d5	|, result
	and.l #0x0003fe, %d6	|
	lsr.l #7, %d5	| result
	and.l #0x07fc00, %d5	| result
	or.l %d6,%d5	|, result
| 0 "" 2
| voxel.c:390: 			unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d5	| index_mask, index
| voxel.c:391: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.w (%a2,%d5.l),%d5	| *_262, height_color
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d6	|
	move.b %d5,%d6	| height_color,
	move.l %d6,%a6	|, tmp329
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l 50(%sp),%a6	| %sfp, tmp332
	add.l %a6,%d0	| tmp332, tmp333
	add.l %d0,%d0	| tmp333, tmp334
| voxel.c:393: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w (%a5,%d0.l),%a6	| y_table[z_324][_267], sample_y
	add.w %a1,%a6	| y_offset, sample_y
| voxel.c:394: 			color = height_color >> 8;
	lsr.w #8,%d5	|, color
| voxel.c:427: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp335
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:430: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d0	|, tmp336
	and.l %d3,%d0	| z, tmp336
| voxel.c:430: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L119		|
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp337
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:434: 					index_mask = (index_mask << 1) & 0x7fbfd;
	add.l %d7,%d7	| index_mask, tmp338
| voxel.c:434: 					index_mask = (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d7	|, index_mask
.L119:
| voxel.c:376: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d0	|,
	cmp.l %d3,%d0	| z,
	jne .L124		|
	move.w 44(%sp),%d6	| %sfp, prephitmp_737
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d0	| y,
	muls.w #80,%d0	|, _734
.L123:
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d0	| %sfp, tmp353
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp353, tmp354
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp354, tmp355
	add.l 70(%sp),%a0	| %sfp, tmp355
	add.l 78(%sp),%a0	| %sfp, pBlock
| voxel.c:478: 	short remaining_lines = y - horizon[x];
	move.l 54(%sp),%a1	| %sfp,
	sub.w (%a1),%d6	| MEM[(short int *)_773], _185
| voxel.c:480: 	while (remaining_lines > 0) {
	tst.w %d6	| _185
	jle .L125		|
	and.l #65535,%d6	|, _185
	move.l %d6,%d0	| _185, tmp358
	add.l %d6,%d0	| _185, tmp358
	add.l %d0,%d0	| tmp358, tmp359
	add.l %d0,%d6	| tmp359, tmp360
	lsl.l #5,%d6	|, tmp361
	move.l %a0,%a1	| pBlock, _738
	sub.l %d6,%a1	| tmp361, _738
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d0	| tmp363
.L126:
#APP
| 310 "voxel.c" 1
	movep.l %d0, 0(%a0)	| tmp363, pBlock
| 0 "" 2
| voxel.c:482: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:480: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _738
	jne .L126		|
.L125:
| voxel.c:485: 	horizon[x] = y;
	move.l 54(%sp),%a0	| %sfp,
	move.w %d1,(%a0)	| y, MEM[(short int *)_773]
| voxel.c:527: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:527: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 90(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,54(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L127		|
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 102(%sp),%d0	| %sfp,
	muls.w 76(%sp),%d0	| %sfp, tmp364
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp365
| voxel.c:537: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,100(%sp)	| tmp365, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 102(%sp),%d0	| %sfp,
	muls.w 74(%sp),%d0	| %sfp, tmp366
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp367
| voxel.c:538: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 106(%sp),%d0	| %sfp, _39
| voxel.c:537: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.11_129
	move.w 100(%sp),%d4	| %sfp, val.11_129
	move.w 100(%sp),%d2	| %sfp,
	swap %d2	| _39
	clr.w %d2	| _39
	move.w %d0,%d2	| _39, _39
| voxel.c:538: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,106(%sp)	| _39, %sfp
| voxel.c:540: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp373
	sub.l 110(%sp),%d0	| %sfp, tmp373
| voxel.c:540: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp374
| voxel.c:540: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 102(%sp),%d0	| %sfp, _46
| voxel.c:541: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _46, tmp375
	asr.w #3,%d1	|, tmp375
| voxel.c:541: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _46, tmp376
	asr.w #4,%d3	|, tmp376
| voxel.c:541: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d1	| tmp376, tmp377
| voxel.c:541: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, tmp378
| voxel.c:542: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _46
	jle .L128		|
| voxel.c:542: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| tmp378, _46
	move.w %d0,102(%sp)	| _46, %sfp
| voxel.c:537: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:542: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 102(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:544: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp381
	not.b %d3	| tmp381
	sub.l 114(%sp),%d3	| %sfp, tmp381
| voxel.c:544: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _62
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 122(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp384
| voxel.c:545: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 76(%sp),%d2	| %sfp, _66
	add.w %d0,%d2	| tmp384, _66
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _62,
	move.w %d2,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp388
| voxel.c:546: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 74(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp388, _70
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _66,
	muls.w %d2,%d0	| _66, tmp389
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp390
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _70,
	muls.w %d1,%d3	| _70, tmp392
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp393
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d3,%a0	| tmp393, tmp394
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d3	|, tmp396
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp397
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp397, factor
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp398
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp399
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,76(%sp)	| tmp399, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp400
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,74(%sp)	| tmp401, %sfp
| voxel.c:553: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _142
	clr.w %d2	| _142
	move.w %d0,%d2	| tmp401, _142
	move.l %d2,_pos+6	| _142, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:515: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,108(%sp)	|, %sfp
	cmp.w #6400,108(%sp)	|, %sfp
	jne .L130		|
.L150:
| voxel.c:560: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:561: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 132(%sp),%a0	| %sfp, tmp409
| voxel.c:561: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp409, tmp411
	add.l %a0,%d0	| tmp409, tmp411
	add.l %d0,%d0	| tmp411, tmp412
| voxel.c:562: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:563: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp452,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.46_121
	move.l 4(%a0),%d0	| stdin.46_121->__bufp, _119
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.46_121->__get_limit, _119
	jcc .L131		|
	addq.l #1,%d0	|, _119
	move.l %d0,4(%a0)	| _119, stdin.46_121->__bufp
| voxel.c:567: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (92,%sp),%sp	|,
	rts	
.L116:
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d0	|, tmp342
	and.l %d1,%d0	| y, tmp342
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d6	| opacity
	move.b (%a3,%d3.l),%d6	| opacity_table[z_324], opacity
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d0	|, tmp344
	add.l %d6,%d0	| opacity, tmp345
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d5,%d6	| color, color
| voxel.c:457: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #8,%d0	|, tmp347
	add.l %d6,%d0	| color, tmp348
	add.l %d0,%d0	| tmp348, tmp349
	add.l %d0,%d0	| tmp349, tmp350
	move.l (%a4,%d0.l),%d0	| pdata_table[_289][_290][_292], movep_data
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:459: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 			y -= LINES_SKIP;
	subq.w #1,%d1	|, y
| voxel.c:462: 			if (opacity == 7) {
	cmp.b #7,(%a3,%d3.l)	|, opacity_table[z_324]
	jeq .L148		|
.L120:
| voxel.c:376: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d1	|, y
	jne .L124		|
	moveq #-1,%d6	|, prephitmp_737
	moveq #-80,%d0	|, _734
	jra .L123		|
.L148:
| voxel.c:463: 				if (sample_y < 0) sample_y = 0;
	clr.w %d6	|
	cmp.w %a6,%d6	| sample_y,
	jgt .L149		|
.L145:
| voxel.c:464: 				while (y >= sample_y) {
	cmp.w %a6,%d1	| sample_y, y
	jlt .L120		|
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:466: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:467: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
	jra .L145		|
.L149:
| voxel.c:463: 				if (sample_y < 0) sample_y = 0;
	sub.l %a6,%a6	| sample_y
	jra .L145		|
.L142:
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	moveq #9,%d6	|,
	lsl.l %d6,%d0	|, tmp423
	move.l %d0,%d5	| tmp423, tmp322
	add.l 62(%sp),%d5	| %sfp, tmp322
	add.l %d5,%d5	| tmp322, tmp323
| voxel.c:384: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w (%a5,%d5.l),%d1	| y_table[z_324][_253], y
	jgt .L117		|
	move.w %d1,%d6	| y, prephitmp_737
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d0	| y,
	muls.w #80,%d0	|, _734
	jra .L123		|
.L128:
| voxel.c:543: 		else pos.speed += drag;
	add.w %d1,%d0	| tmp378, _46
	move.w %d0,102(%sp)	| _46, %sfp
| voxel.c:537: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:542: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 102(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:544: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp381
	not.b %d3	| tmp381
	sub.l 114(%sp),%d3	| %sfp, tmp381
| voxel.c:544: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _62
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 122(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp384
| voxel.c:545: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 76(%sp),%d2	| %sfp, _66
	add.w %d0,%d2	| tmp384, _66
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _62,
	move.w %d2,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp388
| voxel.c:546: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 74(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp388, _70
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _66,
	muls.w %d2,%d0	| _66, tmp389
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp390
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _70,
	muls.w %d1,%d3	| _70, tmp392
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp393
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d3,%a0	| tmp393, tmp394
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d3	|, tmp396
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp397
| voxel.c:552: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp397, factor
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp398
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp399
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,76(%sp)	| tmp399, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp400
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,74(%sp)	| tmp401, %sfp
| voxel.c:553: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _142
	clr.w %d2	| _142
	move.w %d0,%d2	| tmp401, _142
	move.l %d2,_pos+6	| _142, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:515: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,108(%sp)	|, %sfp
	cmp.w #6400,108(%sp)	|, %sfp
	jne .L130		|
	jra .L150		|
.L131:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.46_121,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:567: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (92,%sp),%sp	|,
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
	.globl	_combined_lin
	.data
	.even
_combined_lin:
	.long	_combined
	.globl	_combined
	.bss
	.even
_combined:
	.skip 524288
