| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_init_c2p_table
_init_c2p_table:
	lea (-36,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
	lea _c2p_table,%a0	|, ivtmp.87
| c2p.c:12: void init_c2p_table() {
	moveq #0,%d1	| ivtmp.85
| c2p.c:13: 	for (int i=0; i<256; i++) {
	moveq #0,%d0	| i
.L7:
| c2p.c:15: 		if (i & 1) pdata |= 0x01000000;
	move.l %d1,%d2	| ivtmp.85, _221
	and.l #16777216,%d2	|, _221
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	btst #1,%d0	|, i
	jeq .L2		|
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	bset #16,%d2	|, _221
.L2:
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	btst #2,%d0	|, i
	jeq .L3		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jne .L4		|
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	or.w #256,%d2	|, _221
.L96:
| c2p.c:19: 		c2p_table[0][i] = pdata;
	move.l %d2,(%a0)+	| _221, MEM[(long unsigned int *)_220]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.85
	jra .L7		|
.L3:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jeq .L96		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	moveq #1,%d3	|,
	or.l %d2,%d3	| _221,
	move.l %d3,(%a0)+	|, MEM[(long unsigned int *)_502]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.85
	jra .L7		|
.L4:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	or.w #257,%d2	|, _221
	move.l %d2,(%a0)+	| _221, MEM[(long unsigned int *)_89]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.85
	cmp.l #256,%d0	|, i
	jne .L7		|
	lea _c2p_table+1024,%a0	|, ivtmp.78
| c2p.c:22: 	for (int i=0; i<256; i++) {
	moveq #0,%d2	| i
.L11:
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.l %d2,%d0	| i, _193
	asr.l #4,%d0	|, _193
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.b %d2,%d1	|, _192
	and.b #15,%d1	|, _192
	add.b %d0,%d1	| _193, c
| c2p.c:25: 		if (c & 1) pdata |= 0x01000000;
	move.b %d1,%d0	| c, _196
	and.b #1,%d0	|, _196
	lsl.w #8,%d0	|, pdata
	swap %d0	| pdata
	clr.w %d0	| pdata
| c2p.c:26: 		if (c & 2) pdata |= 0x00010000;
	btst #1,%d1	|, c
	jeq .L8		|
| c2p.c:26: 		if (c & 2) pdata |= 0x00010000;
	bset #16,%d0	|, pdata
.L8:
| c2p.c:27: 		if (c & 4) pdata |= 0x00000100;
	btst #2,%d1	|, c
	jeq .L9		|
| c2p.c:27: 		if (c & 4) pdata |= 0x00000100;
	or.w #256,%d0	|, pdata
.L9:
| c2p.c:28: 		if (c & 8) pdata |= 0x00000001;
	btst #3,%d1	|, c
	jeq .L10		|
| c2p.c:28: 		if (c & 8) pdata |= 0x00000001;
	moveq #1,%d1	|,
	or.l %d1,%d0	|, pdata
.L10:
| c2p.c:29: 		c2p_table[1][i] = pdata;
	move.l %d0,(%a0)+	| pdata, MEM[(long unsigned int *)_212]
| c2p.c:22: 	for (int i=0; i<256; i++) {
	addq.l #1,%d2	|, i
| c2p.c:22: 	for (int i=0; i<256; i++) {
	cmp.l #256,%d2	|, i
	jne .L11		|
| c2p.c:32: 	char bayer[4][4] = {
	move.l #524810,64(%sp)	|, MEM <vector(4) char> [(char *)&bayer]
	move.l #201592326,68(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 4B]
	move.l #51052809,72(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 8B]
	move.l #252120325,76(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 12B]
	move.l #_c2p_x2_table,60(%sp)	|, %sfp
| c2p.c:38:     for (int i=0; i<256; i++) {
	clr.l 56(%sp)	| %sfp
	lea (80,%sp),%a0	|,,
	move.l %a0,48(%sp)	|, %sfp
.L94:
| c2p.c:39:         unsigned char c1 = i & 0xf;
	move.b 59(%sp),%d0	| %sfp,
	and.b #15,%d0	|,
	move.b %d0,46(%sp)	|, %sfp
| c2p.c:40:         unsigned char c2 = ((i & 0xf) + (i >> 4)) & 0xf;
	move.l 56(%sp),%d0	| %sfp, _10
	asr.l #4,%d0	|, _10
| c2p.c:40:         unsigned char c2 = ((i & 0xf) + (i >> 4)) & 0xf;
	add.b 59(%sp),%d0	| %sfp, _12
| c2p.c:40:         unsigned char c2 = ((i & 0xf) + (i >> 4)) & 0xf;
	and.b #15,%d0	|, _12
	move.w %d0,%a6	| _12, c1
| c2p.c:41:         if (c1 > c2) {
	cmp.b 46(%sp),%d0	| %sfp, _12
	jcs .L12		|
| c2p.c:39:         unsigned char c1 = i & 0xf;
	move.b 46(%sp),%d1	| %sfp,
	move.w %d1,%a6	|, c1
| c2p.c:40:         unsigned char c2 = ((i & 0xf) + (i >> 4)) & 0xf;
	move.b %d0,46(%sp)	| c1, %sfp
.L12:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l 60(%sp),52(%sp)	| %sfp, %sfp
	moveq #8,%d1	|, ivtmp.60
	moveq #7,%d2	|, ivtmp.59
.L13:
	lea (64,%sp),%a0	|,, ivtmp.50
| c2p.c:60:                         c = c2;
	move.l 52(%sp),%a1	| %sfp, ivtmp.51
	move.w %a6,%d7	| c1, c1
.L93:
| c2p.c:53:                     char bayer_weight = bayer[line][pixel % 4];
	move.b (%a0),%d6	| MEM[(char *)_497], bayer_weight
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	move.b %d6,%d0	| bayer_weight,
	ext.w %d0	| bayer_weight
	move.w %d0,%a5	| bayer_weight, _94
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a5	| ivtmp.60, _94
	jle .L179		|
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %a5,%d2	| _94, ivtmp.59
	jlt .L169		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #8421504,%d0	|, _22
	bset #31,%d0	|, _22
.L29:
| c2p.c:53:                     char bayer_weight = bayer[line][pixel % 4];
	move.b 1(%a0),%d5	| MEM[(char *)_497 + 1B], bayer_weight
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	move.b %d5,%d3	| bayer_weight,
	ext.w %d3	| bayer_weight
	move.w %d3,%a4	| bayer_weight, _28
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a4	| ivtmp.60, _28
	jle .L180		|
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d2,%a4	| ivtmp.59, _28
	jgt .L102		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #4210752,%d0	|, _22
	bset #30,%d0	|, _22
.L40:
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,(%a1)	| _22, MEM[(long unsigned int *)_111]
| c2p.c:53:                     char bayer_weight = bayer[line][pixel % 4];
	move.b 2(%a0),45(%sp)	| MEM[(char *)_497 + 2B], %sfp
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	move.b 45(%sp),%d0	| %sfp,
	ext.w %d0	| bayer_weight
	move.w %d0,%a3	| bayer_weight, _281
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a3	| ivtmp.60, _281
	jle .L181		|
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d2,%a3	| ivtmp.59, _281
	jgt .L170		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #2105376,%d0	|, _56
	bset #29,%d0	|, _56
.L49:
| c2p.c:53:                     char bayer_weight = bayer[line][pixel % 4];
	move.b 3(%a0),%d4	| MEM[(char *)_497 + 3B],
	move.w %d4,%a6	|, bayer_weight
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	move.b %d4,%d3	| bayer_weight,
	ext.w %d3	| bayer_weight
	move.w %d3,%a2	| bayer_weight, _338
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a2	| ivtmp.60, _338
	jle .L182		|
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d2,%a2	| ivtmp.59, _338
	jgt .L106		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #1052688,%d0	|, _56
.L59:
	bset #28,%d0	|, _56
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,4(%a1)	| _56, MEM[(long unsigned int *)_111 + 4B]
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a5	| ivtmp.60, _94
	jle .L183		|
.L61:
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %a5,%d2	| _94, ivtmp.59
	jlt .L171		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #526344,%d0	|, _305
.L68:
	bset #27,%d0	|, _305
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a4	| ivtmp.60, _28
	jle .L184		|
.L70:
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %a4,%d2	| _28, ivtmp.59
	jlt .L110		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #263172,%d0	|, _305
.L79:
	bset #26,%d0	|, _305
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,8(%a1)	| _305, MEM[(long unsigned int *)_111 + 8B]
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a3	| ivtmp.60, _281
	jle .L185		|
.L81:
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %a3,%d2	| _281, ivtmp.59
	jlt .L172		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #131586,%d0	|, pdata
	bset #25,%d0	|, pdata
.L89:
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a2	| ivtmp.60, _338
	jle .L186		|
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d2,%a2	| ivtmp.59, _338
	jgt .L97		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #65793,%d0	|, pdata
.L15:
	bset #24,%d0	|, pdata
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,12(%a1)	| pdata, MEM[(long unsigned int *)_111 + 12B]
| c2p.c:48:             for (unsigned char line = 0; line < 4; line++) {
	addq.l #4,%a0	|, ivtmp.50
	add.l #32768,%a1	|, ivtmp.51
	cmp.l 48(%sp),%a0	| %sfp, ivtmp.50
	jne .L93		|
.L20:
| c2p.c:47: 	    for (char fog = 0; fog < 8; fog++) {
	move.w %d7,%a6	| c1, c1
	addq.l #1,%d2	|, ivtmp.59
	subq.l #1,%d1	|, ivtmp.60
	add.l #4096,52(%sp)	|, %sfp
	tst.l %d1	| ivtmp.60
	jne .L13		|
| c2p.c:38:     for (int i=0; i<256; i++) {
	addq.l #1,56(%sp)	|, %sfp
| c2p.c:38:     for (int i=0; i<256; i++) {
	moveq #16,%d0	|,
	add.l %d0,60(%sp)	|, %sfp
	cmp.l #256,56(%sp)	|, %sfp
	jne .L94		|
| c2p.c:72: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (36,%sp),%sp	|,
	rts	
.L186:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	move.w %a6,%d3	| bayer_weight,
	cmp.b #8,%d3	|,
	jeq .L97		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
.L14:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d3	|, c
	jeq .L16		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #1,%d4	|,
	or.l %d4,%d0	|, pdata
.L16:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d3	|, c
	jne .L187		|
	move.b %d3,%d4	| c, _182
	and.b #1,%d4	|, _182
	btst #1,%d3	|, c
	jne .L188		|
.L18:
	tst.b %d4	| _182
	jne .L15		|
.L175:
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,12(%a1)	| pdata, MEM[(long unsigned int *)_111 + 12B]
| c2p.c:48:             for (unsigned char line = 0; line < 4; line++) {
	addq.l #4,%a0	|, ivtmp.50
	add.l #32768,%a1	|, ivtmp.51
	cmp.l 48(%sp),%a0	| %sfp, ivtmp.50
	jne .L93		|
	jra .L20		|
.L188:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #16,%d0	|, pdata
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d4	| _182
	jeq .L175		|
	jra .L15		|
.L187:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #256,%d0	|, pdata
	move.b %d3,%d4	| c, _182
	and.b #1,%d4	|, _182
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L18		|
	jra .L188		|
.L182:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,%d4	|, tmp3
	jeq .L106		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
.L58:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d3	|, c
	jeq .L57		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #16,%d4	|,
	or.l %d4,%d0	|, _56
.L57:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d3	|, c
	jne .L54		|
	move.b %d3,%d4	| c,
	and.b #1,%d4	|,
	move.b %d4,47(%sp)	|, %sfp
	btst #1,%d3	|, c
	jne .L189		|
.L52:
	tst.b 47(%sp)	| %sfp
	jne .L59		|
.L176:
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,4(%a1)	| _56, MEM[(long unsigned int *)_111 + 4B]
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a5	| ivtmp.60, _94
	jgt .L61		|
.L183:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,%d6	|, bayer_weight
	jeq .L171		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp179
	lsr.b #3,%d0	|, tmp179
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _419
	lsl.l #3,%d0	|, _305
	btst #2,%d3	|, c
	jne .L64		|
.L66:
	move.b %d3,%d6	| c, _409
	and.b #1,%d6	|, _409
	btst #1,%d3	|, c
	jne .L190		|
.L63:
	tst.b %d6	| _409
	jne .L68		|
.L177:
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a4	| ivtmp.60, _28
	jgt .L70		|
.L184:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,%d5	|, bayer_weight
	jeq .L110		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
.L78:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d3	|, c
	jeq .L77		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #4,%d4	|,
	or.l %d4,%d0	|, _305
.L77:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d3	|, c
	jne .L74		|
	move.b %d3,%d5	| c, _466
	and.b #1,%d5	|, _466
	btst #1,%d3	|, c
	jne .L191		|
.L72:
	tst.b %d5	| _466
	jne .L79		|
.L178:
| c2p.c:67:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d0,8(%a1)	| _305, MEM[(long unsigned int *)_111 + 8B]
| c2p.c:55:                     if (bayer_weight > 8-fog && bayer_weight < 8+fog) {
	cmp.l %d1,%a3	| ivtmp.60, _281
	jgt .L81		|
.L185:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,45(%sp)	|, %sfp
	jeq .L172		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp187
	lsr.b #3,%d0	|, tmp187
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _152
	add.l %d0,%d0	| _152, pdata
	btst #2,%d3	|, c
	jne .L84		|
.L86:
	move.b %d3,%d4	| c, _523
	and.b #1,%d4	|, _523
	btst #1,%d3	|, c
	jne .L192		|
.L83:
	tst.b %d4	| _523
	jeq .L89		|
.L199:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #25,%d0	|, pdata
	jra .L89		|
.L189:
	bset #20,%d0	|, _56
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b 47(%sp)	| %sfp
	jeq .L176		|
	jra .L59		|
.L54:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #4096,%d0	|, _56
	move.b %d3,%d4	| c,
	and.b #1,%d4	|,
	move.b %d4,47(%sp)	|, %sfp
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L52		|
	jra .L189		|
.L181:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,45(%sp)	|, %sfp
	jeq .L170		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d4	| c, tmp170
	lsr.b #3,%d4	|, tmp170
	moveq #1,%d0	|,
	and.l %d0,%d4	|, _542
	move.l %d4,%d0	| _542, _56
	lsl.l #5,%d0	|, _56
	btst #2,%d3	|, c
	jne .L44		|
.L46:
	move.b %d3,%d4	| c,
	and.b #1,%d4	|,
	move.w %d4,%a2	|, _295
	btst #1,%d3	|, c
	jne .L193		|
.L43:
	move.w %a2,%d3	| _295,
	tst.b %d3	|
	jeq .L49		|
.L194:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #29,%d0	|, _56
	jra .L49		|
.L44:
	or.w #8192,%d0	|, _56
	move.b %d3,%d4	| c,
	and.b #1,%d4	|,
	move.w %d4,%a2	|, _295
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L43		|
.L193:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #21,%d0	|, _56
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.w %a2,%d3	| _295,
	tst.b %d3	|
	jeq .L49		|
	jra .L194		|
.L180:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,%d5	|, bayer_weight
	jeq .L102		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
.L38:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d3	|, c
	jeq .L37		|
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #64,%d4	|,
	or.l %d4,%d0	|, _22
.L37:
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d3	|, c
	jne .L34		|
	move.b %d3,%d4	| c, _238
	and.b #1,%d4	|, _238
	btst #1,%d3	|, c
	jne .L195		|
.L32:
	tst.b %d4	| _238
	jeq .L40		|
.L196:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #30,%d0	|, _22
	jra .L40		|
.L195:
	bset #22,%d0	|, _22
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d4	| _238
	jeq .L40		|
	jra .L196		|
.L34:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #16384,%d0	|, _22
	move.b %d3,%d4	| c, _238
	and.b #1,%d4	|, _238
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L32		|
	jra .L195		|
.L179:
| c2p.c:57:                     }  else if (bayer_weight < 8) {
	cmp.b #8,%d6	|, bayer_weight
	jeq .L169		|
| c2p.c:58:                         c = c1;
	move.b %d7,%d3	| c1, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp160
	lsr.b #3,%d0	|, tmp160
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _145
	lsl.l #7,%d0	|, _22
	btst #2,%d3	|, c
	jne .L24		|
.L26:
	move.b %d3,%d4	| c, _186
	and.b #1,%d4	|, _186
	btst #1,%d3	|, c
	jne .L197		|
.L23:
	tst.b %d4	| _186
	jeq .L29		|
.L198:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #31,%d0	|, _22
	jra .L29		|
.L24:
	or.w #32768,%d0	|, _22
	move.b %d3,%d4	| c, _186
	and.b #1,%d4	|, _186
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L23		|
.L197:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #23,%d0	|, _22
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d4	| _186
	jeq .L29		|
	jra .L198		|
.L191:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #18,%d0	|, _305
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _466
	jeq .L178		|
	jra .L79		|
.L74:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #1024,%d0	|, _305
	move.b %d3,%d5	| c, _466
	and.b #1,%d5	|, _466
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L72		|
	jra .L191		|
.L64:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #2048,%d0	|, _305
	move.b %d3,%d6	| c, _409
	and.b #1,%d6	|, _409
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L63		|
.L190:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #19,%d0	|, _305
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d6	| _409
	jeq .L177		|
	jra .L68		|
.L84:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #512,%d0	|, pdata
	move.b %d3,%d4	| c, _523
	and.b #1,%d4	|, _523
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	btst #1,%d3	|, c
	jeq .L83		|
.L192:
| c2p.c:64:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #17,%d0	|, pdata
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	tst.b %d4	| _523
	jeq .L89		|
	jra .L199		|
.L172:
| c2p.c:60:                         c = c2;
	move.b 46(%sp),%d3	| %sfp, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp187
	lsr.b #3,%d0	|, tmp187
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _152
	add.l %d0,%d0	| _152, pdata
	btst #2,%d3	|, c
	jeq .L86		|
	jra .L84		|
.L110:
| c2p.c:60:                         c = c2;
	move.b 46(%sp),%d3	| %sfp, c
	jra .L78		|
.L171:
	move.b 46(%sp),%d3	| %sfp, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp179
	lsr.b #3,%d0	|, tmp179
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _419
	lsl.l #3,%d0	|, _305
	btst #2,%d3	|, c
	jeq .L66		|
	jra .L64		|
.L97:
| c2p.c:60:                         c = c2;
	move.b 46(%sp),%d3	| %sfp, c
	jra .L14		|
.L102:
	move.b 46(%sp),%d3	| %sfp, c
	jra .L38		|
.L169:
	move.b 46(%sp),%d3	| %sfp, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d0	| c, tmp160
	lsr.b #3,%d0	|, tmp160
	moveq #1,%d4	|,
	and.l %d4,%d0	|, _145
	lsl.l #7,%d0	|, _22
	btst #2,%d3	|, c
	jeq .L26		|
	jra .L24		|
.L106:
| c2p.c:60:                         c = c2;
	move.b 46(%sp),%d3	| %sfp, c
	jra .L58		|
.L170:
	move.b 46(%sp),%d3	| %sfp, c
| c2p.c:63:                         if (c & (1 << (3-bitplane))) {
	move.b %d3,%d4	| c, tmp170
	lsr.b #3,%d4	|, tmp170
	moveq #1,%d0	|,
	and.l %d0,%d4	|, _542
	move.l %d4,%d0	| _542, _56
	lsl.l #5,%d0	|, _56
	btst #2,%d3	|, c
	jeq .L46		|
	jra .L44		|
	.even
	.globl	_c2p
_c2p:
	movem.l %d2-%d5/%a2,-(%sp)	|
	move.l 24(%sp),%a2	| out, out
	move.l 28(%sp),%a0	| in, in
	move.l 32(%sp),%d2	| pixels, pixels
	move.b 39(%sp),%d1	| odd, odd
| c2p.c:75: 	while (pixels > 15) {
	cmp.w #15,%d2	|, pixels
	jls .L200		|
	add.w #-16,%d2	|, _332
	lsr.w #4,%d2	|, _331
	addq.w #1,%d2	|, _326
	and.l #65535,%d2	|, _329
	lsl.l #3,%d2	|, _328
	add.l %a2,%d2	| out, _327
	lea _c2p_table,%a1	|, tmp254
.L202:
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	move.l %d1,%d0	|, _163
	lsl.l #8,%d0	|, _163
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d3	| _166
	move.b (%a0),%d3	| MEM[(const unsigned char *)in_252], _166
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	and.l #256,%d0	|, tmp136
	add.l %d3,%d0	| _166, tmp137
	add.l %d0,%d0	| tmp137, tmp138
	add.l %d0,%d0	| tmp138, tmp139
| c2p.c:80: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_163][_166], c2p_table[_163][_166]
	add.l %d0,%d0	| c2p_table[_163][_166], pdata_170
| c2p.c:82: 				odd = !odd;
	tst.b %d1	| odd
	seq %d3		| tmp143
	ext.w %d3	| tmp144
	ext.l %d3	| tmp142
	neg.l %d3	| _168
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _174
	move.b 1(%a0),%d4	| MEM[(const unsigned char *)in_252 + 1B], _174
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d3	|, tmp148
	add.l %d3,%d4	| tmp148, tmp149
	add.l %d4,%d4	| tmp149, tmp150
	add.l %d4,%d4	| tmp150, tmp151
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_171][_174], pdata
| c2p.c:82: 				odd = !odd;
	tst.b %d1	| odd
	sne %d1		| tmp152
	neg.b %d1	| odd
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_179
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _180
	move.b %d1,%d4	| odd, _180
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _183
	move.b 2(%a0),%d5	| MEM[(const unsigned char *)in_252 + 2B], _183
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d4	|, tmp157
	add.l %d4,%d5	| tmp157, tmp158
	add.l %d5,%d5	| tmp158, tmp159
	add.l %d5,%d5	| tmp159, tmp160
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_183], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_188
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _192
	move.b 3(%a0),%d5	| MEM[(const unsigned char *)in_252 + 3B], _192
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp165
	add.l %d5,%d5	| tmp165, tmp166
	add.l %d5,%d5	| tmp166, tmp167
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_192], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_197
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _201
	move.b 4(%a0),%d5	| MEM[(const unsigned char *)in_252 + 4B], _201
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp172
	add.l %d5,%d5	| tmp172, tmp173
	add.l %d5,%d5	| tmp173, tmp174
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_201], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_206
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _210
	move.b 5(%a0),%d5	| MEM[(const unsigned char *)in_252 + 5B], _210
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp179
	add.l %d5,%d5	| tmp179, tmp180
	add.l %d5,%d5	| tmp180, tmp181
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_210], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_215
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _219
	move.b 6(%a0),%d5	| MEM[(const unsigned char *)in_252 + 6B], _219
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp186
	add.l %d5,%d5	| tmp186, tmp187
	add.l %d5,%d5	| tmp187, tmp188
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_219], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_224
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _228
	move.b 7(%a0),%d5	| MEM[(const unsigned char *)in_252 + 7B], _228
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp193
	add.l %d5,%d5	| tmp193, tmp194
	add.l %d5,%d5	| tmp194, tmp195
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_228], pdata_230
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_230,, out
| 0 "" 2
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
#NO_APP
	moveq #0,%d0	| _246
	move.b 8(%a0),%d0	| MEM[(const unsigned char *)in_252 + 8B], _246
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d0	| tmp157, tmp200
	add.l %d0,%d0	| tmp200, tmp201
	add.l %d0,%d0	| tmp201, tmp202
| c2p.c:80: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_180][_246], c2p_table[_180][_246]
	add.l %d0,%d0	| c2p_table[_180][_246], pdata_250
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _254
	move.b 9(%a0),%d5	| MEM[(const unsigned char *)in_252 + 9B], _254
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp208
	add.l %d5,%d5	| tmp208, tmp209
	add.l %d5,%d5	| tmp209, tmp210
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_254], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_259
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _263
	move.b 10(%a0),%d5	| MEM[(const unsigned char *)in_252 + 10B], _263
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp215
	add.l %d5,%d5	| tmp215, tmp216
	add.l %d5,%d5	| tmp216, tmp217
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_263], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_268
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _272
	move.b 11(%a0),%d5	| MEM[(const unsigned char *)in_252 + 11B], _272
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp222
	add.l %d5,%d5	| tmp222, tmp223
	add.l %d5,%d5	| tmp223, tmp224
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_272], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_277
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _281
	move.b 12(%a0),%d5	| MEM[(const unsigned char *)in_252 + 12B], _281
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp229
	add.l %d5,%d5	| tmp229, tmp230
	add.l %d5,%d5	| tmp230, tmp231
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_281], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_286
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _290
	move.b 13(%a0),%d5	| MEM[(const unsigned char *)in_252 + 13B], _290
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp236
	add.l %d5,%d5	| tmp236, tmp237
	add.l %d5,%d5	| tmp237, tmp238
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_290], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_295
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _299
	move.b 14(%a0),%d5	| MEM[(const unsigned char *)in_252 + 14B], _299
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d5,%d4	| _299, tmp243
	add.l %d4,%d4	| tmp243, tmp244
	add.l %d4,%d4	| tmp244, tmp245
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_180][_299], pdata
| c2p.c:80: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_304
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	lea (16,%a0),%a0	|, in
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _308
	move.b -1(%a0),%d4	| MEM[(const unsigned char *)in_306 + 4294967295B], _308
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d3	| _308, tmp250
	add.l %d3,%d3	| tmp250, tmp251
	add.l %d3,%d3	| tmp251, tmp252
| c2p.c:81: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d3.l),%d0	| c2p_table[_171][_308], pdata_310
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_310,, out
| 0 "" 2
| c2p.c:87: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:75: 	while (pixels > 15) {
	cmp.l %a2,%d2	| out, _327
	jne .L202		|
.L200:
| c2p.c:89: }
	movem.l (%sp)+,%d2-%d5/%a2	|
	rts	
	.even
	.globl	_c2p_x2
_c2p_x2:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%a2	| out, out
	move.l 16(%sp),%a0	| in, in
	move.l 20(%sp),%d2	| pixels, pixels
| c2p.c:92:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	move.b 27(%sp),%d1	| odd, _6
	and.b #1,%d1	|, _6
| c2p.c:92:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	moveq #1,%d0	|,
	and.l %d0,%d1	|, _1
	moveq #15,%d0	|,
	lsl.l %d0,%d1	|, _2
| c2p.c:92:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	move.l %d1,%a1	| _2, table
	add.l #_c2p_x2_table,%a1	|, table
| c2p.c:93: 	while (pixels > 15) {
	cmp.w #15,%d2	|, pixels
	jls .L206		|
	add.w #-16,%d2	|, _113
	lsr.w #4,%d2	|, _112
	addq.w #1,%d2	|, _80
	and.l #65535,%d2	|, _114
	lsl.l #3,%d2	|, _115
	add.l %a0,%d2	| in, _101
.L208:
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _68
	move.b (%a0),%d1	| MEM[(const unsigned char *)in_92], _68
	lsl.l #4,%d1	|, tmp90
	moveq #0,%d0	| _72
	move.b 1(%a0),%d0	| MEM[(const unsigned char *)in_92 + 1B], _72
	lsl.l #4,%d0	|, tmp92
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	move.l 4(%a1,%d0.l),%d0	| (*table_16)[0][_72][1], pdata
	or.l (%a1,%d1.l),%d0	| (*table_16)[0][_68][0], pdata
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _77
	move.b 2(%a0),%d1	| MEM[(const unsigned char *)in_92 + 2B], _77
	lsl.l #4,%d1	|, tmp96
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	or.l 8(%a1,%d1.l),%d0	| (*table_16)[0][_77][2], pdata
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _82
	move.b 3(%a0),%d1	| MEM[(const unsigned char *)in_92 + 3B], _82
	lsl.l #4,%d1	|, tmp100
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	or.l 12(%a1,%d1.l),%d0	| (*table_16)[0][_82][3], pdata_84
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_84,, out
| 0 "" 2
| c2p.c:99: 				pdata |= (*table)[0][color][i];
#NO_APP
	moveq #0,%d1	| _94
	move.b 4(%a0),%d1	| MEM[(const unsigned char *)in_92 + 4B], _94
	lsl.l #4,%d1	|, tmp105
	moveq #0,%d0	| _98
	move.b 5(%a0),%d0	| MEM[(const unsigned char *)in_92 + 5B], _98
	lsl.l #4,%d0	|, tmp107
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	move.l 4(%a1,%d0.l),%d0	| (*table_16)[0][_98][1], pdata
	or.l (%a1,%d1.l),%d0	| (*table_16)[0][_94][0], pdata
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _103
	move.b 6(%a0),%d1	| MEM[(const unsigned char *)in_92 + 6B], _103
	lsl.l #4,%d1	|, tmp111
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	or.l 8(%a1,%d1.l),%d0	| (*table_16)[0][_103][2], pdata
| c2p.c:98:                 unsigned char color = *in++;
	addq.l #8,%a0	|, in
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _108
	move.b -1(%a0),%d1	| MEM[(const unsigned char *)in_106 + 4294967295B], _108
	lsl.l #4,%d1	|, tmp115
| c2p.c:99: 				pdata |= (*table)[0][color][i];
	or.l 12(%a1,%d1.l),%d0	| (*table_16)[0][_108][3], pdata_110
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_110,, out
| 0 "" 2
| c2p.c:104: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:93: 	while (pixels > 15) {
	cmp.l %d2,%a0	| _101, in
	jne .L208		|
.L206:
| c2p.c:106: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%a2	|,
	rts	
	.even
	.globl	_c2p_skip
_c2p_skip:
	movem.l %d2-%d3/%a2-%a4,-(%sp)	|
	move.l 24(%sp),%a2	| out, out
	move.l 28(%sp),%a4	| in, in
	move.l 36(%sp),%d1	| skip, skip
	move.l 40(%sp),%d0	| odd, odd
| c2p.c:110: 	const unsigned long *table = c2p_table[odd & 1];
	moveq #1,%d2	|, _21
	and.l %d0,%d2	| odd, _21
	moveq #10,%d3	|,
	lsl.l %d3,%d2	|, _14
	move.l %d2,%a0	| _14, table
	add.l #_c2p_table,%a0	|, table
| c2p.c:111: 	const unsigned long *other = c2p_table[!odd & 1];
	tst.b %d0	| odd
	seq %d0		| tmp198
	ext.w %d0	| tmp199
	ext.l %d0	| tmp197
| c2p.c:111: 	const unsigned long *other = c2p_table[!odd & 1];
	lsl.l %d3,%d0	|, _63
	lea _c2p_table,%a1	|, other
	sub.l %d0,%a1	| _63, other
| c2p.c:112:     unsigned short groups = pixels >> 4;
	move.l 32(%sp),%d0	| pixels, pixels
	lsr.w #4,%d0	|, groups
| c2p.c:113: 	while (groups-- > 0) {
	move.w %d0,%d2	| groups, groups
	subq.w #1,%d2	|, groups
| c2p.c:113: 	while (groups-- > 0) {
	tst.w %d0	| groups
	jeq .L212		|
	addq.w #1,%d2	|, _446
	and.l #65535,%d2	|, _446
	lsl.l #3,%d2	|, _449
	add.l %a2,%d2	| out, _450
.L214:
| c2p.c:119: 				in += skip;
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d0	| _165
	move.b (%a4),%d0	| *in_51, _165
	add.l %d0,%d0	| _165, tmp208
	add.l %d0,%d0	| tmp208, _166
| c2p.c:117: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_167, *_167
	add.l %d0,%d0	| *_167, pdata_170
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _172
	move.b (%a3),%d3	| *in_169, _172
	add.l %d3,%d3	| _172, tmp214
	add.l %d3,%d3	| tmp214, _173
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_174, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_178
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _180
	move.b (%a3),%d3	| *in_177, _180
	add.l %d3,%d3	| _180, tmp219
	add.l %d3,%d3	| tmp219, _181
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_182, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_186
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _188
	move.b (%a3),%d3	| *in_185, _188
	add.l %d3,%d3	| _188, tmp224
	add.l %d3,%d3	| tmp224, _189
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_190, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_194
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _196
	move.b (%a3),%d3	| *in_193, _196
	add.l %d3,%d3	| _196, tmp229
	add.l %d3,%d3	| tmp229, _197
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_198, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_202
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _204
	move.b (%a3),%d3	| *in_201, _204
	add.l %d3,%d3	| _204, tmp234
	add.l %d3,%d3	| tmp234, _205
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_206, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_210
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _212
	move.b (%a3),%d3	| *in_209, _212
	add.l %d3,%d3	| _212, tmp239
	add.l %d3,%d3	| tmp239, _213
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_214, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_218
| c2p.c:119: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _220
	move.b (%a3),%d3	| *in_217, _220
	add.l %d3,%d3	| _220, tmp244
	add.l %d3,%d3	| tmp244, _221
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_222, pdata_224
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_224,, out
| 0 "" 2
| c2p.c:119: 				in += skip;
#NO_APP
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d0	| _237
	move.b (%a4),%d0	| *in_225, _237
	add.l %d0,%d0	| _237, tmp249
	add.l %d0,%d0	| tmp249, _238
| c2p.c:117: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_239, *_239
	add.l %d0,%d0	| *_239, pdata_242
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _244
	move.b (%a3),%d3	| *in_241, _244
	add.l %d3,%d3	| _244, tmp255
	add.l %d3,%d3	| tmp255, _245
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_246, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_250
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _252
	move.b (%a3),%d3	| *in_249, _252
	add.l %d3,%d3	| _252, tmp260
	add.l %d3,%d3	| tmp260, _253
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_254, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_258
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _260
	move.b (%a3),%d3	| *in_257, _260
	add.l %d3,%d3	| _260, tmp265
	add.l %d3,%d3	| tmp265, _261
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_262, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_266
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _268
	move.b (%a3),%d3	| *in_265, _268
	add.l %d3,%d3	| _268, tmp270
	add.l %d3,%d3	| tmp270, _269
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_270, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_274
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _276
	move.b (%a3),%d3	| *in_273, _276
	add.l %d3,%d3	| _276, tmp275
	add.l %d3,%d3	| tmp275, _277
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_278, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_282
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	| _284
	move.b (%a3),%d3	| *in_281, _284
	add.l %d3,%d3	| _284, tmp280
	add.l %d3,%d3	| tmp280, _285
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_286, pdata
| c2p.c:119: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:117: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_290
| c2p.c:119: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:118: 				pdata |= table[*in];
	moveq #0,%d3	|
	move.b (%a3),%d3	| *in_289,
	move.l %d3,%a3	|, _292
	add.l %a3,%a3	| _292, tmp285
	add.l %a3,%a3	| tmp285, _293
| c2p.c:118: 				pdata |= table[*in];
	or.l (%a1,%a3.l),%d0	| *_294, pdata_296
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_296,, out
| 0 "" 2
| c2p.c:126: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:113: 	while (groups-- > 0) {
	cmp.l %a2,%d2	| out, _450
	jne .L214		|
.L212:
| c2p.c:128: }
	movem.l (%sp)+,%d2-%d3/%a2-%a4	|
	rts	
	.even
	.globl	_c2p_w4_2x2_vertical
_c2p_w4_2x2_vertical:
	movem.l %d2-%d7/%a2-%a5,-(%sp)	|
	move.l 52(%sp),%d4	| groups, groups
	move.l 60(%sp),%d0	| phase, phase
| c2p.c:134:     if (groups == 0) {
	tst.w %d4	| groups
	jeq .L221		|
| c2p.c:137:     if (groups & 1) {
	move.w %d4,%d1	|, _29
	and.w #1,%d1	|, _29
	add.b %d1,%d1	| _29, _35
	add.b %d0,%d1	| phase, _36
| c2p.c:142:     const PDataTable *table2 = c2p_x2_table + ((phase + 1) & 3);
	moveq #0,%d0	| _3
	move.b %d1,%d0	| _36, _3
| c2p.c:141:     const PDataTable *table1 = c2p_x2_table + (phase & 3);
	moveq #3,%d2	|,
	and.l %d2,%d1	|, _1
	moveq #15,%d7	|,
	lsl.l %d7,%d1	|, _2
| c2p.c:141:     const PDataTable *table1 = c2p_x2_table + (phase & 3);
	move.l %d1,%a0	| _2, table1_17
	add.l #_c2p_x2_table,%a0	|, table1_17
| c2p.c:142:     const PDataTable *table2 = c2p_x2_table + ((phase + 1) & 3);
	move.l %d0,%d5	| _3, _4
	addq.l #1,%d5	|, _4
| c2p.c:142:     const PDataTable *table2 = c2p_x2_table + ((phase + 1) & 3);
	and.l %d2,%d5	|, _31
	lsl.l %d7,%d5	|, _6
| c2p.c:142:     const PDataTable *table2 = c2p_x2_table + ((phase + 1) & 3);
	add.l #_c2p_x2_table,%d5	|, table2_18
| c2p.c:143:     const PDataTable *table3 = c2p_x2_table + ((phase + 2) & 3);
	move.l %d0,%d6	| _3, _7
	addq.l #2,%d6	|, _7
| c2p.c:143:     const PDataTable *table3 = c2p_x2_table + ((phase + 2) & 3);
	and.l %d2,%d6	|, _32
	lsl.l %d7,%d6	|, _9
| c2p.c:143:     const PDataTable *table3 = c2p_x2_table + ((phase + 2) & 3);
	add.l #_c2p_x2_table,%d6	|, table3_19
| c2p.c:144:     const PDataTable *table4 = c2p_x2_table + ((phase + 3) & 3);
	addq.l #3,%d0	|, _10
| c2p.c:144:     const PDataTable *table4 = c2p_x2_table + ((phase + 3) & 3);
	and.l %d2,%d0	|, _33
	lsl.l %d7,%d0	|, _12
| c2p.c:144:     const PDataTable *table4 = c2p_x2_table + ((phase + 3) & 3);
	move.l %d0,%a1	| _12, table4_20
	add.l #_c2p_x2_table,%a1	|, table4_20
| c2p.c:147:     asm volatile (
	move.l 48(%sp),%a2	| in, in
	move.l 44(%sp),%a3	| out, out
	move.l %d5,%a4	| table2_18,
	move.l %d6,%a5	| table3_19,
	move.l 56(%sp),%d7	| outskip,
#APP
| 147 "c2p.c" 1
	lsr.w      #1, %d4                   	| groups
	jcs        .oddnumbered                    
	addi.w     #-1, %d4                  	| groups
	.loop:                                     
	movem.w    (%a2)+, %d0-%d3             	| in
	move.l     (%a0,%d0.w), %d5    	| table1_17, pdata
	or.l       4(%a0,%d1.w), %d5   	| table1_17, pdata
	or.l       8(%a0,%d2.w), %d5   	| table1_17, pdata
	or.l       12(%a0,%d3.w), %d5  	| table1_17, pdata
	movep.l    %d5, 0(%a3)             	| pdata, out
	lea        (%a3,%d7.l), %a3   	| out,
	move.l     (%a4,%d0.w), %d5    	|, pdata
	or.l       4(%a4,%d1.w), %d5   	|, pdata
	or.l       8(%a4,%d2.w), %d5   	|, pdata
	or.l       12(%a4,%d3.w), %d5  	|, pdata
	movep.l    %d5, 0(%a3)             	| pdata, out
	lea        (%a3,%d7.l), %a3   	| out,
	.oddnumbered:                              
	movem.w    (%a2)+, %d0-%d3             	| in
	move.l     (%a5,%d0.w), %d5    	|, pdata
	or.l       4(%a5,%d1.w), %d5   	|, pdata
	or.l       8(%a5,%d2.w), %d5   	|, pdata
	or.l       12(%a5,%d3.w), %d5  	|, pdata
	movep.l    %d5, 0(%a3)             	| pdata, out
	lea        (%a3,%d7.l), %a3   	| out,
	move.l     (%a1,%d0.w), %d5    	| table4_20, pdata
	or.l       4(%a1,%d1.w), %d5   	| table4_20, pdata
	or.l       8(%a1,%d2.w), %d5   	| table4_20, pdata
	or.l       12(%a1,%d3.w), %d5  	| table4_20, pdata
	movep.l    %d5, 0(%a3)             	| pdata, out
	lea        (%a3,%d7.l), %a3   	| out,
	dbra.w     %d4,.loop                 	| groups
	
| 0 "" 2
#NO_APP
.L221:
| c2p.c:214: }
	movem.l (%sp)+,%d2-%d7/%a2-%a5	|
	rts	
	.bss
	.even
_c2p_x2_table:
	.skip 131072
	.even
_c2p_table:
	.skip 2048
