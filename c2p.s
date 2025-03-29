| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_init_c2p_table
_init_c2p_table:
	lea (-24,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
	lea _c2p_table,%a0	|, ivtmp.86
| c2p.c:12: void init_c2p_table() {
	moveq #0,%d1	| ivtmp.84
| c2p.c:13: 	for (int i=0; i<256; i++) {
	moveq #0,%d0	| i
.L7:
| c2p.c:15: 		if (i & 1) pdata |= 0x01000000;
	move.l %d1,%d2	| ivtmp.84, _229
	and.l #16777216,%d2	|, _229
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	btst #1,%d0	|, i
	jeq .L2		|
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	bset #16,%d2	|, _229
.L2:
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	btst #2,%d0	|, i
	jeq .L3		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jne .L4		|
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	or.w #256,%d2	|, _229
.L84:
| c2p.c:19: 		c2p_table[0][i] = pdata;
	move.l %d2,(%a0)+	| _229, MEM[(long unsigned int *)_228]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.84
	jra .L7		|
.L3:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jeq .L84		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	moveq #1,%d3	|,
	or.l %d2,%d3	| _229,
	move.l %d3,(%a0)+	|, MEM[(long unsigned int *)_31]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.84
	jra .L7		|
.L4:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	or.w #257,%d2	|, _229
	move.l %d2,(%a0)+	| _229, MEM[(long unsigned int *)_115]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d1	|, ivtmp.84
	cmp.l #256,%d0	|, i
	jne .L7		|
	lea _c2p_table+1024,%a0	|, ivtmp.77
| c2p.c:22: 	for (int i=0; i<256; i++) {
	moveq #0,%d2	| i
.L11:
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.l %d2,%d0	| i, _198
	asr.l #4,%d0	|, _198
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.b %d2,%d1	|, _197
	and.b #15,%d1	|, _197
	add.b %d0,%d1	| _198, c
| c2p.c:25: 		if (c & 1) pdata |= 0x01000000;
	move.b %d1,%d0	| c, _201
	and.b #1,%d0	|, _201
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
	move.l %d0,(%a0)+	| pdata, MEM[(long unsigned int *)_7]
| c2p.c:22: 	for (int i=0; i<256; i++) {
	addq.l #1,%d2	|, i
| c2p.c:22: 	for (int i=0; i<256; i++) {
	cmp.l #256,%d2	|, i
	jne .L11		|
| c2p.c:32: 	char bayer[4][4] = {
	move.l #524810,52(%sp)	|, MEM <vector(4) char> [(char *)&bayer]
	move.l #201592326,56(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 4B]
	move.l #51052809,60(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 8B]
	move.l #252120325,64(%sp)	|, MEM <vector(4) char> [(char *)&bayer + 12B]
	move.l #_c2p_x2_table,48(%sp)	|, %sfp
| c2p.c:38:     for (int i=0; i<256; i++) {
	clr.l 44(%sp)	| %sfp
	lea (68,%sp),%a6	|,, _74
.L82:
| c2p.c:39:         unsigned char c1 = i & 0xf;
	move.b 47(%sp),%d4	| %sfp, c1
	and.b #15,%d4	|, c1
| c2p.c:40:         unsigned char c2 = (i & 0xf) + (i >> 4);
	move.l 44(%sp),%d3	| %sfp, _10
	asr.l #4,%d3	|, _10
| c2p.c:40:         unsigned char c2 = (i & 0xf) + (i >> 4);
	add.b %d4,%d3	| c1, c2
	move.l 48(%sp),%d7	| %sfp, ivtmp.61
	moveq #0,%d0	| ivtmp.60
.L12:
	lea (52,%sp),%a2	|,, ivtmp.51
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	move.l %d7,%a4	| ivtmp.61, ivtmp.52
.L81:
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	move.b (%a2),%d1	| MEM[(char *)_103],
	ext.w %d1	| MEM[(char *)_103]
	move.w %d1,%a1	| MEM[(char *)_103], _88
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a1	| ivtmp.60, _88
	jge .L180		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #8421504,%d1	|, pdata
	bset #31,%d1	|, pdata
.L26:
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	move.b 1(%a2),%d2	| MEM[(char *)_103 + 1B],
	ext.w %d2	| MEM[(char *)_103 + 1B]
	move.w %d2,%a0	| MEM[(char *)_103 + 1B], _242
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a0	| ivtmp.60, _242
	jge .L181		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #4210752,%d1	|, pdata
	bset #30,%d1	|, pdata
.L36:
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d1,(%a4)	| pdata, MEM[(long unsigned int *)_32]
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	move.b 2(%a2),%d1	| MEM[(char *)_103 + 2B],
	ext.w %d1	| MEM[(char *)_103 + 2B]
	move.w %d1,%a5	| MEM[(char *)_103 + 2B], _275
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a5	| ivtmp.60, _275
	jge .L182		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #2105376,%d2	|, pdata
	bset #29,%d2	|, pdata
.L43:
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	move.b 3(%a2),%d1	| MEM[(char *)_103 + 3B],
	ext.w %d1	| MEM[(char *)_103 + 3B]
	move.w %d1,%a3	| MEM[(char *)_103 + 3B], _331
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a3	| ivtmp.60, _331
	jge .L183		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #1052688,%d2	|, pdata
.L51:
	bset #28,%d2	|, pdata
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d2,4(%a4)	| pdata, MEM[(long unsigned int *)_32 + 4B]
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a1	| ivtmp.60, _88
	jge .L184		|
.L92:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #526344,%d2	|, pdata
.L54:
	bset #27,%d2	|, pdata
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a0	| ivtmp.60, _242
	jge .L185		|
.L61:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #263172,%d2	|, pdata
.L68:
	bset #26,%d2	|, pdata
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d2,8(%a4)	| pdata, MEM[(long unsigned int *)_32 + 8B]
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a5	| ivtmp.60, _275
	jge .L186		|
.L95:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	move.l #131586,%d1	|, pdata
	bset #25,%d1	|, pdata
.L77:
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a3	| ivtmp.60, _331
	jge .L187		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.l #65793,%d1	|, pdata
.L13:
	bset #24,%d1	|, pdata
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d1,12(%a4)	| pdata, MEM[(long unsigned int *)_32 + 12B]
| c2p.c:43:             for (unsigned char line = 0; line < 4; line++) {
	addq.l #4,%a2	|, ivtmp.51
	add.l #32768,%a4	|, ivtmp.52
	cmp.l %a6,%a2	| _74, ivtmp.51
	jne .L81		|
.L19:
| c2p.c:42: 	    for (char fog = 0; fog < 8; fog++) {
	addq.l #2,%d0	|, ivtmp.60
	add.l #4096,%d7	|, ivtmp.61
	moveq #16,%d1	|,
	cmp.l %d0,%d1	| ivtmp.60,
	jne .L12		|
| c2p.c:38:     for (int i=0; i<256; i++) {
	addq.l #1,44(%sp)	|, %sfp
| c2p.c:38:     for (int i=0; i<256; i++) {
	moveq #16,%d2	|,
	add.l %d2,48(%sp)	|, %sfp
	cmp.l #256,44(%sp)	|, %sfp
	jne .L82		|
| c2p.c:67: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (24,%sp),%sp	|,
	rts	
.L187:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	sub.l %d0,%a3	| ivtmp.60, _17
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d2	|,
	cmp.l %a3,%d2	| _17,
	jge .L85		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d2	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d2	|, c
	jne .L188		|
.L15:
	move.b %d2,%d6	| c, _175
	and.b #2,%d6	|, _175
	move.b %d2,%d5	| c, _176
	and.b #1,%d5	|, _176
	btst #2,%d2	|, c
	jne .L189		|
.L16:
	tst.b %d6	| _175
	jeq .L17		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #16,%d1	|, pdata
.L17:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _176
	jne .L13		|
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d1,12(%a4)	| pdata, MEM[(long unsigned int *)_32 + 12B]
| c2p.c:43:             for (unsigned char line = 0; line < 4; line++) {
	addq.l #4,%a2	|, ivtmp.51
	add.l #32768,%a4	|, ivtmp.52
	cmp.l %a6,%a2	| _74, ivtmp.51
	jne .L81		|
	jra .L19		|
.L183:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	move.l %a3,%d1	| _331, _340
	sub.l %d0,%d1	| ivtmp.60, _340
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d5	|,
	cmp.l %d1,%d5	| _340,
	jge .L91		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d1	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d1	|, c
	jne .L48		|
.L50:
	move.b %d1,%d6	| c, _345
	and.b #2,%d6	|, _345
	move.b %d1,%d5	| c, _346
	and.b #1,%d5	|, _346
	btst #2,%d1	|, c
	jne .L190		|
.L46:
	tst.b %d6	| _345
	jeq .L52		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #20,%d2	|, pdata
.L52:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _346
	jne .L51		|
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d2,4(%a4)	| pdata, MEM[(long unsigned int *)_32 + 4B]
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a1	| ivtmp.60, _88
	jlt .L92		|
.L184:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	sub.l %d0,%a1	| ivtmp.60, _396
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d1	|,
	cmp.l %a1,%d1	| _396,
	jge .L93		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d1	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d1,%d2	| c, tmp176
	lsr.b #3,%d2	|, tmp176
	moveq #1,%d5	|,
	and.l %d5,%d2	|, _130
	lsl.l #3,%d2	|, pdata
	move.b %d1,%d6	| c, _401
	and.b #2,%d6	|, _401
	move.b %d1,%d5	| c, _402
	and.b #1,%d5	|, _402
	btst #2,%d1	|, c
	jne .L58		|
.L56:
	tst.b %d6	| _401
	jeq .L59		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #19,%d2	|, pdata
.L59:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _402
	jne .L54		|
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a0	| ivtmp.60, _242
	jlt .L61		|
.L185:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	sub.l %d0,%a0	| ivtmp.60, _452
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d1	|,
	cmp.l %a0,%d1	| _452,
	jge .L94		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d1	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d1	|, c
	jne .L65		|
.L67:
	move.b %d1,%d6	| c, _457
	and.b #2,%d6	|, _457
	move.b %d1,%d5	| c, _458
	and.b #1,%d5	|, _458
	btst #2,%d1	|, c
	jne .L191		|
.L63:
	tst.b %d6	| _457
	jeq .L69		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #18,%d2	|, pdata
.L69:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _458
	jne .L68		|
| c2p.c:62:                     if ((pixel & 1) == 1) c2p_x2_table[line][fog][i][inpixel] = pdata;
	move.l %d2,8(%a4)	| pdata, MEM[(long unsigned int *)_32 + 8B]
| c2p.c:50:                     if (bayer_weight < 2*fog) {
	cmp.l %d0,%a5	| ivtmp.60, _275
	jlt .L95		|
.L186:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	move.l %a5,%d1	| _275, _508
	sub.l %d0,%d1	| ivtmp.60, _508
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d2	|,
	cmp.l %d1,%d2	| _508,
	jge .L96		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d2	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d2,%d1	| c, tmp184
	lsr.b #3,%d1	|, tmp184
	moveq #1,%d5	|,
	and.l %d5,%d1	|, _157
	add.l %d1,%d1	| _157, pdata
	move.b %d2,%d6	| c, _513
	and.b #2,%d6	|, _513
	move.b %d2,%d5	| c, _514
	and.b #1,%d5	|, _514
	btst #2,%d2	|, c
	jne .L75		|
.L73:
	tst.b %d6	| _513
	jeq .L76		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #17,%d1	|, pdata
.L76:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _514
	jeq .L77		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #25,%d1	|, pdata
	jra .L77		|
.L182:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	move.l %a5,%d1	| _275, _284
	sub.l %d0,%d1	| ivtmp.60, _284
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d2	|,
	cmp.l %d1,%d2	| _284,
	jge .L90		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d1	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d1,%d2	| c, tmp167
	lsr.b #3,%d2	|, tmp167
	moveq #1,%d5	|,
	and.l %d5,%d2	|, _428
	lsl.l #5,%d2	|, pdata
	move.b %d1,%d6	| c, _289
	and.b #2,%d6	|, _289
	move.b %d1,%d5	| c, _290
	and.b #1,%d5	|, _290
	btst #2,%d1	|, c
	jne .L41		|
.L39:
	tst.b %d6	| _289
	jeq .L42		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #21,%d2	|, pdata
.L42:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _290
	jeq .L43		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #29,%d2	|, pdata
	jra .L43		|
.L181:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	move.l %a0,%d2	| _242, _18
	sub.l %d0,%d2	| ivtmp.60, _18
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d5	|,
	cmp.l %d2,%d5	| _18,
	jge .L88		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d2	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d2	|, c
	jne .L31		|
.L33:
	move.b %d2,%d6	| c, _26
	and.b #2,%d6	|, _26
	move.b %d2,%d5	| c, _1
	and.b #1,%d5	|, _1
	btst #2,%d2	|, c
	jne .L192		|
.L29:
	tst.b %d6	| _26
	jeq .L35		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #22,%d1	|, pdata
.L35:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _1
	jeq .L36		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #30,%d1	|, pdata
	jra .L36		|
.L180:
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	move.l %a1,%d1	| _88, _91
	sub.l %d0,%d1	| ivtmp.60, _91
| c2p.c:52:                     }  else if (bayer_weight - 2*fog < 8) {
	moveq #7,%d2	|,
	cmp.l %d1,%d2	| _91,
	jge .L87		|
| c2p.c:55:                         c = c2;
	move.b %d3,%d2	| c2, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d2,%d1	| c, tmp157
	lsr.b #3,%d1	|, tmp157
	moveq #1,%d5	|,
	and.l %d5,%d1	|, _128
	lsl.l #7,%d1	|, pdata
	move.b %d2,%d6	| c, _190
	and.b #2,%d6	|, _190
	move.b %d2,%d5	| c, _45
	and.b #1,%d5	|, _45
	btst #2,%d2	|, c
	jne .L24		|
.L22:
	tst.b %d6	| _190
	jeq .L25		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #23,%d1	|, pdata
.L25:
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	tst.b %d5	| _45
	jeq .L26		|
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #31,%d1	|, pdata
	jra .L26		|
.L96:
| c2p.c:53:                         c = c1;
	move.b %d4,%d2	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d2,%d1	| c, tmp184
	lsr.b #3,%d1	|, tmp184
	moveq #1,%d5	|,
	and.l %d5,%d1	|, _157
	add.l %d1,%d1	| _157, pdata
	move.b %d2,%d6	| c, _513
	and.b #2,%d6	|, _513
	move.b %d2,%d5	| c, _514
	and.b #1,%d5	|, _514
	btst #2,%d2	|, c
	jeq .L73		|
	jra .L75		|
.L93:
| c2p.c:53:                         c = c1;
	move.b %d4,%d1	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d1,%d2	| c, tmp176
	lsr.b #3,%d2	|, tmp176
	moveq #1,%d5	|,
	and.l %d5,%d2	|, _130
	lsl.l #3,%d2	|, pdata
	move.b %d1,%d6	| c, _401
	and.b #2,%d6	|, _401
	move.b %d1,%d5	| c, _402
	and.b #1,%d5	|, _402
	btst #2,%d1	|, c
	jeq .L56		|
	jra .L58		|
.L94:
| c2p.c:53:                         c = c1;
	move.b %d4,%d1	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d1	|, c
	jeq .L67		|
	jra .L65		|
.L87:
| c2p.c:53:                         c = c1;
	move.b %d4,%d2	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d2,%d1	| c, tmp157
	lsr.b #3,%d1	|, tmp157
	moveq #1,%d5	|,
	and.l %d5,%d1	|, _128
	lsl.l #7,%d1	|, pdata
	move.b %d2,%d6	| c, _190
	and.b #2,%d6	|, _190
	move.b %d2,%d5	| c, _45
	and.b #1,%d5	|, _45
	btst #2,%d2	|, c
	jeq .L22		|
	jra .L24		|
.L88:
| c2p.c:53:                         c = c1;
	move.b %d4,%d2	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d2	|, c
	jeq .L33		|
	jra .L31		|
.L90:
| c2p.c:53:                         c = c1;
	move.b %d4,%d1	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	move.b %d1,%d2	| c, tmp167
	lsr.b #3,%d2	|, tmp167
	moveq #1,%d5	|,
	and.l %d5,%d2	|, _428
	lsl.l #5,%d2	|, pdata
	move.b %d1,%d6	| c, _289
	and.b #2,%d6	|, _289
	move.b %d1,%d5	| c, _290
	and.b #1,%d5	|, _290
	btst #2,%d1	|, c
	jeq .L39		|
	jra .L41		|
.L91:
| c2p.c:53:                         c = c1;
	move.b %d4,%d1	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d1	|, c
	jeq .L50		|
	jra .L48		|
.L85:
| c2p.c:53:                         c = c1;
	move.b %d4,%d2	| c1, c
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #3,%d2	|, c
	jeq .L15		|
.L188:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #1,%d5	|,
	or.l %d5,%d1	|, pdata
	move.b %d2,%d6	| c, _175
	and.b #2,%d6	|, _175
	move.b %d2,%d5	| c, _176
	and.b #1,%d5	|, _176
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d2	|, c
	jeq .L16		|
	jra .L189		|
.L75:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #512,%d1	|, pdata
	jra .L73		|
.L58:
	or.w #2048,%d2	|, pdata
	jra .L56		|
.L191:
	or.w #1024,%d2	|, pdata
	jra .L63		|
.L65:
	moveq #4,%d5	|,
	or.l %d5,%d2	|, pdata
	move.b %d1,%d6	| c, _457
	and.b #2,%d6	|, _457
	move.b %d1,%d5	| c, _458
	and.b #1,%d5	|, _458
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d1	|, c
	jeq .L63		|
	jra .L191		|
.L24:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #32768,%d1	|, pdata
	jra .L22		|
.L192:
	or.w #16384,%d1	|, pdata
	jra .L29		|
.L31:
	moveq #64,%d5	|,
	or.l %d5,%d1	|, pdata
	move.b %d2,%d6	| c, _26
	and.b #2,%d6	|, _26
	move.b %d2,%d5	| c, _1
	and.b #1,%d5	|, _1
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d2	|, c
	jeq .L29		|
	jra .L192		|
.L41:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #8192,%d2	|, pdata
	jra .L39		|
.L190:
	or.w #4096,%d2	|, pdata
	jra .L46		|
.L48:
	moveq #16,%d5	|,
	or.l %d5,%d2	|, pdata
	move.b %d1,%d6	| c, _345
	and.b #2,%d6	|, _345
	move.b %d1,%d5	| c, _346
	and.b #1,%d5	|, _346
| c2p.c:58:                         if (c & (1 << (3-bitplane))) {
	btst #2,%d1	|, c
	jeq .L46		|
	jra .L190		|
.L189:
| c2p.c:59:                             pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #256,%d1	|, pdata
	jra .L16		|
	.even
	.globl	_c2p
_c2p:
	movem.l %d2-%d5/%a2,-(%sp)	|
	move.l 24(%sp),%a2	| out, out
	move.l 28(%sp),%a0	| in, in
	move.l 32(%sp),%d2	| pixels, pixels
	move.b 39(%sp),%d1	| odd, odd
| c2p.c:70: 	while (pixels > 15) {
	cmp.w #15,%d2	|, pixels
	jls .L193		|
	add.w #-16,%d2	|, _332
	lsr.w #4,%d2	|, _331
	addq.w #1,%d2	|, _326
	and.l #65535,%d2	|, _329
	lsl.l #3,%d2	|, _328
	add.l %a2,%d2	| out, _327
	lea _c2p_table,%a1	|, tmp254
.L195:
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	move.l %d1,%d0	|, _163
	lsl.l #8,%d0	|, _163
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d3	| _166
	move.b (%a0),%d3	| MEM[(const unsigned char *)in_252], _166
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	and.l #256,%d0	|, tmp136
	add.l %d3,%d0	| _166, tmp137
	add.l %d0,%d0	| tmp137, tmp138
	add.l %d0,%d0	| tmp138, tmp139
| c2p.c:75: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_163][_166], c2p_table[_163][_166]
	add.l %d0,%d0	| c2p_table[_163][_166], pdata_170
| c2p.c:77: 				odd = !odd;
	tst.b %d1	| odd
	seq %d3		| tmp143
	ext.w %d3	| tmp144
	ext.l %d3	| tmp142
	neg.l %d3	| _168
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _174
	move.b 1(%a0),%d4	| MEM[(const unsigned char *)in_252 + 1B], _174
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d3	|, tmp148
	add.l %d3,%d4	| tmp148, tmp149
	add.l %d4,%d4	| tmp149, tmp150
	add.l %d4,%d4	| tmp150, tmp151
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_171][_174], pdata
| c2p.c:77: 				odd = !odd;
	tst.b %d1	| odd
	sne %d1		| tmp152
	neg.b %d1	| odd
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_179
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _180
	move.b %d1,%d4	| odd, _180
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _183
	move.b 2(%a0),%d5	| MEM[(const unsigned char *)in_252 + 2B], _183
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d4	|, tmp157
	add.l %d4,%d5	| tmp157, tmp158
	add.l %d5,%d5	| tmp158, tmp159
	add.l %d5,%d5	| tmp159, tmp160
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_183], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_188
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _192
	move.b 3(%a0),%d5	| MEM[(const unsigned char *)in_252 + 3B], _192
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp165
	add.l %d5,%d5	| tmp165, tmp166
	add.l %d5,%d5	| tmp166, tmp167
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_192], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_197
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _201
	move.b 4(%a0),%d5	| MEM[(const unsigned char *)in_252 + 4B], _201
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp172
	add.l %d5,%d5	| tmp172, tmp173
	add.l %d5,%d5	| tmp173, tmp174
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_201], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_206
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _210
	move.b 5(%a0),%d5	| MEM[(const unsigned char *)in_252 + 5B], _210
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp179
	add.l %d5,%d5	| tmp179, tmp180
	add.l %d5,%d5	| tmp180, tmp181
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_210], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_215
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _219
	move.b 6(%a0),%d5	| MEM[(const unsigned char *)in_252 + 6B], _219
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp186
	add.l %d5,%d5	| tmp186, tmp187
	add.l %d5,%d5	| tmp187, tmp188
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_219], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_224
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _228
	move.b 7(%a0),%d5	| MEM[(const unsigned char *)in_252 + 7B], _228
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp193
	add.l %d5,%d5	| tmp193, tmp194
	add.l %d5,%d5	| tmp194, tmp195
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_228], pdata_230
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_230,, out
| 0 "" 2
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
#NO_APP
	moveq #0,%d0	| _246
	move.b 8(%a0),%d0	| MEM[(const unsigned char *)in_252 + 8B], _246
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d0	| tmp157, tmp200
	add.l %d0,%d0	| tmp200, tmp201
	add.l %d0,%d0	| tmp201, tmp202
| c2p.c:75: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_180][_246], c2p_table[_180][_246]
	add.l %d0,%d0	| c2p_table[_180][_246], pdata_250
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _254
	move.b 9(%a0),%d5	| MEM[(const unsigned char *)in_252 + 9B], _254
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp208
	add.l %d5,%d5	| tmp208, tmp209
	add.l %d5,%d5	| tmp209, tmp210
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_254], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_259
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _263
	move.b 10(%a0),%d5	| MEM[(const unsigned char *)in_252 + 10B], _263
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp215
	add.l %d5,%d5	| tmp215, tmp216
	add.l %d5,%d5	| tmp216, tmp217
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_263], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_268
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _272
	move.b 11(%a0),%d5	| MEM[(const unsigned char *)in_252 + 11B], _272
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp222
	add.l %d5,%d5	| tmp222, tmp223
	add.l %d5,%d5	| tmp223, tmp224
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_272], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_277
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _281
	move.b 12(%a0),%d5	| MEM[(const unsigned char *)in_252 + 12B], _281
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp229
	add.l %d5,%d5	| tmp229, tmp230
	add.l %d5,%d5	| tmp230, tmp231
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_281], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_286
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _290
	move.b 13(%a0),%d5	| MEM[(const unsigned char *)in_252 + 13B], _290
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp236
	add.l %d5,%d5	| tmp236, tmp237
	add.l %d5,%d5	| tmp237, tmp238
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_290], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_295
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _299
	move.b 14(%a0),%d5	| MEM[(const unsigned char *)in_252 + 14B], _299
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d5,%d4	| _299, tmp243
	add.l %d4,%d4	| tmp243, tmp244
	add.l %d4,%d4	| tmp244, tmp245
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_180][_299], pdata
| c2p.c:75: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_304
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	lea (16,%a0),%a0	|, in
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _308
	move.b -1(%a0),%d4	| MEM[(const unsigned char *)in_306 + 4294967295B], _308
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d3	| _308, tmp250
	add.l %d3,%d3	| tmp250, tmp251
	add.l %d3,%d3	| tmp251, tmp252
| c2p.c:76: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d3.l),%d0	| c2p_table[_171][_308], pdata_310
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_310,, out
| 0 "" 2
| c2p.c:82: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:70: 	while (pixels > 15) {
	cmp.l %a2,%d2	| out, _327
	jne .L195		|
.L193:
| c2p.c:84: }
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
| c2p.c:87:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	move.b 27(%sp),%d1	| odd, _6
	and.b #1,%d1	|, _6
| c2p.c:87:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	moveq #1,%d0	|,
	and.l %d0,%d1	|, _1
	moveq #15,%d0	|,
	lsl.l %d0,%d1	|, _2
| c2p.c:87:     unsigned long (*table)[8][256][4] = c2p_x2_table + (odd & 1);
	move.l %d1,%a1	| _2, table
	add.l #_c2p_x2_table,%a1	|, table
| c2p.c:88: 	while (pixels > 15) {
	cmp.w #15,%d2	|, pixels
	jls .L199		|
	add.w #-16,%d2	|, _113
	lsr.w #4,%d2	|, _112
	addq.w #1,%d2	|, _80
	and.l #65535,%d2	|, _114
	lsl.l #3,%d2	|, _115
	add.l %a0,%d2	| in, _101
.L201:
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _68
	move.b (%a0),%d1	| MEM[(const unsigned char *)in_92], _68
	lsl.l #4,%d1	|, tmp90
	moveq #0,%d0	| _72
	move.b 1(%a0),%d0	| MEM[(const unsigned char *)in_92 + 1B], _72
	lsl.l #4,%d0	|, tmp92
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	move.l 4(%a1,%d0.l),%d0	| (*table_16)[0][_72][1], pdata
	or.l (%a1,%d1.l),%d0	| (*table_16)[0][_68][0], pdata
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _77
	move.b 2(%a0),%d1	| MEM[(const unsigned char *)in_92 + 2B], _77
	lsl.l #4,%d1	|, tmp96
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	or.l 8(%a1,%d1.l),%d0	| (*table_16)[0][_77][2], pdata
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _82
	move.b 3(%a0),%d1	| MEM[(const unsigned char *)in_92 + 3B], _82
	lsl.l #4,%d1	|, tmp100
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	or.l 12(%a1,%d1.l),%d0	| (*table_16)[0][_82][3], pdata_84
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_84,, out
| 0 "" 2
| c2p.c:94: 				pdata |= (*table)[0][color][i];
#NO_APP
	moveq #0,%d1	| _94
	move.b 4(%a0),%d1	| MEM[(const unsigned char *)in_92 + 4B], _94
	lsl.l #4,%d1	|, tmp105
	moveq #0,%d0	| _98
	move.b 5(%a0),%d0	| MEM[(const unsigned char *)in_92 + 5B], _98
	lsl.l #4,%d0	|, tmp107
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	move.l 4(%a1,%d0.l),%d0	| (*table_16)[0][_98][1], pdata
	or.l (%a1,%d1.l),%d0	| (*table_16)[0][_94][0], pdata
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _103
	move.b 6(%a0),%d1	| MEM[(const unsigned char *)in_92 + 6B], _103
	lsl.l #4,%d1	|, tmp111
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	or.l 8(%a1,%d1.l),%d0	| (*table_16)[0][_103][2], pdata
| c2p.c:93:                 unsigned char color = *in++;
	addq.l #8,%a0	|, in
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	moveq #0,%d1	| _108
	move.b -1(%a0),%d1	| MEM[(const unsigned char *)in_106 + 4294967295B], _108
	lsl.l #4,%d1	|, tmp115
| c2p.c:94: 				pdata |= (*table)[0][color][i];
	or.l 12(%a1,%d1.l),%d0	| (*table_16)[0][_108][3], pdata_110
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_110,, out
| 0 "" 2
| c2p.c:99: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:88: 	while (pixels > 15) {
	cmp.l %d2,%a0	| _101, in
	jne .L201		|
.L199:
| c2p.c:101: }
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
| c2p.c:105: 	const unsigned long *table = c2p_table[odd & 1];
	moveq #1,%d2	|, _21
	and.l %d0,%d2	| odd, _21
	moveq #10,%d3	|,
	lsl.l %d3,%d2	|, _14
	move.l %d2,%a0	| _14, table
	add.l #_c2p_table,%a0	|, table
| c2p.c:106: 	const unsigned long *other = c2p_table[!odd & 1];
	tst.b %d0	| odd
	seq %d0		| tmp198
	ext.w %d0	| tmp199
	ext.l %d0	| tmp197
| c2p.c:106: 	const unsigned long *other = c2p_table[!odd & 1];
	lsl.l %d3,%d0	|, _63
	lea _c2p_table,%a1	|, other
	sub.l %d0,%a1	| _63, other
| c2p.c:107:     unsigned short groups = pixels >> 4;
	move.l 32(%sp),%d0	| pixels, pixels
	lsr.w #4,%d0	|, groups
| c2p.c:108: 	while (groups-- > 0) {
	move.w %d0,%d2	| groups, groups
	subq.w #1,%d2	|, groups
| c2p.c:108: 	while (groups-- > 0) {
	tst.w %d0	| groups
	jeq .L205		|
	addq.w #1,%d2	|, _446
	and.l #65535,%d2	|, _446
	lsl.l #3,%d2	|, _449
	add.l %a2,%d2	| out, _450
.L207:
| c2p.c:114: 				in += skip;
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d0	| _165
	move.b (%a4),%d0	| *in_51, _165
	add.l %d0,%d0	| _165, tmp208
	add.l %d0,%d0	| tmp208, _166
| c2p.c:112: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_167, *_167
	add.l %d0,%d0	| *_167, pdata_170
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _172
	move.b (%a3),%d3	| *in_169, _172
	add.l %d3,%d3	| _172, tmp214
	add.l %d3,%d3	| tmp214, _173
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_174, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_178
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _180
	move.b (%a3),%d3	| *in_177, _180
	add.l %d3,%d3	| _180, tmp219
	add.l %d3,%d3	| tmp219, _181
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_182, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_186
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _188
	move.b (%a3),%d3	| *in_185, _188
	add.l %d3,%d3	| _188, tmp224
	add.l %d3,%d3	| tmp224, _189
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_190, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_194
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _196
	move.b (%a3),%d3	| *in_193, _196
	add.l %d3,%d3	| _196, tmp229
	add.l %d3,%d3	| tmp229, _197
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_198, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_202
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _204
	move.b (%a3),%d3	| *in_201, _204
	add.l %d3,%d3	| _204, tmp234
	add.l %d3,%d3	| tmp234, _205
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_206, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_210
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _212
	move.b (%a3),%d3	| *in_209, _212
	add.l %d3,%d3	| _212, tmp239
	add.l %d3,%d3	| tmp239, _213
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_214, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_218
| c2p.c:114: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _220
	move.b (%a3),%d3	| *in_217, _220
	add.l %d3,%d3	| _220, tmp244
	add.l %d3,%d3	| tmp244, _221
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_222, pdata_224
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_224,, out
| 0 "" 2
| c2p.c:114: 				in += skip;
#NO_APP
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d0	| _237
	move.b (%a4),%d0	| *in_225, _237
	add.l %d0,%d0	| _237, tmp249
	add.l %d0,%d0	| tmp249, _238
| c2p.c:112: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_239, *_239
	add.l %d0,%d0	| *_239, pdata_242
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _244
	move.b (%a3),%d3	| *in_241, _244
	add.l %d3,%d3	| _244, tmp255
	add.l %d3,%d3	| tmp255, _245
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_246, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_250
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _252
	move.b (%a3),%d3	| *in_249, _252
	add.l %d3,%d3	| _252, tmp260
	add.l %d3,%d3	| tmp260, _253
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_254, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_258
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _260
	move.b (%a3),%d3	| *in_257, _260
	add.l %d3,%d3	| _260, tmp265
	add.l %d3,%d3	| tmp265, _261
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_262, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_266
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _268
	move.b (%a3),%d3	| *in_265, _268
	add.l %d3,%d3	| _268, tmp270
	add.l %d3,%d3	| tmp270, _269
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_270, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_274
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _276
	move.b (%a3),%d3	| *in_273, _276
	add.l %d3,%d3	| _276, tmp275
	add.l %d3,%d3	| tmp275, _277
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_278, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_282
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	| _284
	move.b (%a3),%d3	| *in_281, _284
	add.l %d3,%d3	| _284, tmp280
	add.l %d3,%d3	| tmp280, _285
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_286, pdata
| c2p.c:114: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:112: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_290
| c2p.c:114: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:113: 				pdata |= table[*in];
	moveq #0,%d3	|
	move.b (%a3),%d3	| *in_289,
	move.l %d3,%a3	|, _292
	add.l %a3,%a3	| _292, tmp285
	add.l %a3,%a3	| tmp285, _293
| c2p.c:113: 				pdata |= table[*in];
	or.l (%a1,%a3.l),%d0	| *_294, pdata_296
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_296,, out
| 0 "" 2
| c2p.c:121: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:108: 	while (groups-- > 0) {
	cmp.l %a2,%d2	| out, _450
	jne .L207		|
.L205:
| c2p.c:123: }
	movem.l (%sp)+,%d2-%d3/%a2-%a4	|
	rts	
	.even
	.globl	_c2p_w4_2x2_vertical
_c2p_w4_2x2_vertical:
	movem.l %d2-%d7/%a2-%a3,-(%sp)	|
	move.l 36(%sp),%a2	| out, out
	move.l 40(%sp),%a1	| in, in
	move.l 48(%sp),%d6	| outskip, outskip
| c2p.c:129:     phase &= 3;
	move.b 55(%sp),%d7	| phase, phase
	and.b #3,%d7	|, phase
| c2p.c:130:     while (groups-- > 0) {
	move.w 46(%sp),%d5	| groups, groups
	subq.w #1,%d5	|, groups
| c2p.c:130:     while (groups-- > 0) {
	tst.w 46(%sp)	| groups
	jeq .L214		|
.L216:
| c2p.c:131:         const unsigned long (*table1)[8][256][4] = c2p_x2_table + phase;
	moveq #3,%d4	|, _1
	and.l %d7,%d4	| phase, _1
	moveq #15,%d0	|,
	lsl.l %d0,%d4	|, _2
| c2p.c:131:         const unsigned long (*table1)[8][256][4] = c2p_x2_table + phase;
	add.l #_c2p_x2_table,%d4	|, table1
| c2p.c:132:         phase = (phase + 1) & 3;
	move.b %d7,%d0	| phase, _3
	addq.b #1,%d0	|, _3
| c2p.c:132:         phase = (phase + 1) & 3;
	and.b #3,%d0	|, phase
| c2p.c:134:         phase = (phase + 1) & 3;
	move.b %d0,%d7	| phase, _6
	addq.b #1,%d7	|, _6
| c2p.c:134:         phase = (phase + 1) & 3;
	and.b #3,%d7	|, phase
| c2p.c:133:         const unsigned long (*table2)[8][256][4] = c2p_x2_table + phase;
	moveq #3,%d1	|,
	and.l %d1,%d0	|, _4
	moveq #15,%d1	|,
	lsl.l %d1,%d0	|, _5
| c2p.c:133:         const unsigned long (*table2)[8][256][4] = c2p_x2_table + phase;
	move.l %d0,%a0	| _5, table2_20
	add.l #_c2p_x2_table,%a0	|, table2_20
| c2p.c:136:         asm volatile (
	move.l %d4,%a3	| table1,
#APP
| 136 "c2p.c" 1
	movem.w    (%a1)+, %d0-%d3             	| in
	move.l     (%a3,%d0.w), %d4    	|, pdata
	or.l       4(%a3,%d1.w), %d4   	|, pdata
	or.l       8(%a3,%d2.w), %d4   	|, pdata
	or.l       12(%a3,%d3.w), %d4  	|, pdata
	movep.l    %d4, 0(%a2)             	| pdata, out
	lea        (%a2,%d6.l), %a2   	| out, outskip
	move.l     (%a0,%d0.w), %d4    	| table2_20, pdata
	or.l       4(%a0,%d1.w), %d4   	| table2_20, pdata
	or.l       8(%a0,%d2.w), %d4   	| table2_20, pdata
	or.l       12(%a0,%d3.w), %d4  	| table2_20, pdata
	movep.l    %d4, 0(%a2)             	| pdata, out
	lea        (%a2,%d6.l), %a2   	| out, outskip
	
| 0 "" 2
| c2p.c:130:     while (groups-- > 0) {
#NO_APP
	dbra %d5,.L216	| groups,
.L214:
| c2p.c:170: }
	movem.l (%sp)+,%d2-%d7/%a2-%a3	|
	rts	
	.bss
	.even
_c2p_x2_table:
	.skip 131072
	.even
_c2p_table:
	.skip 2048
