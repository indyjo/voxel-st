| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_get_color
_get_color:
| voxel.c:82: }
	move.l _hw_palette,%a0	| hw_palette, hw_palette
	move.w (%a0),%d0	| *hw_palette.0_1,
	rts	
	.even
	.globl	_set_color
_set_color:
| voxel.c:88: } 
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
| voxel.c:90: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.92
.L7:
| voxel.c:95: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:96: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:97: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:97: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:97: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:97: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:97: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:97: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:97: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:97: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:97: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:97: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:97: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:97: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:97: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:97: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:97: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:97: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:98: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:99: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:99: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:99: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:99: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:99: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:99: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:99: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:99: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:99: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:99: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:99: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:99: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:99: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:99: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:99: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:99: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:107: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:101: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:101: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:101: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:101: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:101: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:101: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:101: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:101: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:101: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:101: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:101: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:102: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:92: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.92
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L7		|
| voxel.c:91: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L6		|
| voxel.c:110: }
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
| voxel.c:113: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.107_11]
	cmp.l %d0,%a0	| _3, out
	jne .L13		|
| voxel.c:114: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:122: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:126: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:130: }
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
	move.l #_y_table+1024,%d6	|, ivtmp.237
| voxel.c:182: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:181: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:180: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp188
	lea _opacity_table,%a5	|, tmp184
.L24:
| voxel.c:121: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _113
	lsr.w #7,%d0	|, _113
| voxel.c:184: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _113, _3
| voxel.c:186: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp146
| voxel.c:186: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp146,
	jsr (%a4)		| tmp188
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _136
	add.w #120,%d2	|, _136
| voxel.c:186: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.237, ivtmp.226
	move.w #-17920,%a2	|, ivtmp.223
.L25:
| voxel.c:184: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.223,
	jsr (%a4)		| tmp188
	addq.l #8,%sp	|,
| voxel.c:186: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _136,
	sub.w %d0,%d1	| tmp202,
	move.w %d1,(%a3)+	|, MEM[(short int *)_258]
| voxel.c:183: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.223
	cmp.w #17920,%a2	|, ivtmp.223
	jne .L25		|
| voxel.c:189: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:190: 		if (TRIGGERS_MIPMAP_CHANGE(z))
	moveq #15,%d0	|, tmp139
	and.l %d4,%d0	| z, tmp139
| voxel.c:190: 		if (TRIGGERS_MIPMAP_CHANGE(z))
	jne .L26		|
| voxel.c:191: 			step <<= 1;
	add.w %d7,%d7	| step, step
.L26:
| voxel.c:192: 		int rel_dist = z - STEPS_MAX/2;
	move.w #-32,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:193: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L83		|
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp143
	sub.l %a0,%d0	| rel_dist, tmp143
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp144
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp145
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp145, MEM[(unsigned char *)&opacity_table + _282 * 1]
| voxel.c:182: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:182: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.237
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L24		|
.L28:
| voxel.c:199: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined_mip+36,%a5	|, ivtmp.214
	clr.b %d3	| prephitmp_6
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	moveq #9,%d6	|, i
	lea _calloc,%a4	|, tmp187
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	moveq #1,%d5	|, tmp160
	move.w #512,%a6	|, tmp196
.L37:
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	pea 2.w		|
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d6,%d1	| i, tmp158
	add.l %d6,%d1	| i, tmp158
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d5,%d0	| tmp160, tmp159
	lsl.l %d1,%d0	| tmp158, tmp159
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d0,-(%sp)	| tmp159,
	jsr (%a4)		| tmp187
	move.l %d0,%a1	| tmp204, pCombined
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d0,(%a5)	| pCombined, MEM[(short unsigned int * *)_270]
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	moveq #9,%d0	|, _33
	sub.l %d6,%d0	| i, _33
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	move.l %d5,%d1	| tmp160, _34
	lsl.l %d0,%d1	| _33, _34
	addq.l #8,%sp	|,
	moveq #9,%d2	|,
	cmp.l %d6,%d2	| i,
	jeq .L84		|
.L29:
	move.l %a6,%d4	| tmp196, _67
	lsl.l %d0,%d4	| _33, _67
	lea _colors,%a3	|, ivtmp.188
	lea _height,%a2	|, ivtmp.189
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	moveq #0,%d2	| y
.L32:
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	sub.l %a0,%a0	| x
.L31:
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| MEM[(unsigned char *)_70 + _221 * 1]
	move.b (%a3,%a0.l),%d0	| MEM[(unsigned char *)_70 + _221 * 1], MEM[(unsigned char *)_70 + _221 * 1]
	lsl.w #8,%d0	|, tmp166
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	clr.w %d7	| MEM[(unsigned char *)_158 + _221 * 1]
	move.b (%a2,%a0.l),%d7	| MEM[(unsigned char *)_158 + _221 * 1], MEM[(unsigned char *)_158 + _221 * 1]
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	or.w %d7,%d0	| MEM[(unsigned char *)_158 + _221 * 1], tmp166
	move.w %d0,(%a1)+	| tmp166, MEM[(short unsigned int *)pCombined_207 + 4294967294B]
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	add.l %d1,%a0	| _34, x
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	cmp.w #511,%a0	|, x
	jle .L31		|
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	add.l %d1,%d2	| _34, y
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	add.l %d4,%a3	| _67, ivtmp.188
	add.l %d4,%a2	| _67, ivtmp.189
	cmp.l #511,%d2	|, y
	jle .L32		|
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	subq.l #1,%d6	|, i
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	moveq #-1,%d0	|,
	cmp.l %d6,%d0	| i,
	jeq .L54		|
	subq.l #4,%a5	|, ivtmp.214
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	pea 2.w		|
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d6,%d1	| i, tmp158
	add.l %d6,%d1	| i, tmp158
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d5,%d0	| tmp160, tmp159
	lsl.l %d1,%d0	| tmp158, tmp159
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d0,-(%sp)	| tmp159,
	jsr (%a4)		| tmp187
	move.l %d0,%a1	| tmp204, pCombined
| voxel.c:201: 		combined_mip[i] = calloc (1 << (2*i), sizeof(unsigned short));
	move.l %d0,(%a5)	| pCombined, MEM[(short unsigned int * *)_270]
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	moveq #9,%d0	|, _33
	sub.l %d6,%d0	| i, _33
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	move.l %d5,%d1	| tmp160, _34
	lsl.l %d0,%d1	| _33, _34
	addq.l #8,%sp	|,
	moveq #9,%d2	|,
	cmp.l %d6,%d2	| i,
	jne .L29		|
.L84:
	lea _colors,%a3	|, ivtmp.204
	lea _height,%a2	|, ivtmp.205
	move.b %d3,%d2	| prephitmp_6, max_height_lsm.137
	clr.b %d4	| max_height_lsm_flag.138
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	moveq #0,%d6	| y
.L30:
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	sub.l %a0,%a0	| x
.L35:
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	move.b (%a2,%a0.l),%d1	| MEM[(unsigned char *)_29 + _24 * 1], _242
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	addq.l #2,%a1	|, pCombined
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| MEM[(unsigned char *)_25 + _24 * 1]
	move.b (%a3,%a0.l),%d0	| MEM[(unsigned char *)_25 + _24 * 1], MEM[(unsigned char *)_25 + _24 * 1]
	lsl.w #8,%d0	|, tmp169
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	clr.w %d7	| _242
	move.b %d1,%d7	| _242, _242
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	or.w %d7,%d0	| _242, _246
| voxel.c:206: 				if (i==DIM_BITS && height[y][x] > max_height)
	cmp.b %d2,%d1	| max_height_lsm.137, _242
	jls .L34		|
| voxel.c:207: 					max_height = height[y][x];
	move.b %d1,%d2	| _242, max_height_lsm.137
| voxel.c:206: 				if (i==DIM_BITS && height[y][x] > max_height)
	moveq #1,%d4	|, max_height_lsm_flag.138
.L34:
| voxel.c:205: 				*pCombined++ = (colors[y][x] << 8) | height[y][x];
	move.w %d0,-2(%a1)	| _246, MEM[(short unsigned int *)pCombined_245 + 4294967294B]
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	addq.l #1,%a0	|, x
| voxel.c:204: 			for (int x=0; x<WIDTH; x+=1<<(DIM_BITS-i)) {
	cmp.w #512,%a0	|, x
	jne .L35		|
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	addq.l #1,%d6	|, y
| voxel.c:203: 		for (int y=0; y<HEIGHT; y+=1<<(DIM_BITS-i)) {
	lea (512,%a3),%a3	|, ivtmp.204
	lea (512,%a2),%a2	|, ivtmp.205
	cmp.l #512,%d6	|, y
	jne .L30		|
	tst.b %d4	| max_height_lsm_flag.138
	jeq .L85		|
	move.b %d2,_max_height	| max_height_lsm.137, max_height
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	subq.l #4,%a5	|, ivtmp.214
	move.b %d2,%d3	| max_height_lsm.137, prephitmp_6
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	moveq #8,%d6	|, i
	jra .L37		|
.L83:
| voxel.c:193: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp143
	sub.l %a0,%d0	| rel_dist, tmp143
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp144
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp145
| voxel.c:195: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp145, MEM[(unsigned char *)&opacity_table + _282 * 1]
| voxel.c:182: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:182: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.237
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L24		|
	jra .L28		|
.L54:
| voxel.c:212: 	int bayer[8][8] = {
	lea (64,%sp),%a3	|,, tmp171
	pea 256.w		|
	pea .LC0		|
	move.l %a3,-(%sp)	| tmp171,
	jsr _memcpy		|
	move.l #_pdata_table,68(%sp)	|, %sfp
	lea (12,%sp),%sp	|,
	clr.l 52(%sp)	| %sfp
.L38:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	move.l (%a3),%a6	| MEM[(int *)_55], _117
	move.l 4(%a3),%a5	| MEM[(int *)_55 + 4B], _127
	move.l 8(%a3),%a4	| MEM[(int *)_55 + 8B], _137
	move.l 12(%a3),%d7	| MEM[(int *)_55 + 12B], _147
	move.l 16(%a3),%d6	| MEM[(int *)_55 + 16B], _157
	move.l 20(%a3),%d0	| MEM[(int *)_55 + 20B], _167
	move.l 24(%a3),44(%sp)	| MEM[(int *)_55 + 24B], %sfp
	move.l 28(%a3),48(%sp)	| MEM[(int *)_55 + 28B], %sfp
	move.l 56(%sp),%a2	| %sfp, ivtmp.166
	move.w #8,%a1	|, ivtmp.164
	move.l %a3,60(%sp)	| ivtmp.172, %sfp
	move.l %d0,%a3	| _167, _167
.L53:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a6,%a1	| _117, ivtmp.164
	sgt %d2		| tmp181
	ext.w %d2	| tmp182
	ext.l %d2	| tmp180
	neg.l %d2	| bits
	cmp.l %a5,%a1	| _127, ivtmp.164
	jle .L45		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #2,%d0	|,
	or.l %d0,%d2	|, bits
.L45:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a4,%a1	| _137, ivtmp.164
	jle .L46		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #4,%d1	|,
	or.l %d1,%d2	|, bits
.L46:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %d7,%a1	| _147, ivtmp.164
	jle .L47		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #8,%d0	|,
	or.l %d0,%d2	|, bits
.L47:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %d6,%a1	| _157, ivtmp.164
	jle .L48		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #16,%d1	|,
	or.l %d1,%d2	|, bits
.L48:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a1,%a3	| ivtmp.164, _167
	jge .L49		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #32,%d0	|,
	or.l %d0,%d2	|, bits
.L49:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 44(%sp),%a1	| %sfp, ivtmp.164
	jle .L50		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #64,%d1	|,
	or.l %d1,%d2	|, bits
.L50:
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 48(%sp),%a1	| %sfp, ivtmp.164
	jle .L51		|
| voxel.c:226: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #127,%d0	|,
	not.b %d0	|
	or.l %d0,%d2	|, bits
.L51:
| voxel.c:230: 					| ((color&1) ? bits << 24 : 0)
	move.l %d2,%d5	| bits, iftmp.17_88
	lsl.w #8,%d5	|, iftmp.17_88
	swap %d5	| iftmp.17_88
	clr.w %d5	| iftmp.17_88
| voxel.c:231: 					| ((color&2) ? bits << 16 : 0)
	move.l %d2,%d4	| bits, iftmp.18_89
	swap %d4	| iftmp.18_89
	clr.w %d4	| iftmp.18_89
| voxel.c:232: 					| ((color&4) ? bits <<  8 : 0)
	move.l %d2,%d3	| bits, iftmp.19_90
	lsl.l #8,%d3	|, iftmp.19_90
	move.l %a2,%a0	| ivtmp.166, ivtmp.158
| voxel.c:228: 			for (int color = 0; color < 16; color++) {
	moveq #0,%d0	| color
.L43:
| voxel.c:230: 					| ((color&1) ? bits << 24 : 0)
	btst #0,%d0	|, color
	jne .L59		|
	moveq #0,%d1	| prephitmp_121
.L39:
| voxel.c:231: 					| ((color&2) ? bits << 16 : 0)
	btst #1,%d0	|, color
	jeq .L40		|
| voxel.c:231: 					| ((color&2) ? bits << 16 : 0)
	or.l %d4,%d1	| iftmp.18_89, prephitmp_121
.L40:
| voxel.c:232: 					| ((color&4) ? bits <<  8 : 0)
	btst #2,%d0	|, color
	jeq .L41		|
| voxel.c:232: 					| ((color&4) ? bits <<  8 : 0)
	or.l %d3,%d1	| iftmp.19_90, prephitmp_121
.L41:
| voxel.c:233: 					| ((color&8) ? bits <<  0 : 0);
	btst #3,%d0	|, color
	jeq .L42		|
| voxel.c:233: 					| ((color&8) ? bits <<  0 : 0);
	or.l %d2,%d1	| bits, prephitmp_121
.L42:
| voxel.c:229: 				pdata_table[y][opacity][color] = 0
	move.l %d1,(%a0)+	| prephitmp_121, MEM[(unsigned int *)_45]
| voxel.c:228: 			for (int color = 0; color < 16; color++) {
	addq.l #1,%d0	|, color
| voxel.c:228: 			for (int color = 0; color < 16; color++) {
	moveq #16,%d1	|,
	cmp.l %d0,%d1	| color,
	jne .L43		|
| voxel.c:223: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,%a1	|, ivtmp.164
	lea (64,%a2),%a2	|, ivtmp.166
	moveq #72,%d2	|,
	cmp.l %a1,%d2	| ivtmp.164,
	jne .L53		|
| voxel.c:222: 	for (int y = 0; y < 8; y++) {
	move.l 60(%sp),%a3	| %sfp, ivtmp.172
	lea (32,%a3),%a3	|, ivtmp.172
	addq.l #8,52(%sp)	|, %sfp
	add.l #512,56(%sp)	|, %sfp
	moveq #64,%d1	|,
	cmp.l 52(%sp),%d1	| %sfp,
	jne .L38		|
	lea _horizon,%a0	|, vectp_horizon.143
.L52:
| voxel.c:238: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d2	|,
	move.l %d2,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.143_253]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.143
	jne .L52		|
| voxel.c:239: }
	movem.l (%sp)+,#31996	|,
	lea (276,%sp),%sp	|,
	rts	
.L59:
| voxel.c:230: 					| ((color&1) ? bits << 24 : 0)
	move.l %d5,%d1	| iftmp.17_88, prephitmp_121
	jra .L39		|
.L85:
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	subq.l #4,%a5	|, ivtmp.214
| voxel.c:200: 	for (int i=DIM_BITS; i>= 0; i--) {
	moveq #8,%d6	|, i
	jra .L37		|
	.even
	.globl	_render
_render:
	lea (-16,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%a0	| pos, pos
	move.l 76(%sp),%d3	| x, x
	move.w 82(%sp),50(%sp)	| y_offset, %sfp
| voxel.c:287: 	short ytable_offset = 256 - player_height;
	move.w #256,%d2	|, ytable_offset
	sub.w 74(%sp),%d2	| player_height, ytable_offset
| voxel.c:288: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d0	| max_height
	move.b _max_height,%d0	| max_height, max_height
	move.w %d0,%d1	| max_height, max_height_ytable_index
	add.w %d2,%d1	| ytable_offset, max_height_ytable_index
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 6(%a0),%d5	| pos_109(D)->dirx, _7
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w %d3,%d0	|, _11
	add.w #-160,%d0	|, _11
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 8(%a0),%d6	| pos_109(D)->diry, _13
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w %d0,%d4	| _11,
	muls.w %d6,%d4	| _13, tmp140
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	asr.l #8,%d4	|, tmp141
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w %d5,%d7	| _7, delta_u
	sub.w %d4,%d7	| tmp141, delta_u
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	muls.w %d5,%d0	| _7, tmp142
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	asr.l #8,%d0	|, tmp143
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	add.w %d0,%d6	| tmp143, delta_v
| voxel.c:296: 	sample_u += STEPS_MIN * delta_u;
	move.w %d7,%a1	| delta_u, tmp144
	add.w %d7,%a1	| delta_u, tmp144
	add.w %a1,%a1	| tmp144, tmp145
| voxel.c:296: 	sample_u += STEPS_MIN * delta_u;
	add.w (%a0),%a1	| pos_109(D)->x, sample_u
| voxel.c:297: 	sample_v += STEPS_MIN * delta_v;
	move.w %d6,%d4	| delta_v, tmp146
	add.w %d6,%d4	| delta_v, tmp146
	add.w %d4,%d4	| tmp146, tmp147
| voxel.c:297: 	sample_v += STEPS_MIN * delta_v;
	add.w 2(%a0),%d4	| pos_109(D)->y, sample_v
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d0	|, tmp148
	asr.w #4,%d0	|, tmp148
	ext.l %d0	| tmp149
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp149, tmp150
	add.l %d0,%d0	| tmp150, tmp151
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d0	|, tmp152
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp152, tmp153
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d3	|, tmp155
	moveq #1,%d5	|,
	and.l %d5,%d3	|, tmp156
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp153, tmp157
	add.l %d3,%a0	| tmp156, tmp157
	add.l 68(%sp),%a0	| out, pBlock
| voxel.c:309: 	unsigned short* combined = combined_mip[DIM_BITS];
	move.l _combined_mip+36,%a6	| combined_mip[9], combined
| voxel.c:312: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:310: 	unsigned char mip_index = DIM_BITS;
	moveq #9,%d5	|, mip_index
| voxel.c:304: 	unsigned short color = 0;
	clr.w 46(%sp)	| %sfp
| voxel.c:302: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:299: 	short sample_y = 200;
	move.w #200,%a5	|, sample_y
| voxel.c:350: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a3	|, tmp210
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %d2,%a2	| ytable_offset,
	move.l %a2,52(%sp)	|, %sfp
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.w %d1,%a4	| max_height_ytable_index,
	move.l %a4,56(%sp)	|, %sfp
	sub.l %a4,%a4	| color
	move.w %d7,44(%sp)	| delta_u, %sfp
.L96:
| voxel.c:315: 		if (y < sample_y) {
	cmp.w %a5,%d0	| sample_y, <retval>
	jge .L87		|
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d0	|, <retval>
	jle .L103		|
	move.l %d3,%d1	| z,
	moveq #9,%d2	|,
	lsl.l %d2,%d1	|,
	move.l %d1,%a5	|, tmp207
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d2	| _245
	move.b %d5,%d2	| mip_index, _245
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d1	| sample_v.30_41
	move.w %d4,%d1	| sample_v, sample_v.30_41
| voxel.c:273: 	if (mip_index > 8) {
	cmp.b #8,%d5	|, mip_index
	jls .L90		|
.L110:
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	move.l %d2,%a4	| _245, tmp165
	subq.l #8,%a4	|, tmp165
	add.l %a4,%a4	| tmp165, tmp166
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	move.l %a4,%d7	| tmp166,
	lsl.l %d7,%d1	|,
	move.l %d1,%a2	|, idx
.L91:
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	moveq #1,%d1	|,
	lsl.l %d2,%d1	| _245,
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	neg.l %d1	|
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	move.l %a2,%d7	| idx,
	and.l %d7,%d1	|,
	move.l %d1,%a4	|, idx
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	moveq #0,%d1	|
	move.w %a1,%d1	| sample_u,
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	moveq #16,%d7	|, tmp174
	sub.l %d2,%d7	| _245, tmp174
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	asr.l %d7,%d1	| tmp174, tmp175
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	move.l %a4,%d2	| idx,
	or.l %d2,%d1	|, idx
| voxel.c:327: 			unsigned short height_color = combined[to_index(sample_u, sample_v, mip_index)];
	add.l %d1,%d1	| idx, tmp177
	move.w (%a6,%d1.l),%d2	| *_47, height_color
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d1	| tmp180
	move.b %d2,%d1	| height_color, tmp180
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l 52(%sp),%d1	| %sfp, tmp183
	add.l %a5,%d1	| tmp207, tmp184
	add.l %d1,%d1	| tmp184, tmp185
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w 50(%sp),%a5	| %sfp, sample_y
	lea _y_table,%a2	|,
	add.w (%a2,%d1.l),%a5	| y_table[z_84][_51], sample_y
| voxel.c:330: 			color = height_color >> 8;
	lsr.w #8,%d2	|, height_color
	move.w %d2,%a4	| height_color, color
| voxel.c:333: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:334: 				sample_u += delta_u;
	add.w 44(%sp),%a1	| %sfp, sample_u
| voxel.c:335: 				sample_v += delta_v;
	add.w %d6,%d4	| delta_v, sample_v
| voxel.c:336: 				if (TRIGGERS_MIPMAP_CHANGE(z)) {
	moveq #15,%d1	|, tmp186
	and.l %d3,%d1	| z, tmp186
| voxel.c:336: 				if (TRIGGERS_MIPMAP_CHANGE(z)) {
	jne .L92		|
| voxel.c:337: 					delta_u += delta_u;
	move.w 44(%sp),%d1	| %sfp,
	add.w %d1,44(%sp)	|, %sfp
| voxel.c:338: 					delta_v += delta_v;
	add.w %d6,%d6	| delta_v, delta_v
| voxel.c:339: 					mip_index--;
	subq.b #1,%d5	|, mip_index
| voxel.c:340: 					combined = combined_mip[mip_index];
	moveq #0,%d1	| mip_index
	move.b %d5,%d1	| mip_index, mip_index
| voxel.c:340: 					combined = combined_mip[mip_index];
	add.l %d1,%d1	| mip_index, tmp191
	add.l %d1,%d1	| tmp191, tmp192
	lea _combined_mip,%a2	|,
	move.l (%a2,%d1.l),%a6	| combined_mip[_67], combined
.L92:
| voxel.c:313: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d7	|,
	cmp.l %d3,%d7	| z,
	jne .L96		|
.L86:
| voxel.c:367: }
	movem.l (%sp)+,#31996	|,
	lea (16,%sp),%sp	|,
	rts	
.L87:
| voxel.c:350: 			unsigned char opacity = opacity_table[z];
	move.b (%a3,%d3.l),%d7	| opacity_table[z_84], opacity
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d2	|, tmp196
	and.l %d0,%d2	| <retval>, tmp196
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d1	| opacity
	move.b %d7,%d1	| opacity, opacity
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d2	|, tmp198
	add.l %d1,%d2	| opacity, tmp199
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %a4,%d1	| color, color
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #4,%d2	|, tmp201
	add.l %d1,%d2	| color, tmp202
	add.l %d2,%d2	| tmp202, tmp203
	add.l %d2,%d2	| tmp203, tmp204
	lea _pdata_table,%a2	|,
	move.l (%a2,%d2.l),%d1	| pdata_table[_69][_70][_71], movep_data
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:353: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:354: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, <retval>
| voxel.c:356: 			if (opacity == 7) {
	cmp.b #7,%d7	|, opacity
	jeq .L107		|
.L93:
| voxel.c:313: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L96		|
.L109:
| voxel.c:367: }
	movem.l (%sp)+,#31996	|,
	lea (16,%sp),%sp	|,
	rts	
.L107:
| voxel.c:357: 				if (sample_y < 0) sample_y = 0;
	clr.w %d2	|
	cmp.w %a5,%d2	| sample_y,
	jgt .L108		|
.L94:
| voxel.c:358: 				while (y >= sample_y) {
	cmp.w %a5,%d0	| sample_y, <retval>
	jlt .L93		|
	move.w 44(%sp),%d7	| %sfp, delta_u
.L95:
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:360: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, <retval>
| voxel.c:358: 				while (y >= sample_y) {
	cmp.w %a5,%d0	| sample_y, <retval>
	jge .L95		|
	move.w %d7,44(%sp)	| delta_u, %sfp
| voxel.c:313: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L96		|
	jra .L109		|
.L103:
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d7	| z,
	moveq #9,%d1	|,
	lsl.l %d1,%d7	|,
	move.l %d7,%a5	|, tmp207
	move.l %d7,%d1	| tmp207, tmp162
	add.l 56(%sp),%d1	| %sfp, tmp162
	add.l %d1,%d1	| tmp162, tmp163
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a2	|,
	cmp.w (%a2,%d1.l),%d0	| y_table[z_84][_38], <retval>
	jle .L86		|
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d2	| _245
	move.b %d5,%d2	| mip_index, _245
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d1	| sample_v.30_41
	move.w %d4,%d1	| sample_v, sample_v.30_41
| voxel.c:273: 	if (mip_index > 8) {
	cmp.b #8,%d5	|, mip_index
	jhi .L110		|
.L90:
| voxel.c:276: 		idx = v >> (16 - 2*mip_index);
	move.w #8,%a4	|, tmp168
	sub.l %d2,%a4	| _245, tmp168
	add.l %a4,%a4	| tmp168, tmp169
| voxel.c:276: 		idx = v >> (16 - 2*mip_index);
	move.l %a4,%d7	| tmp169,
	asr.l %d7,%d1	|,
	move.l %d1,%a2	|, idx
	jra .L91		|
.L108:
| voxel.c:357: 				if (sample_y < 0) sample_y = 0;
	sub.l %a5,%a5	| sample_y
	jra .L94		|
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:372: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:372: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:374: 	while (remaining_lines > 0) {
	tst.w %d1	| _5
	jle .L112		|
	and.l #65535,%d1	|, _5
	move.l %d1,%a1	| _5, tmp74
	add.l %d1,%a1	| _5, tmp74
	add.l %a1,%a1	| tmp74, tmp75
	add.l %a1,%d1	| tmp75, tmp76
	lsl.l #5,%d1	|, tmp77
	move.l %a0,%a1	| pBlock, _33
	sub.l %d1,%a1	| tmp77, _33
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp79
.L113:
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:376: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:374: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _33
	jne .L113		|
.L112:
| voxel.c:379: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:380: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_height_at
_height_at:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.l 8(%sp),%d0	| y, y
	lsr.w #7,%d0	|, tmp51
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	and.l #65535,%d0	|, tmp52
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	moveq #9,%d1	|,
	lsl.l %d1,%d0	|, tmp53
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.l 4(%sp),%d1	| x, x
	lsr.w #7,%d1	|, tmp54
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	and.l #65535,%d1	|, tmp55
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	add.l %d1,%d0	| tmp55, tmp56
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	add.l %d0,%d0	| tmp56, tmp58
| voxel.c:394: }
	move.l _combined_mip+36,%a0	| combined_mip[9], combined_mip[9]
	move.b 1(%a0,%d0.l),%d0	| *_8,
	and.w #255,%d0	|,
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
| voxel.c:398: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:400: 	Super(0L);
	moveq #0,%d0	| tmp264
#APP
| 400 "voxel.c" 1
	movl	%d0,%sp@-	| tmp264
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:402: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:404: 	lineaa();
	jsr _lineaa		|
| voxel.c:405: 	build_tables();
	jsr _build_tables		|
| voxel.c:406: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:407:         set_palette();
	jsr _set_palette		|
| voxel.c:408: 	unsigned short *screen = Physbase();
#APP
| 408 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,92(%sp)	| tmp463, %sfp
| voxel.c:409: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp463,
	jsr _draw_image2		|
	move.l 100(%sp),%a0	| %sfp, ivtmp.322
	move.l %a0,%d0	| ivtmp.322, _781
	add.l #32000,%d0	|, _781
	lea (12,%sp),%sp	|,
.L120:
| voxel.c:113: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.277_786]
	cmp.l %a0,%d0	| ivtmp.322, _781
	jne .L120		|
| voxel.c:411: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,136(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	move.l _combined_mip+36,98(%sp)	| combined_mip[9], %sfp
| voxel.c:424: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,126(%sp)	| __aline, %sfp
| voxel.c:288: 	short max_height_ytable_index = max_height + ytable_offset;
	clr.w %d1	|
	move.b _max_height,%d1	| max_height,
	move.w %d1,134(%sp)	|, %sfp
| voxel.c:417: 		int height_under_player = height_at(pos.x, pos.y);
	move.w _pos+2,96(%sp)	| pos.y, %sfp
| voxel.c:417: 		int height_under_player = height_at(pos.x, pos.y);
	lea _pos,%a0	|,
	move.w (%a0),94(%sp)	| pos.x, %sfp
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w _pos+6,86(%sp)	| pos.dirx, %sfp
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w _pos+8,84(%sp)	| pos.diry, %sfp
| voxel.c:435: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,114(%sp)	| pos.speed, %sfp
	clr.w 116(%sp)	| %sfp
| voxel.c:412: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,110(%sp)	|, %sfp
| voxel.c:350: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a3	|, tmp446
.L140:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 96(%sp),%d0	| %sfp, tmp280
	lsr.w #7,%d0	|, tmp280
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	and.l #65535,%d0	|, tmp281
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp282
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 94(%sp),%d1	| %sfp, tmp283
	lsr.w #7,%d1	|, tmp283
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	and.l #65535,%d1	|, tmp284
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	add.l %d1,%d0	| tmp284, tmp285
| voxel.c:392: 	unsigned short c = combined_mip[DIM_BITS][((int)fixp_uint(y) << DIM_BITS) + fixp_uint(x)];
	add.l %d0,%d0	| tmp285, tmp286
| voxel.c:393: 	return c & 0xff;
	move.l 98(%sp),%a0	| %sfp,
	move.w (%a0,%d0.l),%d0	| *_136, tmp287
	and.w #255,%d0	|, tmp287
| voxel.c:419: 		if (player_altitude > 255) player_altitude = 255;
	add.w #20,%d0	|, tmp279
	cmp.w #255,%d0	|, tmp279
	jls .L121		|
	move.w #255,%d0	|, tmp279
.L121:
| voxel.c:420: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 110(%sp),%d1	| %sfp, tmp289
	addq.l #2,%d1	|, tmp289
| voxel.c:420: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	and.l #511,%d0	|, tmp278
	cmp.l %d0,%d1	| tmp278, tmp289
	jge .L122		|
	move.l %d1,%d0	| tmp289, tmp278
.L122:
| voxel.c:421: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 110(%sp),%d1	| %sfp, tmp290
	subq.l #2,%d1	|, tmp290
| voxel.c:421: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,110(%sp)	| tmp278, %sfp
	cmp.l %d0,%d1	| tmp278, tmp290
	jle .L123		|
	move.l %d1,110(%sp)	| tmp290, %sfp
.L123:
| voxel.c:425: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 116(%sp),%d0	| %sfp, _8
	and.w #8,%d0	|, _8
| voxel.c:425: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _8
	move.w %d0,58(%sp)	| _8, %sfp
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 126(%sp),%a1	| %sfp,
	move.w -600(%a1),%a1	| MEM[(short int *)__aline.45_5 + 4294966696B],
	move.l %a1,118(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp291
	add.l %a1,%d0	|, tmp291
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp291
	move.l %d0,102(%sp)	| tmp291, %sfp
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 126(%sp),%a4	| %sfp,
	move.w -602(%a4),%a4	| MEM[(short int *)__aline.45_5 + 4294966694B],
	move.l %a4,122(%sp)	|, %sfp
	move.l %a4,%d0	|, tmp292
	add.l #-160,%d0	|, tmp292
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _14
| voxel.c:287: 	short ytable_offset = 256 - player_height;
	move.w #256,%d3	|, _203
	sub.w 112(%sp),%d3	| %sfp, _203
| voxel.c:288: 	short max_height_ytable_index = max_height + ytable_offset;
	move.w 134(%sp),%d2	| %sfp, max_height_ytable_index
	add.w %d3,%d2	| _203, max_height_ytable_index
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 84(%sp),%a6	| %sfp,
	move.l %a6,130(%sp)	|, %sfp
	move.l %d0,%d1	| _14,
	lsl.l #4,%d1	|,
	move.l %d1,106(%sp)	|, %sfp
	moveq #0,%d4	| x
	move.w 58(%sp),%d4	| %sfp, x
	move.l %d0,-(%sp)	| _14,
	move.l %d4,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,68(%sp)	| tmp464, %sfp
	add.l %d4,%d4	| x, tmp299
	add.l #_horizon,%d4	|, tmp299
	move.l %d4,64(%sp)	| tmp299, %sfp
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	move.w %d3,%a1	| _203,
	move.l %a1,60(%sp)	|, %sfp
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.w %d2,%a4	| max_height_ytable_index,
	move.l %a4,72(%sp)	|, %sfp
.L137:
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 72(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:427: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 102(%sp),%d0	| %sfp, tmp465
	move.l %d0,52(%sp)	| tmp465, %sfp
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 58(%sp),%d0	| %sfp, _215
	add.w #-160,%d0	|, _215
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 84(%sp),%d1	| %sfp,
	muls.w %d0,%d1	| _215, tmp305
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	asr.l #8,%d1	|, tmp306
| voxel.c:292: 	fixp delta_u = pos->dirx - ((short)(x - 160) * pos->diry >> 8);
	move.w 86(%sp),%a2	| %sfp, delta_u
	sub.w %d1,%a2	| tmp306, delta_u
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	muls.w 86(%sp),%d0	| %sfp, tmp307
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	asr.l #8,%d0	|, tmp308
| voxel.c:293: 	fixp delta_v = pos->diry + ((short)(x - 160) * pos->dirx >> 8);
	move.w 84(%sp),%a1	| %sfp, delta_v
	add.w %d0,%a1	| tmp308, delta_v
| voxel.c:296: 	sample_u += STEPS_MIN * delta_u;
	move.w %a2,%d4	| delta_u, tmp309
	add.w %a2,%d4	| delta_u, tmp309
	add.w %d4,%d4	| tmp309, tmp310
| voxel.c:296: 	sample_u += STEPS_MIN * delta_u;
	add.w 94(%sp),%d4	| %sfp, sample_u
| voxel.c:297: 	sample_v += STEPS_MIN * delta_v;
	move.w %a1,%d5	| delta_v, tmp311
	add.w %a1,%d5	| delta_v, tmp311
	add.w %d5,%d5	| tmp311, tmp312
| voxel.c:297: 	sample_v += STEPS_MIN * delta_v;
	add.w 96(%sp),%d5	| %sfp, sample_v
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 58(%sp),%d0	| %sfp, tmp313
	asr.w #4,%d0	|, tmp313
	ext.l %d0	| tmp314
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp314, tmp315
	add.l %d0,%d0	| tmp315, tmp315
	move.l %d0,76(%sp)	| tmp315, %sfp
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 58(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp318
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp318,
	move.l %d1,80(%sp)	|, %sfp
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 76(%sp),%d0	| %sfp, tmp319
	add.l #15920,%d0	|, tmp319
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp319, tmp320
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp320, tmp321
	add.l %d1,%a0	|, tmp321
	add.l 88(%sp),%a0	| %sfp, pBlock
| voxel.c:309: 	unsigned short* combined = combined_mip[DIM_BITS];
	move.l 98(%sp),%a5	| %sfp, combined
| voxel.c:304: 	unsigned short color = 0;
	clr.w %d2	| color
| voxel.c:310: 	unsigned char mip_index = DIM_BITS;
	move.b #9,51(%sp)	|, %sfp
| voxel.c:302: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:312: 	short y = 199;
	move.w #199,%d0	|, y
| voxel.c:299: 	short sample_y = 200;
	move.w #200,%d7	|, sample_y
.L134:
| voxel.c:354: 			y -= LINES_SKIP;
	move.w %d0,%a4	| y, prephitmp_769
| voxel.c:315: 		if (y < sample_y) {
	cmp.w %d7,%d0	| sample_y, y
	jge .L124		|
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	move.l %d3,%d6	| z, tmp439
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	cmp.w #99,%d0	|, y
	jle .L152		|
	moveq #9,%d2	|,
	lsl.l %d2,%d6	|, tmp439
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d2	| _809
	move.b 51(%sp),%d2	| %sfp, _809
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d1	| sample_v.30_257
	move.w %d5,%d1	| sample_v, sample_v.30_257
| voxel.c:273: 	if (mip_index > 8) {
	cmp.b #8,51(%sp)	|, %sfp
	jls .L127		|
.L161:
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	move.l %d2,%d7	| _809, tmp328
	subq.l #8,%d7	|, tmp328
	add.l %d7,%d7	| tmp328, tmp329
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	lsl.l %d7,%d1	| tmp329, idx
.L128:
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	moveq #1,%d7	|, tmp333
	lsl.l %d2,%d7	| _809, tmp333
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	neg.l %d7	| tmp335
| voxel.c:278: 	idx &= ~((1<<mip_index)-1);
	and.l %d1,%d7	| idx, tmp335
	move.l %d7,%a6	| tmp335, idx
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	moveq #0,%d1	| sample_u.31_259
	move.w %d4,%d1	| sample_u, sample_u.31_259
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	moveq #16,%d7	|,
	sub.l %d2,%d7	| _809,
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	asr.l %d7,%d1	|, tmp338
| voxel.c:279: 	idx |= u >> (16 - mip_index);
	move.l %a6,%d2	| idx,
	or.l %d2,%d1	|, idx
| voxel.c:327: 			unsigned short height_color = combined[to_index(sample_u, sample_v, mip_index)];
	add.l %d1,%d1	| idx, tmp340
	move.w (%a5,%d1.l),%d2	| *_283, height_color
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	moveq #0,%d1	| tmp343
	move.b %d2,%d1	| height_color, tmp343
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	add.l 60(%sp),%d1	| %sfp, tmp346
	add.l %d1,%d6	| tmp346, tmp347
	add.l %d6,%d6	| tmp347, tmp348
| voxel.c:329: 			sample_y = y_table[z][h + ytable_offset] + y_offset;
	lea _y_table,%a6	|,
	move.w (%a6,%d6.l),%d7	| y_table[z_343][_288], sample_y
	add.w 54(%sp),%d7	| %sfp, sample_y
| voxel.c:330: 			color = height_color >> 8;
	lsr.w #8,%d2	|, color
| voxel.c:333: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:334: 				sample_u += delta_u;
	add.w %a2,%d4	| delta_u, sample_u
| voxel.c:335: 				sample_v += delta_v;
	add.w %a1,%d5	| delta_v, sample_v
| voxel.c:336: 				if (TRIGGERS_MIPMAP_CHANGE(z)) {
	moveq #15,%d1	|, tmp349
	and.l %d3,%d1	| z, tmp349
| voxel.c:336: 				if (TRIGGERS_MIPMAP_CHANGE(z)) {
	jne .L129		|
| voxel.c:337: 					delta_u += delta_u;
	add.w %a2,%a2	| delta_u, delta_u
| voxel.c:338: 					delta_v += delta_v;
	add.w %a1,%a1	| delta_v, delta_v
| voxel.c:339: 					mip_index--;
	subq.b #1,51(%sp)	|, %sfp
| voxel.c:340: 					combined = combined_mip[mip_index];
	moveq #0,%d1	| mip_index
	move.b 51(%sp),%d1	| %sfp, mip_index
| voxel.c:340: 					combined = combined_mip[mip_index];
	add.l %d1,%d1	| mip_index, tmp354
	add.l %d1,%d1	| tmp354, tmp355
	lea _combined_mip,%a6	|,
	move.l (%a6,%d1.l),%a5	| combined_mip[_316], combined
.L129:
| voxel.c:313: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d1	|,
	cmp.l %d3,%d1	| z,
	jne .L134		|
.L156:
	move.w %a4,%d6	| prephitmp_769, prephitmp_769
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	| y,
	muls.w #80,%d1	|, _766
.L133:
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 76(%sp),%d1	| %sfp, tmp370
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp370, tmp371
| voxel.c:263: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp371, tmp372
	add.l 80(%sp),%a0	| %sfp, tmp372
	add.l 88(%sp),%a0	| %sfp, pBlock
| voxel.c:372: 	short remaining_lines = y - horizon[x];
	move.l 64(%sp),%a6	| %sfp,
	sub.w (%a6),%d6	| MEM[(short int *)_776], _191
| voxel.c:374: 	while (remaining_lines > 0) {
	tst.w %d6	| _191
	jle .L135		|
	and.l #65535,%d6	|, _191
	move.l %d6,%d1	| _191, tmp375
	add.l %d6,%d1	| _191, tmp375
	add.l %d1,%d1	| tmp375, tmp376
	add.l %d1,%d6	| tmp376, tmp377
	lsl.l #5,%d6	|, tmp378
	move.l %a0,%a1	| pBlock, _740
	sub.l %d6,%a1	| tmp378, _740
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp380
.L136:
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp380, pBlock
| 0 "" 2
| voxel.c:376: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:374: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _740
	jne .L136		|
.L135:
| voxel.c:379: 	horizon[x] = y;
	move.l 64(%sp),%a0	| %sfp,
	move.w %d0,(%a0)	| y, MEM[(short int *)_776]
| voxel.c:425: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,58(%sp)	|, %sfp
| voxel.c:425: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 106(%sp),%d1	| %sfp,
	add.l %d1,68(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,64(%sp)	|, %sfp
	cmp.w #319,58(%sp)	|, %sfp
	jls .L137		|
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 114(%sp),%d0	| %sfp,
	muls.w 86(%sp),%d0	| %sfp, tmp381
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp382
| voxel.c:435: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,94(%sp)	| tmp382, %sfp
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 114(%sp),%d0	| %sfp,
	muls.w 84(%sp),%d0	| %sfp, tmp383
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp384
| voxel.c:436: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 96(%sp),%d0	| %sfp, _35
| voxel.c:435: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w 94(%sp),%d1	| %sfp,
	swap %d1	| _35
	clr.w %d1	| _35
	move.w %d0,%d1	| _35, _35
| voxel.c:436: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,96(%sp)	| _35, %sfp
| voxel.c:438: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp390
	sub.l 118(%sp),%d0	| %sfp, tmp390
| voxel.c:438: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp391
| voxel.c:438: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 114(%sp),%d0	| %sfp, _42
| voxel.c:439: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _42, tmp392
	asr.w #3,%d2	|, tmp392
| voxel.c:439: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _42, tmp393
	asr.w #4,%d3	|, tmp393
| voxel.c:439: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d2	| tmp393, tmp394
| voxel.c:439: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, tmp395
| voxel.c:440: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _42
	jle .L138		|
| voxel.c:440: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| tmp395, _42
	move.w %d0,114(%sp)	| _42, %sfp
| voxel.c:435: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _35, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:440: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 114(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:442: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d2	|, tmp398
	not.b %d2	| tmp398
	sub.l 122(%sp),%d2	| %sfp, tmp398
| voxel.c:442: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d2	|, _58
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 130(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _58,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:443: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 86(%sp),%d3	| %sfp, _62
	add.w %d0,%d3	| tmp401, _62
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _58,
	move.w %d3,%a1	| _62,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp405
| voxel.c:444: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 84(%sp),%d1	| %sfp, _66
	sub.w %d0,%d1	| tmp405, _66
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _62,
	muls.w %d3,%d0	| _62, tmp406
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp407
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _66,
	muls.w %d1,%d2	| _66, tmp409
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp410
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp410, tmp411
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp413
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp414
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp414, factor
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp415
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp416
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,86(%sp)	| tmp416, %sfp
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _66, tmp417
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp418
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,84(%sp)	| tmp418, %sfp
| voxel.c:451: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _148
	clr.w %d3	| _148
	move.w %d0,%d3	| tmp418, _148
	move.l %d3,_pos+6	| _148, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:413: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,116(%sp)	|, %sfp
	cmp.w #6400,116(%sp)	|, %sfp
	jne .L140		|
.L162:
| voxel.c:458: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:459: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 136(%sp),%a0	| %sfp, tmp426
| voxel.c:459: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp426, tmp428
	add.l %a0,%d0	| tmp426, tmp428
	add.l %d0,%d0	| tmp428, tmp429
| voxel.c:460: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:461: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp468,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.52_116
	move.l 4(%a0),%d0	| stdin.52_116->__bufp, _114
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.52_116->__get_limit, _114
	jcc .L141		|
	addq.l #1,%d0	|, _114
	move.l %d0,4(%a0)	| _114, stdin.52_116->__bufp
| voxel.c:465: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (96,%sp),%sp	|,
	rts	
.L124:
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d6	|, tmp359
	and.l %d0,%d6	| y, tmp359
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d1	| opacity
	move.b (%a3,%d3.l),%d1	| opacity_table[z_343], opacity
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d6	|, tmp359
	move.l %d6,%a4	| tmp359, tmp361
	add.l %d1,%a4	| opacity, tmp362
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d2,%d1	| color, color
| voxel.c:351: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.l %a4,%d6	| tmp362,
	lsl.l #4,%d6	|,
	add.l %d6,%d1	| tmp364, tmp365
	add.l %d1,%d1	| tmp365, tmp366
	add.l %d1,%d1	| tmp366, tmp367
	lea _pdata_table,%a4	|,
	move.l (%a4,%d1.l),%d1	| pdata_table[_321][_322][_324], movep_data
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:353: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:354: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:356: 			if (opacity == 7) {
	cmp.b #7,(%a3,%d3.l)	|, opacity_table[z_343]
	jeq .L159		|
.L130:
| voxel.c:313: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, y
	jne .L134		|
	moveq #-1,%d6	|, prephitmp_769
	moveq #-80,%d1	|, _766
	jra .L133		|
.L159:
| voxel.c:357: 				if (sample_y < 0) sample_y = 0;
	tst.w %d7	| sample_y
	jlt .L160		|
.L155:
| voxel.c:358: 				while (y >= sample_y) {
	cmp.w %d7,%d0	| sample_y, y
	jlt .L130		|
| voxel.c:268: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 268 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:360: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:361: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
	jra .L155		|
.L160:
| voxel.c:357: 				if (sample_y < 0) sample_y = 0;
	clr.w %d7	| sample_y
	jra .L155		|
.L152:
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	moveq #9,%d7	|,
	lsl.l %d7,%d6	|, tmp439
	move.l %d6,%d1	| tmp439, tmp325
	add.l 72(%sp),%d1	| %sfp, tmp325
	add.l %d1,%d1	| tmp325, tmp326
| voxel.c:321: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height_ytable_index]) {
	lea _y_table,%a6	|,
	cmp.w (%a6,%d1.l),%d0	| y_table[z_343][_253], y
	jle .L156		|
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d2	| _809
	move.b 51(%sp),%d2	| %sfp, _809
| voxel.c:274: 		idx = v << (2*mip_index - 16);
	moveq #0,%d1	| sample_v.30_257
	move.w %d5,%d1	| sample_v, sample_v.30_257
| voxel.c:273: 	if (mip_index > 8) {
	cmp.b #8,51(%sp)	|, %sfp
	jhi .L161		|
.L127:
| voxel.c:276: 		idx = v >> (16 - 2*mip_index);
	moveq #8,%d7	|, tmp331
	sub.l %d2,%d7	| _809, tmp331
	add.l %d7,%d7	| tmp331, tmp332
| voxel.c:276: 		idx = v >> (16 - 2*mip_index);
	asr.l %d7,%d1	| tmp332, idx
	jra .L128		|
.L138:
| voxel.c:441: 		else pos.speed += drag;
	add.w %d2,%d0	| tmp395, _42
	move.w %d0,114(%sp)	| _42, %sfp
| voxel.c:435: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d1,(%a0)	| _35, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:440: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 114(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:442: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d2	|, tmp398
	not.b %d2	| tmp398
	sub.l 122(%sp),%d2	| %sfp, tmp398
| voxel.c:442: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d2	|, _58
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 130(%sp),-(%sp)	| %sfp,
	move.l %d2,-(%sp)	| _58,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:443: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 86(%sp),%d3	| %sfp, _62
	add.w %d0,%d3	| tmp401, _62
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _58,
	move.w %d3,%a1	| _62,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp405
| voxel.c:444: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 84(%sp),%d1	| %sfp, _66
	sub.w %d0,%d1	| tmp405, _66
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _62,
	muls.w %d3,%d0	| _62, tmp406
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp407
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _66,
	muls.w %d1,%d2	| _66, tmp409
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp410
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| tmp410, tmp411
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d0	|
	lea -128(%a0,%d0.l),%a0	|,
	move.l %a0,%d2	|, tmp413
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d2	|, tmp414
| voxel.c:450: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d2,%d0	| tmp414, factor
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d3	| factor, tmp415
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp416
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,86(%sp)	| tmp416, %sfp
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _66, tmp417
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp418
| voxel.c:129: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,84(%sp)	| tmp418, %sfp
| voxel.c:451: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d3	| _148
	clr.w %d3	| _148
	move.w %d0,%d3	| tmp418, _148
	move.l %d3,_pos+6	| _148, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:413: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,116(%sp)	|, %sfp
	cmp.w #6400,116(%sp)	|, %sfp
	jne .L140		|
	jra .L162		|
.L141:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.52_116,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:465: }
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
	.skip 4096
	.globl	_y_table
	.even
_y_table:
	.skip 65536
	.globl	_max_height
_max_height:
	.skip 1
	.globl	_combined_mip
	.even
_combined_mip:
	.skip 40
