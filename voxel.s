| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
.LC1:
	.ascii "%s: %s\15\12\0"
	.even
	.globl	_perror
_perror:
| voxel.c:74: 	printf("%s: %s\r\n", strerror(errno), msg);
	move.l _errno,-(%sp)	| errno,
	jsr _strerror		|
	move.l 8(%sp),-(%sp)	| msg,
	move.l %d0,-(%sp)	| tmp36,
	pea .LC1		|
	jsr _printf		|
| voxel.c:75: }
	lea (16,%sp),%sp	|,
	rts	
	.even
	.globl	_linea0
_linea0:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
| voxel.c:88: 	__asm__ volatile(
#APP
| 88 "voxel.c" 1
	.word	0xa000+0x0
| 0 "" 2
| voxel.c:95: 	__aline = __xaline;
#NO_APP
	move.l %a0,___aline	| tmp34, __aline
| voxel.c:96: 	__fonts = __xfonts;
	move.l %a1,___fonts	| tmp35, __fonts
| voxel.c:97: 	__funcs = __xfuncs;
	move.l %a2,___funcs	| tmp36, __funcs
| voxel.c:98: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%a2	|,
	rts	
	.even
	.globl	_lineaa
_lineaa:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
| voxel.c:102: 	__asm__ volatile(
#APP
| 102 "voxel.c" 1
	.word	0xa000+0xa
| 0 "" 2
| voxel.c:108: }
#NO_APP
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%a2	|,
	rts	
	.even
	.globl	_draw_image2
_draw_image2:
	lea (-28,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 76(%sp),%a1	| out, out
	move.b 95(%sp),%d0	| dither, dither
| voxel.c:172: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L7		|
	tst.b %d0	| dither
	jne .L25		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:172: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L12:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.200
	add.l 80(%sp),%a6	| pixels, ivtmp.200
.L11:
| voxel.c:176: 				unsigned char register px = pixels[y*width + 16*chunk + x];
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
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:180: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:180: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:180: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:180: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:180: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:180: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:180: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:180: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:180: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:180: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:180: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:180: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:180: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:180: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:180: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:180: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:182: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:182: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:182: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:182: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:182: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:182: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:182: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:182: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:182: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:182: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:182: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:182: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:182: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:182: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:182: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:182: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:190: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:184: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:184: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:184: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:184: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:184: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:184: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:184: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:184: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:184: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:184: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:173: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.200
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L11		|
| voxel.c:172: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:172: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L12		|
.L7:
| voxel.c:193: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L25:
| voxel.c:172: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.232
| voxel.c:172: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.225
	add.l %a2,%a0	| ivtmp.232, ivtmp.225
	lea (160,%a1),%a3	|, out, tmp719
.L15:
| voxel.c:175: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:174: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:174: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:174: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:174: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L14:
| voxel.c:176: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:177: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:177: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L13		|
| voxel.c:178: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:178: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L13:
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:179: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:180: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:181: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:182: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:183: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:184: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:185: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:175: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:175: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L14		|
| voxel.c:187: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:188: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:189: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:190: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:190: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:173: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.225
	cmp.l %a1,%a3	| out, tmp719
	jne .L15		|
| voxel.c:172: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:172: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.232
	cmp.l 88(%sp),%d6	| height, y
	jeq .L7		|
	move.l 80(%sp),%a0	| pixels, ivtmp.225
	add.l %a2,%a0	| ivtmp.232, ivtmp.225
	lea (160,%a1),%a3	|, out, tmp719
	jra .L15		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L27:
| voxel.c:196: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.238_11]
	cmp.l %d0,%a0	| _3, out
	jne .L27		|
| voxel.c:197: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:205: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:209: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:213: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L42		|
	move.l %d2,%d0	| pattern, iftmp.15_8
	lsl.w #8,%d0	|, iftmp.15_8
	swap %d0	| iftmp.15_8
	clr.w %d0	| iftmp.15_8
.L38:
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L39		|
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.15_8
.L39:
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L40		|
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.15_8
.L40:
| voxel.c:287: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L41		|
| voxel.c:287: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.15_8
.L41:
| voxel.c:288: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L42:
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d0	| iftmp.15_8
	jra .L38		|
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
	move.l #_y_table+1024,%d6	|, ivtmp.373
| voxel.c:297: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:296: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:295: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp251
	lea _fog_table,%a5	|, tmp252
.L55:
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _157
	lsr.w #7,%d0	|, _157
| voxel.c:299: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _157, _3
| voxel.c:301: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:301: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _58
	add.w #45,%d2	|, _58
| voxel.c:301: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.373, ivtmp.362
	move.w #-17920,%a2	|, ivtmp.359
.L56:
| voxel.c:299: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.359,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:301: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _58,
	sub.w %d0,%d1	| tmp280,
	move.w %d1,(%a3)+	|, MEM[(short int *)_250]
| voxel.c:298: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.359
	cmp.w #17920,%a2	|, ivtmp.359
	jne .L56		|
| voxel.c:304: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:306: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp172
	and.l %d4,%d0	| z, tmp172
| voxel.c:306: 		if (TRIGGERS_PROGRESSION(z))
	jne .L57		|
| voxel.c:113: 	return x + x;
	add.w %d7,%d7	| step, step
.L57:
| voxel.c:309: 		int rel_dist = z - FOG_START;
	moveq #-40,%d0	|, rel_dist
	add.l %d4,%d0	| z, rel_dist
| voxel.c:310: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L110		|
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:297: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:297: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.373
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L55		|
.L111:
	lea _combined+1025,%a1	|, ivtmp.350
	clr.b %d2	| max_height_lsm_flag.273
	clr.b %d1	| max_height_lsm.272
.L59:
	lea (-1024,%a1),%a0	|, ivtmp.350, ivtmp.343
.L61:
| voxel.c:318: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_368], _20
| voxel.c:318: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _20, max_height_lsm.272
	jcc .L60		|
| voxel.c:319: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _20, max_height_lsm.272
| voxel.c:318: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.273
.L60:
| voxel.c:317: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.343
	cmp.l %a0,%a1	| ivtmp.343, ivtmp.350
	jne .L61		|
| voxel.c:316: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.343, ivtmp.350
	cmp.l #_combined+524289,%a0	|, ivtmp.343
	jne .L59		|
	tst.b %d2	| max_height_lsm_flag.273
	jeq .L90		|
| voxel.c:323: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_341
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:325: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp253
	move.l %a6,124(%sp)	| tmp253, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:335: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L63:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_93], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_93 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_93 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_93 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_93 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_93 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_93 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_93 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	clr.l 56(%sp)	| %sfp
| voxel.c:336: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a4,%a4	| fog
.L86:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sle %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jgt .L78		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L78:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jgt .L79		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L79:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jgt .L80		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L80:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jgt .L81		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L81:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jgt .L82		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L82:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jgt .L83		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L83:
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jgt .L84		|
| voxel.c:341: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L84:
| voxel.c:346: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _186
	move.b %d7,%d1	|, _186
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _186,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _186
	move.l %d1,68(%sp)	| _186, %sfp
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _168
	and.l %d0,%d7	| mask, _168
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _168, iftmp.15_169
	lsl.w #8,%d6	|, iftmp.15_169
	swap %d6	| iftmp.15_169
	clr.w %d6	| iftmp.15_169
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _168,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.16_172
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _168,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.17_178
| voxel.c:348: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.323
| voxel.c:343: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L76:
	move.b %d3,%d5	| color1, _120
	btst #1,%d3	|, color1
	jeq .L64		|
	move.l 64(%sp),%d0	| %sfp, iftmp.16_190
.L65:
	btst #0,%d3	|, color1
	jeq .L66		|
	move.l 60(%sp),%d1	| %sfp, iftmp.15_187
.L67:
	or.l %d1,%d0	| iftmp.15_187, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _120
	jeq .L68		|
	move.l 68(%sp),%d4	| %sfp, iftmp.17_196
.L69:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _120
	jeq .L70		|
	move.b 55(%sp),%d0	| %sfp, _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.315
	neg.l %d2	| ivtmp.315
	move.l %a3,%a0	| ivtmp.323, ivtmp.316
	move.l %d7,44(%sp)	| _168, %sfp
.L75:
	move.b %d5,%d0	| _120, _146
	add.b %d2,%d0	| ivtmp.315, _146
| voxel.c:284: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _146, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.15_169, tmp224
	or.l %d4,%d1	| _334, _33
| voxel.c:285: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _146
	jeq .L72		|
	move.l %a2,%d7	| iftmp.16_172,
	or.l %d7,%d1	|, _33
.L72:
| voxel.c:286: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _146
	jeq .L73		|
	move.l %a1,%d7	| iftmp.17_178,
	or.l %d7,%d1	|, _33
.L73:
| voxel.c:287: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _146
	jeq .L74		|
	or.l 44(%sp),%d1	| %sfp, _33
.L74:
| voxel.c:349: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.315, tmp229
| voxel.c:351: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| fog, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _33, pdata_table[index1_277][fog_232][y_230]
| voxel.c:351: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d1,(%a0)	| _33, MEM[(unsigned int *)_144]
| voxel.c:344: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.315
	lea (-3840,%a0),%a0	|, ivtmp.316
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.315,
	jne .L75		|
| voxel.c:343: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _168
	addq.l #1,%d3	|, color1
| voxel.c:343: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.323
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L76		|
| voxel.c:336: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #1,%a4	|, fog
| voxel.c:336: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| fog,
	jne .L86		|
| voxel.c:335: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:335: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L63		|
| voxel.c:360: 	short top_envelope[20] = {
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
| voxel.c:366: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.296
	lea _view_min+80,%a6	|, ivtmp.299
	lea _view_min,%a1	|, tmp254
	move.l %a1,%a5	| tmp254, ivtmp.301
	lea (156,%sp),%a4	|,, ivtmp.303
	lea _view_max+80,%a3	|, ivtmp.306
	lea _view_max,%a2	|, ivtmp.308
	moveq #40,%d1	|, _325
	add.l %a0,%d1	| ivtmp.296, _325
.L87:
| voxel.c:374: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_317], _38
| voxel.c:374: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_320]
| voxel.c:374: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_321]
| voxel.c:375: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_322], _42
| voxel.c:375: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_299]
| voxel.c:375: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_323]
| voxel.c:373: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.296, _325
	jne .L87		|
	lea _horizon,%a0	|, ivtmp.289
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L88:
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_184]
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:382: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L88		|
| voxel.c:383: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L110:
| voxel.c:310: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d0	| rel_dist
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:312: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:297: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:297: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.373
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L55		|
	jra .L111		|
.L70:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.315
	neg.l %d2	| ivtmp.315
| voxel.c:343: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.323, ivtmp.316
	move.l %d7,44(%sp)	| _168, %sfp
	jra .L75		|
.L68:
	moveq #0,%d4	| iftmp.17_196
	jra .L69		|
.L66:
	moveq #0,%d1	| iftmp.15_187
	jra .L67		|
.L64:
	moveq #0,%d0	| iftmp.16_190
	jra .L65		|
.L90:
| voxel.c:316: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_341
| voxel.c:323: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:325: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp253
	move.l %a6,124(%sp)	| tmp253, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:335: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	jra .L63		|
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #15904,-(%sp)	|,
	move.l 28(%sp),%d3	| sample_uv, sample_uv
	move.l 32(%sp),%d5	| delta_uv, delta_uv
| voxel.c:527: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 38(%sp),%a0	| start_height, ytable_offset
| voxel.c:529: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp59
| voxel.c:529: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:535: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:534: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:532: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d6	|, index_mask
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	lea _combined,%a1	|, tmp70
.L115:
	move.w %d2,%d4	| z, z
| voxel.c:544: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a2	| _50, y_table_shifted
| voxel.c:545: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d1	| sample_uv, uv
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_uv, tmp60
	add.l %d1,%d3	| uv, tmp60
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:537: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L113		|
| voxel.c:400: 	asm (
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a1,%d1.l),%d1	| *_34, sample
| voxel.c:539: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, SR.379
| voxel.c:540: 			if (sample_y < min_y) {
	move.w (%a2,%d1.l),%d1	| *_6, *_6
	cmp.w %d0,%d1	| <retval>, *_6
	jge .L114		|
	move.w %d1,%d0	| *_6, <retval>
.L114:
| voxel.c:548: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp66
	and.w #15,%d1	|, tmp66
	jne .L113		|
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_uv, tmp67
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_uv
| voxel.c:422: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp68
| voxel.c:422: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L113:
| voxel.c:536: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L115		|
| voxel.c:558: }
	movem.l (%sp)+,#1148	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	lsl.l #8,%d0	|, tmp71
	lea _pdata_table,%a1	|, tmp69
	move.l (%a1,%d0.l),%d2	| pdata_table[_1][0][0], movep_data
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L119		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp72
	add.l %a0,%d0	| pBlock, _31
.L121:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:565: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L121		|
.L119:
| voxel.c:567: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d4	| pdata_table[15][0][0], movep_data
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L126		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L127:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:565: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L127		|
.L126:
| voxel.c:572: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:573: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:591: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:592: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:593: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:599: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.436
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L136:
| voxel.c:610: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:611: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:612: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:591: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:592: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:591: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:592: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:591: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:592: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:617: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:617: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:609: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.436
	cmp.l %d3,%a3	| _445, ivtmp.436
	jne .L136		|
| voxel.c:619: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.442
	clr.w %d0	| vect__18.442
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.442
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.442, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:625: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L144		|
	cmp.w #128,%d0	|, val
	jge .L145		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:630: }
	rts	
.L145:
| voxel.c:628: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:630: }
	rts	
.L144:
| voxel.c:628: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:630: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:635: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:638: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:645: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:647: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:659: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:640: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.472
| voxel.c:647: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L155:
| voxel.c:650: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| b$a$0,
	muls.w %d7,%d2	| _4, tmp164
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp165
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp166
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp167
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp167, result
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp169
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp171
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d3	| b$a$2,
	muls.w %d7,%d3	| _4, tmp172
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp173
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -78(%fp),%d0	| %sfp, tmp174
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp175
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:657: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L165		|
| voxel.c:659: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:665: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L166		|
.L150:
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:669: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:670: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L167		|
.L151:
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L156		|
.L168:
	cmp.w #128,%d4	|, _504
	jge .L157		|
	add.b %d4,%d4	| _504, iftmp.33_290
.L152:
| voxel.c:673: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.33_290, MEM[(unsigned char *)p_252]
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L158		|
.L169:
	cmp.w #128,%d3	|, _75
	jge .L159		|
	add.b %d3,%d3	| _75, iftmp.34_360
.L153:
| voxel.c:674: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.34_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:675: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L160		|
.L170:
	cmp.w #128,%d2	|, _404
	jge .L161		|
	add.b %d2,%d2	| _404, iftmp.34_295
| voxel.c:675: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.34_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:648: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.472
	cmp.l %a0,%a4	|, tmp230
	jne .L155		|
.L171:
| voxel.c:677: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:678: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:680: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:681: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L167:
| voxel.c:670: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L168		|
.L156:
	clr.b %d4	| iftmp.33_290
| voxel.c:673: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.33_290, MEM[(unsigned char *)p_252]
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L169		|
.L158:
	clr.b %d3	| iftmp.34_360
| voxel.c:674: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.34_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:675: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:628: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L170		|
.L160:
	clr.b %d2	| iftmp.34_295
| voxel.c:675: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.34_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:648: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.472
	cmp.l %a0,%a4	|, tmp230
	jne .L155		|
	jra .L171		|
.L165:
| voxel.c:657: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:659: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:665: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L150		|
.L166:
	clr.w %d2	| _184
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:623: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:597: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:669: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:670: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L151		|
	jra .L167		|
.L157:
| voxel.c:628: 	return val < 0 ? 0 : (
	st %d4		| iftmp.33_290
	jra .L152		|
.L161:
	st %d2		| iftmp.34_295
| voxel.c:675: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.34_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:648: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.472
	cmp.l %a0,%a4	|, tmp230
	jne .L155		|
	jra .L171		|
.L159:
| voxel.c:628: 	return val < 0 ? 0 : (
	st %d3		| iftmp.34_360
	jra .L153		|
.LC2:
	.ascii "Loading colors.tga%n\15\12\0"
.LC3:
	.ascii "rb\0"
.LC4:
	.ascii "colors.tga\0"
.LC5:
	.ascii "\15\0"
.LC6:
	.ascii "Loading height.tga\15\0"
.LC7:
	.ascii "height.tga\0"
	.even
	.globl	_load_voxel_data
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:685: 	printf("Loading colors.tga%n\r\n");
	pea .LC2		|
	lea _printf,%a4	|, tmp115
	jsr (%a4)		| tmp115
| voxel.c:686: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC3		|
	pea .LC4		|
	jsr _fopen		|
	move.l %d0,%d3	| tmp125, file1
| voxel.c:687: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L194		|
| voxel.c:691: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	lea _read_tga_header,%a6	|, tmp110
	jsr (%a6)		| tmp110
| voxel.c:692: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L190		|
	lea _fclose,%a2	|, tmp117
.L175:
| voxel.c:746: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp117
	addq.l #4,%sp	|,
.L185:
| voxel.c:748: 	return 0;
	moveq #0,%d0	| <retval>
.L172:
| voxel.c:749: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L190:
| voxel.c:694: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:694: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:695: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:696: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:698: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:699: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:702: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:701: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
	moveq #72,%d2	|, tmp109
	add.l %sp,%d2	|, tmp109
	lea _fread,%a2	|, tmp112
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d7	|, remaining
| voxel.c:705: 		printf(".");
	lea _putchar,%a5	|, tmp123
| voxel.c:706: 		fflush(stdout);
	lea _fflush,%a3	|, tmp124
.L176:
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,-(%sp)	| file1,
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L178		|
	move.l %d7,%d0	| remaining, remaining
.L178:
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp109,
	jsr (%a2)		| tmp112
	move.l %d0,%d6	| tmp127, n
| voxel.c:703: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L195		|
| voxel.c:704: 		remaining -= n;
	sub.l %d6,%d4	| n, remaining
| voxel.c:705: 		printf(".");
	pea 46.w		|
	jsr (%a5)		| tmp123
| voxel.c:706: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a3)		| tmp124
	move.l %d2,%a1	| tmp109, ivtmp.494
	move.l %d2,%d0	| tmp109, _99
	add.l %d6,%d0	| n, _99
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L177:
| voxel.c:708: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_97], MEM[(unsigned char *)p_85]
| voxel.c:709: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:707: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.494, _99
	jne .L177		|
	add.l %d6,%d6	| n, tmp81
	add.l %d6,%d5	| tmp81, p
	jra .L176		|
.L195:
| voxel.c:712: 	printf("\r\n");
	pea .LC5		|
	lea _puts,%a5	|, tmp114
	jsr (%a5)		| tmp114
| voxel.c:713: 	free_image(&texture);
	pea 48(%sp)		|
	jsr _free_image		|
| voxel.c:715: 	printf("Loading height.tga\r\n");
	pea .LC6		|
	jsr (%a5)		| tmp114
| voxel.c:716: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC3		|
	pea .LC7		|
	jsr _fopen		|
	move.l %d0,%d6	| tmp128, file2
| voxel.c:717: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L196		|
| voxel.c:721: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr (%a6)		| tmp110
| voxel.c:722: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L197		|
| voxel.c:723: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:724: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:725: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:727: 		printf(".");
	lea _putchar,%a4	|, tmp120
| voxel.c:728: 		fflush(stdout);
	lea _fflush,%a3	|, tmp121
.L181:
| voxel.c:725: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:725: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d4,%d0	| remaining, remaining
	cmp.l #8192,%d4	|, remaining
	jls .L183		|
	move.l %d7,%d0	| remaining, remaining
.L183:
| voxel.c:725: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp109,
	jsr (%a2)		| tmp112
	move.l %d0,%a6	| tmp130, n
| voxel.c:725: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L198		|
| voxel.c:726: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:727: 		printf(".");
	pea 46.w		|
	jsr (%a4)		| tmp120
| voxel.c:728: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a3)		| tmp121
	move.l %d2,%a1	| tmp109, ivtmp.487
	move.l %d2,%d0	| tmp109, _62
	add.l %a6,%d0	| n, _62
	addq.l #8,%sp	|,
	move.l %d5,%a0	| p, p
.L182:
| voxel.c:732: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_82], _12
| voxel.c:732: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp97
	move.b %d1,(%a0)	| tmp97, MEM[(unsigned char *)p_87]
| voxel.c:733: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:729: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.487, _62
	jne .L182		|
	add.l %a6,%a6	| n, tmp98
	add.l %a6,%d5	| tmp98, p
	jra .L181		|
.L198:
| voxel.c:736: 	printf("\r\n");
	pea .LC5		|
	jsr (%a5)		| tmp114
| voxel.c:737: 	free_image(&height);
	pea 62(%sp)		|
	jsr _free_image		|
| voxel.c:739: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp105
	jsr (%a2)		| tmp105
| voxel.c:740: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp105
| voxel.c:741: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:749: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L194:
| voxel.c:74: 	printf("%s: %s\r\n", strerror(errno), msg);
	move.l _errno,-(%sp)	| errno,
	jsr _strerror		|
	pea .LC4		|
	move.l %d0,-(%sp)	| tmp126,
	pea .LC1		|
	jsr (%a4)		| tmp115
| voxel.c:689: 		goto error0;
	lea (16,%sp),%sp	|,
| voxel.c:748: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L172		|
.L196:
| voxel.c:74: 	printf("%s: %s\r\n", strerror(errno), msg);
	move.l _errno,-(%sp)	| errno,
	jsr _strerror		|
	pea .LC7		|
	move.l %d0,-(%sp)	| tmp129,
	pea .LC1		|
	jsr (%a4)		| tmp115
| voxel.c:719: 		goto error1;
	lea (16,%sp),%sp	|,
	lea _fclose,%a2	|, tmp117
	jra .L175		|
.L197:
| voxel.c:744: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp117
	jsr (%a2)		| tmp117
	addq.l #4,%sp	|,
| voxel.c:746: 	fclose(file1);
	move.l %d3,-(%sp)	| file1,
	jsr (%a2)		| tmp117
	addq.l #4,%sp	|,
	jra .L185		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 752 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L201		|
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 752 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:753: }
	movem.l (%sp)+,#1036	|,
	rts	
.L201:
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:753: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:756: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L205:
#APP
| 756 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L205		|
| voxel.c:758: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L206:
#APP
| 758 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:758: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L206		|
| voxel.c:760: 	Bconin(_CON);
#APP
| 760 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:761: }
#NO_APP
	movem.l (%sp)+,#1036	|,
	rts	
.LC8:
	.ascii "Available memory: %d bytes.\15\12\0"
.LC9:
	.ascii "TOS reports %d bytes free.\15\12\0"
	.even
	.globl	_probe_available_memory
_probe_available_memory:
	movem.l #14384,-(%sp)	|,
	move.l 24(%sp),%d3	| min_avail, min_avail
	move.l 28(%sp),%d4	| max_avail, max_avail
| voxel.c:771: 	void *p = malloc(sample);
	lea _malloc,%a2	|, tmp42
| voxel.c:773: 		free(p);
	lea _free,%a3	|, tmp43
.L214:
| voxel.c:764: 	size_t sample = (min_avail + max_avail) >> 1;
	move.l %d3,%d2	| min_avail, _1
	add.l %d4,%d2	| max_avail, _1
| voxel.c:764: 	size_t sample = (min_avail + max_avail) >> 1;
	lsr.l #1,%d2	|, sample
| voxel.c:765: 	if (sample == min_avail) {
	cmp.l %d3,%d2	| min_avail, sample
	jeq .L219		|
.L213:
| voxel.c:771: 	void *p = malloc(sample);
	move.l %d2,-(%sp)	| sample,
	jsr (%a2)		| tmp42
| voxel.c:772: 	if (p) {
	addq.l #4,%sp	|,
	tst.l %d0	| tmp40
	jeq .L216		|
| voxel.c:773: 		free(p);
	move.l %d0,-(%sp)	| tmp40,
	jsr (%a3)		| tmp43
	addq.l #4,%sp	|,
| voxel.c:774: 		probe_available_memory(sample, max_avail);
	move.l %d2,%d3	| sample, min_avail
| voxel.c:764: 	size_t sample = (min_avail + max_avail) >> 1;
	move.l %d3,%d2	| min_avail, _1
	add.l %d4,%d2	| max_avail, _1
| voxel.c:764: 	size_t sample = (min_avail + max_avail) >> 1;
	lsr.l #1,%d2	|, sample
| voxel.c:765: 	if (sample == min_avail) {
	cmp.l %d3,%d2	| min_avail, sample
	jne .L213		|
.L219:
| voxel.c:766: 		printf("Available memory: %d bytes.\r\n", sample);
	move.l %d3,-(%sp)	| min_avail,
	pea .LC8		|
	jsr _printf		|
| voxel.c:767: 		long size = Malloc(-1);
	moveq #-1,%d0	|, tmp38
#APP
| 767 "voxel.c" 1
	movl	%d0,%sp@-	| tmp38
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:768: 		printf("TOS reports %d bytes free.\r\n", size);
#NO_APP
	addq.l #8,%sp	|,
	move.l %d0,28(%sp)	| tmp44,
	move.l #.LC9,24(%sp)	|,
| voxel.c:778: }
	movem.l (%sp)+,#3100	|,
| voxel.c:768: 		printf("TOS reports %d bytes free.\r\n", size);
	jra _printf		|
.L216:
| voxel.c:776: 		probe_available_memory(min_avail, sample);
	move.l %d2,%d4	| sample, max_avail
	jra .L214		|
.LC10:
	.ascii "\33H\33f\15\12\15\0"
.LC11:
	.ascii "Failed to load voxel data.\15\0"
.LC12:
	.ascii "Loading cockpit.tga\15\0"
.LC13:
	.ascii "cockpit.tga\0"
.LC14:
	.ascii "Computing tables\15\0"
.LC15:
	.ascii "Total time per frame: %dms\15\12\0"
.LC16:
	.ascii "Time spent rendering terrain: %dms\15\12\0"
.LC17:
	.ascii "Press any key to exit to TOS.\15\0"
	.even
	.globl	_main
_main:
	lea (-152,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:782: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:784: 	printf("\33H\33f\r\n\r\n");
	pea .LC10		|
	jsr _puts		|
| voxel.c:787: 	Super(0L);
	moveq #0,%d0	| tmp608
#APP
| 787 "voxel.c" 1
	movl	%d0,%sp@-	| tmp608
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:88: 	__asm__ volatile(
| 88 "voxel.c" 1
	.word	0xa000+0x0
| 0 "" 2
| voxel.c:95: 	__aline = __xaline;
#NO_APP
	move.l %a0,___aline	| tmp1045, __aline
| voxel.c:96: 	__fonts = __xfonts;
	move.l %a1,___fonts	| tmp1046, __fonts
| voxel.c:97: 	__funcs = __xfuncs;
	move.l %a2,___funcs	| tmp1047, __funcs
| voxel.c:102: 	__asm__ volatile(
#APP
| 102 "voxel.c" 1
	.word	0xa000+0xa
| 0 "" 2
| voxel.c:794: 	save_palette(saved_palette);
#NO_APP
	pea 168(%sp)		|
	jsr _save_palette		|
| voxel.c:796: 	unsigned short *screen = Physbase();
#APP
| 796 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,86(%sp)	| tmp1048, %sfp
| voxel.c:798: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:800: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:800: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1049
	jeq .L397		|
| voxel.c:805: 	printf("Loading cockpit.tga\r\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:806: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC13		|
	lea (158,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 162(%sp),%d6	| cockpit.pixels, cockpit$pixels
| voxel.c:807: 	probe_available_memory(0, 4 * 1024 * 1024);
	move.l #4194304,-(%sp)	|,
	clr.l -(%sp)	|
	jsr _probe_available_memory		|
| voxel.c:808: 	printf("Computing tables\r\n");
	pea .LC14		|
	jsr _puts		|
| voxel.c:809: 	build_tables();
	jsr _build_tables		|
| voxel.c:810: 	if (!cockpit.pixels) goto error;
	lea (20,%sp),%sp	|,
	tst.l %d6	| cockpit$pixels
	jeq .L222		|
| voxel.c:811: 	read_palette_vectors(cockpit.colors);
	move.l 158(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 82(%sp),%a0	| %sfp, ivtmp.717
	move.l %a0,%d0	| ivtmp.717, _1680
	add.l #32000,%d0	|, _1680
	addq.l #4,%sp	|,
.L223:
| voxel.c:196: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.537_1914]
	cmp.l %d0,%a0	| _1680, ivtmp.717
	jne .L223		|
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a5	|, tmp1025
	move.l (%a5),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.708
	lea _view_max,%a3	|, ivtmp.711
	move.l #_view_min+80,%d4	|, _1686
	clr.w %d3	| ivtmp.709
	move.l 78(%sp),%a1	| %sfp, _199
.L228:
| voxel.c:815: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_1688], _6
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.709, tmp623
	asr.w #4,%d5	|, tmp623
	ext.l %d5	| tmp624
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp624, tmp625
	add.l %d5,%d5	| tmp625, _295
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp628
	lsr.l #3,%d2	|, tmp628
	moveq #1,%d7	|,
	and.l %d7,%d2	|, _300
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _295, tmp629
	add.l %d5,%a0	| _295, tmp629
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _300, tmp630
	lea (%a1,%a0.l),%a0	| _199, tmp630, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L224		|
	mulu.w #160,%d1	|, tmp631
	add.l %a0,%d1	| pBlock, _246
.L225:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:565: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %d1,%a0	| _246, pBlock
	jne .L225		|
.L224:
| voxel.c:816: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_1685], _10
| voxel.c:816: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:816: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp633
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp633,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp634
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _295, tmp636
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp636, tmp637
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp637, tmp638
	lea (%a1,%d2.l),%a0	| _199, tmp638, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L226		|
	mulu.w #160,%d1	|, tmp639
	add.l %a0,%d1	| pBlock, _1348
.L227:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:565: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1348
	jne .L227		|
.L226:
| voxel.c:814: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.709
	cmp.l %d4,%a2	| _1686, ivtmp.708
	jne .L228		|
| voxel.c:819: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:820: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:821: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:824: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 166(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d6,-(%sp)	| cockpit$pixels,
	move.l 102(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:828: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,164(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
| voxel.c:833: 	int frames = 0;
	clr.l 122(%sp)	| %sfp
| voxel.c:831: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,114(%sp)	|, %sfp
| voxel.c:829: 	unsigned long t_render = 0;
	clr.l 118(%sp)	| %sfp
| voxel.c:826: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d6	|, fog_enabled
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a4	|, tmp1040
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp648
#APP
| 752 "voxel.c" 1
	movw	%d3,%sp@-	| tmp648
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1050
	jeq .L326		|
.L402:
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 752 "voxel.c" 1
	movw	%d3,%sp@-	| tmp648
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp651
	ext.l %d0	| tmp651
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,148(%sp)	| tmp651, %sfp
| voxel.c:837: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L398		|
| voxel.c:842: 		frames++;
	move.l 122(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,140(%sp)	|, %sfp
| voxel.c:162: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.71_317
	move.w (%a0),%d0	| *hw_palette.71_317, _318
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _322
| voxel.c:847: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp656
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	moveq #0,%d1	| tmp658
	move.w %d0,%d1	| tmp656, tmp658
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d0	| pos.x, pos.x
	lsr.w #7,%d0	|, tmp660
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	moveq #0,%d4	| tmp662
	move.w %d0,%d4	| tmp660, tmp662
	move.l %d1,%d0	| tmp658, tmp663
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp663
	add.l %d4,%d0	| tmp662, tmp664
	add.l %d0,%d0	| tmp664, tmp665
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.3316.height, combined[_21][_24].D.3316.height
	lsr.b #1,%d0	|, tmp668
| voxel.c:847: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp670
	lsl.w #7,%d0	|, tmp671
	move.w %d3,%d7	| _28,
	sub.w %d0,%d7	| tmp671,
	move.w %d7,116(%sp)	|, %sfp
| voxel.c:848: 		if (desired_height >= 0) {
	tst.w 114(%sp)	| %sfp
	jlt .L399		|
.L231:
| voxel.c:849: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 114(%sp),%a0	| %sfp, desired_height
| voxel.c:849: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 114(%sp),%d0	| %sfp, tmp682
	moveq #9,%d1	|,
	asr.w %d1,%d0	|, tmp682
| voxel.c:849: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp682,
	move.l %a1,-(%sp)	|,
	sub.w 120(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:851: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L233		|
	move.w #-256,%d0	|, altitude_delta
.L234:
| voxel.c:852: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:853: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jgt .L235		|
.L414:
| voxel.c:852: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _38, pos.z
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _1657
| voxel.c:883: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d3	| _1657
	move.w %d0,%d3	| _1657, _1657
	move.l #256,%d1	|, tmp691
	sub.l %d3,%d1	| _1657, tmp691
	add.l %d1,%d1	| tmp691, _1665
| voxel.c:527: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp693
	sub.w %d0,%a0	| _1657, tmp693
| voxel.c:529: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp693, tmp694
	add.l %a0,%a0	| tmp694, tmp694
	move.l %a0,126(%sp)	| tmp694, %sfp
.L232:
| voxel.c:856: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.54_40
	move.w -602(%a0),134(%sp)	| MEM[(short int *)__aline.54_40 + 4294966694B], %sfp
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _322
	move.l %d2,102(%sp)	| _322, %sfp
| voxel.c:859: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,144(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.54_40 + 4294966696B],
	move.l %a0,130(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp698
	add.l %a0,%d0	|, tmp698
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp698
	move.l %d0,82(%sp)	| tmp698, %sfp
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 134(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp700
	add.l #-160,%d0	|, tmp700
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,98(%sp)	| pos.diry, %sfp
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:883: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _1665
	move.l %d1,110(%sp)	| _1665, %sfp
	move.b %d6,%d2	| fog_enabled,
	eor.b #1,%d2	|,
	move.b %d2,149(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jne .L236		|
.L403:
	move.l #_fog_table+48,106(%sp)	|, %sfp
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d3	| _46,
	lsl.l #3,%d3	|,
	move.l %d3,90(%sp)	|, %sfp
	move.l %d0,%d1	| _46, tmp708
	add.l %d0,%d1	| _46, tmp708
	add.l %d1,%d1	| tmp708, tmp709
	add.l %d0,%d1	| _46, tmp710
	lsl.l #3,%d1	|, tmp711
	sub.l %d0,%d1	| _46, tmp712
	add.l %d1,%d1	| tmp712, tmp713
	add.l %d1,%d1	| tmp713, tmp714
	add.l %d1,%d0	| tmp714, tmp715
	neg.l %d0	| tmp715
	move.l %d0,58(%sp)	| tmp715, %sfp
	lea _horizon+6,%a6	|, ivtmp.681
	move.w 100(%sp),%d1	| %sfp,
	ext.l %d1	| _56
	move.l %d1,%d4	| _56,
	lsl.l #3,%d4	|,
	move.l %d4,94(%sp)	|, %sfp
	move.l %d1,%d0	| _56, tmp719
	add.l %d1,%d0	| _56, tmp719
	add.l %d0,%d0	| tmp719, tmp720
	add.l %d1,%d0	| _56, tmp721
	lsl.l #3,%d0	|, tmp722
	sub.l %d1,%d0	| _56, tmp723
	add.l %d0,%d0	| tmp723, tmp724
	add.l %d0,%d0	| tmp724, tmp725
	add.l %d1,%d0	| _56, tmp726
	neg.l %d0	| tmp726
	move.l %d0,62(%sp)	| tmp726, %sfp
	move.w 98(%sp),%d1	| %sfp,
	ext.l %d1	| _51
	move.l %d1,%d5	| _51,
	lsl.l #3,%d5	|,
	move.l %d5,86(%sp)	|, %sfp
	move.l %d1,%d0	| _51, tmp730
	add.l %d1,%d0	| _51, tmp730
	add.l %d0,%d0	| tmp730, tmp731
	add.l %d1,%d0	| _51, tmp732
	lsl.l #3,%d0	|, tmp733
	sub.l %d1,%d0	| _51, tmp734
	add.l %d0,%d0	| tmp734, tmp735
	add.l %d0,%d0	| tmp735, tmp736
	add.l %d1,%d0	| _51, tmp737
	neg.l %d0	| tmp737
	move.l %d0,66(%sp)	| tmp737, %sfp
| voxel.c:864: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.w #3,48(%sp)	|, %sfp
	move.l %a6,50(%sp)	| ivtmp.681, %sfp
.L302:
| voxel.c:887: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 48(%sp),%d4	| %sfp, tmp738
	lsr.w #3,%d4	|, tmp738
	and.l #65535,%d4	|, _74
| voxel.c:887: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _74, tmp740
	lea _view_max,%a0	|,
	move.w (%a0,%d4.l),%d2	| view_max[_74], _1905
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp, tmp741
	asr.w #4,%d0	|, tmp741
	ext.l %d0	| tmp742
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp742, tmp743
	add.l %d0,%d0	| tmp743, tmp743
	move.l %d0,70(%sp)	| tmp743, %sfp
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp746
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp746,
	move.l %d1,74(%sp)	|, %sfp
| voxel.c:886: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d3	| _1905, _1902
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 82(%sp),%d0	| %sfp, tmp1053
	move.l %d0,54(%sp)	| tmp1053, %sfp
| voxel.c:886: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d0	| _1905, y
	sub.w 56(%sp),%d0	| %sfp, y
| voxel.c:891: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d5	| view_min[_74], y_min
	sub.w 56(%sp),%d5	| %sfp, y_min
| voxel.c:465: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L299		|
| voxel.c:874: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.l 66(%sp),%d1	| %sfp, tmp755
	asr.l #8,%d1	|, tmp755
| voxel.c:874: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 100(%sp),%d3	| %sfp, tmp756
	sub.w %d1,%d3	| tmp755, tmp756
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp758
	clr.w %d3	| tmp758
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.l 62(%sp),%d1	| %sfp, tmp759
	asr.l #8,%d1	|, tmp759
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 98(%sp),%d1	| %sfp, tmp760
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp760, tmp762
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp762
	move.l %d3,%a2	| tmp762, _328
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l 102(%sp),%d1	| %sfp, tmp763
	add.l %d3,%d1	| _328, tmp763
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp764
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _328, tmp765
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp766
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _328, tmp767
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp768
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _328, tmp769
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp770
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 70(%sp),%d2	| %sfp, tmp772
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp772, tmp773
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp773, tmp774
	add.l 74(%sp),%a0	| %sfp, tmp774
	add.l 78(%sp),%a0	| %sfp, pBlock
| voxel.c:461: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 110(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d3	|, z
.L243:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_909, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.534
	move.b %d4,%d2	| sample, SR.534
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_913, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L239		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L327		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp780
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_919, _920
.L241:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _920, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L241		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _328, tmp782
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L243		|
.L410:
.L244:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _328, tmp783
	add.l %a2,%d3	| _328, tmp783
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _336
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
| voxel.c:465: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _336, _336
	move.w %d2,%d3	| z, z
.L245:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_833, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.532
	move.b %d4,%d2	| sample, SR.532
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_837, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d0,%d2	| y, sample_y
	jgt .L246		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L329		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp789
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_843, _844
.L248:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _844, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L248		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp791
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L245		|
.L408:
| voxel.c:465: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _336, _336
.L250:
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _336, _336
	move.w %d2,%d3	| z, z
.L256:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_757, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.530
	move.b %d4,%d2	| sample, SR.530
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_761, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L252		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L330		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp797
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_767, _768
.L254:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _768, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L254		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp799
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L256		|
.L409:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _336, _336
.L257:
	add.l %a2,%d3	| _336, tmp800
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _334
| voxel.c:465: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _334, _334
	move.w %d2,%d3	| z, z
.L263:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_681, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.528
	move.b %d4,%d2	| sample, SR.528
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_685, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L259		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L331		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp806
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_691, _692
.L261:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _692, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L261		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _334, tmp808
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L263		|
.L407:
| voxel.c:465: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _334, _334
.L264:
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
	move.l 106(%sp),%a2	| %sfp, fog_table_shifted
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _334, _334
	move.w %d2,%d3	| z, z
.L274:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_605, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.526
	move.b %d2,%d4	| sample, SR.526
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_609, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L266		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L332		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L267:
| voxel.c:426: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,44(%sp)	| sample, %sfp
| voxel.c:482: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L268		|
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2012
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_615, _616
.L269:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _616, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L269		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L273:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp825
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L274		|
.L406:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l %a6,%d3	| _334, _334
.L275:
	add.l %a6,%d3	| _334, tmp826
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _332
| voxel.c:465: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
| voxel.c:468: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L277		|
| voxel.c:468: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L277:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _332, _332
	move.w %d2,%d3	| z, z
.L286:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_528, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.524
	move.b %d2,%d4	| sample, SR.524
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_532, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L278		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L333		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L279:
| voxel.c:426: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,44(%sp)	| sample, %sfp
| voxel.c:482: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L280		|
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2010
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_538, _539
.L281:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _539, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L281		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L285:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _332, tmp843
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L286		|
.L405:
| voxel.c:465: 	if (y < y_min) goto finish;
	move.l %a6,%d3	| _332, _332
.L287:
	cmp.w %d5,%d0	| y_min, y
	jlt .L288		|
| voxel.c:468: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L289		|
| voxel.c:468: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L289:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _332, _332
	move.w %d2,%d3	| z, z
.L298:
| voxel.c:400: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_451, sample
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.522
	move.b %d2,%d4	| sample, SR.522
| voxel.c:473: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_455, sample_y
| voxel.c:474: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L290		|
| voxel.c:476: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L334		|
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L291:
| voxel.c:426: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,44(%sp)	| sample, %sfp
| voxel.c:482: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L292		|
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2008
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d2.l),%d2	| *_461, _462
.L293:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _462, pBlock
| 0 "" 2
| voxel.c:488: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:489: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:490: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L293		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L297:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _332, tmp860
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L298		|
.L288:
| voxel.c:910: 			state.y += y_offset;
	move.w %d0,%d3	| y, _1902
	add.w 56(%sp),%d3	| %sfp, _1902
	move.w %d3,%d2	| _1902, _1905
.L299:
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 50(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_1080], _407
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d3	| _407, _408
| voxel.c:571: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp861
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp862
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 70(%sp),%d0	| %sfp, tmp864
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp864, tmp865
| voxel.c:387: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 74(%sp),%d0	| %sfp, tmp866
	move.l 78(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp866, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _408
	jle .L300		|
	mulu.w #160,%d3	|, tmp867
	add.l %a0,%d3	| pBlock, _1787
.L301:
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 392 "voxel.c" 1
	movep.l %d7, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:565: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:563: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d3	| pBlock, _1787
	jne .L301		|
.L300:
| voxel.c:572: 	horizon[x] = y;
	move.l 50(%sp),%a1	| %sfp,
	move.w %d2,(%a1)	| _1905, MEM[(short int *)_1080]
| voxel.c:864: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	addq.w #8,48(%sp)	|, %sfp
| voxel.c:864: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.l 90(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #16,%d2	|,
	add.l %d2,50(%sp)	|, %sfp
	move.l 94(%sp),%d3	| %sfp,
	add.l %d3,62(%sp)	|, %sfp
	move.l 86(%sp),%d4	| %sfp,
	add.l %d4,66(%sp)	|, %sfp
	cmp.w #323,48(%sp)	|, %sfp
	jne .L302		|
| voxel.c:914: 		unsigned long t_render_1 = *_hz_200;
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:915: 		t_render += t_render_1 - t_render_0;
	sub.l 144(%sp),%d0	| %sfp, tmp870
| voxel.c:915: 		t_render += t_render_1 - t_render_0;
	add.l %d0,118(%sp)	| tmp870, %sfp
| voxel.c:529: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 126(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:534: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:532: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:535: 	unsigned short z = 0;
	clr.w %d1	| z
	move.l 102(%sp),%d4	| %sfp, sample_uv
.L305:
	move.l %d4,%d0	| sample_uv, uv
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d4	| delta_uv, tmp871
	add.l %d0,%d4	| uv, tmp871
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, sample_uv
	move.w %d1,%d7	| z, z
| voxel.c:544: 		z++;
	addq.w #1,%d1	|, z
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:545: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:537: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d7	|, z
	jls .L303		|
| voxel.c:400: 	asm (
#APP
| 400 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:413: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:414: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d0.l),%d0	| *_979, sample
| voxel.c:539: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.535
| voxel.c:540: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_983, *_983
	cmp.w %d5,%d0	| min_y, *_983
	jge .L304		|
	move.w %d0,%d5	| *_983, min_y
.L304:
| voxel.c:548: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp877
	and.w #15,%d0	|, tmp877
	jne .L303		|
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp878
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:422: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp879
| voxel.c:422: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L303:
| voxel.c:536: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L305		|
| voxel.c:921: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L335		|
	move.w #128,%a0	|, _1925
| voxel.c:923: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L306		|
| voxel.c:926: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp880
	add.w %d5,%d5	| tmp880, tmp881
	add.w %d5,%d5	| tmp881, sunlight
| voxel.c:929: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _1925
.L306:
	move.l %a0,-(%sp)	| _1925,
	move.l 126(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp887
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp888
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp888, pos.x
| voxel.c:932: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp891
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp892
| voxel.c:932: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp892, _110
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp894
	sub.l 138(%sp),%d0	| %sfp, tmp894
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp895
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp896
	asr.w #3,%d3	|, tmp896
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp897
	asr.w #4,%d4	|, tmp897
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp897, tmp898
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:936: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jle .L307		|
.L415:
| voxel.c:936: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _123, _126
.L308:
| voxel.c:932: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _110, pos.y
| voxel.c:936: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _126, pos.speed
| voxel.c:938: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 134(%sp),%d3	| %sfp, rot
| voxel.c:939: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _105, tmp901
| voxel.c:939: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp902
| voxel.c:939: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _99, _138
| voxel.c:940: 		pos.diry -= (rot * pos.dirx) >> 11;
	move.w %d3,%d2	| rot,
	muls.w %d0,%d2	| _138, tmp903
| voxel.c:940: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d2	|, tmp904
| voxel.c:940: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d2,%d1	| tmp904, _145
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _138,
	muls.w %d0,%d2	| _138, tmp905
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp905
	move.l %d2,%a0	| tmp905, tmp906
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _145,
	muls.w %d1,%d2	| _145, tmp907
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp908
| voxel.c:943: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d2,%a0	| tmp908, tmp909
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp909, tmp910
	moveq #-128,%d3	|, tmp911
	add.l %a0,%d3	| tmp910, tmp911
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp912
| voxel.c:220: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _374
	sub.w %d3,%d2	| tmp912, _374
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _374, tmp915
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp916
| voxel.c:944: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp914
	clr.w %d0	| tmp914
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d1	| _374, tmp921
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp922
| voxel.c:944: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| tmp922, tmp914
	move.l %d0,_pos+6	| tmp914, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:947: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		if (pressed_keys.up) {
	jpl .L309		|
| voxel.c:948: 			if (desired_height < FIXP(0, 0)) {
	tst.w 114(%sp)	| %sfp
	jlt .L337		|
| voxel.c:951: 			desired_height += FIXP(1, 0);
	move.w 114(%sp),%d0	| %sfp, _1927
.L310:
	add.w #128,%d0	|, _1927
	move.w %d0,114(%sp)	| _1927, %sfp
| voxel.c:952: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L309		|
	move.w #32512,114(%sp)	|, %sfp
.L309:
| voxel.c:956: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:956: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L312		|
| voxel.c:957: 			if (desired_height < FIXP(0, 0)) {
	tst.w 114(%sp)	| %sfp
	jlt .L313		|
| voxel.c:960: 			desired_height -= FIXP(1, 0);
	move.w 114(%sp),116(%sp)	| %sfp, %sfp
.L313:
| voxel.c:965: 		if (key == 0x23) {
	cmp.b #35,148(%sp)	|, %sfp
	jeq .L338		|
| voxel.c:960: 			desired_height -= FIXP(1, 0);
	move.w 116(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,114(%sp)	|, %sfp
| voxel.c:961: 			if (desired_height < FIXP(0, 0)) {
	jmi .L400		|
.L316:
| voxel.c:972: 		} else if (key == 0x20) {
	cmp.b #32,148(%sp)	|, %sfp
	jeq .L401		|
.L314:
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp934
	and.w #8192,%d0	|, _723
| voxel.c:249: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B], tmp935
	and.l #-536879105,%d3	|, tmp935
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _723
	move.w %d0,%d1	| _723, _723
| voxel.c:249: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200], tmp940
	and.l #-536879105,%d4	|, tmp940
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _723
	swap %d2	| _723
	clr.w %d2	| _723
	move.w %d0,%d2	| _723, _723
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _723, tmp940
	move.l %d4,(%a0)	| tmp940, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200]
	or.l %d1,%d3	| _723, tmp935
	move.l %d3,4(%a0)	| tmp935, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B]
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp948
	and.b #1,%d0	|, _157
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp951
	ext.w %d0	| tmp950
	neg.w %d0	| tmp952
	lsl.w %d1,%d0	|, _799
| voxel.c:249: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B], tmp953
	and.l #-536879105,%d3	|, tmp953
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _799
	move.w %d0,%d1	| _799, _799
| voxel.c:249: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B], tmp958
	and.l #-536879105,%d4	|, tmp958
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _799
	swap %d2	| _799
	clr.w %d2	| _799
	move.w %d0,%d2	| _799, _799
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _799, tmp958
	move.l %d4,640(%a0)	| tmp958, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B]
	or.l %d1,%d3	| _799, tmp953
	move.l %d3,644(%a0)	| tmp953, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B]
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp966
	and.b #1,%d0	|, _158
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp969
	ext.w %d0	| tmp968
	move.w %d0,%d1	| tmp968, _1920
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1920
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp972
	and.b #1,%d0	|, _159
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp975
	ext.w %d0	| tmp974
	neg.w %d0	| tmp976
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _47
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_200 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:249: 	data &= mask;
	or.w %d1,%d3	| _1920, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_200 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:253: 	data &= mask;
	or.w %d1,%d2	| _1920, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_200 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:261: 	data &= mask;
	or.w %d1,%d4	| _1920, data
| voxel.c:983: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 114(%sp),%d1	| %sfp, tmp981
	not.w %d1	| tmp981
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp980
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1741
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _47, data
| voxel.c:249: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1741, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_200 + 320B]
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _47, data
| voxel.c:253: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1741, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_200 + 322B]
| voxel.c:258: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_200 + 324B]
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:261: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1741, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_200 + 326B]
| voxel.c:842: 		frames++;
	move.l 140(%sp),122(%sp)	| %sfp, %sfp
.L404:
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp648
#APP
| 752 "voxel.c" 1
	movw	%d3,%sp@-	| tmp648
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1050
	jne .L402		|
.L326:
	clr.b 148(%sp)	| %sfp
| voxel.c:842: 		frames++;
	move.l 122(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,140(%sp)	|, %sfp
| voxel.c:162: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.71_317
	move.w (%a0),%d0	| *hw_palette.71_317, _318
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _322
| voxel.c:847: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp656
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	moveq #0,%d1	| tmp658
	move.w %d0,%d1	| tmp656, tmp658
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d0	| pos.x, pos.x
	lsr.w #7,%d0	|, tmp660
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	moveq #0,%d4	| tmp662
	move.w %d0,%d4	| tmp660, tmp662
	move.l %d1,%d0	| tmp658, tmp663
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp663
	add.l %d4,%d0	| tmp662, tmp664
	add.l %d0,%d0	| tmp664, tmp665
| voxel.c:846: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.3316.height, combined[_21][_24].D.3316.height
	lsr.b #1,%d0	|, tmp668
| voxel.c:847: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp670
	lsl.w #7,%d0	|, tmp671
	move.w %d3,%d7	| _28,
	sub.w %d0,%d7	| tmp671,
	move.w %d7,116(%sp)	|, %sfp
| voxel.c:848: 		if (desired_height >= 0) {
	tst.w 114(%sp)	| %sfp
	jge .L231		|
.L399:
| voxel.c:204: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _1656
| voxel.c:883: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d0	| _1656
	move.w %d3,%d0	| _1656, _1656
	move.l #256,%d1	|, tmp673
	sub.l %d0,%d1	| _1656, tmp673
	add.l %d1,%d1	| tmp673, _1665
| voxel.c:527: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp675
	sub.w %d3,%a0	| _1656, tmp675
| voxel.c:529: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp675, tmp676
	add.l %a0,%a0	| tmp676, tmp676
	move.l %a0,126(%sp)	| tmp676, %sfp
| voxel.c:856: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.54_40
	move.w -602(%a0),134(%sp)	| MEM[(short int *)__aline.54_40 + 4294966694B], %sfp
| voxel.c:224: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _322
	move.l %d2,102(%sp)	| _322, %sfp
| voxel.c:859: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,144(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.54_40 + 4294966696B],
	move.l %a0,130(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp698
	add.l %a0,%d0	|, tmp698
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp698
	move.l %d0,82(%sp)	| tmp698, %sfp
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 134(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp700
	add.l #-160,%d0	|, tmp700
| voxel.c:868: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,98(%sp)	| pos.diry, %sfp
| voxel.c:875: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,100(%sp)	| pos.dirx, %sfp
| voxel.c:883: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _1665
	move.l %d1,110(%sp)	| _1665, %sfp
	move.b %d6,%d2	| fog_enabled,
	eor.b #1,%d2	|,
	move.b %d2,149(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jeq .L403		|
.L236:
	move.l #_fog_table+40,106(%sp)	|, %sfp
| voxel.c:562: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d3	| _46,
	lsl.l #3,%d3	|,
	move.l %d3,90(%sp)	|, %sfp
	move.l %d0,%d1	| _46, tmp708
	add.l %d0,%d1	| _46, tmp708
	add.l %d1,%d1	| tmp708, tmp709
	add.l %d0,%d1	| _46, tmp710
	lsl.l #3,%d1	|, tmp711
	sub.l %d0,%d1	| _46, tmp712
	add.l %d1,%d1	| tmp712, tmp713
	add.l %d1,%d1	| tmp713, tmp714
	add.l %d1,%d0	| tmp714, tmp715
	neg.l %d0	| tmp715
	move.l %d0,58(%sp)	| tmp715, %sfp
	lea _horizon+6,%a6	|, ivtmp.681
	move.w 100(%sp),%d1	| %sfp,
	ext.l %d1	| _56
	move.l %d1,%d4	| _56,
	lsl.l #3,%d4	|,
	move.l %d4,94(%sp)	|, %sfp
	move.l %d1,%d0	| _56, tmp719
	add.l %d1,%d0	| _56, tmp719
	add.l %d0,%d0	| tmp719, tmp720
	add.l %d1,%d0	| _56, tmp721
	lsl.l #3,%d0	|, tmp722
	sub.l %d1,%d0	| _56, tmp723
	add.l %d0,%d0	| tmp723, tmp724
	add.l %d0,%d0	| tmp724, tmp725
	add.l %d1,%d0	| _56, tmp726
	neg.l %d0	| tmp726
	move.l %d0,62(%sp)	| tmp726, %sfp
	move.w 98(%sp),%d1	| %sfp,
	ext.l %d1	| _51
	move.l %d1,%d5	| _51,
	lsl.l #3,%d5	|,
	move.l %d5,86(%sp)	|, %sfp
	move.l %d1,%d0	| _51, tmp730
	add.l %d1,%d0	| _51, tmp730
	add.l %d0,%d0	| tmp730, tmp731
	add.l %d1,%d0	| _51, tmp732
	lsl.l #3,%d0	|, tmp733
	sub.l %d1,%d0	| _51, tmp734
	add.l %d0,%d0	| tmp734, tmp735
	add.l %d0,%d0	| tmp735, tmp736
	add.l %d1,%d0	| _51, tmp737
	neg.l %d0	| tmp737
	move.l %d0,66(%sp)	| tmp737, %sfp
| voxel.c:864: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.w #3,48(%sp)	|, %sfp
	move.l %a6,50(%sp)	| ivtmp.681, %sfp
	jra .L302		|
.L398:
| voxel.c:989: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:990: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 136(%sp),%a0	| %sfp, tmp987
| voxel.c:990: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp987, tmp989
	add.l %a0,%d0	| tmp987, tmp989
	add.l %d0,%d0	| tmp989, tmp990
| voxel.c:991: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp995
	move.l 122(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp995
| voxel.c:992: 	printf("Total time per frame: %dms\r\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1054,
	pea .LC15		|
	lea _printf,%a2	|, tmp997
	jsr (%a2)		| tmp997
| voxel.c:993: 	printf("Time spent rendering terrain: %dms\r\n", t_render * 5 / frames);
	move.l 126(%sp),%d0	| %sfp, tmp999
	add.l %d0,%d0	|, tmp999
	add.l %d0,%d0	| tmp999, tmp1000
| voxel.c:993: 	printf("Time spent rendering terrain: %dms\r\n", t_render * 5 / frames);
	move.l 130(%sp),-(%sp)	| %sfp,
	move.l 130(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp995
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1055,
	pea .LC16		|
	jsr (%a2)		| tmp997
| voxel.c:994: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:995: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (16,%sp),%sp	|,
.L222:
| voxel.c:998: 	printf("Press any key to exit to TOS.\r\n");
	pea .LC17		|
	jsr _puts		|
| voxel.c:999: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:1000: 	install_palette(saved_palette);
	pea 168(%sp)		|
	jsr _install_palette		|
| voxel.c:1002: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (152,%sp),%sp	|,
	rts	
.L401:
	move.b 149(%sp),%d6	| %sfp, fog_enabled
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp934
	and.w #8192,%d0	|, _723
| voxel.c:249: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B], tmp935
	and.l #-536879105,%d3	|, tmp935
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _723
	move.w %d0,%d1	| _723, _723
| voxel.c:249: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200], tmp940
	and.l #-536879105,%d4	|, tmp940
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _723
	swap %d2	| _723
	clr.w %d2	| _723
	move.w %d0,%d2	| _723, _723
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _723, tmp940
	move.l %d4,(%a0)	| tmp940, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200]
	or.l %d1,%d3	| _723, tmp935
	move.l %d3,4(%a0)	| tmp935, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B]
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp948
	and.b #1,%d0	|, _157
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp951
	ext.w %d0	| tmp950
	neg.w %d0	| tmp952
	lsl.w %d1,%d0	|, _799
| voxel.c:249: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B], tmp953
	and.l #-536879105,%d3	|, tmp953
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _799
	move.w %d0,%d1	| _799, _799
| voxel.c:249: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B], tmp958
	and.l #-536879105,%d4	|, tmp958
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _799
	swap %d2	| _799
	clr.w %d2	| _799
	move.w %d0,%d2	| _799, _799
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _799, tmp958
	move.l %d4,640(%a0)	| tmp958, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B]
	or.l %d1,%d3	| _799, tmp953
	move.l %d3,644(%a0)	| tmp953, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B]
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp966
	and.b #1,%d0	|, _158
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp969
	ext.w %d0	| tmp968
	move.w %d0,%d1	| tmp968, _1920
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1920
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp972
	and.b #1,%d0	|, _159
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp975
	ext.w %d0	| tmp974
	neg.w %d0	| tmp976
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _47
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_200 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:249: 	data &= mask;
	or.w %d1,%d3	| _1920, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_200 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:253: 	data &= mask;
	or.w %d1,%d2	| _1920, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_200 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:261: 	data &= mask;
	or.w %d1,%d4	| _1920, data
| voxel.c:983: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 114(%sp),%d1	| %sfp, tmp981
	not.w %d1	| tmp981
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp980
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1741
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _47, data
| voxel.c:249: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1741, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_200 + 320B]
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _47, data
| voxel.c:253: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1741, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_200 + 322B]
| voxel.c:258: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_200 + 324B]
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:261: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1741, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_200 + 326B]
| voxel.c:842: 		frames++;
	move.l 140(%sp),122(%sp)	| %sfp, %sfp
	jra .L404		|
.L400:
| voxel.c:961: 			if (desired_height < FIXP(0, 0)) {
	clr.w 114(%sp)	| %sfp
| voxel.c:972: 		} else if (key == 0x20) {
	cmp.b #32,148(%sp)	|, %sfp
	jne .L314		|
	jra .L401		|
.L290:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L297		|
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L412:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _332, tmp860
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L298		|
	jra .L288		|
.L278:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L285		|
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L411:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _332, tmp843
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L286		|
	jra .L405		|
.L266:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L273		|
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L413:
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _334, tmp825
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L274		|
	jra .L406		|
.L259:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _334, tmp808
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L263		|
	jra .L407		|
.L246:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp791
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L245		|
	jra .L408		|
.L252:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _336, tmp799
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L256		|
	jra .L409		|
.L239:
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _328, tmp782
| voxel.c:228: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:471: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L243		|
	jra .L410		|
.L327:
| voxel.c:478: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp780
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_919, _920
	jra .L241		|
.L280:
| voxel.c:431: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1154,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 44(%sp),%a3	| %sfp, offset
| voxel.c:432: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _553
	move.w %a3,%d2	| offset, _553
	move.l %d2,%a3	| _553, tmp1016
	add.l #_pdata_table,%a3	|, tmp1016
.L283:
| voxel.c:496: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp836
	and.l %d0,%d2	| y, tmp836
	add.l %d2,%d2	| tmp836, tmp837
	add.l %d2,%d2	| tmp837, tmp838
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_559, *_559
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_559, pBlock
| 0 "" 2
| voxel.c:498: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:499: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:500: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L283		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L411		|
.L330:
| voxel.c:478: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp797
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_767, _768
	jra .L254		|
.L329:
| voxel.c:478: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp789
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_843, _844
	jra .L248		|
.L292:
| voxel.c:431: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1132,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 44(%sp),%a3	| %sfp, offset
| voxel.c:432: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _476
	move.w %a3,%d2	| offset, _476
	move.l %d2,%a3	| _476, tmp1026
	add.l #_pdata_table,%a3	|, tmp1026
.L295:
| voxel.c:496: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp853
	and.l %d0,%d2	| y, tmp853
	add.l %d2,%d2	| tmp853, tmp854
	add.l %d2,%d2	| tmp854, tmp855
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_482, *_482
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_482, pBlock
| 0 "" 2
| voxel.c:498: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:499: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:500: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L295		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L412		|
.L334:
| voxel.c:478: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L291		|
.L333:
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L279		|
.L331:
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp806
| voxel.c:427: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a5,%d4.l),%d4	| *_691, _692
	jra .L261		|
.L268:
| voxel.c:431: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1232,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 44(%sp),%a3	| %sfp, offset
| voxel.c:432: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _630
	move.w %a3,%d2	| offset, _630
	move.l %d2,%a3	| _630, tmp1019
	add.l #_pdata_table,%a3	|, tmp1019
.L271:
| voxel.c:496: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp818
	and.l %d0,%d2	| y, tmp818
	add.l %d2,%d2	| tmp818, tmp819
	add.l %d2,%d2	| tmp819, tmp820
| voxel.c:392: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_636, *_636
#APP
| 392 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_636, pBlock
| 0 "" 2
| voxel.c:498: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:499: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:500: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L271		|
| voxel.c:505: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:506: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L413		|
.L332:
| voxel.c:478: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L267		|
.L233:
| voxel.c:852: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L234		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _28, _38
| voxel.c:853: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jle .L414		|
.L235:
| voxel.c:853: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,126(%sp)	|, %sfp
	jra .L232		|
.L335:
	sub.l %a0,%a0	| _1925
| voxel.c:929: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1925,
	move.l 126(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _98
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _99
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _99,
	muls.w %d3,%d0	| _98, tmp887
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp888
| voxel.c:931: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp888, pos.x
| voxel.c:932: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _105
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _105,
	muls.w %d3,%d0	| _98, tmp891
| voxel.c:212: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp892
| voxel.c:932: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _110
	add.w %d0,%a0	| tmp892, _110
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp894
	sub.l 138(%sp),%d0	| %sfp, tmp894
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp895
| voxel.c:934: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _98, _116
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _116, tmp896
	asr.w #3,%d3	|, tmp896
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _116, tmp897
	asr.w #4,%d4	|, tmp897
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp897, tmp898
| voxel.c:935: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:936: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d0	| _116
	jgt .L415		|
.L307:
| voxel.c:937: 		else pos.speed += drag;
	add.w %d3,%d0	| _123, _126
	jra .L308		|
.L312:
| voxel.c:965: 		if (key == 0x23) {
	cmp.b #35,148(%sp)	|, %sfp
	jne .L316		|
| voxel.c:967: 			if (desired_height < 0) {
	tst.w 114(%sp)	| %sfp
	jge .L338		|
| voxel.c:968: 				desired_height = player_height;
	move.w 116(%sp),114(%sp)	| %sfp, %sfp
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp934
	and.w #8192,%d0	|, _723
| voxel.c:249: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B], tmp935
	and.l #-536879105,%d3	|, tmp935
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _723
	move.w %d0,%d1	| _723, _723
| voxel.c:249: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200], tmp940
	and.l #-536879105,%d4	|, tmp940
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _723
	swap %d2	| _723
	clr.w %d2	| _723
	move.w %d0,%d2	| _723, _723
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _723, tmp940
	move.l %d4,(%a0)	| tmp940, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200]
	or.l %d1,%d3	| _723, tmp935
	move.l %d3,4(%a0)	| tmp935, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B]
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp948
	and.b #1,%d0	|, _157
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp951
	ext.w %d0	| tmp950
	neg.w %d0	| tmp952
	lsl.w %d1,%d0	|, _799
| voxel.c:249: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B], tmp953
	and.l #-536879105,%d3	|, tmp953
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _799
	move.w %d0,%d1	| _799, _799
| voxel.c:249: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B], tmp958
	and.l #-536879105,%d4	|, tmp958
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _799
	swap %d2	| _799
	clr.w %d2	| _799
	move.w %d0,%d2	| _799, _799
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _799, tmp958
	move.l %d4,640(%a0)	| tmp958, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B]
	or.l %d1,%d3	| _799, tmp953
	move.l %d3,644(%a0)	| tmp953, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B]
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp966
	and.b #1,%d0	|, _158
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp969
	ext.w %d0	| tmp968
	move.w %d0,%d1	| tmp968, _1920
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1920
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp972
	and.b #1,%d0	|, _159
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp975
	ext.w %d0	| tmp974
	neg.w %d0	| tmp976
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _47
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_200 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:249: 	data &= mask;
	or.w %d1,%d3	| _1920, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_200 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:253: 	data &= mask;
	or.w %d1,%d2	| _1920, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_200 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:261: 	data &= mask;
	or.w %d1,%d4	| _1920, data
| voxel.c:983: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 114(%sp),%d1	| %sfp, tmp981
	not.w %d1	| tmp981
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp980
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1741
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _47, data
| voxel.c:249: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1741, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_200 + 320B]
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _47, data
| voxel.c:253: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1741, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_200 + 322B]
| voxel.c:258: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_200 + 324B]
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:261: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1741, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_200 + 326B]
| voxel.c:842: 		frames++;
	move.l 140(%sp),122(%sp)	| %sfp, %sfp
	jra .L404		|
.L337:
	move.w 116(%sp),%d0	| %sfp, _1927
	jra .L310		|
.L338:
| voxel.c:970: 				desired_height = -1;
	move.w #-1,114(%sp)	|, %sfp
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:979: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp934
	and.w #8192,%d0	|, _723
| voxel.c:249: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B], tmp935
	and.l #-536879105,%d3	|, tmp935
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _723
	move.w %d0,%d1	| _723, _723
| voxel.c:249: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200], tmp940
	and.l #-536879105,%d4	|, tmp940
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _723
	swap %d2	| _723
	clr.w %d2	| _723
	move.w %d0,%d2	| _723, _723
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _723, tmp940
	move.l %d4,(%a0)	| tmp940, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200]
	or.l %d1,%d3	| _723, tmp935
	move.l %d3,4(%a0)	| tmp935, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 4B]
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp948
	and.b #1,%d0	|, _157
| voxel.c:980: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp951
	ext.w %d0	| tmp950
	neg.w %d0	| tmp952
	lsl.w %d1,%d0	|, _799
| voxel.c:249: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B], tmp953
	and.l #-536879105,%d3	|, tmp953
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _799
	move.w %d0,%d1	| _799, _799
| voxel.c:249: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B], tmp958
	and.l #-536879105,%d4	|, tmp958
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _799
	swap %d2	| _799
	clr.w %d2	| _799
	move.w %d0,%d2	| _799, _799
| voxel.c:251: 	*out++ = data;
	or.l %d2,%d4	| _799, tmp958
	move.l %d4,640(%a0)	| tmp958, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 640B]
	or.l %d1,%d3	| _799, tmp953
	move.l %d3,644(%a0)	| tmp953, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_200 + 644B]
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp966
	and.b #1,%d0	|, _158
| voxel.c:981: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp969
	ext.w %d0	| tmp968
	move.w %d0,%d1	| tmp968, _1920
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1920
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp972
	and.b #1,%d0	|, _159
| voxel.c:982: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp975
	ext.w %d0	| tmp974
	neg.w %d0	| tmp976
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _47
| voxel.c:250: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d3	| MEM[(short unsigned int *)screen_200 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:249: 	data &= mask;
	or.w %d1,%d3	| _1920, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d2	| MEM[(short unsigned int *)screen_200 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:253: 	data &= mask;
	or.w %d1,%d2	| _1920, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d4	| MEM[(short unsigned int *)screen_200 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:261: 	data &= mask;
	or.w %d1,%d4	| _1920, data
| voxel.c:983: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 114(%sp),%d1	| %sfp, tmp981
	not.w %d1	| tmp981
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp980
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1741
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _47, data
| voxel.c:249: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:250: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1741, data
	move.w %d3,320(%a0)	| data, MEM[(short unsigned int *)screen_200 + 320B]
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _47, data
| voxel.c:253: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:254: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1741, data
	move.w %d2,322(%a0)	| data, MEM[(short unsigned int *)screen_200 + 322B]
| voxel.c:258: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_200 + 324B]
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:261: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:262: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1741, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_200 + 326B]
| voxel.c:842: 		frames++;
	move.l 140(%sp),122(%sp)	| %sfp, %sfp
	jra .L404		|
.L397:
| voxel.c:801: 		printf("Failed to load voxel data.\r\n");
	pea .LC11		|
	jsr _puts		|
| voxel.c:802: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:998: 	printf("Press any key to exit to TOS.\r\n");
	pea .LC17		|
	jsr _puts		|
| voxel.c:999: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:1000: 	install_palette(saved_palette);
	pea 168(%sp)		|
	jsr _install_palette		|
| voxel.c:1002: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (152,%sp),%sp	|,
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
	.globl	_fog_table
_fog_table:
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
	.globl	___funcs
	.even
___funcs:
	.skip 4
	.globl	___fonts
	.even
___fonts:
	.skip 4
	.globl	___aline
	.even
___aline:
	.skip 4
