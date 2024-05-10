| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_get_color
_get_color:
| voxel.c:86: }
	move.l _hw_palette,%a0	| hw_palette, hw_palette
	move.w (%a0),%d0	| *hw_palette.0_1,
	rts	
	.even
	.globl	_set_color
_set_color:
| voxel.c:92: } 
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
| voxel.c:94: void draw_image2(unsigned short *out, const unsigned char pixels[][512]) {
	move.l 64(%sp),%a6	| %sfp, ivtmp.80
.L7:
| voxel.c:99: 				unsigned char register px = pixels[y][16*chunk+x];
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
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp364
	add.w %d0,%a5	| tmp364, tmp365
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp365,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp368
	add.w %d1,%a3	| tmp368, tmp369
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp369,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp372
	add.w %d1,%a5	| tmp372, tmp373
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp373,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp376
	add.w %d1,%a3	| tmp376, tmp377
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp377,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp380
	add.w %d1,%a5	| tmp380, tmp381
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp381,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp384
	add.w %d1,%a3	| tmp384, tmp385
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp385,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp388
	add.w %d1,%a5	| tmp388, tmp389
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp389,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp392
	add.w %d1,%a3	| tmp392, tmp393
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp393,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp396
	add.w %d1,%a5	| tmp396, tmp397
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp397,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp400
	add.w %d1,%a3	| tmp400, tmp401
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp401,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp404
	add.w %d1,%a5	| tmp404, tmp405
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp405,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp408
	add.w %d1,%a3	| tmp408, tmp409
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp409,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp412
	add.w %d1,%a5	| tmp412, tmp413
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp413,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp416
	add.w %d1,%a3	| tmp416, tmp417
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:100: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp417,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_68]
| voxel.c:101: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp423
| voxel.c:101: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp427
	add.w %d0,%a5	| tmp427, tmp428
| voxel.c:101: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp432
	add.w %d1,%a5	| tmp432, tmp433
| voxel.c:101: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp437
	add.w %d0,%a5	| tmp437, tmp438
| voxel.c:101: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp442
	add.w %d1,%a5	| tmp442, tmp443
| voxel.c:101: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp447
	add.w %d0,%a5	| tmp447, tmp448
| voxel.c:101: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp448,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp452
	add.w %d1,%a5	| tmp452, tmp453
| voxel.c:101: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp457
	add.w %d0,%a5	| tmp457, tmp458
| voxel.c:101: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp462
	add.w %d1,%a5	| tmp462, tmp463
| voxel.c:101: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp463,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp467
	add.w %d0,%a5	| tmp467, tmp468
| voxel.c:101: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp468,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp472
	add.w %d1,%a5	| tmp472, tmp473
| voxel.c:101: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp473,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp477
	add.w %d0,%a5	| tmp477, tmp478
| voxel.c:101: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp478,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp482
	add.w %d1,%a5	| tmp482, tmp483
| voxel.c:101: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp483,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp487
	add.w %d0,%a3	| tmp487, tmp488
| voxel.c:101: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp488,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp492
	add.w %d1,%a5	| tmp492, tmp493
| voxel.c:101: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:102: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp493,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_68 + 2B]
| voxel.c:103: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp500
| voxel.c:103: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp500,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp504
	add.w %d1,%a5	| tmp504, tmp505
| voxel.c:103: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp505,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp509
	add.w %d0,%a5	| tmp509, tmp510
| voxel.c:103: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp510,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp514
	add.w %d1,%a5	| tmp514, tmp515
| voxel.c:103: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp515,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp519
	add.w %d0,%a5	| tmp519, tmp520
| voxel.c:103: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp520,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp524
	add.w %d1,%a5	| tmp524, tmp525
| voxel.c:103: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp525,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp529
	add.w %d0,%a5	| tmp529, tmp530
| voxel.c:103: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp530,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp534
	add.w %d1,%a5	| tmp534, tmp535
| voxel.c:103: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp535,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp539
	add.w %d0,%a5	| tmp539, tmp540
| voxel.c:103: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp540,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp544
	add.w %d1,%a5	| tmp544, tmp545
| voxel.c:103: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp545,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp549
	add.w %d0,%a5	| tmp549, tmp550
| voxel.c:103: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp550,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp554
	add.w %d1,%a5	| tmp554, tmp555
| voxel.c:103: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp555,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp559
	add.w %d0,%a3	| tmp559, tmp560
| voxel.c:103: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp560,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp564
	add.w %d1,%a5	| tmp564, tmp565
| voxel.c:103: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp565,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp569
	add.w %d0,%a3	| tmp569, tmp570
| voxel.c:103: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:104: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp570,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_68 + 4B]
| voxel.c:111: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:105: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp577
| voxel.c:105: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp577,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp581
	add.w %d0,%a1	| tmp581, tmp582
| voxel.c:105: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp582,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp586
	add.w %d1,%a0	| tmp586, tmp587
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp590
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp587,
	or.w %d1,%d7	|, tmp591
	add.w %d7,%d7	| tmp591, tmp592
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp595
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp592, tmp596
	add.w %d6,%d6	| tmp596, tmp597
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp600
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp597, tmp601
	add.w %d5,%d5	| tmp601, tmp602
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp605
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp602, tmp606
	add.w %d4,%d4	| tmp606, tmp607
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp610
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp607, tmp611
	add.w %d3,%d3	| tmp611, tmp612
| voxel.c:105: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp615
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp612, tmp616
	add.w %d2,%d2	| tmp616, tmp617
| voxel.c:105: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp620
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp617, tmp621
	add.w %d1,%d1	| tmp621, tmp622
| voxel.c:105: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp625
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp625, tmp626
	add.w %d1,%d1	| tmp626, tmp627
| voxel.c:105: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp630
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp630, tmp631
	add.w %d1,%d1	| tmp631, tmp632
| voxel.c:105: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp635
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp635, tmp636
	add.w %d1,%d1	| tmp636, tmp637
| voxel.c:105: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp640
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp640, tmp641
	add.w %d1,%d1	| tmp641, tmp642
| voxel.c:105: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp645
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp642, tmp646
	add.w %d0,%d0	| tmp646, tmp647
| voxel.c:105: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp650
| voxel.c:106: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp647, tmp650
	move.w %d1,-2(%a4)	| tmp650, MEM[(short unsigned int *)out_48 + 4294967294B]
| voxel.c:96: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.80
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L7		|
| voxel.c:95: 	for (int y=0; y<200; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,60(%sp)	| out, %sfp
	add.l #512,64(%sp)	|, %sfp
	move.l 68(%sp),%d0	| %sfp,
	cmp.l %d0,%a4	|,
	jne .L6		|
| voxel.c:114: }
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
| voxel.c:117: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.95_11]
	cmp.l %d0,%a0	| _3, out
	jne .L13		|
| voxel.c:118: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:126: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:130: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:134: }
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
	move.l #_y_table+1024,%d6	|, ivtmp.203
| voxel.c:186: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:185: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:184: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp152
	lea _opacity_table,%a5	|, tmp151
.L24:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _93
	lsr.w #7,%d0	|, _93
| voxel.c:188: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _93, _3
| voxel.c:190: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp123
| voxel.c:190: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp123,
	jsr (%a4)		| tmp152
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _143
	add.w #120,%d2	|, _143
| voxel.c:190: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.203, ivtmp.192
	move.w #-17920,%a2	|, ivtmp.189
.L25:
| voxel.c:188: 			y_table[z][h] = 120 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.189,
	jsr (%a4)		| tmp152
	addq.l #8,%sp	|,
| voxel.c:190: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _143,
	sub.w %d0,%d1	| tmp162,
	move.w %d1,(%a3)+	|, MEM[(short int *)_231]
| voxel.c:187: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.189
	cmp.w #17920,%a2	|, ivtmp.189
	jne .L25		|
| voxel.c:193: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:195: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp116
	and.l %d4,%d0	| z, tmp116
| voxel.c:195: 		if (TRIGGERS_PROGRESSION(z))
	jne .L26		|
| voxel.c:53: 	return x + x;
	add.w %d7,%d7	| step, step
.L26:
| voxel.c:198: 		int rel_dist = z - STEPS_MAX/2;
	move.w #-32,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:199: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L71		|
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp120
	sub.l %a0,%d0	| rel_dist, tmp120
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp121
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp122
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp122, MEM[(unsigned char *)&opacity_table + _226 * 1]
| voxel.c:186: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:186: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.203
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
.L28:
| voxel.c:205: 	max_height = 0;
	clr.b _max_height	| max_height
	move.l #_colors+512,%d4	|, ivtmp.179
	move.l #_height,%d7	|, ivtmp.181
	move.l #_combined,%d6	|, ivtmp.182
	clr.b %d5	| max_height_lsm_flag.125
	clr.b %d3	| max_height_lsm.124
.L31:
	move.l %d4,%a0	| ivtmp.179, ivtmp.168
	lea (-512,%a0),%a0	|, ivtmp.168
	move.l %d6,%a2	| ivtmp.182, ivtmp.172
	move.l %d7,%a1	| ivtmp.181, ivtmp.170
.L30:
| voxel.c:208: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_114], _51
| voxel.c:208: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d0	| _63
	move.b (%a0)+,%d0	| MEM[(unsigned char *)_128], _63
	lsl.w #8,%d0	|, tmp136
| voxel.c:208: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	clr.w %d2	| _51
	move.b %d1,%d2	| _51, _51
| voxel.c:208: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	or.w %d2,%d0	| _51, _34
| voxel.c:209: 			if (height[y][x] > max_height)
	cmp.b %d1,%d3	| _51, max_height_lsm.124
	jcc .L29		|
| voxel.c:210: 				max_height = height[y][x];
	move.b %d1,%d3	| _51, max_height_lsm.124
| voxel.c:209: 			if (height[y][x] > max_height)
	moveq #1,%d5	|, max_height_lsm_flag.125
.L29:
| voxel.c:208: 			combined[y][x] = (colors[y][x] << 8) | height[y][x];
	move.w %d0,(%a2)+	| _34, MEM[(short unsigned int *)_19]
| voxel.c:207: 		for (int x=0; x<WIDTH; x++) {
	cmp.l %d4,%a0	| ivtmp.179, ivtmp.168
	jne .L30		|
| voxel.c:206: 	for (int y=0; y<HEIGHT; y++) {
	add.l #512,%d4	|, ivtmp.179
	add.l #512,%d7	|, ivtmp.181
	add.l #1024,%d6	|, ivtmp.182
	cmp.l #_colors+262656,%d4	|, ivtmp.179
	jne .L31		|
	tst.b %d5	| max_height_lsm_flag.125
	jeq .L32		|
	move.b %d3,_max_height	| max_height_lsm.124, max_height
.L32:
| voxel.c:214: 	int bayer[8][8] = {
	lea (64,%sp),%a3	|,, tmp138
	pea 256.w		|
	pea .LC0		|
	move.l %a3,-(%sp)	| tmp138,
	jsr _memcpy		|
	move.l #_pdata_table,72(%sp)	|, %sfp
	lea (12,%sp),%sp	|,
	clr.l 56(%sp)	| %sfp
.L33:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	move.l (%a3),%a6	| MEM[(int *)_147], _100
	move.l 4(%a3),%a5	| MEM[(int *)_147 + 4B], _110
	move.l 8(%a3),%a4	| MEM[(int *)_147 + 8B], _120
	move.l 12(%a3),%d7	| MEM[(int *)_147 + 12B], _130
	move.l 16(%a3),%d6	| MEM[(int *)_147 + 16B], _140
	move.l 20(%a3),44(%sp)	| MEM[(int *)_147 + 20B], %sfp
	move.l 24(%a3),48(%sp)	| MEM[(int *)_147 + 24B], %sfp
	move.l 28(%a3),52(%sp)	| MEM[(int *)_147 + 28B], %sfp
	move.l 60(%sp),%a2	| %sfp, ivtmp.153
	move.w #8,%a1	|, ivtmp.151
.L48:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a1,%a6	| ivtmp.151, _100
	slt %d2		| tmp148
	ext.w %d2	| tmp149
	ext.l %d2	| tmp147
	neg.l %d2	| bits
	cmp.l %a1,%a5	| ivtmp.151, _110
	jge .L40		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #2,%d1	|,
	or.l %d1,%d2	|, bits
.L40:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a1,%a4	| ivtmp.151, _120
	jge .L41		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #4,%d0	|,
	or.l %d0,%d2	|, bits
.L41:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a1,%d7	| ivtmp.151, _130
	jge .L42		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #8,%d1	|,
	or.l %d1,%d2	|, bits
.L42:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l %a1,%d6	| ivtmp.151, _140
	jge .L43		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #16,%d0	|,
	or.l %d0,%d2	|, bits
.L43:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 44(%sp),%a1	| %sfp, ivtmp.151
	jle .L44		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #32,%d1	|,
	or.l %d1,%d2	|, bits
.L44:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 48(%sp),%a1	| %sfp, ivtmp.151
	jle .L45		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #64,%d0	|,
	or.l %d0,%d2	|, bits
.L45:
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	cmp.l 52(%sp),%a1	| %sfp, ivtmp.151
	jle .L46		|
| voxel.c:228: 				if (bayer[y][x] < (opacity+1) * 8) bits |= 1 << x;
	moveq #127,%d1	|,
	not.b %d1	|
	or.l %d1,%d2	|, bits
.L46:
| voxel.c:232: 					| ((color&1) ? bits << 24 : 0)
	move.l %d2,%d5	| bits, iftmp.16_74
	lsl.w #8,%d5	|, iftmp.16_74
	swap %d5	| iftmp.16_74
	clr.w %d5	| iftmp.16_74
| voxel.c:233: 					| ((color&2) ? bits << 16 : 0)
	move.l %d2,%d4	| bits, iftmp.17_75
	swap %d4	| iftmp.17_75
	clr.w %d4	| iftmp.17_75
| voxel.c:234: 					| ((color&4) ? bits <<  8 : 0)
	move.l %d2,%d3	| bits, iftmp.18_76
	lsl.l #8,%d3	|, iftmp.18_76
	move.l %a2,%a0	| ivtmp.153, ivtmp.145
| voxel.c:230: 			for (int color = 0; color < 16; color++) {
	moveq #0,%d0	| color
.L38:
| voxel.c:232: 					| ((color&1) ? bits << 24 : 0)
	btst #0,%d0	|, color
	jne .L50		|
	moveq #0,%d1	| prephitmp_173
.L34:
| voxel.c:233: 					| ((color&2) ? bits << 16 : 0)
	btst #1,%d0	|, color
	jeq .L35		|
| voxel.c:233: 					| ((color&2) ? bits << 16 : 0)
	or.l %d4,%d1	| iftmp.17_75, prephitmp_173
.L35:
| voxel.c:234: 					| ((color&4) ? bits <<  8 : 0)
	btst #2,%d0	|, color
	jeq .L36		|
| voxel.c:234: 					| ((color&4) ? bits <<  8 : 0)
	or.l %d3,%d1	| iftmp.18_76, prephitmp_173
.L36:
| voxel.c:235: 					| ((color&8) ? bits <<  0 : 0);
	btst #3,%d0	|, color
	jeq .L37		|
| voxel.c:235: 					| ((color&8) ? bits <<  0 : 0);
	or.l %d2,%d1	| bits, prephitmp_173
.L37:
| voxel.c:231: 				pdata_table[y][opacity][color] = 0
	move.l %d1,(%a0)+	| prephitmp_173, MEM[(unsigned int *)_187]
| voxel.c:230: 			for (int color = 0; color < 16; color++) {
	addq.l #1,%d0	|, color
| voxel.c:230: 			for (int color = 0; color < 16; color++) {
	moveq #16,%d1	|,
	cmp.l %d0,%d1	| color,
	jne .L38		|
| voxel.c:225: 		for (int opacity = 0; opacity < 8; opacity++) {
	addq.l #8,%a1	|, ivtmp.151
	lea (64,%a2),%a2	|, ivtmp.153
	moveq #72,%d0	|,
	cmp.l %a1,%d0	| ivtmp.151,
	jne .L48		|
| voxel.c:224: 	for (int y = 0; y < 8; y++) {
	lea (32,%a3),%a3	|, ivtmp.159
	addq.l #8,56(%sp)	|, %sfp
	add.l #512,60(%sp)	|, %sfp
	moveq #64,%d0	|,
	cmp.l 56(%sp),%d0	| %sfp,
	jne .L33		|
	lea _horizon,%a0	|, vectp_horizon.130
.L47:
| voxel.c:240: 	for (int x=0; x<320; x++) horizon[x] = -1;
	moveq #-1,%d1	|,
	move.l %d1,(%a0)+	|, MEM <vector(2) short int> [(short int *)vectp_horizon.130_217]
	cmp.l #_horizon+640,%a0	|, vectp_horizon.130
	jne .L47		|
| voxel.c:241: }
	movem.l (%sp)+,#31996	|,
	lea (276,%sp),%sp	|,
	rts	
.L71:
| voxel.c:199: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	moveq #31,%d0	|, tmp120
	sub.l %a0,%d0	| rel_dist, tmp120
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	lsl.l #3,%d0	|, tmp121
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	asr.l #5,%d0	|, tmp122
| voxel.c:201: 		opacity_table[z] = 8 * (max_dist - rel_dist - 1) / max_dist;
	move.b %d0,(%a5,%d4.l)	| tmp122, MEM[(unsigned char *)&opacity_table + _226 * 1]
| voxel.c:186: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:186: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.203
	moveq #64,%d0	|,
	cmp.l %d4,%d0	| z,
	jne .L24		|
	jra .L28		|
.L50:
| voxel.c:232: 					| ((color&1) ? bits << 24 : 0)
	move.l %d5,%d1	| iftmp.16_74, prephitmp_173
	jra .L34		|
	.even
	.globl	_render
_render:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 52(%sp),%a2	| pos, pos
	move.l 64(%sp),%d2	| x, x
	move.w 70(%sp),%a5	| y_offset, y_offset
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 6(%a2),%d5	| pos_84(D)->dirx, _1
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	moveq #0,%d3	| x
	move.w %d2,%d3	| x, x
	add.l #-160,%d3	|, _4
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 8(%a2),%d4	| pos_84(D)->diry, _5
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	lea ___mulsi3,%a4	|, tmp121
	move.l %d3,-(%sp)	| _4,
	move.w %d4,%a0	| _5,
	move.l %a0,-(%sp)	|,
	jsr (%a4)		| tmp121
	addq.l #8,%sp	|,
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	lea ___divsi3,%a3	|, tmp126
	pea -320.w		|
	move.l %d0,-(%sp)	| tmp195,
	jsr (%a3)		| tmp126
	addq.l #8,%sp	|,
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w %d5,%d7	| _1, delta_u
	add.w %d0,%d7	| tmp196, delta_u
| voxel.c:276: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.l %d3,-(%sp)	| _4,
	move.w %d5,%a0	| _1,
	move.l %a0,-(%sp)	|,
	jsr (%a4)		| tmp121
	addq.l #8,%sp	|,
| voxel.c:276: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	pea 320.w		|
	move.l %d0,-(%sp)	| tmp197,
	jsr (%a3)		| tmp126
	addq.l #8,%sp	|,
| voxel.c:276: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	move.w %d4,%a1	| _5, delta_v
	add.w %d0,%a1	| tmp198, delta_v
| voxel.c:279: 	sample_u += STEPS_MIN * delta_u;
	move.w %d7,%d6	| delta_u, tmp136
	add.w %d7,%d6	| delta_u, tmp136
	add.w %d6,%d6	| tmp136, tmp137
| voxel.c:279: 	sample_u += STEPS_MIN * delta_u;
	add.w (%a2),%d6	| pos_84(D)->x, sample_u
| voxel.c:280: 	sample_v += STEPS_MIN * delta_v;
	move.w %a1,%d5	| delta_v, tmp138
	add.w %a1,%d5	| delta_v, tmp138
	add.w %d5,%d5	| tmp138, tmp139
| voxel.c:280: 	sample_v += STEPS_MIN * delta_v;
	add.w 2(%a2),%d5	| pos_84(D)->y, sample_v
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d0	|, tmp140
	asr.w #4,%d0	|, tmp140
	ext.l %d0	| tmp141
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp141, tmp142
	add.l %d0,%d0	| tmp142, tmp143
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l #15920,%d0	|, tmp144
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp144, tmp145
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d2	|, tmp147
	moveq #1,%d1	|,
	and.l %d1,%d2	|, tmp148
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp145, tmp149
	add.l %d2,%a0	| tmp148, tmp149
	add.l 56(%sp),%a0	| out, pBlock
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #0,%d0	| max_height
	move.b _max_height,%d0	| max_height, max_height
	add.l #256,%d0	|, tmp151
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	sub.l 60(%sp),%d0	| player_height, tmp151
	move.l %d0,44(%sp)	| tmp151, %sfp
| voxel.c:303: 	short y = 199;
	move.w #199,%d0	|, <retval>
| voxel.c:298: 	unsigned short color = 0;
	clr.w %d3	| color
| voxel.c:296: 	int z = STEPS_MIN;
	moveq #4,%d2	|, z
| voxel.c:282: 	short sample_y = 200;
	move.w #200,%a2	|, sample_y
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lea _pdata_table,%a6	|, tmp191
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lea _opacity_table,%a4	|, tmp192
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	lea _y_table,%a3	|, tmp194
.L77:
| voxel.c:306: 		if (y < sample_y) {
	cmp.w %a2,%d0	| sample_y, <retval>
	jge .L73		|
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l %d2,%d4	| z, tmp189
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w #99,%d0	|, <retval>
	jle .L83		|
	moveq #9,%d3	|,
	lsl.l %d3,%d4	|, tmp189
.L74:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d1	| sample_v, tmp157
	lsr.w #7,%d1	|, tmp157
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d1	|, tmp158
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d6,%d3	| sample_u, tmp159
	lsr.w #7,%d3	|, tmp159
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d3	|,
	move.l %d3,%a2	|, tmp160
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d3	|,
	lsl.l %d3,%d1	|, tmp161
	add.l %a2,%d1	| tmp160, tmp162
	add.l %d1,%d1	| tmp162, tmp163
	lea _combined,%a2	|,
	move.w (%a2,%d1.l),%d3	| combined[_34][_37], height_color
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d1	| tmp166
	move.b %d3,%d1	| height_color, tmp166
	add.l #256,%d1	|, tmp167
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l 60(%sp),%d1	| player_height, tmp168
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %d1,%d4	| tmp168, tmp170
	add.l %d4,%d4	| tmp170, tmp171
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w %a5,%a2	| y_offset, sample_y
	add.w (%a3,%d4.l),%a2	| y_table[z_78][_41], sample_y
| voxel.c:321: 			color = height_color >> 8;
	lsr.w #8,%d3	|, color
| voxel.c:358: 				z++;
	addq.l #1,%d2	|, z
| voxel.c:359: 				sample_u += delta_u;
	add.w %d7,%d6	| delta_u, sample_u
| voxel.c:360: 				sample_v += delta_v;
	add.w %a1,%d5	| delta_v, sample_v
| voxel.c:362: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp172
	and.l %d2,%d1	| z, tmp172
| voxel.c:362: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L76		|
| voxel.c:53: 	return x + x;
	add.w %d7,%d7	| delta_u, delta_u
	add.w %a1,%a1	| delta_v, delta_v
.L76:
| voxel.c:304: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d1	|,
	cmp.l %d2,%d1	| z,
	jne .L77		|
| voxel.c:387: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L73:
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	moveq #7,%d4	|, tmp177
	and.l %d0,%d4	| <retval>, tmp177
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	moveq #0,%d1	| opacity_table[z_78]
	move.b (%a4,%d2.l),%d1	| opacity_table[z_78], opacity_table[z_78]
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lsl.l #3,%d4	|, tmp180
	add.l %d1,%d4	| opacity_table[z_78], tmp181
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	move.w %d3,%d1	| color, color
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lsl.l #4,%d4	|, tmp183
	add.l %d4,%d1	| tmp183, tmp184
	add.l %d1,%d1	| tmp184, tmp185
	add.l %d1,%d1	| tmp185, tmp186
| voxel.c:381: 			asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	move.l (%a6,%d1.l),%d1	| pdata_table[_56][_58][_59], pdata_table[_56][_58][_59]
#APP
| 381 "voxel.c" 1
	movep.l %d1, 0(%a0)	| pdata_table[_56][_58][_59], pBlock
| 0 "" 2
| voxel.c:382: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:383: 			y -= LINES_SKIP;
	subq.w #1,%d0	|, <retval>
| voxel.c:304: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d0	|, <retval>
	jne .L77		|
| voxel.c:387: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L83:
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #9,%d1	|,
	lsl.l %d1,%d4	|, tmp189
	move.l 44(%sp),%d1	| %sfp, tmp154
	add.l %d4,%d1	| tmp189, tmp154
	add.l %d1,%d1	| tmp154, tmp155
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w (%a3,%d1.l),%d0	| y_table[z_78][_30], <retval>
	jgt .L74		|
| voxel.c:387: }
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d2	| y, y
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d1	|, tmp58
	asr.w #4,%d1	|, tmp58
	ext.l %d1	| tmp59
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp59, tmp60
	add.l %d1,%d1	| tmp60, tmp61
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d3	|,
	muls.w #80,%d3	|, tmp62
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d3,%d1	| tmp62, tmp64
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp64, tmp65
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%d3	| x, tmp67
	lsr.l #3,%d3	|, tmp67
	moveq #1,%d4	|,
	and.l %d3,%d4	| tmp67,
	move.l %d4,%a0	|, tmp68
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%a0	| tmp65, tmp69
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:392: 	short remaining_lines = y - horizon[x];
	ext.l %d0	| _2
	lea _horizon,%a2	|, tmp83
	add.l %d0,%d0	| _2, tmp82
| voxel.c:392: 	short remaining_lines = y - horizon[x];
	move.w %d2,%d1	|, _5
	sub.w (%a2,%d0.l),%d1	| horizon[_2], _5
| voxel.c:394: 	while (remaining_lines > 0) {
	tst.w %d1	| _5
	jle .L89		|
	and.l #65535,%d1	|, _5
	move.l %d1,%a1	| _5, tmp74
	add.l %d1,%a1	| _5, tmp74
	add.l %a1,%a1	| tmp74, tmp75
	add.l %a1,%d1	| tmp75, tmp76
	lsl.l #5,%d1	|, tmp77
	move.l %a0,%a1	| pBlock, _32
	sub.l %d1,%a1	| tmp77, _32
| voxel.c:395: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	moveq #0,%d1	| tmp79
.L90:
#APP
| 395 "voxel.c" 1
	movep.l %d1, 0(%a0)	| tmp79, pBlock
| 0 "" 2
| voxel.c:396: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:394: 	while (remaining_lines > 0) {
	cmp.l %a0,%a1	| pBlock, _32
	jne .L90		|
.L89:
| voxel.c:399: 	horizon[x] = y;
	move.w %d2,(%a2,%d0.l)	| y, horizon[_2]
| voxel.c:400: }
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
| voxel.c:414: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:416: 	Super(0L);
	moveq #0,%d0	| tmp244
#APP
| 416 "voxel.c" 1
	movl	%d0,%sp@-	| tmp244
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:418: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:420: 	lineaa();
	jsr _lineaa		|
| voxel.c:421: 	build_tables();
	jsr _build_tables		|
| voxel.c:422: 	printf("Tables computed.\n");
	pea .LC1		|
	jsr _puts		|
| voxel.c:423:         set_palette();
	jsr _set_palette		|
| voxel.c:424: 	unsigned short *screen = Physbase();
#APP
| 424 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,82(%sp)	| tmp444, %sfp
| voxel.c:425: 	draw_image2(screen, colors);
	pea _colors		|
	move.l %d0,-(%sp)	| tmp444,
	jsr _draw_image2		|
	move.l 90(%sp),%a0	| %sfp, ivtmp.266
	move.l %a0,%d0	| ivtmp.266, _652
	add.l #32000,%d0	|, _652
	lea (12,%sp),%sp	|,
.L95:
| voxel.c:117: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.229_707]
	cmp.l %d0,%a0	| _652, ivtmp.266
	jne .L95		|
| voxel.c:427: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,136(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:440: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,128(%sp)	| __aline, %sfp
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #0,%d0	| max_height
	move.b _max_height,%d0	| max_height, max_height
	add.l #256,%d0	|, max_height
	move.l %d0,132(%sp)	| max_height, %sfp
| voxel.c:433: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	move.w _pos+2,90(%sp)	| pos.y, %sfp
| voxel.c:433: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	lea _pos,%a0	|,
	move.w (%a0),84(%sp)	| pos.x, %sfp
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+6,88(%sp)	| pos.dirx, %sfp
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w _pos+8,86(%sp)	| pos.diry, %sfp
| voxel.c:451: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,112(%sp)	| pos.speed, %sfp
	clr.w 114(%sp)	| %sfp
| voxel.c:428: 	int last_player_altitude = 40;
	moveq #40,%d1	|,
	move.l %d1,108(%sp)	|, %sfp
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	lea _y_table,%a4	|, tmp430
.L110:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 90(%sp),%d0	| %sfp, tmp260
	lsr.w #7,%d0	|, tmp260
| voxel.c:433: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d0	|, tmp261
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 84(%sp),%d1	| %sfp, tmp262
	lsr.w #7,%d1	|, tmp262
| voxel.c:433: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	and.l #65535,%d1	|, tmp263
| voxel.c:433: 		int height_under_player = combined[fixp_int(pos.y)][fixp_int(pos.x)] & 0xff;
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp264
	add.l %d1,%d0	| tmp263, tmp265
	add.l %d0,%d0	| tmp265, tmp266
| voxel.c:434: 		int player_altitude = height_under_player + 20;
	lea _combined,%a0	|,
	move.b 1(%a0,%d0.l),%d0	| combined[_2][_4], tmp268
	and.l #255,%d0	|, tmp268
	moveq #20,%d1	|,
	add.l %d1,%d0	|, player_altitude
| voxel.c:436: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	move.l 108(%sp),%d1	| %sfp, tmp270
	addq.l #2,%d1	|, tmp270
| voxel.c:436: 		if (player_altitude > last_player_altitude + 2) player_altitude = last_player_altitude + 2;
	cmp.l #255,%d1	|, tmp270
	jle .L96		|
	moveq #0,%d1	|, tmp270
	not.b %d1	| tmp270
.L96:
	cmp.l %d0,%d1	| player_altitude, tmp270
	jge .L97		|
	move.l %d1,%d0	| tmp270, player_altitude
.L97:
| voxel.c:437: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l 108(%sp),%d1	| %sfp, tmp271
	subq.l #2,%d1	|, tmp271
| voxel.c:437: 		if (player_altitude < last_player_altitude - 2) player_altitude = last_player_altitude - 2;
	move.l %d0,108(%sp)	| player_altitude, %sfp
	cmp.l %d0,%d1	| player_altitude, tmp271
	jle .L98		|
	move.l %d1,108(%sp)	| tmp271, %sfp
.L98:
| voxel.c:441: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 114(%sp),%d0	| %sfp, _12
	and.w #8,%d0	|, _12
| voxel.c:441: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, _12
	move.w %d0,48(%sp)	| _12, %sfp
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 128(%sp),%a0	| %sfp,
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.36_8 + 4294966696B],
	move.l %a0,120(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp272
	add.l %a0,%d0	|, tmp272
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp272
	move.l %d0,92(%sp)	| tmp272, %sfp
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l 128(%sp),%a1	| %sfp,
	move.w -602(%a1),%a1	| MEM[(short int *)__aline.36_8 + 4294966694B],
	move.l %a1,124(%sp)	|, %sfp
	move.l %a1,%d0	|, tmp273
	add.l #-160,%d0	|, tmp273
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _18
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 86(%sp),%a5	| %sfp,
	move.l %a5,116(%sp)	|, %sfp
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l 132(%sp),%d1	| %sfp,
	sub.l 108(%sp),%d1	| %sfp,
	move.l %d1,66(%sp)	|, %sfp
	move.l %d0,%d2	| _18,
	lsl.l #4,%d2	|,
	move.l %d2,96(%sp)	|, %sfp
	moveq #0,%d3	| x
	move.w 48(%sp),%d3	| %sfp, x
	move.l %d3,%d2	| x, _687
	add.l #-160,%d2	|, _687
	move.l %d2,-(%sp)	| _687,
	move.l %d0,-(%sp)	| _18,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,54(%sp)	| tmp445, %sfp
	move.l %a5,%d5	|,
	lsl.l #4,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d2,-(%sp)	| _687,
	move.l %a5,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp446, %sfp
	move.w 88(%sp),%d0	| %sfp,
	ext.l %d0	| _144
	move.l %d0,%d1	| _144,
	lsl.l #4,%d1	|,
	move.l %d1,104(%sp)	|, %sfp
	move.l %d2,-(%sp)	| _687,
	move.l %d0,-(%sp)	| _144,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,62(%sp)	| tmp447, %sfp
	add.l %d3,%d3	| x, tmp286
	add.l #_horizon,%d3	|, tmp286
	move.l %d3,50(%sp)	| tmp286, %sfp
	move.l 108(%sp),%a6	| %sfp, last_player_altitude
.L107:
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 58(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:443: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %d0,%a3	| tmp448, y_offset
	add.l 92(%sp),%a3	| %sfp, y_offset
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	pea -320.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:275: 	fixp delta_u = pos->dirx - (x - 160) * pos->diry / 320;
	move.w 88(%sp),%a2	| %sfp, delta_u
	add.w %d0,%a2	| tmp449, delta_u
| voxel.c:276: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	pea 320.w		|
	move.l 66(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:276: 	fixp delta_v = pos->diry + (x - 160) * pos->dirx / 320;
	add.w 86(%sp),%d0	| %sfp, delta_v
| voxel.c:279: 	sample_u += STEPS_MIN * delta_u;
	move.w %a2,%d7	| delta_u, tmp302
	add.w %a2,%d7	| delta_u, tmp302
	add.w %d7,%d7	| tmp302, tmp303
| voxel.c:279: 	sample_u += STEPS_MIN * delta_u;
	add.w 84(%sp),%d7	| %sfp, sample_u
| voxel.c:280: 	sample_v += STEPS_MIN * delta_v;
	move.w %d0,%d6	| delta_v, tmp304
	add.w %d0,%d6	| delta_v, tmp304
	add.w %d6,%d6	| tmp304, tmp305
| voxel.c:280: 	sample_v += STEPS_MIN * delta_v;
	add.w 90(%sp),%d6	| %sfp, sample_v
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp, tmp306
	asr.w #4,%d1	|, tmp306
	ext.l %d1	| tmp307
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp307, tmp308
	add.l %d1,%d1	| tmp308, tmp308
	move.l %d1,70(%sp)	| tmp308, %sfp
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d1	| %sfp,
	lsr.l #3,%d1	|, tmp311
	moveq #1,%d2	|,
	and.l %d1,%d2	| tmp311,
	move.l %d2,74(%sp)	|, %sfp
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 70(%sp),%d1	| %sfp, tmp312
	add.l #15920,%d1	|, tmp312
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| tmp312, tmp313
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp313, tmp314
	add.l %d2,%a0	|, tmp314
	add.l 78(%sp),%a0	| %sfp, pBlock
| voxel.c:298: 	unsigned short color = 0;
	clr.w %d4	| color
| voxel.c:296: 	int z = STEPS_MIN;
	moveq #4,%d3	|, z
| voxel.c:303: 	short y = 199;
	move.w #199,%d2	|, y
| voxel.c:282: 	short sample_y = 200;
	move.w #200,%a1	|, sample_y
.L104:
| voxel.c:383: 			y -= LINES_SKIP;
	move.w %d2,%a5	| y, prephitmp_680
| voxel.c:306: 		if (y < sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L99		|
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	move.l %d3,%d4	| z, tmp425
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w #99,%d2	|, y
	jle .L121		|
	moveq #9,%d5	|,
	lsl.l %d5,%d4	|, tmp425
.L100:
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d6,%d1	| sample_v, tmp320
	lsr.w #7,%d1	|, tmp320
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	and.l #65535,%d1	|, tmp321
| voxel.c:125: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d7,%d5	| sample_u,
	lsr.w #7,%d5	|,
	move.w %d5,%a1	|, tmp322
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #0,%d5	|
	move.w %a1,%d5	| tmp322,
	move.l %d5,%a1	|, tmp323
| voxel.c:318: 			unsigned short height_color = combined[fixp_int(sample_v)][fixp_int(sample_u)];
	moveq #9,%d5	|,
	lsl.l %d5,%d1	|, tmp324
	add.l %a1,%d1	| tmp323, tmp325
	add.l %d1,%d1	| tmp325, tmp326
	lea _combined,%a1	|,
	move.w (%a1,%d1.l),%d1	| combined[_244][_248], height_color
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	moveq #0,%d5	|
	move.b %d1,%d5	| height_color,
	move.l %d5,%a1	|, tmp329
	lea (256,%a1),%a1	|, tmp330
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	sub.l %a6,%a1	| last_player_altitude, tmp331
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	add.l %a1,%d4	| tmp331, tmp333
	add.l %d4,%d4	| tmp333, tmp334
| voxel.c:320: 			sample_y = y_table[z][h + 256 - player_height] + y_offset;
	move.w (%a4,%d4.l),%a1	| y_table[z_298][_253], sample_y
	add.w %a3,%a1	| y_offset, sample_y
| voxel.c:321: 			color = height_color >> 8;
	move.w %d1,%d4	| height_color, color
	lsr.w #8,%d4	|, color
| voxel.c:358: 				z++;
	addq.l #1,%d3	|, z
| voxel.c:359: 				sample_u += delta_u;
	add.w %a2,%d7	| delta_u, sample_u
| voxel.c:360: 				sample_v += delta_v;
	add.w %d0,%d6	| delta_v, sample_v
| voxel.c:362: 				if (TRIGGERS_PROGRESSION(z)) {
	moveq #15,%d1	|, tmp335
	and.l %d3,%d1	| z, tmp335
| voxel.c:362: 				if (TRIGGERS_PROGRESSION(z)) {
	jne .L102		|
| voxel.c:53: 	return x + x;
	add.w %a2,%a2	| delta_u, delta_u
	add.w %d0,%d0	| delta_v, delta_v
.L102:
| voxel.c:304: 	while(y >= 0 && z < STEPS_MAX) {
	moveq #64,%d1	|,
	cmp.l %d3,%d1	| z,
	jne .L104		|
	move.w %a5,%d5	| prephitmp_680, prephitmp_680
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d0	| y,
	muls.w #80,%d0	|, _677
.L103:
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 70(%sp),%d0	| %sfp, tmp353
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp353, tmp354
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d0,%a0	| tmp354, tmp355
	add.l 74(%sp),%a0	| %sfp, tmp355
	add.l 78(%sp),%a0	| %sfp, pBlock
| voxel.c:392: 	short remaining_lines = y - horizon[x];
	move.l 50(%sp),%a1	| %sfp,
	sub.w (%a1),%d5	| MEM[(short int *)_659], _183
| voxel.c:394: 	while (remaining_lines > 0) {
	tst.w %d5	| _183
	jle .L105		|
	and.l #65535,%d5	|, _183
	move.l %d5,%d0	| _183, tmp358
	add.l %d5,%d0	| _183, tmp358
	add.l %d0,%d0	| tmp358, tmp359
	add.l %d0,%d5	| tmp359, tmp360
	lsl.l #5,%d5	|, tmp361
	move.l %a0,%d1	| pBlock, _669
	sub.l %d5,%d1	| tmp361, _669
| voxel.c:395: 		asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	moveq #0,%d0	| tmp363
.L106:
#APP
| 395 "voxel.c" 1
	movep.l %d0, 0(%a0)	| tmp363, pBlock
| 0 "" 2
| voxel.c:396: 		pBlock -= 160 * LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:394: 	while (remaining_lines > 0) {
	cmp.l %a0,%d1	| pBlock, _669
	jne .L106		|
.L105:
| voxel.c:399: 	horizon[x] = y;
	move.l 50(%sp),%a5	| %sfp,
	move.w %d2,(%a5)	| y, MEM[(short int *)_659]
| voxel.c:441: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:441: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 96(%sp),%d1	| %sfp,
	add.l %d1,54(%sp)	|, %sfp
	move.l 100(%sp),%d2	| %sfp,
	add.l %d2,58(%sp)	|, %sfp
	move.l 104(%sp),%d5	| %sfp,
	add.l %d5,62(%sp)	|, %sfp
	moveq #32,%d0	|,
	add.l %d0,50(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L107		|
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 112(%sp),%d0	| %sfp,
	muls.w 88(%sp),%d0	| %sfp, tmp364
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp365
| voxel.c:451: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	add.w %d0,84(%sp)	| tmp365, %sfp
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 112(%sp),%d0	| %sfp,
	muls.w 86(%sp),%d0	| %sfp, tmp366
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp367
| voxel.c:452: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w 90(%sp),%d0	| %sfp, _37
| voxel.c:451: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w 84(%sp),%d2	| %sfp,
	swap %d2	| _37
	clr.w %d2	| _37
	move.w %d0,%d2	| _37, _37
| voxel.c:452: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %d0,90(%sp)	| _37, %sfp
| voxel.c:454: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp373
	sub.l 120(%sp),%d0	| %sfp, tmp373
| voxel.c:454: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp374
| voxel.c:454: 		pos.speed += (100 - mouse_y) >> 2;
	add.w 112(%sp),%d0	| %sfp, _44
| voxel.c:455: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d1	| _44, tmp375
	asr.w #3,%d1	|, tmp375
| voxel.c:455: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _44, tmp376
	asr.w #4,%d3	|, tmp376
| voxel.c:455: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d3,%d1	| tmp376, tmp377
| voxel.c:455: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d1	|, tmp378
| voxel.c:456: 		if (pos.speed > 0) pos.speed -= drag;
	tst.w %d0	| _44
	jle .L108		|
| voxel.c:456: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d1,%d0	| tmp378, _44
	move.w %d0,112(%sp)	| _44, %sfp
| voxel.c:451: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _37, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:456: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 112(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:458: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp381
	not.b %d3	| tmp381
	sub.l 124(%sp),%d3	| %sfp, tmp381
| voxel.c:458: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _60
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _60,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp384
| voxel.c:459: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 88(%sp),%d2	| %sfp, _64
	add.w %d0,%d2	| tmp384, _64
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _60,
	move.w %d2,%a1	| _64,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp388
| voxel.c:460: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 86(%sp),%d1	| %sfp, _68
	sub.w %d0,%d1	| tmp388, _68
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _64,
	muls.w %d2,%d3	| _64, tmp389
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp390
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _68,
	muls.w %d1,%d0	| _68, tmp392
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp393
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp393, tmp394
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d3	|
	lea -128(%a0,%d3.l),%a0	|,
	move.l %a0,%d3	|, tmp396
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp397
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp397, factor
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp398
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp399
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,88(%sp)	| tmp399, %sfp
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _68, tmp400
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,86(%sp)	| tmp401, %sfp
| voxel.c:467: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _140
	clr.w %d2	| _140
	move.w %d0,%d2	| tmp401, _140
	move.l %d2,_pos+6	| _140, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:429: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L110		|
.L128:
| voxel.c:474: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:475: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 136(%sp),%a0	| %sfp, tmp409
| voxel.c:475: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp409, tmp411
	add.l %a0,%d0	| tmp409, tmp411
	add.l %d0,%d0	| tmp411, tmp412
| voxel.c:476: 	unsigned long millis_per_frame = millis / FRAMES;
	pea 800.w		|
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:477: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp453,
	pea .LC2		|
	jsr _printf		|
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l _stdin,%a0	| stdin, stdin.42_119
	move.l 4(%a0),%d0	| stdin.42_119->__bufp, _117
	addq.l #8,%sp	|,
	cmp.l 8(%a0),%d0	| stdin.42_119->__get_limit, _117
	jcc .L111		|
	addq.l #1,%d0	|, _117
	move.l %d0,4(%a0)	| _117, stdin.42_119->__bufp
| voxel.c:481: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (96,%sp),%sp	|,
	rts	
.L99:
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	moveq #7,%d1	|, tmp340
	and.l %d2,%d1	| y, tmp340
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lea _opacity_table,%a5	|,
	moveq #0,%d5	| opacity_table[z_298]
	move.b (%a5,%d3.l),%d5	| opacity_table[z_298], opacity_table[z_298]
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lsl.l #3,%d1	|, tmp343
	add.l %d5,%d1	| opacity_table[z_298], tmp344
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	move.w %d4,%d5	| color, color
| voxel.c:380: 			unsigned int movep_data = pdata_table[y&7][opacity_table[z]][color];
	lsl.l #4,%d1	|, tmp346
	add.l %d5,%d1	| color, tmp347
	add.l %d1,%d1	| tmp347, tmp348
	add.l %d1,%d1	| tmp348, tmp349
| voxel.c:381: 			asm ("movep.l %0, 0(%1)" : : "d" (movep_data), "a" (pBlock));
	lea _pdata_table,%a5	|,
	move.l (%a5,%d1.l),%d1	| pdata_table[_281][_283][_285], pdata_table[_281][_283][_285]
#APP
| 381 "voxel.c" 1
	movep.l %d1, 0(%a0)	| pdata_table[_281][_283][_285], pBlock
| 0 "" 2
| voxel.c:382: 			pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:383: 			y -= LINES_SKIP;
	subq.w #1,%d2	|, y
| voxel.c:304: 	while(y >= 0 && z < STEPS_MAX) {
	cmp.w #-1,%d2	|, y
	jne .L104		|
	moveq #-1,%d5	|, prephitmp_680
	moveq #-80,%d0	|, _677
	jra .L103		|
.L121:
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	moveq #9,%d1	|,
	lsl.l %d1,%d4	|, tmp425
	move.l 66(%sp),%d1	| %sfp, tmp317
	add.l %d4,%d1	| tmp425, tmp317
	add.l %d1,%d1	| tmp317, tmp318
| voxel.c:312: 			if (y < OCCLUSION_THRESHOLD_Y && y <= y_table[z][max_height + 256 - player_height]) {
	cmp.w (%a4,%d1.l),%d2	| y_table[z_298][_238], y
	jgt .L100		|
	move.w %a5,%d5	| prephitmp_680, prephitmp_680
| voxel.c:265: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d0	| y,
	muls.w #80,%d0	|, _677
	jra .L103		|
.L108:
| voxel.c:457: 		else pos.speed += drag;
	add.w %d1,%d0	| tmp378, _44
	move.w %d0,112(%sp)	| _44, %sfp
| voxel.c:451: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	move.l %d2,(%a0)	| _37, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:456: 		if (pos.speed > 0) pos.speed -= drag;
	move.w 112(%sp),_pos+10	| %sfp, pos.speed
| voxel.c:458: 		fixp rot = (160 - mouse_x) >> 3;
	moveq #95,%d3	|, tmp381
	not.b %d3	| tmp381
	sub.l 124(%sp),%d3	| %sfp, tmp381
| voxel.c:458: 		fixp rot = (160 - mouse_x) >> 3;
	asr.l #3,%d3	|, _60
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l %d3,-(%sp)	| _60,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp384
| voxel.c:459: 		pos.dirx += fixp_mul(rot, pos.diry);
	move.w 88(%sp),%d2	| %sfp, _64
	add.w %d0,%d2	| tmp384, _64
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _60,
	move.w %d2,%a1	| _64,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp388
| voxel.c:460: 		pos.diry -= fixp_mul(rot, pos.dirx);
	move.w 86(%sp),%d1	| %sfp, _68
	sub.w %d0,%d1	| tmp388, _68
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _64,
	muls.w %d2,%d3	| _64, tmp389
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp390
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _68,
	muls.w %d1,%d0	| _68, tmp392
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp393
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w %d0,%a0	| tmp393, tmp394
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	ext.l %d3	|
	lea -128(%a0,%d3.l),%a0	|,
	move.l %a0,%d3	|, tmp396
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp397
| voxel.c:466: 		fixp factor = FIXP(1,0) - ((fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry) - FIXP(1,0)) >> 1);
	move.w #128,%d0	|, factor
	sub.w %d3,%d0	| tmp397, factor
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d0,%d2	| factor, tmp398
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp399
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,88(%sp)	| tmp399, %sfp
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d0	| _68, tmp400
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp401
| voxel.c:133: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,86(%sp)	| tmp401, %sfp
| voxel.c:467: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d2	| _140
	clr.w %d2	| _140
	move.w %d0,%d2	| tmp401, _140
	move.l %d2,_pos+6	| _140, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:429: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,114(%sp)	|, %sfp
	cmp.w #6400,114(%sp)	|, %sfp
	jne .L110		|
	jra .L128		|
.L111:
| /Users/jonas/opt/cross-mint/m68k-atari-mint/sys-root/usr/include/stdio.h:545:   return __getc (stdin);
	move.l %a0,-(%sp)	| stdin.42_119,
	jsr ___fillbf		|
	addq.l #4,%sp	|,
| voxel.c:481: }
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
	.globl	_combined
	.even
_combined:
	.skip 524288
