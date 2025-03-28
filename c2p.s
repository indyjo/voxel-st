| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_init_c2p_table
_init_c2p_table:
	movem.l %d2-%d7,-(%sp)	|
	lea _c2p_table,%a0	|, ivtmp.58
| c2p.c:12: void init_c2p_table() {
	moveq #0,%d2	| ivtmp.56
| c2p.c:13: 	for (int i=0; i<256; i++) {
	moveq #0,%d0	| i
.L7:
| c2p.c:15: 		if (i & 1) pdata |= 0x01000000;
	move.l %d2,%d1	| ivtmp.56, _167
	and.l #16777216,%d1	|, _167
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	btst #1,%d0	|, i
	jeq .L2		|
| c2p.c:16: 		if (i & 2) pdata |= 0x00010000;
	bset #16,%d1	|, _167
.L2:
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	btst #2,%d0	|, i
	jeq .L3		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jne .L4		|
| c2p.c:17: 		if (i & 4) pdata |= 0x00000100;
	or.w #256,%d1	|, _167
.L37:
| c2p.c:19: 		c2p_table[0][i] = pdata;
	move.l %d1,(%a0)+	| _167, MEM[(long unsigned int *)_166]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d2	|, ivtmp.56
	jra .L7		|
.L3:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	btst #3,%d0	|, i
	jeq .L37		|
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	moveq #1,%d3	|,
	or.l %d1,%d3	| _167,
	move.l %d3,(%a0)+	|, MEM[(long unsigned int *)_202]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d2	|, ivtmp.56
	jra .L7		|
.L4:
| c2p.c:18: 		if (i & 8) pdata |= 0x00000001;
	or.w #257,%d1	|, _167
	move.l %d1,(%a0)+	| _167, MEM[(long unsigned int *)_332]
| c2p.c:13: 	for (int i=0; i<256; i++) {
	addq.l #1,%d0	|, i
| c2p.c:13: 	for (int i=0; i<256; i++) {
	add.l #16777216,%d2	|, ivtmp.56
	cmp.l #256,%d0	|, i
	jne .L7		|
	lea _c2p_table+1024,%a0	|, ivtmp.49
| c2p.c:22: 	for (int i=0; i<256; i++) {
	moveq #0,%d2	| i
.L11:
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.l %d2,%d1	| i, _120
	asr.l #4,%d1	|, _120
| c2p.c:24: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.b %d2,%d0	|, _119
	and.b #15,%d0	|, _119
	add.b %d1,%d0	| _120, c
| c2p.c:25: 		if (c & 1) pdata |= 0x01000000;
	move.b %d0,%d1	| c, _123
	and.b #1,%d1	|, _123
	lsl.w #8,%d1	|, pdata
	swap %d1	| pdata
	clr.w %d1	| pdata
| c2p.c:26: 		if (c & 2) pdata |= 0x00010000;
	btst #1,%d0	|, c
	jeq .L8		|
| c2p.c:26: 		if (c & 2) pdata |= 0x00010000;
	bset #16,%d1	|, pdata
.L8:
| c2p.c:27: 		if (c & 4) pdata |= 0x00000100;
	btst #2,%d0	|, c
	jeq .L9		|
| c2p.c:27: 		if (c & 4) pdata |= 0x00000100;
	or.w #256,%d1	|, pdata
.L9:
| c2p.c:28: 		if (c & 8) pdata |= 0x00000001;
	btst #3,%d0	|, c
	jeq .L10		|
| c2p.c:28: 		if (c & 8) pdata |= 0x00000001;
	moveq #1,%d0	|,
	or.l %d0,%d1	|, pdata
.L10:
| c2p.c:29: 		c2p_table[1][i] = pdata;
	move.l %d1,(%a0)+	| pdata, MEM[(long unsigned int *)_420]
| c2p.c:22: 	for (int i=0; i<256; i++) {
	addq.l #1,%d2	|, i
| c2p.c:22: 	for (int i=0; i<256; i++) {
	cmp.l #256,%d2	|, i
	jne .L11		|
	lea _c2p_x2_table,%a1	|, ivtmp.40
| c2p.c:32:     for (int i=0; i<256; i++) {
	moveq #0,%d5	| i
.L35:
| c2p.c:33:         unsigned char c1 = i & 0xf;
	move.b %d5,%d3	|, c1
	and.b #15,%d3	|, c1
| c2p.c:34:         unsigned char c2 = (i & 0xf) + (i >> 4);
	move.l %d5,%d2	| i, _11
	asr.l #4,%d2	|, _11
| c2p.c:34:         unsigned char c2 = (i & 0xf) + (i >> 4);
	move.l %a1,%a0	| ivtmp.40, ivtmp.32
	move.b %d3,%d4	| c1, ivtmp.31
| c2p.c:36:         for (unsigned char odd = 0; odd < 2; odd++) {
	clr.b %d1	| odd
.L12:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	move.b %d4,%d0	| ivtmp.31, tmp181
	lsr.b #3,%d0	|, tmp181
	moveq #1,%d6	|,
	and.l %d6,%d0	|, _375
	lsl.l #7,%d0	|, pdata
	btst #2,%d4	|, ivtmp.31
	jeq .L16		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #32768,%d0	|, pdata
.L16:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d4	|, ivtmp.31
	jeq .L17		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #23,%d0	|, pdata
.L17:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d6	|, _195
	and.l %d4,%d6	| ivtmp.31, _195
	neg.l %d6	| tmp188
	and.l #-2147483648,%d6	|, _285
	or.l %d0,%d6	| pdata, pdata
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d0	| odd, tmp191
	subq.b #1,%d0	|, tmp191
	and.b %d2,%d0	| _12, _13
	add.b %d3,%d0	| c1, _65
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #3,%d0	|, _65
	jeq .L18		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #64,%d7	|,
	or.l %d7,%d6	|, pdata
.L18:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #2,%d0	|, _65
	jeq .L19		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #16384,%d6	|, pdata
.L19:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d0	|, _65
	jeq .L20		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #22,%d6	|, pdata
.L20:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d0	|, _164
	neg.l %d0	| tmp198
	and.l #1073741824,%d0	|, _165
	or.l %d6,%d0	| pdata, _165
	move.l %d0,(%a0)	| _165, MEM[(long unsigned int *)_249]
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d0	| odd, tmp202
	neg.b %d0	| tmp202
	and.b %d2,%d0	| _12, _210
	add.b %d3,%d0	| c1, _211
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	move.b %d0,%d6	| _211, tmp204
	lsr.b #3,%d6	|, tmp204
	and.l %d7,%d6	|, _48
	lsl.l #5,%d6	|, _145
	btst #2,%d0	|, _211
	jeq .L21		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #8192,%d6	|, _145
.L21:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d0	|, _211
	jeq .L22		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #21,%d6	|, _145
.L22:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d0	|, _8
	neg.l %d0	| tmp211
	and.l #536870912,%d0	|, _25
	or.l %d6,%d0	| _145, _44
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d6	| odd, tmp215
	subq.b #1,%d6	|, tmp215
	and.b %d2,%d6	| _12, _255
	add.b %d3,%d6	| c1, _256
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #3,%d6	|, _256
	jeq .L23		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #16,%d7	|,
	or.l %d7,%d0	|, _44
.L23:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #2,%d6	|, _256
	jeq .L24		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #4096,%d0	|, _44
.L24:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d6	|, _256
	jeq .L25		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #20,%d0	|, _44
.L25:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d6	|, _47
	neg.l %d6	| tmp222
	and.l #268435456,%d6	|, _50
	or.l %d0,%d6	| _44, _50
	move.l %d6,1024(%a0)	| _50, MEM[(long unsigned int *)_249 + 1024B]
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d0	| odd, tmp226
	neg.b %d0	| tmp226
	and.b %d2,%d0	| _12, _300
	add.b %d3,%d0	| c1, _301
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	move.b %d0,%d6	| _301, tmp228
	lsr.b #3,%d6	|, tmp228
	and.l %d7,%d6	|, _92
	lsl.l #3,%d6	|, _297
	btst #2,%d0	|, _301
	jeq .L26		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #2048,%d6	|, _297
.L26:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d0	|, _301
	jeq .L27		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #19,%d6	|, _297
.L27:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d0	|, _81
	neg.l %d0	| tmp235
	and.l #134217728,%d0	|, _67
	or.l %d6,%d0	| _297, _101
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d6	| odd, tmp239
	subq.b #1,%d6	|, tmp239
	and.b %d2,%d6	| _12, _345
	add.b %d3,%d6	| c1, _346
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #3,%d6	|, _346
	jeq .L28		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #4,%d7	|,
	or.l %d7,%d0	|, _101
.L28:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #2,%d6	|, _346
	jeq .L29		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #1024,%d0	|, _101
.L29:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d6	|, _346
	jeq .L30		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #18,%d0	|, _101
.L30:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d6	|, _173
	neg.l %d6	| tmp246
	and.l #67108864,%d6	|, _382
	or.l %d0,%d6	| _101, _382
	move.l %d6,2048(%a0)	| _382, MEM[(long unsigned int *)_249 + 2048B]
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d0	| odd, tmp250
	neg.b %d0	| tmp250
	and.b %d2,%d0	| _12, _390
	add.b %d3,%d0	| c1, _391
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	move.b %d0,%d6	| _391, tmp252
	lsr.b #3,%d6	|, tmp252
	and.l %d7,%d6	|, _199
	add.l %d6,%d6	| _199, _383
	btst #2,%d0	|, _391
	jeq .L31		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #512,%d6	|, _383
.L31:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d0	|, _391
	jeq .L32		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #17,%d6	|, _383
.L32:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d0	|, _293
	neg.l %d0	| tmp260
	and.l #33554432,%d0	|, _18
	or.l %d6,%d0	| _383, _58
| c2p.c:42:                     unsigned char c = ((odd ^ pixel) & 1) ? c2 : c1;
	move.b %d1,%d6	| odd, tmp264
	subq.b #1,%d6	|, tmp264
	and.b %d2,%d6	| _12, _128
	add.b %d3,%d6	| c1, _109
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #3,%d6	|, _109
	jeq .L34		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	moveq #1,%d7	|,
	or.l %d7,%d0	|, _58
.L34:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #2,%d6	|, _109
	jeq .L13		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	or.w #256,%d0	|, _58
.L13:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	btst #1,%d6	|, _109
	jeq .L14		|
| c2p.c:44:                         pdata |= (1 << (8*bitplane)) << (7-pixel);
	bset #16,%d0	|, _58
.L14:
| c2p.c:43:                     if (c & (1 << (3-bitplane))) {
	moveq #1,%d7	|,
	and.l %d7,%d6	|, _241
	neg.l %d6	| tmp179
	and.l #16777216,%d6	|, _242
	or.l %d0,%d6	| _58, _242
	move.l %d6,3072(%a0)	| _242, MEM[(long unsigned int *)_249 + 3072B]
	move.b %d1,%d0	| odd, _56
	addq.b #1,%d0	|, _56
| c2p.c:36:         for (unsigned char odd = 0; odd < 2; odd++) {
	add.b %d2,%d4	| _12, ivtmp.31
	lea (4096,%a0),%a0	|, ivtmp.32
	moveq #1,%d1	|, odd
	cmp.b #2,%d0	|, _56
	jne .L12		|
| c2p.c:32:     for (int i=0; i<256; i++) {
	addq.l #1,%d5	|, i
| c2p.c:32:     for (int i=0; i<256; i++) {
	addq.l #4,%a1	|, ivtmp.40
	cmp.l #256,%d5	|, i
	jne .L35		|
| c2p.c:51: }
	movem.l (%sp)+,%d2-%d7	|
	rts	
	.even
	.globl	_c2p
_c2p:
	movem.l %d2-%d5/%a2,-(%sp)	|
	move.l 24(%sp),%a2	| out, out
	move.l 28(%sp),%a0	| in, in
	move.l 32(%sp),%d2	| pixels, pixels
	move.b 39(%sp),%d1	| odd, odd
| c2p.c:54: 	while (pixels > 15) {
	cmp.w #15,%d2	|, pixels
	jls .L112		|
	add.w #-16,%d2	|, _332
	lsr.w #4,%d2	|, _331
	addq.w #1,%d2	|, _326
	and.l #65535,%d2	|, _329
	lsl.l #3,%d2	|, _328
	add.l %a2,%d2	| out, _327
	lea _c2p_table,%a1	|, tmp254
.L114:
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	move.l %d1,%d0	|, _163
	lsl.l #8,%d0	|, _163
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d3	| _166
	move.b (%a0),%d3	| MEM[(const unsigned char *)in_252], _166
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	and.l #256,%d0	|, tmp136
	add.l %d3,%d0	| _166, tmp137
	add.l %d0,%d0	| tmp137, tmp138
	add.l %d0,%d0	| tmp138, tmp139
| c2p.c:59: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_163][_166], c2p_table[_163][_166]
	add.l %d0,%d0	| c2p_table[_163][_166], pdata_170
| c2p.c:61: 				odd = !odd;
	tst.b %d1	| odd
	seq %d3		| tmp143
	ext.w %d3	| tmp144
	ext.l %d3	| tmp142
	neg.l %d3	| _168
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _174
	move.b 1(%a0),%d4	| MEM[(const unsigned char *)in_252 + 1B], _174
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d3	|, tmp148
	add.l %d3,%d4	| tmp148, tmp149
	add.l %d4,%d4	| tmp149, tmp150
	add.l %d4,%d4	| tmp150, tmp151
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_171][_174], pdata
| c2p.c:61: 				odd = !odd;
	tst.b %d1	| odd
	sne %d1		| tmp152
	neg.b %d1	| odd
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_179
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _180
	move.b %d1,%d4	| odd, _180
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _183
	move.b 2(%a0),%d5	| MEM[(const unsigned char *)in_252 + 2B], _183
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	lsl.l #8,%d4	|, tmp157
	add.l %d4,%d5	| tmp157, tmp158
	add.l %d5,%d5	| tmp158, tmp159
	add.l %d5,%d5	| tmp159, tmp160
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_183], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_188
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _192
	move.b 3(%a0),%d5	| MEM[(const unsigned char *)in_252 + 3B], _192
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp165
	add.l %d5,%d5	| tmp165, tmp166
	add.l %d5,%d5	| tmp166, tmp167
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_192], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_197
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _201
	move.b 4(%a0),%d5	| MEM[(const unsigned char *)in_252 + 4B], _201
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp172
	add.l %d5,%d5	| tmp172, tmp173
	add.l %d5,%d5	| tmp173, tmp174
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_201], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_206
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _210
	move.b 5(%a0),%d5	| MEM[(const unsigned char *)in_252 + 5B], _210
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp179
	add.l %d5,%d5	| tmp179, tmp180
	add.l %d5,%d5	| tmp180, tmp181
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_210], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_215
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _219
	move.b 6(%a0),%d5	| MEM[(const unsigned char *)in_252 + 6B], _219
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp186
	add.l %d5,%d5	| tmp186, tmp187
	add.l %d5,%d5	| tmp187, tmp188
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_219], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_224
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _228
	move.b 7(%a0),%d5	| MEM[(const unsigned char *)in_252 + 7B], _228
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp193
	add.l %d5,%d5	| tmp193, tmp194
	add.l %d5,%d5	| tmp194, tmp195
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_228], pdata_230
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_230,, out
| 0 "" 2
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
#NO_APP
	moveq #0,%d0	| _246
	move.b 8(%a0),%d0	| MEM[(const unsigned char *)in_252 + 8B], _246
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d0	| tmp157, tmp200
	add.l %d0,%d0	| tmp200, tmp201
	add.l %d0,%d0	| tmp201, tmp202
| c2p.c:59: 				pdata <<= 1;
	move.l (%a1,%d0.l),%d0	| c2p_table[_180][_246], c2p_table[_180][_246]
	add.l %d0,%d0	| c2p_table[_180][_246], pdata_250
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _254
	move.b 9(%a0),%d5	| MEM[(const unsigned char *)in_252 + 9B], _254
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp208
	add.l %d5,%d5	| tmp208, tmp209
	add.l %d5,%d5	| tmp209, tmp210
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_254], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_259
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _263
	move.b 10(%a0),%d5	| MEM[(const unsigned char *)in_252 + 10B], _263
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp215
	add.l %d5,%d5	| tmp215, tmp216
	add.l %d5,%d5	| tmp216, tmp217
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_263], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_268
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _272
	move.b 11(%a0),%d5	| MEM[(const unsigned char *)in_252 + 11B], _272
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp222
	add.l %d5,%d5	| tmp222, tmp223
	add.l %d5,%d5	| tmp223, tmp224
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_272], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_277
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _281
	move.b 12(%a0),%d5	| MEM[(const unsigned char *)in_252 + 12B], _281
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d5	| tmp157, tmp229
	add.l %d5,%d5	| tmp229, tmp230
	add.l %d5,%d5	| tmp230, tmp231
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_180][_281], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_286
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _290
	move.b 13(%a0),%d5	| MEM[(const unsigned char *)in_252 + 13B], _290
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d3,%d5	| tmp148, tmp236
	add.l %d5,%d5	| tmp236, tmp237
	add.l %d5,%d5	| tmp237, tmp238
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d5.l),%d0	| c2p_table[_171][_290], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_295
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d5	| _299
	move.b 14(%a0),%d5	| MEM[(const unsigned char *)in_252 + 14B], _299
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d5,%d4	| _299, tmp243
	add.l %d4,%d4	| tmp243, tmp244
	add.l %d4,%d4	| tmp244, tmp245
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d4.l),%d0	| c2p_table[_180][_299], pdata
| c2p.c:59: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_304
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	lea (16,%a0),%a0	|, in
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	moveq #0,%d4	| _308
	move.b -1(%a0),%d4	| MEM[(const unsigned char *)in_306 + 4294967295B], _308
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	add.l %d4,%d3	| _308, tmp250
	add.l %d3,%d3	| tmp250, tmp251
	add.l %d3,%d3	| tmp251, tmp252
| c2p.c:60: 				pdata |= c2p_table[odd&1][*in++];
	or.l (%a1,%d3.l),%d0	| c2p_table[_171][_308], pdata_310
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_310,, out
| 0 "" 2
| c2p.c:66: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:54: 	while (pixels > 15) {
	cmp.l %a2,%d2	| out, _327
	jne .L114		|
.L112:
| c2p.c:68: }
	movem.l (%sp)+,%d2-%d5/%a2	|
	rts	
	.even
	.globl	_c2p_x2
_c2p_x2:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%a2	| out, out
	move.l 16(%sp),%a0	| in, in
	move.l 20(%sp),%d0	| pixels, pixels
| c2p.c:71:     unsigned long (*table)[4][256] = c2p_x2_table + (odd & 1);
	move.b 27(%sp),%d1	| odd, _6
	and.b #1,%d1	|, _6
| c2p.c:71:     unsigned long (*table)[4][256] = c2p_x2_table + (odd & 1);
	moveq #1,%d2	|,
	and.l %d2,%d1	|, _1
	moveq #12,%d2	|,
	lsl.l %d2,%d1	|, _2
| c2p.c:71:     unsigned long (*table)[4][256] = c2p_x2_table + (odd & 1);
	move.l %d1,%a1	| _2, table
	add.l #_c2p_x2_table,%a1	|, table
| c2p.c:72: 	while (pixels > 15) {
	cmp.w #15,%d0	|, pixels
	jls .L118		|
	move.w %d0,%d1	|, _113
	add.w #-16,%d1	|, _113
	lsr.w #4,%d1	|, _112
	addq.w #1,%d1	|, _80
	and.l #65535,%d1	|, _114
	lsl.l #3,%d1	|, _115
	add.l %a0,%d1	| in, _101
.L120:
| c2p.c:78: 				pdata |= (*table)[i][color];
	moveq #0,%d0	| _68
	move.b (%a0),%d0	| MEM[(const unsigned char *)in_92], _68
	add.l %d0,%d0	| _68, tmp90
	move.l %d0,%d2	| tmp90, tmp91
	add.l %d0,%d2	| tmp90, tmp91
	moveq #0,%d0	| _72
	move.b 1(%a0),%d0	| MEM[(const unsigned char *)in_92 + 1B], _72
	add.l #256,%d0	|, tmp93
	add.l %d0,%d0	| tmp93, tmp94
	add.l %d0,%d0	| tmp94, tmp95
| c2p.c:78: 				pdata |= (*table)[i][color];
	move.l (%a1,%d2.l),%d2	| (*table_16)[0][_68], pdata
	or.l (%a1,%d0.l),%d2	| (*table_16)[1][_72], pdata
| c2p.c:78: 				pdata |= (*table)[i][color];
	moveq #0,%d0	| _77
	move.b 2(%a0),%d0	| MEM[(const unsigned char *)in_92 + 2B], _77
	add.l #512,%d0	|, tmp97
	add.l %d0,%d0	| tmp97, tmp98
	add.l %d0,%d0	| tmp98, tmp99
| c2p.c:78: 				pdata |= (*table)[i][color];
	or.l (%a1,%d0.l),%d2	| (*table_16)[2][_77], pdata
| c2p.c:78: 				pdata |= (*table)[i][color];
	moveq #0,%d0	| _82
	move.b 3(%a0),%d0	| MEM[(const unsigned char *)in_92 + 3B], _82
	add.l #768,%d0	|, tmp101
	add.l %d0,%d0	| tmp101, tmp102
	add.l %d0,%d0	| tmp102, tmp103
| c2p.c:78: 				pdata |= (*table)[i][color];
	or.l (%a1,%d0.l),%d2	| (*table_16)[3][_82], pdata_84
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d2, 0(%a2)	| pdata_84,, out
| 0 "" 2
| c2p.c:78: 				pdata |= (*table)[i][color];
#NO_APP
	moveq #0,%d0	| _94
	move.b 4(%a0),%d0	| MEM[(const unsigned char *)in_92 + 4B], _94
	add.l %d0,%d0	| _94, tmp106
	move.l %d0,%d2	| tmp106, tmp107
	add.l %d0,%d2	| tmp106, tmp107
	moveq #0,%d0	| _98
	move.b 5(%a0),%d0	| MEM[(const unsigned char *)in_92 + 5B], _98
	add.l #256,%d0	|, tmp109
	add.l %d0,%d0	| tmp109, tmp110
	add.l %d0,%d0	| tmp110, tmp111
| c2p.c:78: 				pdata |= (*table)[i][color];
	move.l (%a1,%d2.l),%d2	| (*table_16)[0][_94], pdata
	or.l (%a1,%d0.l),%d2	| (*table_16)[1][_98], pdata
| c2p.c:78: 				pdata |= (*table)[i][color];
	moveq #0,%d0	| _103
	move.b 6(%a0),%d0	| MEM[(const unsigned char *)in_92 + 6B], _103
	add.l #512,%d0	|, tmp113
	add.l %d0,%d0	| tmp113, tmp114
	add.l %d0,%d0	| tmp114, tmp115
| c2p.c:78: 				pdata |= (*table)[i][color];
	or.l (%a1,%d0.l),%d2	| (*table_16)[2][_103], pdata
| c2p.c:77:                 unsigned char color = *in++;
	addq.l #8,%a0	|, in
| c2p.c:78: 				pdata |= (*table)[i][color];
	moveq #0,%d0	| _108
	move.b -1(%a0),%d0	| MEM[(const unsigned char *)in_106 + 4294967295B], _108
	add.l #768,%d0	|, tmp117
	add.l %d0,%d0	| tmp117, tmp118
	add.l %d0,%d0	| tmp118, tmp119
| c2p.c:78: 				pdata |= (*table)[i][color];
	or.l (%a1,%d0.l),%d2	| (*table_16)[3][_108], pdata_110
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d2, 1(%a2)	| pdata_110,, out
| 0 "" 2
| c2p.c:83: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:72: 	while (pixels > 15) {
	cmp.l %d1,%a0	| _101, in
	jne .L120		|
.L118:
| c2p.c:85: }
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
| c2p.c:89: 	const unsigned long *table = c2p_table[odd & 1];
	moveq #1,%d2	|, _21
	and.l %d0,%d2	| odd, _21
	moveq #10,%d3	|,
	lsl.l %d3,%d2	|, _14
	move.l %d2,%a0	| _14, table
	add.l #_c2p_table,%a0	|, table
| c2p.c:90: 	const unsigned long *other = c2p_table[!odd & 1];
	tst.b %d0	| odd
	seq %d0		| tmp198
	ext.w %d0	| tmp199
	ext.l %d0	| tmp197
| c2p.c:90: 	const unsigned long *other = c2p_table[!odd & 1];
	lsl.l %d3,%d0	|, _63
	lea _c2p_table,%a1	|, other
	sub.l %d0,%a1	| _63, other
| c2p.c:91:     unsigned short groups = pixels >> 4;
	move.l 32(%sp),%d0	| pixels, pixels
	lsr.w #4,%d0	|, groups
| c2p.c:92: 	while (groups-- > 0) {
	move.w %d0,%d2	| groups, groups
	subq.w #1,%d2	|, groups
| c2p.c:92: 	while (groups-- > 0) {
	tst.w %d0	| groups
	jeq .L124		|
	addq.w #1,%d2	|, _446
	and.l #65535,%d2	|, _446
	lsl.l #3,%d2	|, _449
	add.l %a2,%d2	| out, _450
.L126:
| c2p.c:98: 				in += skip;
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d0	| _165
	move.b (%a4),%d0	| *in_51, _165
	add.l %d0,%d0	| _165, tmp208
	add.l %d0,%d0	| tmp208, _166
| c2p.c:96: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_167, *_167
	add.l %d0,%d0	| *_167, pdata_170
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _172
	move.b (%a3),%d3	| *in_169, _172
	add.l %d3,%d3	| _172, tmp214
	add.l %d3,%d3	| tmp214, _173
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_174, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_178
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _180
	move.b (%a3),%d3	| *in_177, _180
	add.l %d3,%d3	| _180, tmp219
	add.l %d3,%d3	| tmp219, _181
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_182, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_186
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _188
	move.b (%a3),%d3	| *in_185, _188
	add.l %d3,%d3	| _188, tmp224
	add.l %d3,%d3	| tmp224, _189
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_190, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_194
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _196
	move.b (%a3),%d3	| *in_193, _196
	add.l %d3,%d3	| _196, tmp229
	add.l %d3,%d3	| tmp229, _197
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_198, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_202
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _204
	move.b (%a3),%d3	| *in_201, _204
	add.l %d3,%d3	| _204, tmp234
	add.l %d3,%d3	| tmp234, _205
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_206, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_210
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _212
	move.b (%a3),%d3	| *in_209, _212
	add.l %d3,%d3	| _212, tmp239
	add.l %d3,%d3	| tmp239, _213
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_214, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_218
| c2p.c:98: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _220
	move.b (%a3),%d3	| *in_217, _220
	add.l %d3,%d3	| _220, tmp244
	add.l %d3,%d3	| tmp244, _221
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_222, pdata_224
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 0(%a2)	| pdata_224,, out
| 0 "" 2
| c2p.c:98: 				in += skip;
#NO_APP
	lea (%a4,%d1.l),%a3	| in, skip, in
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d0	| _237
	move.b (%a4),%d0	| *in_225, _237
	add.l %d0,%d0	| _237, tmp249
	add.l %d0,%d0	| tmp249, _238
| c2p.c:96: 				pdata <<= 1;
	move.l (%a0,%d0.l),%d0	| *_239, *_239
	add.l %d0,%d0	| *_239, pdata_242
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _244
	move.b (%a3),%d3	| *in_241, _244
	add.l %d3,%d3	| _244, tmp255
	add.l %d3,%d3	| tmp255, _245
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_246, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_250
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _252
	move.b (%a3),%d3	| *in_249, _252
	add.l %d3,%d3	| _252, tmp260
	add.l %d3,%d3	| tmp260, _253
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_254, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_258
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _260
	move.b (%a3),%d3	| *in_257, _260
	add.l %d3,%d3	| _260, tmp265
	add.l %d3,%d3	| tmp265, _261
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_262, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_266
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _268
	move.b (%a3),%d3	| *in_265, _268
	add.l %d3,%d3	| _268, tmp270
	add.l %d3,%d3	| tmp270, _269
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_270, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_274
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _276
	move.b (%a3),%d3	| *in_273, _276
	add.l %d3,%d3	| _276, tmp275
	add.l %d3,%d3	| tmp275, _277
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%d3.l),%d0	| *_278, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_282
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	| _284
	move.b (%a3),%d3	| *in_281, _284
	add.l %d3,%d3	| _284, tmp280
	add.l %d3,%d3	| tmp280, _285
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a0,%d3.l),%d0	| *_286, pdata
| c2p.c:98: 				in += skip;
	add.l %d1,%a3	| skip, in
| c2p.c:96: 				pdata <<= 1;
	add.l %d0,%d0	| pdata, pdata_290
| c2p.c:98: 				in += skip;
	lea (%a3,%d1.l),%a4	| in, skip, in
| c2p.c:97: 				pdata |= table[*in];
	moveq #0,%d3	|
	move.b (%a3),%d3	| *in_289,
	move.l %d3,%a3	|, _292
	add.l %a3,%a3	| _292, tmp285
	add.l %a3,%a3	| tmp285, _293
| c2p.c:97: 				pdata |= table[*in];
	or.l (%a1,%a3.l),%d0	| *_294, pdata_296
| c2p.c:4: 	asm ("movep.l %0, %c2(%1)" : : "d" (data), "a" (p), "i" (ofs));
#APP
| 4 "c2p.c" 1
	movep.l %d0, 1(%a2)	| pdata_296,, out
| 0 "" 2
| c2p.c:105: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| c2p.c:92: 	while (groups-- > 0) {
	cmp.l %a2,%d2	| out, _450
	jne .L126		|
.L124:
| c2p.c:107: }
	movem.l (%sp)+,%d2-%d3/%a2-%a4	|
	rts	
	.even
	.globl	_c2p_w4_2x2_vertical
_c2p_w4_2x2_vertical:
	movem.l %d2-%d6/%a2-%a3,-(%sp)	|
	move.l 32(%sp),%a1	| out, out
	move.l 36(%sp),%a0	| in, in
	move.l 44(%sp),%d4	| outskip, outskip
	move.l 48(%sp),%d0	| phase, phase
| c2p.c:113: 	const unsigned long (*table1)[4][256] = c2p_x2_table + (phase & 1);
	moveq #1,%d1	|, _1
	and.l %d0,%d1	| phase, _1
	moveq #12,%d2	|,
	lsl.l %d2,%d1	|, _2
| c2p.c:113: 	const unsigned long (*table1)[4][256] = c2p_x2_table + (phase & 1);
	move.l %d1,%a3	| _2, table1
	add.l #_c2p_x2_table,%a3	|, table1
| c2p.c:114: 	const unsigned long (*table2)[4][256] = c2p_x2_table + ((phase + 1) & 1);
	addq.l #1,%d0	|, _4
| c2p.c:114: 	const unsigned long (*table2)[4][256] = c2p_x2_table + ((phase + 1) & 1);
	moveq #1,%d1	|,
	and.l %d1,%d0	|, _23
	lsl.l %d2,%d0	|, _6
| c2p.c:114: 	const unsigned long (*table2)[4][256] = c2p_x2_table + ((phase + 1) & 1);
	move.l %d0,%a2	| _6, table2
	add.l #_c2p_x2_table,%a2	|, table2
| c2p.c:115:     while (groups-- > 0) {
	move.w 42(%sp),%d5	| groups, groups
	subq.w #1,%d5	|, groups
| c2p.c:115:     while (groups-- > 0) {
	tst.w 42(%sp)	| groups
	jeq .L133		|
.L135:
| c2p.c:117:         asm volatile (
#APP
| 117 "c2p.c" 1
	movem.w    (%a0)+, %d0-%d3             	| in
	addi.w     #1024,%d1                      
	addi.w     #2048,%d2                      
	addi.w     #3072,%d3                      
	move.l     (%a3,%d0.w), %d6    	| table1, pdata
	or.l       (%a3,%d1.w), %d6    	| table1, pdata
	or.l       (%a3,%d2.w), %d6    	| table1, pdata
	or.l       (%a3,%d3.w), %d6    	| table1, pdata
	movep.l    %d6, 0(%a1)             	| pdata, out
	lea        (%a1,%d4.l), %a1   	| out, outskip
	move.l     (%a2,%d0.w), %d6    	| table2, pdata
	or.l       (%a2,%d1.w), %d6    	| table2, pdata
	or.l       (%a2,%d2.w), %d6    	| table2, pdata
	or.l       (%a2,%d3.w), %d6    	| table2, pdata
	movep.l    %d6, 0(%a1)             	| pdata, out
	lea        (%a1,%d4.l), %a1   	| out, outskip
	
| 0 "" 2
| c2p.c:115:     while (groups-- > 0) {
#NO_APP
	dbra %d5,.L135	| groups,
.L133:
| c2p.c:149: }
	movem.l (%sp)+,%d2-%d6/%a2-%a3	|
	rts	
	.bss
	.even
_c2p_x2_table:
	.skip 8192
	.even
_c2p_table:
	.skip 2048
