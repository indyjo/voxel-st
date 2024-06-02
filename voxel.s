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
| voxel.c:203: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:202: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:201: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp215
	lea _opacity_table,%a5	|, tmp214
.L24:
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _127
	lsr.w #7,%d0	|, _127
| voxel.c:205: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _127, _3
| voxel.c:207: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp164
| voxel.c:207: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp164,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _86
	add.w #120,%d2	|, _86
| voxel.c:207: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.218, ivtmp.207
	move.w #-17920,%a2	|, ivtmp.204
.L25:
| voxel.c:205: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.204,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:207: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _86,
	sub.w %d0,%d1	| tmp243,
	move.w %d1,(%a3)+	|, MEM[(short int *)_154]
| voxel.c:204: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.204
	cmp.w #17920,%a2	|, ivtmp.204
	jne .L25		|
| voxel.c:210: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:212: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp148
	and.l %d4,%d0	| z, tmp148
| voxel.c:212: 		if (TRIGGERS_PROGRESSION(z))
	jne .L26		|
| voxel.c:59: 	return x + x;
	add.w %d7,%d7	| step, step
.L26:
| voxel.c:215: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:216: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L81		|
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _23 * 1]
| voxel.c:203: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:203: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.218
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
.L28:
| voxel.c:222: 	max_height = 0;
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
| voxel.c:225: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_276], _305
| voxel.c:225: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _302
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_48], _302
	lsl.w #8,%d0	|, tmp177
| voxel.c:225: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d2	| _305
	move.b %d1,%d2	| _305, _305
| voxel.c:225: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d2,%d0	| _305, _308
| voxel.c:226: 			if (height[y][x] > max_height)
	cmp.b %d3,%d1	| max_height_lsm.133, _305
	jls .L29		|
| voxel.c:227: 				max_height = height[y][x];
	move.b %d1,%d3	| _305, max_height_lsm.133
| voxel.c:226: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.134
.L29:
| voxel.c:225: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.w %d0,(%a2)+	| _308, MEM[(short unsigned int *)_255]
| voxel.c:224: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %d4,%a0	| ivtmp.194, ivtmp.183
	jne .L30		|
| voxel.c:223: 	for (int y=0; y<HEIGHT; y++) {
	add.l #512,%d4	|, ivtmp.194
	add.l #512,%d7	|, ivtmp.196
	add.l #1024,%d6	|, ivtmp.197
	cmp.l #_colors+262656,%d4	|, ivtmp.194
	jne .L31		|
	tst.b %d5	| max_height_lsm_flag.134
	jeq .L32		|
	move.b %d3,_max_height	| max_height_lsm.133, max_height
.L32:
| voxel.c:231: 	int bayer[8][8] = {
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
| voxel.c:241: 	for (int y = 0; y < 8; y++) {
	clr.l 112(%sp)	| %sfp
.L33:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
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
| voxel.c:242: 		for (int opacity = 0; opacity < 8; opacity++) {
	clr.l 64(%sp)	| %sfp
	move.l 112(%sp),%d1	| %sfp,
	lsl.l #3,%d1	|,
	move.l %d1,108(%sp)	|, %sfp
.L57:
	move.l 64(%sp),%d0	| %sfp, opacity
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 76(%sp),%a0	| %sfp,
	sgt %d7		| tmp211
	ext.w %d7	| tmp212
	ext.l %d7	| tmp210
	neg.l %d7	| mask
	cmp.l 80(%sp),%a0	| %sfp,
	jle .L49		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #2,%d1	|,
	or.l %d1,%d7	|, mask
.L49:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L50		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #4,%d1	|,
	or.l %d1,%d7	|, mask
.L50:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 88(%sp),%a0	| %sfp,
	jle .L51		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #8,%d1	|,
	or.l %d1,%d7	|, mask
.L51:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 92(%sp),%a0	| %sfp,
	jle .L52		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #16,%d1	|,
	or.l %d1,%d7	|, mask
.L52:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 96(%sp),%a0	| %sfp,
	jle .L53		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #32,%d1	|,
	or.l %d1,%d7	|, mask
.L53:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L54		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #64,%d1	|,
	or.l %d1,%d7	|, mask
.L54:
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	move.l 48(%sp),%a0	| %sfp,
	cmp.l 104(%sp),%a0	| %sfp,
	jle .L55		|
| voxel.c:247: 				if (bayer[y][x] < (opacity+1) * 8) mask |= 1 << x;
	moveq #127,%d1	|,
	not.b %d1	|
	or.l %d1,%d7	|, mask
.L55:
| voxel.c:251: 					int bits = mask & evn;
	move.l %d7,%d1	| mask,
	and.l #-1431655766,%d1	|,
	move.l %d1,%a5	|, bits
| voxel.c:254: 						| ((color1&1) ? bits << 24 : 0)
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,52(%sp)	|, %sfp
| voxel.c:255: 						| ((color1&2) ? bits << 16 : 0)
	move.l %a5,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,56(%sp)	|, %sfp
| voxel.c:256: 						| ((color1&4) ? bits <<  8 : 0)
	move.l %a5,%d1	| bits,
	lsl.l #8,%d1	|,
	move.l %d1,60(%sp)	|, %sfp
| voxel.c:258: 					bits = mask & odd;
	and.l #1431655765,%d7	|, bits
| voxel.c:260: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d7,%d1	| bits,
	lsl.w #8,%d1	|,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a3	|, iftmp.20_105
| voxel.c:261: 						| ((color2&2) ? bits << 16 : 0)
	move.l %d7,%d1	| bits,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.21_106
| voxel.c:262: 						| ((color2&4) ? bits <<  8 : 0)
	move.l %d7,%d1	| bits,
	lsl.l #8,%d1	|,
	move.l %d1,%a1	|, iftmp.22_107
	move.l 68(%sp),%a4	| %sfp, ivtmp.158
| voxel.c:249: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d4	| color1
| voxel.c:259: 					pdata_table[y][opacity][index] |= 0
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
| voxel.c:257: 						| ((color1&8) ? bits <<  0 : 0);
	move.l %a4,%a0	| ivtmp.158, ivtmp.152
	move.l %d7,44(%sp)	| bits, %sfp
.L46:
	move.l %d2,%d3	| ivtmp.151, _200
	add.l %d4,%d3	| color1, _200
| voxel.c:252: 					int index = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp197
	and.l %d2,%d0	| ivtmp.151, tmp197
| voxel.c:252: 					int index = ((color2 - color1) & 15) * 16 + color1;
	lsl.l #4,%d0	|, tmp198
| voxel.c:252: 					int index = ((color2 - color1) & 15) * 16 + color1;
	add.l %d4,%d0	| color1, index
| voxel.c:260: 						| ((color2&1) ? bits << 24 : 0)
	btst #0,%d3	|, _200
	jeq .L59		|
	move.l %a3,%d1	| iftmp.20_105, prephitmp_136
	or.l %d5,%d1	| _235, prephitmp_136
.L42:
| voxel.c:261: 						| ((color2&2) ? bits << 16 : 0)
	btst #1,%d3	|, _200
	jeq .L43		|
	move.l %a2,%d7	| iftmp.21_106,
	or.l %d7,%d1	|, prephitmp_136
.L43:
| voxel.c:262: 						| ((color2&4) ? bits <<  8 : 0)
	btst #2,%d3	|, _200
	jeq .L44		|
	move.l %a1,%d7	| iftmp.22_107,
	or.l %d7,%d1	|, prephitmp_136
.L44:
| voxel.c:263: 						| ((color2&8) ? bits <<  0 : 0);
	btst #3,%d3	|, _200
	jeq .L45		|
	or.l 44(%sp),%d1	| %sfp, prephitmp_136
.L45:
| voxel.c:259: 					pdata_table[y][opacity][index] |= 0
	add.l %d6,%d0	| tmp206, tmp207
	add.l %d0,%d0	| tmp207, tmp208
	add.l %d0,%d0	| tmp208, tmp209
	move.l %d1,(%a6,%d0.l)	| prephitmp_136, pdata_table[y_155][opacity_194][index_144]
| voxel.c:265: 					pdata_table[y][opacity][index2] = pdata_table[y][opacity][index];
	move.l %d1,(%a0)	| prephitmp_136, MEM[(unsigned int *)_226]
| voxel.c:250: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.151
	lea (-60,%a0),%a0	|, ivtmp.152
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.151,
	jne .L46		|
| voxel.c:249: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, bits
	addq.l #1,%d4	|, color1
| voxel.c:249: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (64,%a4),%a4	|, ivtmp.158
	moveq #16,%d1	|,
	cmp.l %d4,%d1	| color1,
	jne .L47		|
| voxel.c:242: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,48(%sp)	|, %sfp
	add.l #1024,68(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l 64(%sp),%d7	| %sfp,
	jne .L57		|
| voxel.c:241: 	for (int y = 0; y < 8; y++) {
	addq.l #1,112(%sp)	|, %sfp
| voxel.c:241: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,72(%sp)	|, %sfp
	add.l #8192,116(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l 112(%sp),%d0	| %sfp,
	jne .L33		|
	lea _horizon,%a0	|, vectp_horizon.140
.L56:
| voxel.c:272: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d7	|,
	move.l %d7,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.140_201]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.140
	jne .L56		|
| voxel.c:273: }
	movem.l (%sp)+,#31996	|,
	lea (332,%sp),%sp	|,
	rts	
.L81:
| voxel.c:216: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #23,%d0	|, tmp152
	sub.l %a0,%d0	| rel_dist, tmp152
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp153
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp153,
	jsr (%a4)		| tmp215
	addq.l #8,%sp	|,
| voxel.c:218: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp244, MEM[(unsigned char *)&opacity_table + _23 * 1]
| voxel.c:203: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:203: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.218
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
	jra .L28		|
.L59:
| voxel.c:260: 						| ((color2&1) ? bits << 24 : 0)
	move.l %d5,%d1	| _235, prephitmp_136
	jra .L42		|
.L40:
	moveq #0,%d0	| bits
	or.l %d0,%d5	| bits, _235
	move.l %d4,%d2	| color1, ivtmp.151
	neg.l %d2	| ivtmp.151
| voxel.c:257: 						| ((color1&8) ? bits <<  0 : 0);
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
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 52(%sp),%a0	| pos, pos
	move.l 64(%sp),%d0	| x, x
	move.w 70(%sp),%a6	| y_offset, y_offset
| voxel.c:333: 	short ytable_offset = 256 - player_height;
	move.w #256,%a1	|, ytable_offset
	sub.w 62(%sp),%a1	| player_height, ytable_offset
| voxel.c:334: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d1	| max_height
	move.b _max_height,%d1	| max_height, max_height
	add.w %a1,%d1	| ytable_offset, max_height_ytable_index
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 6(%a0),%d3	| pos_81(D)->dirx, _11
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d0,%d2	|, _15
	add.w #-160,%d2	|, _15
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 8(%a0),%d5	| pos_81(D)->diry, _17
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w %d2,%d4	| _15,
	muls.w %d3,%d4	| _11, tmp127
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp128
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w %d5,%d4	| _17, tmp129
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp131
	clr.w %d4	| tmp131
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w %d5,%d2	| _17, tmp132
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d2	|, tmp133
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	sub.w %d2,%d3	| tmp133, tmp134
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d4	| tmp134, tmp136
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	moveq #0,%d2	| pos_81(D)->y
	move.w 2(%a0),%d2	| pos_81(D)->y, pos_81(D)->y
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp138
	clr.w %d2	| tmp138
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w (%a0),%d2	| pos_81(D)->x, tmp140
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp141
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp142
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp143
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp144
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp145
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp146
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp147
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp148
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	|, tmp149
	asr.w #4,%d3	|, tmp149
	move.w %d3,%a0	| tmp149, tmp150
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp150, tmp151
	add.l %a0,%a0	| tmp151, tmp152
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (15920,%a0),%a0	|, tmp153
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %a0,%d3	| tmp153, tmp154
	add.l %a0,%d3	| tmp153, tmp154
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp156
	moveq #1,%d5	|,
	and.l %d5,%d0	|, tmp157
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%a0	| tmp154, tmp158
	add.l %d0,%a0	| tmp157, tmp158
	add.l 56(%sp),%a0	| out, pBlock
| voxel.c:381: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.l _combined_lin,%d6	| combined_lin, combined_lin.30_36
| voxel.c:365: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:360: 	unsigned short color = 0;
	clr.w %d5	| color
| voxel.c:358: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:346: 	short sample_y = 200;
	move.w #200,%d7	|, sample_y
| voxel.c:440: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a4	|, tmp194
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lea _pdata_table,%a3	|, tmp195
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %a1,%a1	| ytable_offset, ytable_offset
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a2	|, tmp197
	move.w %d1,%a5	| max_height_ytable_index,
	move.l %a5,44(%sp)	|, %sfp
	move.l %d6,%a5	| combined_lin.30_36, combined_lin.30_36
.L90:
| voxel.c:368: 		if (y < sample_y) {
	cmp.w %d7,%d0	| sample_y, <retval>
	jge .L83		|
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d1	| z, tmp190
	moveq #9,%d5	|,
	lsl.l %d5,%d1	|, tmp190
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d0	|, <retval>
	jgt .L84		|
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d1,%d5	| tmp190, tmp162
	add.l 44(%sp),%d5	| %sfp, tmp162
	add.l %d5,%d5	| tmp162, tmp163
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w (%a2,%d5.l),%d0	| y_table[z_56][_34], <retval>
	jle .L82		|
.L84:
| voxel.c:311: 	asm (
#APP
| 311 "voxel.c" 1
	move.l %d2, %d6	| sample_vu, tmp
	lsr.l #6, %d6	| tmp
	move.l %d6, %d5	| tmp, result
	and.l #0x0003fe, %d6	| tmp
	lsr.l #7, %d5	| result
	and.l #0x07fc00, %d5	| result
	or.l %d6,%d5	| tmp, result
| 0 "" 2
| voxel.c:381: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
#NO_APP
	move.w (%a5,%d5.l),%d5	| *_37, height_color
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d6	| tmp168
	move.b %d5,%d6	| height_color, tmp168
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l %a1,%d6	| ytable_offset, tmp171
	add.l %d6,%d1	| tmp171, tmp172
	add.l %d1,%d1	| tmp172, tmp173
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %a6,%d7	| y_offset, sample_y
	add.w (%a2,%d1.l),%d7	| y_table[z_56][_41], sample_y
| voxel.c:384: 			color = height_color >> 8;
	lsr.w #8,%d5	|, color
| voxel.c:417: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp174
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:420: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp175
	and.l %d3,%d1	| z, tmp175
| voxel.c:420: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L86		|
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp176
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
.L86:
| voxel.c:366: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d1	|,
	cmp.l %d3,%d1	| z,
	jne .L90		|
.L82:
| voxel.c:460: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L83:
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d1	|, tmp180
	and.l %d0,%d1	| <retval>, tmp180
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d6	| opacity
	move.b (%a4,%d3.l),%d6	| opacity_table[z_56], opacity
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d1	|, tmp182
	add.l %d6,%d1	| opacity, tmp183
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d5,%d6	| color, color
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #8,%d1	|, tmp185
	add.l %d6,%d1	| color, tmp186
	add.l %d1,%d1	| tmp186, tmp187
	add.l %d1,%d1	| tmp187, tmp188
	move.l (%a3,%d1.l),%d1	| pdata_table[_48][_49][_50], movep_data
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 302 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:446: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:447: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, <retval>
| voxel.c:449: 			if (opacity == 7) {
	cmp.b #7,(%a4,%d3.l)	|, opacity_table[z_56]
	jeq .L102		|
.L87:
| voxel.c:366: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L90		|
| voxel.c:460: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L102:
| voxel.c:450: 				if (sample_y < 0) sample_y = 0;
	tst.w %d7	| sample_y
	jlt .L103		|
.L99:
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %d7,%d0	| sample_y, <retval>
	jlt .L87		|
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 302 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:453: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, <retval>
	jra .L99		|
.L103:
| voxel.c:450: 				if (sample_y < 0) sample_y = 0;
	clr.w %d7	| sample_y
	jra .L99		|
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:465: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:465: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:467: 	while (remaining_lines > 0) {
	tst.w %d1	| _5
	jle .L105		|
	and.l #65535,%d1	|, _5
	move.l %d1,%a1	| _5, tmp74
	add.l %d1,%a1	| _5, tmp74
	add.l %a1,%a1	| tmp74, tmp75
	add.l %a1,%d1	| tmp75, tmp76
	lsl.l #5,%d1	|, tmp77
	move.l %a0,%a1	| pBlock, _33
	sub.l %d1,%a1	| tmp77, _33
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp79
.L106:
#APP
| 302 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:469: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:467: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _33
	jne .L106		|
.L105:
| voxel.c:472: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:473: }
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
| voxel.c:487: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:489: 	Super(0L);
	moveq #0,%d0	| tmp245
#APP
| 489 "voxel.c" 1
	movl	%d0,%sp@-	| tmp245
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:491: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:493: 	lineaa();
	jsr _lineaa		|
| voxel.c:494: 	build_tables();
	jsr _build_tables		|
| voxel.c:495: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:496:         set_palette();
	jsr _set_palette		|
| voxel.c:497: 	unsigned short *screen = Physbase();
#APP
| 497 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,78(%sp)	| tmp442, %sfp
| voxel.c:498: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp442,
	jsr _draw_image2		|
	move.l 86(%sp),%a0	| %sfp, ivtmp.301
	move.l %a0,%d0	| ivtmp.301, _122
	add.l #32000,%d0	|, _122
	lea (12,%sp),%sp	|,
.L111:
| voxel.c:126: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.256_756]
	cmp.l %d0,%a0	| _122, ivtmp.301
	jne .L111		|
| voxel.c:500: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,128(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:513: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,114(%sp)	| __aline, %sfp
| voxel.c:334: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d1	|
	move.b _max_height,%d1	| max_height,
	move.w %d1,122(%sp)	|, %sfp
| voxel.c:381: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
	move.l _combined_lin,%a2	| combined_lin, combined_lin.30_259
| voxel.c:506: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,102(%sp)	| pos.y, %sfp
| voxel.c:506: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),96(%sp)	| pos.x, %sfp
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+6,72(%sp)	| pos.dirx, %sfp
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w _pos+8,70(%sp)	| pos.diry, %sfp
| voxel.c:524: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,98(%sp)	| pos.speed, %sfp
	clr.w 104(%sp)	| %sfp
| voxel.c:501: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,90(%sp)	|, %sfp
	moveq #0,%d4	| val.11_129
	move.w 96(%sp),%d4	| %sfp, val.11_129
| voxel.c:440: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a3	|, tmp426
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lea _pdata_table,%a4	|, tmp427
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a5	|, tmp429
| voxel.c:346: 	short sample_y = 200;
	move.l %a2,124(%sp)	| combined_lin.30_259, %sfp
.L129:
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 102(%sp),%d0	| %sfp, tmp260
	lsr.w #7,%d0	|, tmp260
| voxel.c:506: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp261
| voxel.c:134: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 96(%sp),%d1	| %sfp, tmp262
	lsr.w #7,%d1	|, tmp262
| voxel.c:506: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp263
| voxel.c:506: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp264
	add.l %d1,%d0	| tmp263, tmp265
	add.l %d0,%d0	| tmp265, tmp266
| voxel.c:507: 		int player_altitude = height_under_player + 20;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_2][_4], tmp268
	and.l #255,%d0	|, tmp268
	moveq #20,%d1	|,
	add.l %d1,%d0	|, player_altitude
| voxel.c:509: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 90(%sp),%d1	| %sfp, tmp270
	addq.l #2,%d1	|, tmp270
| voxel.c:509: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp270
	jle .L112		|
	moveq #0,%d1	|, tmp270
	not.b %d1	| tmp270
.L112:
	cmp.l %d0,%d1	| player_altitude, tmp270
	jge .L113		|
	move.l %d1,%d0	| tmp270, player_altitude
.L113:
| voxel.c:510: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 90(%sp),%d1	| %sfp, tmp271
	subq.l #2,%d1	|, tmp271
| voxel.c:510: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,90(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp271
	jle .L114		|
	move.l %d1,90(%sp)	| tmp271, %sfp
.L114:
| voxel.c:514: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 104(%sp),%d0	| %sfp, _12
	and.w #8,%d0	|, _12
| voxel.c:514: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w %d0,%d7	| _12, x
	addq.w #3,%d7	|, x
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 114(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.39_8 + 4294966696B],
	move.l %a0,106(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp272
	add.l %a0,%d0	|, tmp272
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp272
	move.l %d0,78(%sp)	| tmp272, %sfp
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 114(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.39_8 + 4294966694B],
	move.l %a1,110(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp273
	add.l #-160,%d0	|, tmp273
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _18
| voxel.c:333: 	short ytable_offset = 256 - player_height;
	move.w #256,%d3	|, _197
	sub.w 92(%sp),%d3	| %sfp, _197
| voxel.c:334: 	short max_height_ytable_index = max_height + ytable_offset;
	move.w 122(%sp),%d2	| %sfp, max_height_ytable_index
	add.w %d3,%d2	| _197, max_height_ytable_index
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.w 102(%sp),%d1	| %sfp,
	swap %d1	| tmp275
	clr.w %d1	| tmp275
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d4,%d1	| val.11_129, tmp277
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp277
	move.l %d1,82(%sp)	| tmp277, %sfp
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 70(%sp),%a0	| %sfp,
	move.l %a0,118(%sp)	|, %sfp
	move.l %d0,%d1	| _18,
	lsl.l #4,%d1	|,
	move.l %d1,86(%sp)	|, %sfp
	moveq #0,%d4	| x
	move.w %d7,%d4	| x, x
	move.l %d0,-(%sp)	| _18,
	move.l %d4,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,54(%sp)	| tmp443, %sfp
	add.l %d4,%d4	| x, tmp284
	add.l #_horizon,%d4	|, tmp284
	move.l %d4,50(%sp)	| tmp284, %sfp
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %d3,%a1	| _197,
	move.l %a1,46(%sp)	|, %sfp
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.w %d2,%a0	| max_height_ytable_index,
	move.l %a0,58(%sp)	|, %sfp
	move.l 124(%sp),%a2	| %sfp, combined_lin.30_259
.L126:
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 58(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:516: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %d0,%a1	| tmp444, y_offset
	add.l 78(%sp),%a1	| %sfp, y_offset
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w %d7,%d0	| x, _216
	add.w #-160,%d0	|, _216
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	move.w 72(%sp),%d4	| %sfp,
	muls.w %d0,%d4	| _216, tmp290
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	asr.l #8,%d4	|, tmp291
| voxel.c:338: 		pos->diry + ((short)(x - 160) * pos->dirx >> 8),
	add.w 70(%sp),%d4	| %sfp, tmp292
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d4	| tmp294
	clr.w %d4	| tmp294
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	muls.w 70(%sp),%d0	| %sfp, tmp295
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	asr.l #8,%d0	|, tmp296
| voxel.c:339: 		pos->dirx - ((short)(x - 160) * pos->diry >> 8));
	move.w 72(%sp),%d1	| %sfp, tmp297
	sub.w %d0,%d1	| tmp296, tmp297
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d4	| tmp297, tmp299
| voxel.c:146: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	move.l 82(%sp),%d2	| %sfp, tmp300
	add.l %d4,%d2	| delta_vu, tmp300
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp301
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp302
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp303
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp304
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp305
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp306
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d7,%d0	| x, tmp307
	asr.w #4,%d0	|, tmp307
	ext.l %d0	| tmp308
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp308, tmp309
	add.l %d0,%d0	| tmp309, tmp309
	move.l %d0,62(%sp)	| tmp309, %sfp
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%d0	|, tmp312
	lsr.l #3,%d0	|, tmp312
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp312,
	move.l %d1,66(%sp)	|, %sfp
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 62(%sp),%d0	| %sfp, tmp313
	add.l #15920,%d0	|, tmp313
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp313, tmp314
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp314, tmp315
	add.l %d1,%a0	|, tmp315
	add.l 74(%sp),%a0	| %sfp, pBlock
| voxel.c:360: 	unsigned short color = 0;
	clr.w %d5	| color
| voxel.c:358: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:365: 	short y = 199;
	move.w #199,%d1	|, y
| voxel.c:346: 	short sample_y = 200;
	move.w #200,%a6	|, sample_y
	move.w %d7,44(%sp)	| x, %sfp
.L123:
| voxel.c:447: 			y -= LINES_SKIP;
	move.w %d1,%d6	| y, prephitmp_730
| voxel.c:368: 		if (y < sample_y) {
	cmp.w %a6,%d1	| sample_y, y
	jge .L115		|
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d0	| z, tmp418
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d1	|, y
	jle .L141		|
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp418
.L116:
| voxel.c:311: 	asm (
#APP
| 311 "voxel.c" 1
	move.l %d2, %d7	| sample_vu,
	lsr.l #6, %d7	|
	move.l %d7, %d5	|, result
	and.l #0x0003fe, %d7	|
	lsr.l #7, %d5	| result
	and.l #0x07fc00, %d5	| result
	or.l %d7,%d5	|, result
| 0 "" 2
| voxel.c:381: 			unsigned short height_color = *((unsigned short*)((char*)combined_lin + index));
#NO_APP
	move.w (%a2,%d5.l),%d5	| *_260, height_color
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d7	|
	move.b %d5,%d7	| height_color,
	move.l %d7,%a6	|, tmp325
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l 46(%sp),%a6	| %sfp, tmp328
	add.l %a6,%d0	| tmp328, tmp329
	add.l %d0,%d0	| tmp329, tmp330
| voxel.c:383: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w (%a5,%d0.l),%a6	| y_table[z_321][_265], sample_y
	add.w %a1,%a6	| y_offset, sample_y
| voxel.c:384: 			color = height_color >> 8;
	lsr.w #8,%d5	|, color
| voxel.c:417: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d2	| delta_vu, tmp331
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:420: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d0	|, tmp332
	and.l %d3,%d0	| z, tmp332
| voxel.c:420: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L118		|
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| delta_vu, tmp333
| voxel.c:150: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_vu
.L118:
| voxel.c:366: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d0	|,
	cmp.l %d3,%d0	| z,
	jne .L123		|
	move.w 44(%sp),%d7	| %sfp, x
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d0	| y,
	muls.w #80,%d0	|, _727
.L122:
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d0	| %sfp, tmp348
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp348, tmp349
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp349, tmp350
	add.l 66(%sp),%a0	| %sfp, tmp350
	add.l 74(%sp),%a0	| %sfp, pBlock
| voxel.c:465: 	short remaining_lines = y - horizon[x];
	move.l 50(%sp),%a1	| %sfp,
	sub.w (%a1),%d6	| MEM[(short int *)_766], _185
| voxel.c:467: 	while (remaining_lines > 0) {
	tst.w %d6	| _185
	jle .L124		|
	and.l #65535,%d6	|, _185
	move.l %d6,%d0	| _185, tmp353
	add.l %d6,%d0	| _185, tmp353
	add.l %d0,%d0	| tmp353, tmp354
	add.l %d0,%d6	| tmp354, tmp355
	lsl.l #5,%d6	|, tmp356
	move.l %a0,%a1	| pBlock, _731
	sub.l %d6,%a1	| tmp356, _731
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d0	| tmp358
.L125:
#APP
| 302 "voxel.c" 1
	movep.l %d0, 0(%a0)	| tmp358, pBlock
| 0 "" 2
| voxel.c:469: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:467: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _731
	jne .L125		|
.L124:
| voxel.c:472: 	horizon[x] = y;
	move.l 50(%sp),%a0	| %sfp,
	move.w %d1,(%a0)	| y, MEM[(short int *)_766]
| voxel.c:514: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,%d7	|, x
| voxel.c:514: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 86(%sp),%d1	| %sfp,
	add.l %d1,54(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,50(%sp)	|, %sfp
	cmp.w #319,%d7	|, x
	jls .L126		|
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 98(%sp),%d0	| %sfp,
	muls.w 72(%sp),%d0	| %sfp, tmp359
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp360
| voxel.c:524: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,96(%sp)	| tmp360, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 98(%sp),%d0	| %sfp,
	muls.w 70(%sp),%d0	| %sfp, tmp361
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp362
| voxel.c:525: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 102(%sp),%d0	| %sfp, _39
| voxel.c:524: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	moveq #0,%d4	| val.11_129
	move.w 96(%sp),%d4	| %sfp, val.11_129
	move.w 96(%sp),%d2	| %sfp,
	swap %d2	| _39
	clr.w %d2	| _39
	move.w %d0,%d2	| _39, _39
| voxel.c:525: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,102(%sp)	| _39, %sfp
| voxel.c:527: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp368
	sub.l 106(%sp),%d0	| %sfp, tmp368
| voxel.c:527: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp369
| voxel.c:527: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 98(%sp),%d0	| %sfp, _46
| voxel.c:528: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _46, tmp370
	asr.w #3,%d1	|, tmp370
| voxel.c:528: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _46, tmp371
	asr.w #4,%d3	|, tmp371
| voxel.c:528: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d1	| tmp371, tmp372
| voxel.c:528: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, tmp373
| voxel.c:529: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _46
	jle .L127		|
| voxel.c:529: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| tmp373, _46
	move.w %d0,98(%sp)	| _46, %sfp
| voxel.c:524: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:529: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 98(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:531: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp376
	not.b %d3	| tmp376
	sub.l 110(%sp),%d3	| %sfp, tmp376
| voxel.c:531: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _62
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 118(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp379
| voxel.c:532: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 72(%sp),%d2	| %sfp, _66
	add.w %d0,%d2	| tmp379, _66
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _62,
	move.w %d2,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp383
| voxel.c:533: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp383, _70
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _66,
	muls.w %d2,%d0	| _66, tmp384
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp385
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _70,
	muls.w %d1,%d3	| _70, tmp387
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp388
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d3,%a0	| tmp388, tmp389
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d3	|, tmp391
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp392
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp392, factor
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp393
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp394
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,72(%sp)	| tmp394, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp395
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp396
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,70(%sp)	| tmp396, %sfp
| voxel.c:540: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _142
	clr.w %d2	| _142
	move.w %d0,%d2	| tmp396, _142
	move.l %d2,_pos+6	| _142, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:502: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,104(%sp)	|, %sfp
	cmp.w #6400,104(%sp)	|, %sfp
	jne .L129		|
.L152:
| voxel.c:547: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:548: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 128(%sp),%a0	| %sfp, tmp404
| voxel.c:548: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp404, tmp406
	add.l %a0,%d0	| tmp404, tmp406
	add.l %d0,%d0	| tmp406, tmp407
| voxel.c:549: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:550: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp447,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.46_121
	move.l 4(%a0),%d0	| stdin.46_121->__bufp, _119
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.46_121->__get_limit, _119
	jcc .L130		|
	addq.l #1,%d0	|, _119
	move.l %d0,4(%a0)	| _119, stdin.46_121->__bufp
| voxel.c:554: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (88,%sp),%sp	|,
	rts	
.L115:
| voxel.c:440: 			unsigned char opacity = opacity_table[z];
	move.b (%a3,%d3.l),%d7	| opacity_table[z_321], opacity
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d0	|, tmp337
	and.l %d1,%d0	| y, tmp337
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d6	| opacity
	move.b %d7,%d6	| opacity, opacity
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d0	|, tmp339
	add.l %d6,%d0	| opacity, tmp340
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d5,%d6	| color, color
| voxel.c:444: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #8,%d0	|, tmp342
	add.l %d6,%d0	| color, tmp343
	add.l %d0,%d0	| tmp343, tmp344
	add.l %d0,%d0	| tmp344, tmp345
	move.l (%a4,%d0.l),%d0	| pdata_table[_284][_285][_287], movep_data
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 302 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:446: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:447: 			y -= LINES_SKIP;
	subq.w #1,%d1	|, y
| voxel.c:449: 			if (opacity == 7) {
	cmp.b #7,%d7	|, opacity
	jeq .L149		|
.L119:
| voxel.c:366: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d1	|, y
	jne .L123		|
.L151:
	move.w 44(%sp),%d7	| %sfp, x
	moveq #-1,%d6	|, prephitmp_730
	moveq #-80,%d0	|, _727
	jra .L122		|
.L149:
| voxel.c:450: 				if (sample_y < 0) sample_y = 0;
	clr.w %d6	|
	cmp.w %a6,%d6	| sample_y,
	jgt .L150		|
.L120:
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %a6,%d1	| sample_y, y
	jlt .L119		|
	move.w 44(%sp),%d7	| %sfp, x
.L121:
| voxel.c:302: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 302 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:453: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:454: 					y -= LINES_SKIP;
	subq.w #1,%d1	|, y
| voxel.c:451: 				while (y >= sample_y) {
	cmp.w %a6,%d1	| sample_y, y
	jge .L121		|
	move.w %d7,44(%sp)	| x, %sfp
| voxel.c:366: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d1	|, y
	jne .L123		|
	jra .L151		|
.L150:
| voxel.c:450: 				if (sample_y < 0) sample_y = 0;
	sub.l %a6,%a6	| sample_y
	jra .L120		|
.L141:
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	moveq #9,%d7	|,
	lsl.l %d7,%d0	|, tmp418
	move.l %d0,%d5	| tmp418, tmp319
	add.l 58(%sp),%d5	| %sfp, tmp319
	add.l %d5,%d5	| tmp319, tmp320
| voxel.c:374: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w (%a5,%d5.l),%d1	| y_table[z_321][_253], y
	jgt .L116		|
	move.w 44(%sp),%d7	| %sfp, x
| voxel.c:297: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d0	| y,
	muls.w #80,%d0	|, _727
	jra .L122		|
.L127:
| voxel.c:530: 		else pos.speed += drag;
	add.w %d1,%d0	| tmp373, _46
	move.w %d0,98(%sp)	| _46, %sfp
| voxel.c:524: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _39, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:529: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 98(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:531: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp376
	not.b %d3	| tmp376
	sub.l 110(%sp),%d3	| %sfp, tmp376
| voxel.c:531: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _62
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 118(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _62,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp379
| voxel.c:532: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 72(%sp),%d2	| %sfp, _66
	add.w %d0,%d2	| tmp379, _66
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _62,
	move.w %d2,%a1	| _66,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp383
| voxel.c:533: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 70(%sp),%d1	| %sfp, _70
	sub.w %d0,%d1	| tmp383, _70
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _66,
	muls.w %d2,%d0	| _66, tmp384
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp385
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _70,
	muls.w %d1,%d3	| _70, tmp387
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp388
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d3,%a0	| tmp388, tmp389
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d3	|, tmp391
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp392
| voxel.c:539: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp392, factor
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp393
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp394
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,72(%sp)	| tmp394, %sfp
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _70, tmp395
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp396
| voxel.c:142: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,70(%sp)	| tmp396, %sfp
| voxel.c:540: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _142
	clr.w %d2	| _142
	move.w %d0,%d2	| tmp396, _142
	move.l %d2,_pos+6	| _142, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:502: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,104(%sp)	|, %sfp
	cmp.w #6400,104(%sp)	|, %sfp
	jne .L129		|
	jra .L152		|
.L130:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.46_121,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:554: }
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
