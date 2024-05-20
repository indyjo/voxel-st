| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_get_color
_get_color:
| voxel.c:90: }
	move.l _hw_palette,%a0	| hw_palette, hw_palette
	move.w (%a0),%d0	| *hw_palette.0_1,
	rts	
	.even
	.globl	_set_background_color
_set_background_color:
| voxel.c:96: } 
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
| voxel.c:98: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.85
.L7:
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
	lea (16,%a6),%a6	|, ivtmp.85
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L7		|
| voxel.c:99: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L6		|
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
.L13:
| voxel.c:121: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.100_11]
	cmp.l %d0,%a0	| _3, out
	jne .L13		|
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
.LC1:
	.ascii "Combining height and color...\0"
.LC2:
	.ascii "Creating skipmap...\0"
.LC3:
	.ascii "Found %d candidates.\12\0"
.LC4:
	.ascii "Iteration %d: found %d candidates.\12\0"
.LC5:
	.ascii "Creating Bayer table...\0"
.LC6:
	.ascii "All tables computed.\0"
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
	lea (-296,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	lea _opacity_table+1,%a4	|, ivtmp.281
	move.l #_y_table+1024,%d4	|, ivtmp.282
| voxel.c:210: 	fixp dist = FIXP(1,0);
	move.w #128,%d3	|, dist
	moveq #-32,%d5	|, tmp363
	sub.l #_opacity_table,%d5	|, tmp363
.L24:
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d0	| dist, _138
	lsr.w #7,%d0	|, _138
| voxel.c:214: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d6	| _3
	move.w %d0,%d6	| _138, _3
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp228
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp228,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _235
	add.w #120,%d2	|, _235
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d4,%a3	| ivtmp.282, ivtmp.268
	move.w #-17920,%a2	|, ivtmp.265
.L25:
| voxel.c:214: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d6,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.265,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _235,
	sub.w %d0,%d1	| tmp381,
	move.w %d1,(%a3)+	|, MEM[(short int *)_472]
| voxel.c:213: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.265
	cmp.w #17920,%a2	|, ivtmp.265
	jne .L25		|
	add.w #128,%d3	|, dist
| voxel.c:219: 		dist += step;
	move.w %d3,82(%sp)	| dist, %sfp
| voxel.c:224: 		int rel_dist = z - STEPS_MAX/2;
	move.l %d5,%d1	| tmp363, rel_dist
	add.l %a4,%d1	| ivtmp.281, rel_dist
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L84		|
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp225
	sub.l %d1,%d0	| rel_dist, tmp225
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp226
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp227
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a4)+	| tmp227, MEM[(unsigned char *)_486]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d4	|, ivtmp.282
	cmp.w #8192,%d3	|, dist
	jne .L24		|
.L27:
| voxel.c:231: 	printf("Combining height and color...\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:232: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _colors+512,%a6	|, ivtmp.231
	move.l #_height,%d6	|, ivtmp.257
	addq.l #4,%sp	|,
	lea _combined,%a5	|, tmp365
	move.l %a5,%d7	| tmp365, ivtmp.258
	move.l %a6,%d4	| ivtmp.231, ivtmp.255
	clr.b %d5	| max_height_lsm_flag.136
	clr.b %d3	| max_height_lsm.135
.L30:
	move.l %d4,%a0	| ivtmp.255, ivtmp.244
	lea (-512,%a0),%a0	|, ivtmp.244
	move.l %d7,%a2	| ivtmp.258, ivtmp.248
	move.l %d6,%a1	| ivtmp.257, ivtmp.246
.L29:
| voxel.c:235: 			combined[y][x] = ((colors[y][x] & 0xf) << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_444], _109
| voxel.c:235: 			combined[y][x] = ((colors[y][x] & 0xf) << 8) | height[y][x];
	clr.w %d0	| _146
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_443], _146
	lsl.w #8,%d0	|, tmp242
	and.w #3840,%d0	|, tmp243
| voxel.c:235: 			combined[y][x] = ((colors[y][x] & 0xf) << 8) | height[y][x];
	clr.w %d2	| _109
	move.b %d1,%d2	| _109, _109
| voxel.c:235: 			combined[y][x] = ((colors[y][x] & 0xf) << 8) | height[y][x];
	or.w %d2,%d0	| _109, _105
| voxel.c:236: 			if (height[y][x] > max_height)
	cmp.b %d1,%d3	| _109, max_height_lsm.135
	jcc .L28		|
| voxel.c:237: 				max_height = height[y][x];
	move.b %d1,%d3	| _109, max_height_lsm.135
| voxel.c:236: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.136
.L28:
| voxel.c:235: 			combined[y][x] = ((colors[y][x] & 0xf) << 8) | height[y][x];
	move.w %d0,(%a2)+	| _105, MEM[(short unsigned int *)_445]
| voxel.c:234: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %a0,%d4	| ivtmp.244, ivtmp.255
	jne .L29		|
| voxel.c:233: 	for (int y=0; y<HEIGHT; y++) {
	move.l %a0,%d4	| ivtmp.244, ivtmp.255
	add.l #512,%d4	|, ivtmp.255
	add.l #512,%d6	|, ivtmp.257
	add.l #1024,%d7	|, ivtmp.258
	cmp.l #_colors+262144,%a0	|, ivtmp.244
	jne .L30		|
	tst.b %d5	| max_height_lsm_flag.136
	jeq .L31		|
	move.b %d3,_max_height	| max_height_lsm.135, max_height
.L31:
| voxel.c:241: 	printf("Creating skipmap...\n");
	pea .LC2		|
	jsr _puts		|
	move.l #_colors,%d2	|,
	neg.l %d2	|
	move.l %d2,66(%sp)	|, %sfp
	addq.l #4,%sp	|,
	move.l #_combined,74(%sp)	|, %sfp
	moveq #0,%d7	| ivtmp.233
| voxel.c:243: 	for (int y=0; y<HEIGHT; y++) {
	clr.l 58(%sp)	| %sfp
| voxel.c:242: 	int count = 0;
	clr.l 70(%sp)	| %sfp
.L32:
	move.l 58(%sp),%d5	| %sfp, tmp275
	subq.l #1,%d5	|, tmp275
	and.l #511,%d5	|, _341
	move.l 58(%sp),%d0	| %sfp, y
	move.l 62(%sp),%d1	| %sfp,
	neg.l %d1	|
	move.l %d1,%a0	|, ivtmp.218
	moveq #9,%d2	|,
	lsl.l %d2,%d5	|, tmp359
| voxel.c:252: 				&& c == wrap_color(x-1, y+1)
	move.l 74(%sp),%a1	| %sfp, ivtmp.222
	move.l 62(%sp),%d3	| %sfp, tmp357
	subq.l #1,%d3	|, tmp357
| voxel.c:185: 	return colors[y & mask][x & mask];
	lea _colors,%a2	|, tmp251
	add.l %d5,%a2	| tmp359, tmp251
| voxel.c:185: 	return colors[y & mask][x & mask];
	move.l 62(%sp),%d6	| %sfp, tmp375
	addq.l #1,%d6	|, tmp375
| voxel.c:185: 	return colors[y & mask][x & mask];
	lsl.l %d2,%d0	|, tmp376
	addq.l #1,58(%sp)	|, %sfp
	lea _colors,%a4	|, tmp377
	add.l %d0,%a4	| tmp376, tmp377
	move.l %d6,50(%sp)	| tmp375, %sfp
	move.l %a4,46(%sp)	| tmp377, %sfp
.L34:
	move.b (%a0),%d1	| MEM[(unsigned char *)_350], _144
| voxel.c:185: 	return colors[y & mask][x & mask];
	move.l %d3,%d0	| tmp357, tmp247
	add.l %a0,%d0	| ivtmp.218, tmp247
	and.l #511,%d0	|, _148
| voxel.c:201: 	combined[y & mask][x & mask] &= 0xfff;
	move.w (%a1)+,%d2	| MEM[(short unsigned int *)_432], _403
	and.w #4095,%d2	|, _403
| voxel.c:254: 				&& c == wrap_color(x+1, y+1);
	cmp.b (%a2,%d0.l),%d1	| colors[_341][_148], _144
	jeq .L85		|
.L33:
| voxel.c:202: 	combined[y & mask][x & mask] |= (unsigned short) value << 12;
	move.w %d2,-2(%a1)	| _403, MEM[(short unsigned int *)_431 + 4294967294B]
| voxel.c:244: 		for (int x=0; x<WIDTH; x++) {
	addq.l #1,%a0	|, ivtmp.218
	cmp.l %a0,%a6	| ivtmp.218, ivtmp.231
	jne .L34		|
.L86:
| voxel.c:243: 	for (int y=0; y<HEIGHT; y++) {
	lea (512,%a0),%a6	|, ivtmp.218, ivtmp.231
	add.l #-512,%d7	|, ivtmp.233
	add.l #1024,74(%sp)	|, %sfp
	add.l #-512,62(%sp)	|, %sfp
	cmp.l #_colors+262144,%a0	|, ivtmp.218
	jne .L32		|
| voxel.c:263: 	printf("Found %d candidates.\n", count);
	move.l 70(%sp),-(%sp)	| %sfp,
	pea .LC3		|
	jsr _printf		|
	addq.l #8,%sp	|,
| voxel.c:264: 	for (int i=1; i<8; i++) {
	move.w #1,%a6	|, i
	move.w 82(%sp),%d7	| %sfp, ivtmp.211
.L36:
	lea _combined+1024,%a1	|, ivtmp.198
| voxel.c:267: 			for (int x=0; x<WIDTH; x++) {
	moveq #-1,%d0	|,
	move.l %d0,66(%sp)	|, %sfp
	sub.l %a3,%a3	| ivtmp.200
| voxel.c:266: 		for (int y=0; y<HEIGHT; y++) {
	clr.l 58(%sp)	| %sfp
| voxel.c:265: 		count = 0;
	sub.l %a4,%a4	| count
.L41:
	move.l 58(%sp),%d6	| %sfp, y
| voxel.c:276: 					&& i <= get_skipcount(x-1, y+1)
	addq.l #1,58(%sp)	|, %sfp
	lea (-1024,%a1),%a0	|, ivtmp.198, ivtmp.187
	move.l 66(%sp),%d4	| %sfp, _179
	and.l #511,%d4	|, _179
	move.l %d4,%d0	| _179,
	moveq #10,%d1	|,
	lsl.l %d1,%d0	|,
	move.l %d0,%a2	|, _380
	move.l 58(%sp),%d0	| %sfp, tmp334
	lsl.l %d1,%d0	|, tmp334
	move.l #1024,%d2	|,
	sub.l %d0,%d2	| tmp334,
	move.l %d2,70(%sp)	|, %sfp
	move.l 58(%sp),%d0	| %sfp, _123
	and.l #511,%d0	|, _123
	move.l %d0,%d3	| _123,
	lsl.l %d1,%d3	|,
	move.l %d3,74(%sp)	|, %sfp
| voxel.c:267: 			for (int x=0; x<WIDTH; x++) {
	moveq #0,%d1	| x
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	moveq #9,%d5	|,
	lsl.l %d5,%d4	|, tmp372
	lsl.l %d5,%d6	|, tmp373
	lsl.l %d5,%d0	|, _123
	move.l %d0,62(%sp)	| _123, %sfp
	move.l %a3,78(%sp)	| ivtmp.200, %sfp
	move.l %d6,54(%sp)	| tmp373, %sfp
.L38:
	move.w (%a0),%d2	| MEM[(short unsigned int *)_151], _177
	move.l %d1,%d0	| x, x
| voxel.c:273: 					&& i <= get_skipcount(x+1, y-1)
	addq.l #1,%d1	|, x
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w %d2,%d3	| _177, tmp277
	moveq #12,%d5	|,
	lsr.w %d5,%d3	|, tmp277
| voxel.c:269: 				if (s < i) continue;
	and.l #65535,%d3	|, tmp278
| voxel.c:269: 				if (s < i) continue;
	cmp.l %d3,%a6	| tmp278, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	subq.l #1,%d0	|, tmp279
	and.l #511,%d0	|, _180
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l %d4,%d3	| tmp372, tmp282
	add.l %d0,%d3	| _180, tmp282
	add.l %d3,%d3	| tmp282, tmp283
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d3.l),%d3	| combined[_179][_180], combined[_179][_180]
	lsr.w %d5,%d3	|, tmp284
| voxel.c:271: 					&& i <= get_skipcount(x-1, y-1)
	and.l #65535,%d3	|, tmp286
| voxel.c:278: 					&& i <= get_skipcount(x+1, y+1);
	cmp.l %d3,%a6	| tmp286, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l 78(%sp),%d3	| %sfp, tmp287
	add.l %a0,%d3	| ivtmp.187, tmp287
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a2,%d3.l),%d3	| MEM[(short unsigned int *)_295 + _380 * 1], MEM[(short unsigned int *)_295 + _380 * 1]
	lsr.w %d5,%d3	|, tmp288
| voxel.c:272: 					&& i <= get_skipcount(  x, y-1)
	and.l #65535,%d3	|, tmp290
| voxel.c:272: 					&& i <= get_skipcount(  x, y-1)
	cmp.l %d3,%a6	| tmp290, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l %d1,%d5	| x, _186
	and.l #511,%d5	|, _186
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l %d4,%d3	| tmp372, tmp293
	add.l %d5,%d3	| _186, tmp293
	add.l %d3,%d3	| tmp293, tmp294
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d3.l),%d3	| combined[_179][_186], combined[_179][_186]
	moveq #12,%d6	|,
	lsr.w %d6,%d3	|, tmp295
| voxel.c:273: 					&& i <= get_skipcount(x+1, y-1)
	and.l #65535,%d3	|, tmp297
| voxel.c:273: 					&& i <= get_skipcount(x+1, y-1)
	cmp.l %d3,%a6	| tmp297, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l 54(%sp),%d3	| %sfp, tmp300
	add.l %d0,%d3	| _180, tmp300
	add.l %d3,%d3	| tmp300, tmp301
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d3.l),%d3	| combined[y_400][_180], combined[y_400][_180]
	lsr.w %d6,%d3	|, tmp302
| voxel.c:274: 					&& i <= get_skipcount(x-1,   y)
	and.l #65535,%d3	|, tmp304
| voxel.c:274: 					&& i <= get_skipcount(x-1,   y)
	cmp.l %d3,%a6	| tmp304, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l 54(%sp),%d3	| %sfp, tmp307
	add.l %d5,%d3	| _186, tmp307
	add.l %d3,%d3	| tmp307, tmp308
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d3.l),%d3	| combined[y_400][_186], combined[y_400][_186]
	lsr.w %d6,%d3	|, tmp309
| voxel.c:275: 					&& i <= get_skipcount(x+1,   y)
	and.l #65535,%d3	|, tmp311
| voxel.c:275: 					&& i <= get_skipcount(x+1,   y)
	cmp.l %d3,%a6	| tmp311, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	add.l 62(%sp),%d0	| %sfp, tmp314
	add.l %d0,%d0	| tmp314, tmp315
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d0.l),%d0	| combined[_123][_180], combined[_123][_180]
	lsr.w %d6,%d0	|, tmp316
| voxel.c:276: 					&& i <= get_skipcount(x-1, y+1)
	and.l #65535,%d0	|, tmp318
| voxel.c:276: 					&& i <= get_skipcount(x-1, y+1)
	cmp.l %d0,%a6	| tmp318, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l 70(%sp),%d0	| %sfp, tmp319
	add.l %a0,%d0	| ivtmp.187, tmp319
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.l 74(%sp),%a3	| %sfp,
	move.w (%a3,%d0.l),%d0	| MEM[(short unsigned int *)_20 + _24 * 1], MEM[(short unsigned int *)_20 + _24 * 1]
	lsr.w %d6,%d0	|, tmp320
| voxel.c:277: 					&& i <= get_skipcount(  x, y+1)
	and.l #65535,%d0	|, tmp322
| voxel.c:277: 					&& i <= get_skipcount(  x, y+1)
	cmp.l %d0,%a6	| tmp322, i
	jgt .L37		|
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	add.l 62(%sp),%d5	| %sfp, tmp325
	add.l %d5,%d5	| tmp325, tmp326
| voxel.c:196: 	return (combined[y & mask][x & mask] & 0xf000) >> 12;
	move.w (%a5,%d5.l),%d0	| combined[_123][_186], combined[_123][_186]
	lsr.w %d6,%d0	|, tmp327
| voxel.c:278: 					&& i <= get_skipcount(x+1, y+1);
	and.l #65535,%d0	|, tmp329
| voxel.c:278: 					&& i <= get_skipcount(x+1, y+1);
	cmp.l %d0,%a6	| tmp329, i
	jgt .L37		|
| voxel.c:279: 				count += eq ? 1 : 0;
	addq.l #1,%a4	|, count
| voxel.c:201: 	combined[y & mask][x & mask] &= 0xfff;
	and.w #4095,%d2	|, tmp330
| voxel.c:202: 	combined[y & mask][x & mask] |= (unsigned short) value << 12;
	or.w %d7,%d2	| ivtmp.211, tmp330
	move.w %d2,(%a0)	| tmp330, MEM[(short unsigned int *)_151]
.L37:
| voxel.c:267: 			for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.187
	cmp.l %a1,%a0	| ivtmp.198, ivtmp.187
	jne .L38		|
| voxel.c:266: 		for (int y=0; y<HEIGHT; y++) {
	move.l 78(%sp),%a3	| %sfp, ivtmp.200
	lea (1024,%a1),%a1	|, ivtmp.198
	lea (-1024,%a3),%a3	|, ivtmp.200
	addq.l #1,66(%sp)	|, %sfp
	cmp.l #512,58(%sp)	|, %sfp
	jne .L41		|
| voxel.c:285: 		printf("Iteration %d: found %d candidates.\n", i, count);
	move.l %a4,-(%sp)	| count,
	move.l %a6,-(%sp)	| i,
	pea .LC4		|
	jsr _printf		|
| voxel.c:264: 	for (int i=1; i<8; i++) {
	addq.l #1,%a6	|, i
| voxel.c:264: 	for (int i=1; i<8; i++) {
	add.w #4096,%d7	|, ivtmp.211
	lea (12,%sp),%sp	|,
	moveq #8,%d6	|,
	cmp.l %a6,%d6	| i,
	jne .L36		|
| voxel.c:288: 	printf("Creating Bayer table...\n");
	pea .LC5		|
	jsr _puts		|
| voxel.c:289: 	int bayer[8][8] = {
	lea (88,%sp),%a3	|,, tmp337
	pea 256.w		|
	pea .LC0		|
	move.l %a3,-(%sp)	| tmp337,
	jsr _memcpy		|
	move.l #_pdata_table,%d7	|, ivtmp.181
	lea (16,%sp),%sp	|,
	moveq #0,%d6	| ivtmp.180
.L42:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	move.l (%a3),%a6	| MEM[(int *)_310], _192
	move.l 4(%a3),%a5	| MEM[(int *)_310 + 4B], _217
	move.l 8(%a3),%a4	| MEM[(int *)_310 + 8B], _227
	move.l 12(%a3),58(%sp)	| MEM[(int *)_310 + 12B], %sfp
	move.l 16(%a3),62(%sp)	| MEM[(int *)_310 + 16B], %sfp
	move.l 20(%a3),66(%sp)	| MEM[(int *)_310 + 20B], %sfp
	move.l 24(%a3),70(%sp)	| MEM[(int *)_310 + 24B], %sfp
	move.l 28(%a3),74(%sp)	| MEM[(int *)_310 + 28B], %sfp
	move.l %d7,%a2	| ivtmp.181, ivtmp.173
	move.w #8,%a1	|, ivtmp.171
.L57:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a6,%a1	| _192, ivtmp.171
	sgt %d2		| tmp347
	ext.w %d2	| tmp348
	ext.l %d2	| tmp346
	neg.l %d2	| bits
	cmp.l %a5,%a1	| _217, ivtmp.171
	jle .L49		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #2,%d3	|,
	or.l %d3,%d2	|, bits
.L49:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a4,%a1	| _227, ivtmp.171
	jle .L50		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #4,%d4	|,
	or.l %d4,%d2	|, bits
.L50:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 58(%sp),%a1	| %sfp, ivtmp.171
	jle .L51		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #8,%d5	|,
	or.l %d5,%d2	|, bits
.L51:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 62(%sp),%a1	| %sfp, ivtmp.171
	jle .L52		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d2	|, bits
.L52:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 66(%sp),%a1	| %sfp, ivtmp.171
	jle .L53		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #32,%d1	|,
	or.l %d1,%d2	|, bits
.L53:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 70(%sp),%a1	| %sfp, ivtmp.171
	jle .L54		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #64,%d3	|,
	or.l %d3,%d2	|, bits
.L54:
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 74(%sp),%a1	| %sfp, ivtmp.171
	jle .L55		|
| voxel.c:303: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #127,%d4	|,
	not.b %d4	|
	or.l %d4,%d2	|, bits
.L55:
| voxel.c:307: 					| ((color&1) ? bits << 24 : 0)
	move.l %d2,%d5	| bits, iftmp.18_127
	lsl.w #8,%d5	|, iftmp.18_127
	swap %d5	| iftmp.18_127
	clr.w %d5	| iftmp.18_127
| voxel.c:308: 					| ((color&2) ? bits << 16 : 0)
	move.l %d2,%d4	| bits, iftmp.19_128
	swap %d4	| iftmp.19_128
	clr.w %d4	| iftmp.19_128
| voxel.c:309: 					| ((color&4) ? bits <<  8 : 0)
	move.l %d2,%d3	| bits, iftmp.20_129
	lsl.l #8,%d3	|, iftmp.20_129
	move.l %a2,%a0	| ivtmp.173, ivtmp.165
| voxel.c:305: 			for (int color = 0; color < 16; color++) {
	moveq #0,%d0	| color
.L47:
| voxel.c:307: 					| ((color&1) ? bits << 24 : 0)
	btst #0,%d0	|, color
	jne .L60		|
	moveq #0,%d1	| prephitmp_329
.L43:
| voxel.c:308: 					| ((color&2) ? bits << 16 : 0)
	btst #1,%d0	|, color
	jeq .L44		|
| voxel.c:308: 					| ((color&2) ? bits << 16 : 0)
	or.l %d4,%d1	| iftmp.19_128, prephitmp_329
.L44:
| voxel.c:309: 					| ((color&4) ? bits <<  8 : 0)
	btst #2,%d0	|, color
	jeq .L45		|
| voxel.c:309: 					| ((color&4) ? bits <<  8 : 0)
	or.l %d3,%d1	| iftmp.20_129, prephitmp_329
.L45:
| voxel.c:310: 					| ((color&8) ? bits <<  0 : 0);
	btst #3,%d0	|, color
	jeq .L46		|
| voxel.c:310: 					| ((color&8) ? bits <<  0 : 0);
	or.l %d2,%d1	| bits, prephitmp_329
.L46:
| voxel.c:306: 				pdata_table[y][opacity][color] = 0
	move.l %d1,(%a0)+	| prephitmp_329, MEM[(unsigned int *)_393]
| voxel.c:305: 			for (int color = 0; color < 16; color++) {
	addq.l #1,%d0	|, color
| voxel.c:305: 			for (int color = 0; color < 16; color++) {
	moveq #16,%d1	|,
	cmp.l %d0,%d1	| color,
	jne .L47		|
| voxel.c:300: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,%a1	|, ivtmp.171
	lea (64,%a2),%a2	|, ivtmp.173
	moveq #72,%d2	|,
	cmp.l %a1,%d2	| ivtmp.171,
	jne .L57		|
| voxel.c:299: 	for (int y = 0; y < 8; y++) {
	lea (32,%a3),%a3	|, ivtmp.179
	addq.l #8,%d6	|, ivtmp.180
	add.l #512,%d7	|, ivtmp.181
	moveq #64,%d5	|,
	cmp.l %d6,%d5	| ivtmp.180,
	jne .L42		|
	lea _horizon,%a0	|, vectp_horizon.141
.L56:
| voxel.c:315: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d6	|,
	move.l %d6,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.141_77]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.141
	jne .L56		|
	lea _deflection,%a2	|, ivtmp.152
	move.l #_deflection+640,%d3	|, _130
| voxel.c:315: 	for (int x=0; x<320; x++) horizon[x] = -1;
	move.l #-20480,%d2	|, ivtmp.149
.L58:
| voxel.c:316: 	for (int x=0; x<320; x++) deflection[x] = FIXP(x - 160, 0) / 320;
	pea 320.w		|
	move.l %d2,-(%sp)	| ivtmp.149,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:316: 	for (int x=0; x<320; x++) deflection[x] = FIXP(x - 160, 0) / 320;
	move.w %d0,(%a2)+	| tmp383, MEM[(short int *)_377]
| voxel.c:316: 	for (int x=0; x<320; x++) deflection[x] = FIXP(x - 160, 0) / 320;
	add.l #128,%d2	|, ivtmp.149
	cmp.l %d3,%a2	| _130, ivtmp.152
	jne .L58		|
| voxel.c:317: 	printf("All tables computed.\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:318: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,#31996	|,
	lea (296,%sp),%sp	|,
	rts	
.L84:
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d1	| rel_dist
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp225
	sub.l %d1,%d0	| rel_dist, tmp225
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp226
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp227
| voxel.c:227: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a4)+	| tmp227, MEM[(unsigned char *)_486]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d4	|, ivtmp.282
	cmp.w #8192,%d3	|, dist
	jne .L24		|
	jra .L27		|
.L85:
	lea (%a0,%d7.l),%a3	| ivtmp.218, ivtmp.233, _111
| voxel.c:248: 				&& c == wrap_color(  x, y-1)
	cmp.b (%a3,%d5.l),%d1	| MEM[(unsigned char *)_111 + _281 * 1], _144
	jne .L33		|
| voxel.c:185: 	return colors[y & mask][x & mask];
	move.l 50(%sp),%d4	| %sfp, tmp253
	add.l %a0,%d4	| ivtmp.218, tmp253
	and.l #511,%d4	|, tmp253
	move.l %d4,54(%sp)	| tmp253, %sfp
| voxel.c:249: 				&& c == wrap_color(x+1, y-1)
	cmp.b (%a2,%d4.l),%d1	| colors[_341][_160], _144
	jne .L33		|
| voxel.c:250: 				&& c == wrap_color(x-1,   y)
	move.l 46(%sp),%a4	| %sfp,
	cmp.b (%a4,%d0.l),%d1	| colors[y_412][_148], _144
	jne .L33		|
| voxel.c:251: 				&& c == wrap_color(x+1,   y)
	cmp.b (%a4,%d4.l),%d1	| colors[y_412][_160], _144
	jne .L33		|
| voxel.c:185: 	return colors[y & mask][x & mask];
	move.l 58(%sp),%d4	| %sfp,
	and.l #511,%d4	|,
| voxel.c:185: 	return colors[y & mask][x & mask];
	moveq #9,%d6	|,
	lsl.l %d6,%d4	|,
	move.l %d4,66(%sp)	|, %sfp
	move.l %d4,%d6	|, tmp269
	add.l #_colors,%d6	|, tmp269
| voxel.c:252: 				&& c == wrap_color(x-1, y+1)
	move.l %d6,%a4	| tmp269,
	cmp.b (%a4,%d0.l),%d1	| colors[_166][_148], _144
	jne .L33		|
| voxel.c:253: 				&& c == wrap_color(  x, y+1)
	cmp.b (%a3,%d4.l),%d1	| MEM[(unsigned char *)_111 + _65 * 1], _144
	jne .L33		|
| voxel.c:254: 				&& c == wrap_color(x+1, y+1);
	move.l 54(%sp),%a3	| %sfp,
	cmp.b (%a3,%d6.l),%d1	| colors[_166][_160], _144
	jne .L33		|
| voxel.c:256: 				count++;
	addq.l #1,70(%sp)	|, %sfp
| voxel.c:202: 	combined[y & mask][x & mask] |= (unsigned short) value << 12;
	or.w #4096,%d2	|, _403
	move.w %d2,-2(%a1)	| _403, MEM[(short unsigned int *)_431 + 4294967294B]
| voxel.c:244: 		for (int x=0; x<WIDTH; x++) {
	addq.l #1,%a0	|, ivtmp.218
	cmp.l %a0,%a6	| ivtmp.218, ivtmp.231
	jne .L34		|
	jra .L86		|
.L60:
| voxel.c:307: 					| ((color&1) ? bits << 24 : 0)
	move.l %d5,%d1	| iftmp.18_127, prephitmp_329
	jra .L43		|
	.even
	.globl	_render
_render:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 52(%sp),%a0	| pos, pos
	move.l 64(%sp),%d1	| x, x
	move.w 70(%sp),%a6	| y_offset, y_offset
| voxel.c:357: 	fixp factor = deflection[x];
	moveq #0,%d0	| x
	move.w %d1,%d0	| x, x
| voxel.c:357: 	fixp factor = deflection[x];
	add.l %d0,%d0	| x, tmp124
	lea _deflection,%a1	|, tmp122
	move.w (%a1,%d0.l),%d3	| deflection[_1], factor
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w 6(%a0),%d0	| pos_68(D)->dirx, _2
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w 8(%a0),%d7	| pos_68(D)->diry, _5
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d7,%d2	| _5,
	muls.w %d3,%d2	| factor, tmp125
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp126
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w %d0,%a2	| _2, _8
	sub.w %d2,%a2	| tmp126, _8
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| factor, tmp127
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp128
| voxel.c:359: 	fixp delta_v = pos->diry + fixp_mul(pos->dirx, factor);
	add.w %d0,%d7	| tmp128, _12
| voxel.c:362: 	sample_u += STEPS_MIN * delta_u;
	move.w %a2,%d3	| _8, tmp129
	add.w %a2,%d3	| _8, tmp129
	add.w %d3,%d3	| tmp129, tmp130
| voxel.c:362: 	sample_u += STEPS_MIN * delta_u;
	add.w (%a0),%d3	| pos_68(D)->x, sample_u
| voxel.c:363: 	sample_v += STEPS_MIN * delta_v;
	move.w %d7,%d2	| _12, tmp131
	add.w %d7,%d2	| _12, tmp131
	add.w %d2,%d2	| tmp131, tmp132
| voxel.c:363: 	sample_v += STEPS_MIN * delta_v;
	add.w 2(%a0),%d2	| pos_68(D)->y, sample_v
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d0	|, tmp133
	asr.w #4,%d0	|, tmp133
	ext.l %d0	| tmp134
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp134, tmp135
	add.l %d0,%d0	| tmp135, tmp136
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d0	|, tmp137
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp137, tmp138
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d1	|, tmp140
	moveq #1,%d4	|,
	and.l %d4,%d1	|, tmp141
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp138, tmp142
	add.l %d1,%a0	| tmp141, tmp142
	add.l 56(%sp),%a0	| out, pBlock
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #0,%d0	| max_height
	move.b _max_height,%d0	| max_height, max_height
	add.l #256,%d0	|, tmp144
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	sub.l 60(%sp),%d0	| player_height, tmp144
	move.l %d0,44(%sp)	| tmp144, %sfp
| voxel.c:386: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:381: 	unsigned short color = 0;
	clr.w %d6	| color
| voxel.c:379: 	int z = STEPS_MIN;
	move.w #4,%a1	|, z
| voxel.c:365: 	short sample_y = 200;
	move.w #200,%d4	|, sample_y
| voxel.c:468: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a5	|, tmp189
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	lea _y_table,%a3	|, tmp192
.L95:
| voxel.c:389: 		if (y < sample_y) {
	cmp.w %d4,%d0	| sample_y, <retval>
	jge .L88		|
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l %a1,%d4	| z, tmp186
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w #99,%d0	|, <retval>
	jle .L98		|
	moveq #9,%d5	|,
	lsl.l %d5,%d4	|, tmp186
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d1	| sample_v, tmp150
	lsr.w #7,%d1	|, tmp150
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d1	|, tmp151
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d5	| sample_u, tmp152
	lsr.w #7,%d5	|, tmp152
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d5	|, tmp153
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d6	|,
	lsl.l %d6,%d1	|, tmp154
	add.l %d5,%d1	| tmp153, tmp155
	add.l %d1,%d1	| tmp155, tmp156
	lea _combined,%a4	|,
	move.w (%a4,%d1.l),%d1	| combined[_26][_28], height_color
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	| tmp159
	move.b %d1,%d5	| height_color, tmp159
	add.l #256,%d5	|, tmp160
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 60(%sp),%d5	| player_height, tmp161
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %d5,%d4	| tmp161, tmp163
	add.l %d4,%d4	| tmp163, tmp164
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w (%a3,%d4.l),%d4	| y_table[z_141][_30], sample_y
	add.w %a6,%d4	| y_offset, sample_y
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	move.l %d1,%d6	|, tmp166
	lsr.l #8,%d6	|, tmp166
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	moveq #15,%d5	|,
	and.l %d5,%d6	|, color
| voxel.c:405: 			unsigned short skip = (height_color >> 12) & 0xf;
	moveq #12,%d5	|,
	lsr.w %d5,%d1	|, skip
	moveq #0,%d5	| skip
	move.w %d1,%d5	| skip, skip
	lea 1(%a1,%d5.l),%a1	|, z
	move.w %a2,%d5	| _8, tmp168
	muls.w %d1,%d5	| skip, tmp168
	add.w %a2,%d3	| _8, tmp169
	add.w %d5,%d3	| tmp168, sample_u
	muls.w %d7,%d1	| _12, tmp170
	add.w %d7,%d2	| _12, tmp171
	add.w %d1,%d2	| tmp170, sample_v
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #63,%d1	|,
	cmp.l %a1,%d1	| z,
	jge .L95		|
.L87:
| voxel.c:485: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L88:
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d1	|, tmp175
	and.l %d0,%d1	| <retval>, tmp175
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d5	| opacity
	move.b (%a5,%a1.l),%d5	| opacity_table[z_141], opacity
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d1	|, tmp177
	add.l %d5,%d1	| opacity, tmp178
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d6,%d5	| color, color
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #4,%d1	|, tmp180
	add.l %d5,%d1	| color, tmp181
	add.l %d1,%d1	| tmp181, tmp182
	add.l %d1,%d1	| tmp182, tmp183
	lea _pdata_table,%a4	|,
	move.l (%a4,%d1.l),%d1	| pdata_table[_43][_44][_45], movep_data
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 347 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:471: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:472: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, <retval>
| voxel.c:474: 			if (opacity == 7) {
	cmp.b #7,(%a5,%a1.l)	|, opacity_table[z_141]
	jeq .L103		|
.L92:
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L95		|
| voxel.c:485: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L103:
| voxel.c:475: 				if (sample_y < 0) sample_y = 0;
	tst.w %d4	| sample_y
	jlt .L104		|
.L100:
| voxel.c:476: 				while (y >= sample_y) {
	cmp.w %d4,%d0	| sample_y, <retval>
	jlt .L92		|
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 347 "voxel.c" 1
	movep.l %d1, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:478: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, <retval>
	jra .L100		|
.L98:
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #9,%d6	|,
	lsl.l %d6,%d4	|, tmp186
	move.l 44(%sp),%d1	| %sfp, tmp147
	add.l %d4,%d1	| tmp186, tmp147
	add.l %d1,%d1	| tmp147, tmp148
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w (%a3,%d1.l),%d0	| y_table[z_141][_24], <retval>
	jle .L87		|
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d1	| sample_v, tmp150
	lsr.w #7,%d1	|, tmp150
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d1	|, tmp151
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d5	| sample_u, tmp152
	lsr.w #7,%d5	|, tmp152
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d5	|, tmp153
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d6	|,
	lsl.l %d6,%d1	|, tmp154
	add.l %d5,%d1	| tmp153, tmp155
	add.l %d1,%d1	| tmp155, tmp156
	lea _combined,%a4	|,
	move.w (%a4,%d1.l),%d1	| combined[_26][_28], height_color
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	| tmp159
	move.b %d1,%d5	| height_color, tmp159
	add.l #256,%d5	|, tmp160
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 60(%sp),%d5	| player_height, tmp161
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %d5,%d4	| tmp161, tmp163
	add.l %d4,%d4	| tmp163, tmp164
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w (%a3,%d4.l),%d4	| y_table[z_141][_30], sample_y
	add.w %a6,%d4	| y_offset, sample_y
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	move.l %d1,%d6	|, tmp166
	lsr.l #8,%d6	|, tmp166
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	moveq #15,%d5	|,
	and.l %d5,%d6	|, color
| voxel.c:405: 			unsigned short skip = (height_color >> 12) & 0xf;
	moveq #12,%d5	|,
	lsr.w %d5,%d1	|, skip
	moveq #0,%d5	| skip
	move.w %d1,%d5	| skip, skip
	lea 1(%a1,%d5.l),%a1	|, z
	move.w %a2,%d5	| _8, tmp168
	muls.w %d1,%d5	| skip, tmp168
	add.w %a2,%d3	| _8, tmp169
	add.w %d5,%d3	| tmp168, sample_u
	muls.w %d7,%d1	| _12, tmp170
	add.w %d7,%d2	| _12, tmp171
	add.w %d1,%d2	| tmp170, sample_v
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #63,%d1	|,
	cmp.l %a1,%d1	| z,
	jge .L95		|
	jra .L87		|
.L104:
| voxel.c:475: 				if (sample_y < 0) sample_y = 0;
	clr.w %d4	| sample_y
	jra .L100		|
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:490: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:490: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:492: 	while (remaining_lines > 0) {
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
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d1	| tmp79
.L107:
#APP
| 347 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:494: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:492: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _33
	jne .L107		|
.L106:
| voxel.c:497: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:498: }
	movem.l (%sp)+,#1052	|,
	rts	
.LC7:
	.ascii "Tables computed.\0"
.LC8:
	.ascii "Rendering took %dms per frame.\12\0"
	.even
	.globl	_main
_main:
	lea (-84,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:512: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:514: 	Super(0L);
	moveq #0,%d0	| tmp249
#APP
| 514 "voxel.c" 1
	movl	%d0,%sp@-	| tmp249
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:516: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:518: 	lineaa();
	jsr _lineaa		|
| voxel.c:519: 	build_tables();
	jsr _build_tables		|
| voxel.c:520: 	printf("Tables computed.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:521:         set_palette();
	jsr _set_palette		|
| voxel.c:522: 	unsigned short *screen = Physbase();
#APP
| 522 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,86(%sp)	| tmp442, %sfp
| voxel.c:523: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp442,
	jsr _draw_image2		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.44_122
	move.l 4(%a0),%d0	| stdin.44_122->__bufp, _120
	lea (12,%sp),%sp	|,
	cmp.l 8(%a0),%d0	| stdin.44_122->__get_limit, _120
	jcc .L112		|
	addq.l #1,%d0	|, _120
	move.l %d0,4(%a0)	| _120, stdin.44_122->__bufp
	move.l 82(%sp),%a0	| %sfp, ivtmp.369
	move.l %a0,%d0	| ivtmp.369, _774
	add.l #32000,%d0	|, _774
.L114:
| voxel.c:121: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.321_726]
	cmp.l %a0,%d0	| ivtmp.369, _774
	jne .L114		|
| voxel.c:526: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,124(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:539: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,112(%sp)	| __aline, %sfp
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #0,%d0	| max_height
	move.b _max_height,%d0	| max_height, max_height
	add.l #256,%d0	|, max_height
	move.l %d0,120(%sp)	| max_height, %sfp
| voxel.c:532: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,90(%sp)	| pos.y, %sfp
| voxel.c:532: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),88(%sp)	| pos.x, %sfp
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w _pos+6,80(%sp)	| pos.dirx, %sfp
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w _pos+8,78(%sp)	| pos.diry, %sfp
| voxel.c:550: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,100(%sp)	| pos.speed, %sfp
	clr.w 102(%sp)	| %sfp
| voxel.c:527: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,46(%sp)	|, %sfp
| voxel.c:468: 			unsigned char opacity = opacity_table[z];
	lea _opacity_table,%a4	|, tmp427
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	lea _y_table,%a3	|, tmp429
.L133:
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 90(%sp),%d0	| %sfp, tmp266
	lsr.w #7,%d0	|, tmp266
| voxel.c:532: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp267
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 88(%sp),%d1	| %sfp, tmp268
	lsr.w #7,%d1	|, tmp268
| voxel.c:532: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp269
| voxel.c:532: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp270
	add.l %d1,%d0	| tmp269, tmp271
	add.l %d0,%d0	| tmp271, tmp272
| voxel.c:533: 		int player_altitude = height_under_player + 20;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_2][_4], tmp274
	and.l #255,%d0	|, tmp274
	moveq #20,%d1	|,
	add.l %d1,%d0	|, player_altitude
| voxel.c:535: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 46(%sp),%d1	| %sfp, tmp276
	addq.l #2,%d1	|, tmp276
| voxel.c:535: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp276
	jle .L115		|
	moveq #0,%d1	|, tmp276
	not.b %d1	| tmp276
.L115:
	cmp.l %d0,%d1	| player_altitude, tmp276
	jge .L116		|
	move.l %d1,%d0	| tmp276, player_altitude
.L116:
| voxel.c:536: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 46(%sp),%d1	| %sfp, tmp277
	subq.l #2,%d1	|, tmp277
| voxel.c:536: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,46(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp277
	jle .L117		|
	move.l %d1,46(%sp)	| tmp277, %sfp
.L117:
| voxel.c:540: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 102(%sp),%d0	| %sfp, _12
	and.w #8,%d0	|, _12
| voxel.c:540: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _12
	move.w %d0,52(%sp)	| _12, %sfp
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 112(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.38_8 + 4294966696B],
	move.l %a0,104(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp278
	add.l %a0,%d0	|, tmp278
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp278
	move.l %d0,92(%sp)	| tmp278, %sfp
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 112(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.38_8 + 4294966694B],
	move.l %a1,108(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp279
	add.l #-160,%d0	|, tmp279
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _18
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 78(%sp),%a5	| %sfp,
	move.l %a5,116(%sp)	|, %sfp
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l 120(%sp),%d1	| %sfp,
	sub.l 46(%sp),%d1	| %sfp,
	move.l %d1,66(%sp)	|, %sfp
	move.l %d0,%d2	| _18,
	lsl.l #4,%d2	|,
	move.l %d2,96(%sp)	|, %sfp
	moveq #0,%d2	| x
	move.w 52(%sp),%d2	| %sfp, x
	move.l %d0,-(%sp)	| _18,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,62(%sp)	| tmp443, %sfp
	add.l %d2,%d2	| x, tmp286
	move.l %d2,%a1	| tmp286,
	add.l #_deflection,%a1	|,
	move.l %a1,58(%sp)	|, %sfp
	add.l #_horizon,%d2	|, tmp286
	move.l %d2,54(%sp)	| tmp286, %sfp
.L130:
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 66(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:542: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 92(%sp),%a6	| %sfp, y_offset
	add.l %d0,%a6	| tmp444, y_offset
| voxel.c:357: 	fixp factor = deflection[x];
	move.l 58(%sp),%a5	| %sfp,
	move.w (%a5),%d7	| MEM[(short int *)_728], factor
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 78(%sp),%d0	| %sfp,
	muls.w %d7,%d0	| factor, tmp292
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp293
| voxel.c:358: 	fixp delta_u = pos->dirx - fixp_mul(pos->diry, factor);
	move.w 80(%sp),%a2	| %sfp, _214
	sub.w %d0,%a2	| tmp293, _214
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w 80(%sp),%d7	| %sfp, tmp294
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d7	|, tmp295
| voxel.c:359: 	fixp delta_v = pos->diry + fixp_mul(pos->dirx, factor);
	add.w 78(%sp),%d7	| %sfp, _220
| voxel.c:362: 	sample_u += STEPS_MIN * delta_u;
	move.w %a2,%d3	| _214, tmp296
	add.w %a2,%d3	| _214, tmp296
	add.w %d3,%d3	| tmp296, tmp297
| voxel.c:362: 	sample_u += STEPS_MIN * delta_u;
	add.w 88(%sp),%d3	| %sfp, sample_u
| voxel.c:363: 	sample_v += STEPS_MIN * delta_v;
	move.w %d7,%d2	| _220, tmp298
	add.w %d7,%d2	| _220, tmp298
	add.w %d2,%d2	| tmp298, tmp299
| voxel.c:363: 	sample_v += STEPS_MIN * delta_v;
	add.w 90(%sp),%d2	| %sfp, sample_v
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 52(%sp),%d0	| %sfp, tmp300
	asr.w #4,%d0	|, tmp300
	ext.l %d0	| tmp301
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp301, tmp302
	add.l %d0,%d0	| tmp302, tmp302
	move.l %d0,70(%sp)	| tmp302, %sfp
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 52(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp305
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp305,
	move.l %d1,74(%sp)	|, %sfp
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 70(%sp),%d0	| %sfp, tmp306
	add.l #15920,%d0	|, tmp306
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp306, tmp307
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp307, tmp308
	add.l %d1,%a0	|, tmp308
	add.l 82(%sp),%a0	| %sfp, pBlock
| voxel.c:381: 	unsigned short color = 0;
	clr.w %d6	| color
| voxel.c:379: 	int z = STEPS_MIN;
	move.w #4,%a1	|, z
| voxel.c:386: 	short y = 199;
	move.w #199,%d1	|, y
| voxel.c:365: 	short sample_y = 200;
	move.w #200,%d4	|, sample_y
.L126:
| voxel.c:389: 		if (y < sample_y) {
	cmp.w %d4,%d1	| sample_y, y
	jge .L118		|
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l %a1,%d4	| z, tmp420
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w #99,%d1	|, y
	jle .L142		|
	moveq #9,%d5	|,
	lsl.l %d5,%d4	|, tmp420
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| sample_v, tmp314
	lsr.w #7,%d0	|, tmp314
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d0	|, tmp315
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d5	| sample_u, tmp316
	lsr.w #7,%d5	|, tmp316
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d5	|, tmp317
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d6	|,
	lsl.l %d6,%d0	|, tmp318
	add.l %d5,%d0	| tmp317, tmp319
	add.l %d0,%d0	| tmp319, tmp320
	lea _combined,%a5	|,
	move.w (%a5,%d0.l),%d0	| combined[_252][_256], height_color
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	| tmp323
	move.b %d0,%d5	| height_color, tmp323
	add.l #256,%d5	|, tmp324
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 46(%sp),%d5	| %sfp, tmp325
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %d5,%d4	| tmp325, tmp327
	add.l %d4,%d4	| tmp327, tmp328
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w %a6,%d5	|,
	add.w (%a3,%d4.l),%d5	| y_table[z_325][_261],
	move.w %d5,%d4	|, sample_y
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	move.l %d0,%d6	|, tmp330
	lsr.l #8,%d6	|, tmp330
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	moveq #15,%d5	|,
	and.l %d5,%d6	|, color
| voxel.c:405: 			unsigned short skip = (height_color >> 12) & 0xf;
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, skip
	move.w %a2,%d5	| _214, tmp331
	muls.w %d0,%d5	| skip, tmp331
	add.w %a2,%d3	| _214, tmp332
	add.w %d5,%d3	| tmp331, sample_u
	move.w %d7,%d5	| _220, tmp333
	muls.w %d0,%d5	| skip, tmp333
	add.w %d7,%d2	| _220, tmp334
	add.w %d5,%d2	| tmp333, sample_v
	and.l #65535,%d0	|, skip
	lea 1(%a1,%d0.l),%a1	|, z
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #63,%d0	|,
	cmp.l %a1,%d0	| z,
	jge .L126		|
.L120:
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d1,%d2	| y,
	muls.w #80,%d2	|, _734
| voxel.c:472: 			y -= LINES_SKIP;
	move.w %d1,%d0	| y, _737
.L127:
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 70(%sp),%d2	| %sfp, tmp350
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp350, tmp351
| voxel.c:342: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp351, tmp352
	add.l 74(%sp),%a0	| %sfp, tmp352
	add.l 82(%sp),%a0	| %sfp, pBlock
| voxel.c:490: 	short remaining_lines = y - horizon[x];
	move.l 54(%sp),%a1	| %sfp,
	sub.w (%a1),%d0	| MEM[(short int *)_133], _192
| voxel.c:492: 	while (remaining_lines > 0) {
	tst.w %d0	| _192
	jle .L128		|
	and.l #65535,%d0	|, _192
	move.l %d0,%a1	| _192, tmp355
	add.l %d0,%a1	| _192, tmp355
	add.l %a1,%a1	| tmp355, tmp356
	add.l %a1,%d0	| tmp356, tmp357
	lsl.l #5,%d0	|, tmp358
	move.l %a0,%a1	| pBlock, _714
	sub.l %d0,%a1	| tmp358, _714
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	moveq #0,%d0	| tmp360
.L129:
#APP
| 347 "voxel.c" 1
	movep.l %d0, 0(%a0)	| tmp360, pBlock
| 0 "" 2
| voxel.c:494: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:492: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _714
	jne .L129		|
.L128:
| voxel.c:497: 	horizon[x] = y;
	move.l 54(%sp),%a5	| %sfp,
	move.w %d1,(%a5)	| y, MEM[(short int *)_133]
| voxel.c:540: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,52(%sp)	|, %sfp
| voxel.c:540: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 96(%sp),%d1	| %sfp,
	add.l %d1,62(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,58(%sp)	|, %sfp
	add.l %d2,54(%sp)	|, %sfp
	cmp.w #319,52(%sp)	|, %sfp
	jls .L130		|
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 100(%sp),%d0	| %sfp,
	muls.w 80(%sp),%d0	| %sfp, tmp361
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp362
| voxel.c:550: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,88(%sp)	| tmp362, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 100(%sp),%d0	| %sfp,
	muls.w 78(%sp),%d0	| %sfp, tmp363
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp364
| voxel.c:551: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 90(%sp),%d0	| %sfp, _37
| voxel.c:550: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w 88(%sp),%d2	| %sfp,
	swap %d2	| _37
	clr.w %d2	| _37
	move.w %d0,%d2	| _37, _37
| voxel.c:551: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,90(%sp)	| _37, %sfp
| voxel.c:553: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp370
	sub.l 104(%sp),%d0	| %sfp, tmp370
| voxel.c:553: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp371
| voxel.c:553: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 100(%sp),%d0	| %sfp, _44
| voxel.c:554: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _44, tmp372
	asr.w #3,%d1	|, tmp372
| voxel.c:554: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _44, tmp373
	asr.w #4,%d3	|, tmp373
| voxel.c:554: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d1	| tmp373, tmp374
| voxel.c:554: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, tmp375
| voxel.c:555: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _44
	jle .L131		|
| voxel.c:555: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| tmp375, _44
	move.w %d0,100(%sp)	| _44, %sfp
| voxel.c:550: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _37, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:555: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 100(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:557: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp378
	not.b %d3	| tmp378
	sub.l 108(%sp),%d3	| %sfp, tmp378
| voxel.c:557: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _60
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _60,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp381
| voxel.c:558: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 80(%sp),%d2	| %sfp, _64
	add.w %d0,%d2	| tmp381, _64
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _60,
	move.w %d2,%a1	| _64,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp385
| voxel.c:559: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 78(%sp),%d1	| %sfp, _68
	sub.w %d0,%d1	| tmp385, _68
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _64,
	muls.w %d2,%d3	| _64, tmp386
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp387
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _68,
	muls.w %d1,%d0	| _68, tmp389
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp390
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp390, tmp391
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d3	|
	lea -128(%a0,%d3.l),%a0	|,
	move.l %a0,%d3	|, tmp393
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp394
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp394, factor
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp395
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp396
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,80(%sp)	| tmp396, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _68, tmp397
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp398
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,78(%sp)	| tmp398, %sfp
| voxel.c:566: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _147
	clr.w %d2	| _147
	move.w %d0,%d2	| tmp398, _147
	move.l %d2,_pos+6	| _147, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:528: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,102(%sp)	|, %sfp
	cmp.w #6400,102(%sp)	|, %sfp
	jne .L133		|
.L150:
| voxel.c:573: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:574: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 124(%sp),%a0	| %sfp, tmp406
| voxel.c:574: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp406, tmp408
	add.l %a0,%d0	| tmp406, tmp408
	add.l %d0,%d0	| tmp408, tmp409
| voxel.c:575: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:576: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp447,
	pea .LC8		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.44_104
	move.l 4(%a0),%d0	| stdin.44_104->__bufp, _103
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.44_104->__get_limit, _103
	jcc .L134		|
	addq.l #1,%d0	|, _103
	move.l %d0,4(%a0)	| _103, stdin.44_104->__bufp
| voxel.c:580: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (84,%sp),%sp	|,
	rts	
.L118:
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #7,%d0	|, tmp339
	and.l %d1,%d0	| y, tmp339
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	moveq #0,%d5	| opacity
	move.b (%a4,%a1.l),%d5	| opacity_table[z_325], opacity
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #3,%d0	|, tmp341
	add.l %d5,%d0	| opacity, tmp342
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	move.w %d6,%d5	| color, color
| voxel.c:469: 			unsigned int movep_data = pdata_table[y&7][opacity][color];
	lsl.l #4,%d0	|, tmp344
	add.l %d5,%d0	| color, tmp345
	add.l %d0,%d0	| tmp345, tmp346
	add.l %d0,%d0	| tmp346, tmp347
	lea _pdata_table,%a5	|,
	move.l (%a5,%d0.l),%d0	| pdata_table[_287][_288][_290], movep_data
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 347 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:471: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:472: 			y -= LINES_SKIP;
	subq.w #1,%d1	|, y
| voxel.c:474: 			if (opacity == 7) {
	cmp.b #7,(%a4,%a1.l)	|, opacity_table[z_325]
	jeq .L148		|
.L123:
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d1	|, y
	jne .L126		|
	moveq #-1,%d0	|, _737
	moveq #-80,%d2	|, _734
	jra .L127		|
.L148:
| voxel.c:475: 				if (sample_y < 0) sample_y = 0;
	tst.w %d4	| sample_y
	jlt .L149		|
| voxel.c:476: 				while (y >= sample_y) {
	cmp.w %d1,%d4	| y, sample_y
	jgt .L123		|
.L125:
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 347 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:478: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:476: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| sample_y, y
	jlt .L123		|
| voxel.c:347: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 347 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:478: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:476: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| sample_y, y
	jge .L125		|
	jra .L123		|
.L149:
| voxel.c:475: 				if (sample_y < 0) sample_y = 0;
	clr.w %d4	| sample_y
| voxel.c:476: 				while (y >= sample_y) {
	cmp.w %d1,%d4	| y, sample_y
	jle .L125		|
	jra .L123		|
.L142:
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #9,%d6	|,
	lsl.l %d6,%d4	|, tmp420
	move.l 66(%sp),%d0	| %sfp, tmp311
	add.l %d4,%d0	| tmp420, tmp311
	add.l %d0,%d0	| tmp311, tmp312
| voxel.c:395: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w (%a3,%d0.l),%d1	| y_table[z_325][_246], y
	jle .L120		|
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| sample_v, tmp314
	lsr.w #7,%d0	|, tmp314
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d0	|, tmp315
| voxel.c:129: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d5	| sample_u, tmp316
	lsr.w #7,%d5	|, tmp316
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d5	|, tmp317
| voxel.c:401: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d6	|,
	lsl.l %d6,%d0	|, tmp318
	add.l %d5,%d0	| tmp317, tmp319
	add.l %d0,%d0	| tmp319, tmp320
	lea _combined,%a5	|,
	move.w (%a5,%d0.l),%d0	| combined[_252][_256], height_color
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	| tmp323
	move.b %d0,%d5	| height_color, tmp323
	add.l #256,%d5	|, tmp324
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 46(%sp),%d5	| %sfp, tmp325
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %d5,%d4	| tmp325, tmp327
	add.l %d4,%d4	| tmp327, tmp328
| voxel.c:403: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w %a6,%d5	|,
	add.w (%a3,%d4.l),%d5	| y_table[z_325][_261],
	move.w %d5,%d4	|, sample_y
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	move.l %d0,%d6	|, tmp330
	lsr.l #8,%d6	|, tmp330
| voxel.c:404: 			color = (height_color & 0xf00) >> 8;
	moveq #15,%d5	|,
	and.l %d5,%d6	|, color
| voxel.c:405: 			unsigned short skip = (height_color >> 12) & 0xf;
	moveq #12,%d5	|,
	lsr.w %d5,%d0	|, skip
	move.w %a2,%d5	| _214, tmp331
	muls.w %d0,%d5	| skip, tmp331
	add.w %a2,%d3	| _214, tmp332
	add.w %d5,%d3	| tmp331, sample_u
	move.w %d7,%d5	| _220, tmp333
	muls.w %d0,%d5	| skip, tmp333
	add.w %d7,%d2	| _220, tmp334
	add.w %d5,%d2	| tmp333, sample_v
	and.l #65535,%d0	|, skip
	lea 1(%a1,%d0.l),%a1	|, z
| voxel.c:387: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #63,%d0	|,
	cmp.l %a1,%d0	| z,
	jge .L126		|
	jra .L120		|
.L131:
| voxel.c:556: 		else pos.speed += drag;
	add.w %d1,%d0	| tmp375, _44
	move.w %d0,100(%sp)	| _44, %sfp
| voxel.c:550: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _37, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:555: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 100(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:557: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp378
	not.b %d3	| tmp378
	sub.l 108(%sp),%d3	| %sfp, tmp378
| voxel.c:557: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _60
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _60,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp381
| voxel.c:558: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 80(%sp),%d2	| %sfp, _64
	add.w %d0,%d2	| tmp381, _64
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _60,
	move.w %d2,%a1	| _64,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp385
| voxel.c:559: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 78(%sp),%d1	| %sfp, _68
	sub.w %d0,%d1	| tmp385, _68
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _64,
	muls.w %d2,%d3	| _64, tmp386
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp387
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _68,
	muls.w %d1,%d0	| _68, tmp389
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp390
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp390, tmp391
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d3	|
	lea -128(%a0,%d3.l),%a0	|,
	move.l %a0,%d3	|, tmp393
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp394
| voxel.c:565: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp394, factor
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp395
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp396
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,80(%sp)	| tmp396, %sfp
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _68, tmp397
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp398
| voxel.c:137: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,78(%sp)	| tmp398, %sfp
| voxel.c:566: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _147
	clr.w %d2	| _147
	move.w %d0,%d2	| tmp398, _147
	move.l %d2,_pos+6	| _147, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:528: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,102(%sp)	|, %sfp
	cmp.w #6400,102(%sp)	|, %sfp
	jne .L133		|
	jra .L150		|
.L112:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.44_122,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
	move.l 82(%sp),%a0	| %sfp, ivtmp.369
	move.l %a0,%d0	| ivtmp.369, _774
	add.l #32000,%d0	|, _774
	jra .L114		|
.L134:
	move.l %a0,-(%sp)	| stdin.44_104,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:580: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (84,%sp),%sp	|,
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
	.globl	_deflection
	.bss
	.even
_deflection:
	.skip 640
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
	.skip 4096
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
