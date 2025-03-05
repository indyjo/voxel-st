| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
_print:
	movem.l #12336,-(%sp)	|,
	move.l 20(%sp),%a3	| s, s
| voxel.c:63: 	while (*s) {
	move.b (%a3),%d0	| *s_5(D), _2
	jeq .L1		|
| voxel.c:64: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp35
.L3:
	and.w #255,%d0	|, _b
#APP
| 64 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp35
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:65: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:63: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_9], _2
	jne .L3		|
.L1:
| voxel.c:67: }
	movem.l (%sp)+,#3084	|,
	rts	
	.even
_printnum:
	lea (-16,%sp),%sp	|,
	movem.l #14392,-(%sp)	|,
	move.l 44(%sp),%d4	| n, n
| voxel.c:71: 	if (neg) n = -n;
	move.l %d4,%d2	| n, n
	jmi .L18		|
.L11:
| voxel.c:74: 	*p=0;
	clr.b 39(%sp)	| MEM[(char *)&buf + 15B]
| voxel.c:73: 	char *p=buf+15;
	lea (39,%sp),%a2	|,, p
| voxel.c:75: 	while (n > 0) {
	tst.l %d4	| n
	jeq .L12		|
	lea ___modsi3,%a4	|, tmp68
	lea ___divsi3,%a3	|, tmp69
.L13:
	move.l %a2,%d3	| p, p
| voxel.c:76: 		*(--p)='0' + (n % 10);
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a4)		| tmp68
	addq.l #8,%sp	|,
| voxel.c:76: 		*(--p)='0' + (n % 10);
	add.b #48,%d0	|,
	move.b %d0,-(%a2)	|, MEM[(char *)p_18]
| voxel.c:77: 		n /= 10;
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a3)		| tmp69
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp71, n
| voxel.c:75: 	while (n > 0) {
	jne .L13		|
| voxel.c:79: 	if (neg) *(--p)='-';
	tst.l %d4	| n
	jlt .L19		|
.L12:
| voxel.c:80: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:81: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,#7196	|,
	lea (16,%sp),%sp	|,
	rts	
.L19:
| voxel.c:79: 	if (neg) *(--p)='-';
	move.b #45,-1(%a2)	|, MEM[(char *)p_18 + 4294967295B]
	move.l %d3,%a2	| p, p
	subq.l #2,%a2	|, p
| voxel.c:80: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:81: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,#7196	|,
	lea (16,%sp),%sp	|,
	rts	
.L18:
| voxel.c:71: 	if (neg) n = -n;
	neg.l %d2	| n
	jra .L11		|
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
_build_tables:
	lea (-408,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.300
| voxel.c:268: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:267: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:266: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp251
	lea _fog_table,%a5	|, tmp252
.L21:
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _157
	lsr.w #7,%d0	|, _157
| voxel.c:270: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _157, _3
| voxel.c:272: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:272: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _58
	add.w #45,%d2	|, _58
| voxel.c:272: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.300, ivtmp.289
	move.w #-17920,%a2	|, ivtmp.286
.L22:
| voxel.c:270: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.286,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:272: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _58,
	sub.w %d0,%d1	| tmp280,
	move.w %d1,(%a3)+	|, MEM[(short int *)_250]
| voxel.c:269: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.286
	cmp.w #17920,%a2	|, ivtmp.286
	jne .L22		|
| voxel.c:275: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:277: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp172
	and.l %d4,%d0	| z, tmp172
| voxel.c:277: 		if (TRIGGERS_PROGRESSION(z))
	jne .L23		|
| voxel.c:84: 	return x + x;
	add.w %d7,%d7	| step, step
.L23:
| voxel.c:280: 		int rel_dist = z - FOG_START;
	moveq #-40,%d0	|, rel_dist
	add.l %d4,%d0	| z, rel_dist
| voxel.c:281: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L76		|
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:268: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:268: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.300
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
.L77:
	lea _combined+1025,%a1	|, ivtmp.277
	clr.b %d2	| max_height_lsm_flag.200
	clr.b %d1	| max_height_lsm.199
.L25:
	lea (-1024,%a1),%a0	|, ivtmp.277, ivtmp.270
.L27:
| voxel.c:289: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_368], _20
| voxel.c:289: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _20, max_height_lsm.199
	jcc .L26		|
| voxel.c:290: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _20, max_height_lsm.199
| voxel.c:289: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.200
.L26:
| voxel.c:288: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.270
	cmp.l %a0,%a1	| ivtmp.270, ivtmp.277
	jne .L27		|
| voxel.c:287: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.270, ivtmp.277
	cmp.l #_combined+524289,%a0	|, ivtmp.270
	jne .L25		|
	tst.b %d2	| max_height_lsm_flag.200
	jeq .L56		|
| voxel.c:294: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_341
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:296: 	int bayer[8][8] = {
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
| voxel.c:306: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L29:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
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
| voxel.c:307: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a4,%a4	| fog
.L52:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sle %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jgt .L44		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L44:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jgt .L45		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L45:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jgt .L46		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L46:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jgt .L47		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L47:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jgt .L48		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L48:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jgt .L49		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L49:
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jgt .L50		|
| voxel.c:312: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L50:
| voxel.c:317: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:255: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _186
	move.b %d7,%d1	|, _186
| voxel.c:255: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:256: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _186,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:257: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _186
	move.l %d1,68(%sp)	| _186, %sfp
| voxel.c:255: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _168
	and.l %d0,%d7	| mask, _168
| voxel.c:255: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _168, iftmp.27_169
	lsl.w #8,%d6	|, iftmp.27_169
	swap %d6	| iftmp.27_169
	clr.w %d6	| iftmp.27_169
| voxel.c:256: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _168,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.28_172
| voxel.c:257: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _168,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.29_178
| voxel.c:319: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.250
| voxel.c:314: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L42:
	move.b %d3,%d5	| color1, _120
	btst #1,%d3	|, color1
	jeq .L30		|
	move.l 64(%sp),%d0	| %sfp, iftmp.28_190
.L31:
	btst #0,%d3	|, color1
	jeq .L32		|
	move.l 60(%sp),%d1	| %sfp, iftmp.27_187
.L33:
	or.l %d1,%d0	| iftmp.27_187, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _120
	jeq .L34		|
	move.l 68(%sp),%d4	| %sfp, iftmp.29_196
.L35:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _120
	jeq .L36		|
	move.b 55(%sp),%d0	| %sfp, _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.242
	neg.l %d2	| ivtmp.242
	move.l %a3,%a0	| ivtmp.250, ivtmp.243
	move.l %d7,44(%sp)	| _168, %sfp
.L41:
	move.b %d5,%d0	| _120, _146
	add.b %d2,%d0	| ivtmp.242, _146
| voxel.c:255: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _146, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.27_169, tmp224
	or.l %d4,%d1	| _334, _33
| voxel.c:256: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _146
	jeq .L38		|
	move.l %a2,%d7	| iftmp.28_172,
	or.l %d7,%d1	|, _33
.L38:
| voxel.c:257: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _146
	jeq .L39		|
	move.l %a1,%d7	| iftmp.29_178,
	or.l %d7,%d1	|, _33
.L39:
| voxel.c:258: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _146
	jeq .L40		|
	or.l 44(%sp),%d1	| %sfp, _33
.L40:
| voxel.c:320: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.242, tmp229
| voxel.c:322: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| fog, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _33, pdata_table[index1_277][fog_232][y_230]
| voxel.c:322: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d1,(%a0)	| _33, MEM[(unsigned int *)_144]
| voxel.c:315: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.242
	lea (-3840,%a0),%a0	|, ivtmp.243
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.242,
	jne .L41		|
| voxel.c:314: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _168
	addq.l #1,%d3	|, color1
| voxel.c:314: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.250
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L42		|
| voxel.c:307: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #1,%a4	|, fog
| voxel.c:307: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| fog,
	jne .L52		|
| voxel.c:306: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:306: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L29		|
| voxel.c:331: 	short top_envelope[20] = {
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
| voxel.c:337: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.223
	lea _view_min+80,%a6	|, ivtmp.226
	lea _view_min,%a1	|, tmp254
	move.l %a1,%a5	| tmp254, ivtmp.228
	lea (156,%sp),%a4	|,, ivtmp.230
	lea _view_max+80,%a3	|, ivtmp.233
	lea _view_max,%a2	|, ivtmp.235
	moveq #40,%d1	|, _325
	add.l %a0,%d1	| ivtmp.223, _325
.L53:
| voxel.c:345: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_317], _38
| voxel.c:345: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_320]
| voxel.c:345: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_321]
| voxel.c:346: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_322], _42
| voxel.c:346: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_299]
| voxel.c:346: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_323]
| voxel.c:344: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.223, _325
	jne .L53		|
	lea _horizon,%a0	|, ivtmp.216
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L54:
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_184]
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:353: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L54		|
| voxel.c:354: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L76:
| voxel.c:281: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d0	| rel_dist
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:283: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:268: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:268: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.300
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
	jra .L77		|
.L36:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.242
	neg.l %d2	| ivtmp.242
| voxel.c:314: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.250, ivtmp.243
	move.l %d7,44(%sp)	| _168, %sfp
	jra .L41		|
.L34:
	moveq #0,%d4	| iftmp.29_196
	jra .L35		|
.L32:
	moveq #0,%d1	| iftmp.27_187
	jra .L33		|
.L30:
	moveq #0,%d0	| iftmp.28_190
	jra .L31		|
.L56:
| voxel.c:287: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_341
| voxel.c:294: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:296: 	int bayer[8][8] = {
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
| voxel.c:306: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	jra .L29		|
.LC1:
	.ascii "Loading colors.tga\15\12\0"
.LC2:
	.ascii "colors.tga\0"
.LC3:
	.ascii "Error reading colors.tga\15\12\0"
.LC4:
	.ascii "\15\12\0"
.LC5:
	.ascii "Loading height.tga\15\12\0"
.LC6:
	.ascii "height.tga\0"
.LC7:
	.ascii ".\0"
.LC8:
	.ascii "Error reading height.tga\15\12\0"
	.even
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:656: 	print("Loading colors.tga\r\n");
	pea .LC1		|
	lea _print,%a3	|, tmp107
	jsr (%a3)		| tmp107
| voxel.c:657: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC2,%d0	|, tmp74
	clr.w %d3	| tmp75
#APP
| 657 "voxel.c" 1
	movw	%d3,%sp@-	| tmp75
	movl	%d0,%sp@-	| tmp74
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d6	| tmp114, _34
| voxel.c:658: 	if (file1 < 0) {
	addq.l #4,%sp	|,
	jmi .L105		|
| voxel.c:662: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _34,
	lea (48,%sp),%a1	|,,
	lea _read_tga_header,%a5	|, tmp106
	jsr (%a5)		| tmp106
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d6,%d7	| _34, _22
| voxel.c:663: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L106		|
.L81:
| voxel.c:715: 	Fclose(file1);
#APP
| 715 "voxel.c" 1
	movw	%d6,%sp@-	| _34
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L93:
| voxel.c:717: 	return 0;
	moveq #0,%d0	| <retval>
.L78:
| voxel.c:718: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L106:
| voxel.c:665: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:665: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:666: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:667: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:669: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:670: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	moveq #80,%d3	|, ivtmp.316
	add.l %sp,%d3	|, ivtmp.316
	move.w #8192,%a4	|, tmp84
#APP
| 674 "voxel.c" 1
	movl	%d3,%sp@-	| ivtmp.316
	movl	%a4,%sp@-	| tmp84
	movw	%d6,%sp@-	| _34
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a6	| tmp115, n
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
| voxel.c:673: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d5	|, p
| voxel.c:672: 	size_t n, remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L87		|
.L82:
| voxel.c:675: 		remaining -= n;
	sub.l %a6,%d4	| n, remaining
| voxel.c:676: 		print(".");
	pea .LC7		|
	jsr (%a3)		| tmp107
	move.l %d3,%a1	| ivtmp.316, ivtmp.323
	move.l %d3,%d0	| ivtmp.316, _20
	add.l %a6,%d0	| n, _20
	addq.l #4,%sp	|,
	move.l %d5,%a0	| p, p
.L85:
| voxel.c:678: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_85], MEM[(unsigned char *)p_107]
| voxel.c:679: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:677: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.323, _20
	jne .L85		|
	add.l %a6,%a6	| n, tmp92
	add.l %a6,%d5	| tmp92, p
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d4,%d0	| remaining, _b
	cmp.l #8192,%d4	|, remaining
	jls .L86		|
	move.l %a4,%d0	| tmp84, _b
.L86:
#APP
| 674 "voxel.c" 1
	movl	%d3,%sp@-	| ivtmp.316
	movl	%d0,%sp@-	| _b
	movw	%d7,%sp@-	| _22
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a6	| tmp117, n
| voxel.c:674: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jne .L82		|
.L87:
| voxel.c:682: 	print("\r\n");
	pea .LC4		|
	jsr (%a3)		| tmp107
| voxel.c:683: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a6	|, tmp108
	jsr (%a6)		| tmp108
| voxel.c:685: 	print("Loading height.tga\r\n");
	pea .LC5		|
	jsr (%a3)		| tmp107
| voxel.c:686: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC6,%d0	|, tmp89
	clr.w %d4	| tmp90
#APP
| 686 "voxel.c" 1
	movw	%d4,%sp@-	| tmp90
	movl	%d0,%sp@-	| tmp89
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d7	| tmp116, _52
| voxel.c:687: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L107		|
| voxel.c:691: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _52,
	lea (62,%sp),%a1	|,,
	jsr (%a5)		| tmp106
| voxel.c:695: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d7,%a4	| _52, _26
| voxel.c:692: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L88		|
| voxel.c:695: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a5	|, tmp97
#APP
| 695 "voxel.c" 1
	movl	%d3,%sp@-	| ivtmp.316
	movl	%a5,%sp@-	| tmp97
	movw	%d7,%sp@-	| _52
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp118, n
| voxel.c:693: 	p = &combined[0][0].height;
	move.l #_combined+1,%d5	|, p
| voxel.c:694: 	remaining = 512*512;
	moveq #4,%d4	|, remaining
	swap %d4	| remaining
| voxel.c:695: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L92		|
.L89:
| voxel.c:696: 		remaining -= n;
	sub.l %d2,%d4	| n, remaining
| voxel.c:697: 		print(".");
	pea .LC7		|
	jsr (%a3)		| tmp107
	move.l %d3,%a1	| ivtmp.316, ivtmp.316
	move.l %d3,%d0	| ivtmp.316, _25
	add.l %d2,%d0	| n, _25
	addq.l #4,%sp	|,
	move.l %d5,%a0	| p, p
.L90:
| voxel.c:701: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_41], _12
| voxel.c:701: 			*p = buf[i]*2;
	add.b %d1,%d1	| _12, tmp102
	move.b %d1,(%a0)	| tmp102, MEM[(unsigned char *)p_110]
| voxel.c:702: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:698: 		for (size_t i=0; i<n; i++) {
	cmp.l %d0,%a1	| _25, ivtmp.316
	jne .L90		|
	add.l %d2,%d2	| n, tmp103
	add.l %d2,%d5	| tmp103, p
| voxel.c:695: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d4,%d0	| remaining, _b
	cmp.l #8192,%d4	|, remaining
	jls .L91		|
	move.l %a5,%d0	| tmp97, _b
.L91:
#APP
| 695 "voxel.c" 1
	movl	%d3,%sp@-	| ivtmp.316
	movl	%d0,%sp@-	| _b
	movw	%a4,%sp@-	| _26
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp119, n
| voxel.c:695: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L89		|
.L92:
| voxel.c:705: 	print("\r\n");
	pea .LC4		|
	jsr (%a3)		| tmp107
| voxel.c:706: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a6)		| tmp108
| voxel.c:708: 	Fclose(file1);
#APP
| 708 "voxel.c" 1
	movw	%d6,%sp@-	| _34
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: 	Fclose(file2);
| 709 "voxel.c" 1
	movw	%d7,%sp@-	| _52
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:710: 	return 1; // success
#NO_APP
	addq.l #8,%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:718: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L105:
| voxel.c:659: 		print("Error reading colors.tga\r\n");
	pea .LC3		|
	jsr (%a3)		| tmp107
| voxel.c:660: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:717: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L78		|
.L88:
| voxel.c:713: 	Fclose(file2);
#APP
| 713 "voxel.c" 1
	movw	%d7,%sp@-	| _52
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:715: 	Fclose(file1);
| 715 "voxel.c" 1
	movw	%d6,%sp@-	| _34
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L93		|
.L107:
| voxel.c:688: 		print("Error reading height.tga\r\n");
	pea .LC8		|
	jsr (%a3)		| tmp107
| voxel.c:689: 		goto error1;
	addq.l #4,%sp	|,
| voxel.c:715: 	Fclose(file1);
#APP
| 715 "voxel.c" 1
	movw	%d6,%sp@-	| _34
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L93		|
	.even
_compute_and_set_bottom_palette.isra.0:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 8(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:606: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:609: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:616: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:618: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:630: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp157
	sub.w %d2,%a0	|, tmp157
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp157,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp159
	sub.w -74(%fp),%d1	| %sfp, tmp159
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:611: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp161
	sub.w -72(%fp),%d0	| %sfp, tmp161
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.348
| voxel.c:618: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp229
.L115:
| voxel.c:621: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_214], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_214], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d2	| b$a$2,
	muls.w %d7,%d2	| _4, tmp163
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp164
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d0,%d3	| b$a$0, tmp165
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp166
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp166, result
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d2	|, tmp168
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp170
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d7,%d0	| _4, tmp171
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp172
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp173
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp174
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d0	| tmp174, result
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp176
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp178
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp178, result
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp180
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp181
| voxel.c:628: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp162
	jlt .L125		|
| voxel.c:630: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:636: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jlt .L126		|
.L110:
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -64(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp187
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp189
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp190
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w %d0,%d3	|, _501
	add.w %d4,%d3	| tmp190, _501
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -60(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp193
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp195
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp196
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:640: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:641: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L127		|
.L111:
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jlt .L116		|
.L128:
	cmp.w #128,%d4	|, _250
	jge .L117		|
	add.b %d4,%d4	| _250, iftmp.74_273
.L112:
| voxel.c:644: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.74_273, MEM[(unsigned char *)p_220]
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jlt .L118		|
.L129:
	cmp.w #128,%d3	|, _501
	jge .L119		|
	add.b %d3,%d3	| _501, iftmp.74_277
.L113:
| voxel.c:645: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.74_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:646: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jlt .L120		|
.L130:
	cmp.w #128,%d2	|, _422
	jge .L121		|
	add.b %d2,%d2	| _422, iftmp.74_286
| voxel.c:646: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.74_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:619: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.348
	cmp.l %a0,%a4	|, tmp229
	jne .L115		|
.L131:
| voxel.c:648: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:649: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:651: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:652: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L127:
| voxel.c:641: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jge .L128		|
.L116:
	clr.b %d4	| iftmp.74_273
| voxel.c:644: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.74_273, MEM[(unsigned char *)p_220]
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jge .L129		|
.L118:
	clr.b %d3	| iftmp.74_277
| voxel.c:645: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.74_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:646: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:599: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jge .L130		|
.L120:
	clr.b %d2	| iftmp.74_286
| voxel.c:646: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.74_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:619: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.348
	cmp.l %a0,%a4	|, tmp229
	jne .L115		|
	jra .L131		|
.L125:
| voxel.c:628: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp162
| voxel.c:630: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:636: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jge .L110		|
.L126:
	clr.w %d2	| _531
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -64(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp187
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp189
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp190
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w %d0,%d3	|, _501
	add.w %d4,%d3	| tmp190, _501
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -60(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp193
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp195
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp196
| voxel.c:594: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:640: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:641: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L111		|
	jra .L127		|
.L117:
| voxel.c:599: 	return val < 0 ? 0 : (
	st %d4		| iftmp.74_273
	jra .L112		|
.L121:
	st %d2		| iftmp.74_286
| voxel.c:646: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.74_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:619: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.348
	cmp.l %a0,%a4	|, tmp229
	jne .L115		|
	jra .L131		|
.L119:
| voxel.c:599: 	return val < 0 ? 0 : (
	st %d3		| iftmp.74_277
	jra .L113		|
.LC9:
	.ascii "\33H\33f\0"
.LC10:
	.ascii "Failed to load voxel data.\15\12\0"
.LC11:
	.ascii "Loading cockpit.tga\15\12\0"
.LC12:
	.ascii "cockpit.tga\0"
.LC13:
	.ascii "TOS reports \0"
.LC14:
	.ascii " bytes free.\15\12\0"
.LC15:
	.ascii "Computing tables\15\12\0"
.LC16:
	.ascii "Total time per frame: \0"
.LC17:
	.ascii "\15\12Time spent rendering terrain: \0"
.LC18:
	.ascii "Press any key to exit to TOS.\15\12\0"
	.even
	.globl	_mymain
_mymain:
	lea (-136,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:743: 	print("\33H\33f");
	pea .LC9		|
	jsr _print		|
| voxel.c:746: 	Super(0L);
	moveq #0,%d0	| tmp1091
#APP
| 746 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1091
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:748: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:750: 	lineaa();
	jsr _lineaa		|
| voxel.c:753: 	save_palette(saved_palette);
	pea 152(%sp)		|
	jsr _save_palette		|
| voxel.c:755: 	unsigned short *screen = Physbase();
#APP
| 755 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,76(%sp)	| tmp1929, %sfp
| voxel.c:757: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:759: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:759: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1930
	jeq .L321		|
| voxel.c:764: 	print("Loading cockpit.tga\r\n");
	pea .LC11		|
	jsr _print		|
| voxel.c:765: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC12		|
	lea (142,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 146(%sp),88(%sp)	| cockpit.pixels, %sfp
| voxel.c:733: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1103
#APP
| 733 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1103
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp1931, _403
| voxel.c:734: 	print("TOS reports ");
	pea .LC13		|
	jsr _print		|
| voxel.c:735: 	printnum(size);
	move.l %d2,-(%sp)	| _403,
	jsr _printnum		|
| voxel.c:736: 	print(" bytes free.\r\n");
	pea .LC14		|
	jsr _print		|
| voxel.c:767: 	print("Computing tables\r\n");
	pea .LC15		|
	jsr _print		|
| voxel.c:768: 	build_tables();
	jsr _build_tables		|
| voxel.c:769: 	if (!cockpit.pixels) goto error;
	lea (24,%sp),%sp	|,
	tst.l 80(%sp)	| %sfp
	jeq .L134		|
| voxel.c:770: 	read_palette_vectors(cockpit.colors);
	move.l 142(%sp),%a4	| cockpit.colors, colors
	lea _palette_vectors,%a3	|, ivtmp.601
	move.l #_palette_vectors+96,%d5	|, _2433
.L135:
| voxel.c:581: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_1467], b
| voxel.c:582: 		unsigned char g = *colors++;
	move.b 1(%a4),%d3	| MEM[(const unsigned char *)colors_1467 + 1B], g
| voxel.c:583: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:562: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_407 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:563: 	return c >> 1;
	asr.b #1,%d1	|, _411
| voxel.c:562: 	signed char c = color - 128;
	add.b #-128,%d3	|, c
| voxel.c:563: 	return c >> 1;
	asr.b #1,%d3	|, _415
| voxel.c:562: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:563: 	return c >> 1;
	asr.b #1,%d2	|, _419
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _419
	move.w %d2,%d0	| _419,
	muls.w %d2,%d0	| _419, tmp1114
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1115
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _415
	move.w %d3,%d4	| _415,
	muls.w %d3,%d4	| _415, tmp1118
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1119
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1119, tmp1120
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _411
	move.w %d1,%d4	| _411,
	muls.w %d1,%d4	| _411, tmp1123
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1124
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1124, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1126
	ext.l %d0	| tmp1127
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1128
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, tmp1129
	sub.w %d0,%d4	| tmp1128, tmp1129
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d4	|, _819
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _819,
	move.w %d1,%a0	| _411,
	move.l %a0,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp1932, _712
	asr.l #7,%d6	|, _712
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _819,
	move.w %d3,%a1	| _415,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp1933, _717
	asr.l #7,%d3	|, _717
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _819,
	move.w %d2,%a0	| _419,
	move.l %a0,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp1934, _628
	asr.l #7,%d4	|, _628
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _717,
	move.l %d3,-(%sp)	| _717,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp1935, tmp1144
	asr.l #7,%d2	|, tmp1144
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _712,
	move.l %d6,-(%sp)	| _712,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1147
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1147, tmp1148
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _628,
	move.l %d4,-(%sp)	| _628,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1151
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	move.w %d2,%d1	| tmp1148, result
	add.w %d0,%d1	| tmp1151, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d1	|, tmp1153
	ext.l %d1	| tmp1154
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp1155
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp1156
	sub.w %d1,%d2	| tmp1155, tmp1156
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _978
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _978,
	move.l %d6,-(%sp)	| _712,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp1938, _979
	asr.l #7,%d6	|, _979
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _978,
	move.l %d3,-(%sp)	| _717,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp1939, _983
	asr.l #7,%d3	|, _983
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _978,
	move.l %d4,-(%sp)	| _628,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp1940, _988
	asr.l #7,%d4	|, _988
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _979,
	move.l %d6,-(%sp)	| _979,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp1941, tmp1165
	asr.l #7,%d2	|, tmp1165
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _983,
	move.l %d3,-(%sp)	| _983,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1168
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1168, tmp1169
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _988,
	move.l %d4,-(%sp)	| _988,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1172
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	move.w %d2,%d1	| tmp1169, result
	add.w %d0,%d1	| tmp1172, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d1	|, tmp1174
	ext.l %d1	| tmp1175
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp1176
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, tmp1177
	sub.w %d1,%a2	| tmp1176, tmp1177
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| tmp1177, _477
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _979,
	move.l %a2,-(%sp)	| _477,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp1944, _474
	asr.l #7,%d6	|, _474
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _983,
	move.l %a2,-(%sp)	| _477,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp1945, _400
	asr.l #7,%d3	|, _400
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _988,
	move.l %a2,-(%sp)	| _477,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp1946, _269
	asr.l #7,%d4	|, _269
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _474,
	move.l %d6,-(%sp)	| _474,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp1947, tmp1186
	asr.l #7,%d2	|, tmp1186
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _400,
	move.l %d3,-(%sp)	| _400,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1189
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1189, tmp1190
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _269,
	move.l %d4,-(%sp)	| _269,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1193
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1193, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp1196
	add.l %a0,%d1	| result, tmp1196
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp1197
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, tmp1198
	sub.w %d1,%a2	| tmp1197, tmp1198
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| tmp1198, _1557
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1557,
	move.l %d6,-(%sp)	| _474,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp1950, tmp1201
	asr.l #7,%d2	|, tmp1201
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1557,
	move.l %d3,-(%sp)	| _400,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp1951, tmp1204
	asr.l #7,%d3	|, tmp1204
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1557,
	move.l %d4,-(%sp)	| _269,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1207
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp1201, tmp1208
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp1209
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| tmp1204, tmp1210
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1211
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d1	| tmp1211, tmp1212
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d4	|,
	muls.w %d0,%d4	| tmp1207, tmp1213
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1214
| voxel.c:568: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d1	| tmp1214, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp1217
	add.l %a0,%d1	| result, tmp1217
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp1218
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1611
	sub.w %d1,%d4	| tmp1218, _1611
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d4,%d1	| _1611, tmp1220
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp1221
| voxel.c:588: 		palette_vectors[i].c = v.c;
	swap %d1	| tmp1219
	clr.w %d1	| tmp1219
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d3	| _1611, tmp1226
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp1227
| voxel.c:588: 		palette_vectors[i].c = v.c;
	move.w %d3,%d1	| tmp1227, tmp1219
	move.l %d1,(%a3)	| tmp1219, MEM <vector(2) short int> [(union  *)_2447]
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d0	| _1611, tmp1228
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1229
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp1229, MEM <fixp> [(union  *)_2447 + 4B]
| voxel.c:580: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.601
	cmp.l %d5,%a3	| _2433, ivtmp.601
	jne .L135		|
	move.l 68(%sp),%d0	| %sfp, _2457
	add.l #32000,%d0	|, _2457
| voxel.c:755: 	unsigned short *screen = Physbase();
	move.l 68(%sp),%a0	| %sfp, ivtmp.592
.L136:
| voxel.c:167: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.391_2541]
	cmp.l %d0,%a0	| _2457, ivtmp.592
	jne .L136		|
| voxel.c:533: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a1	|,
	move.l (%a1),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.583
	lea _view_max,%a3	|, ivtmp.586
	move.l #_view_min+80,%d4	|, _2493
	clr.w %d3	| ivtmp.584
	move.l 68(%sp),%a1	| %sfp, _206
.L141:
| voxel.c:774: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_2514], _6
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d5	| ivtmp.584, tmp1231
	asr.w #4,%d5	|, tmp1231
	ext.l %d5	| tmp1232
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| tmp1232, tmp1233
	add.l %d5,%d5	| tmp1233, _303
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp1236
	lsr.l #3,%d2	|, tmp1236
	moveq #1,%d6	|,
	and.l %d6,%d2	|, _308
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%a0	| _303, tmp1237
	add.l %d5,%a0	| _303, tmp1237
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _308, tmp1238
	lea (%a1,%a0.l),%a0	| _206, tmp1238, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L137		|
	mulu.w #160,%d1	|, tmp1239
	add.l %a0,%d1	| pBlock, _2342
.L138:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:536: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2342
	jne .L138		|
.L137:
| voxel.c:775: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_2480], _10
| voxel.c:775: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:775: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp1241
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d6	| tmp1241,
	muls.w #80,%d6	|,
	move.l %d6,%a0	|, tmp1242
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _303, tmp1244
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1244, tmp1245
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp1245, tmp1246
	lea (%a1,%d2.l),%a0	| _206, tmp1246, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L139		|
	mulu.w #160,%d1	|, tmp1247
	add.l %a0,%d1	| pBlock, _2319
.L140:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:536: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2319
	jne .L140		|
.L139:
| voxel.c:773: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.584
	cmp.l %d4,%a2	| _2493, ivtmp.583
	jne .L141		|
| voxel.c:778: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:779: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:780: 	install_interrupts();
	jsr _install_interrupts		|
	move.l 72(%sp),%d0	| %sfp,
	add.l #19360,%d0	|,
	move.l %d0,76(%sp)	|, %sfp
	move.w 138(%sp),%a0	| cockpit.width,
	move.l %a0,88(%sp)	|, %sfp
	move.l 72(%sp),%d0	| %sfp,
	add.l #32160,%d0	|,
	move.l %d0,92(%sp)	|, %sfp
	addq.l #4,%sp	|,
| voxel.c:783: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l 76(%sp)	| %sfp
.L142:
	move.l 72(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 80(%sp),%a3	| %sfp,
	add.l 76(%sp),%a3	| %sfp,
	move.l %a3,%a6	|, ivtmp.551
.L143:
| voxel.c:147: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a6),%d1	| MEM[(const unsigned char *)_2204],
	move.w %d1,%a2	|, px
	move.b 1(%a6),%d2	| MEM[(const unsigned char *)_2204 + 1B],
	move.w %d2,%a1	|, px
	move.b 2(%a6),%d3	| MEM[(const unsigned char *)_2204 + 2B],
	move.w %d3,%a0	|, px
	move.b 3(%a6),%d7	| MEM[(const unsigned char *)_2204 + 3B], px
	move.b 4(%a6),%d6	| MEM[(const unsigned char *)_2204 + 4B], px
	move.b 5(%a6),%d5	| MEM[(const unsigned char *)_2204 + 5B], px
	move.b 6(%a6),%d4	| MEM[(const unsigned char *)_2204 + 6B], px
	move.b 7(%a6),%d3	| MEM[(const unsigned char *)_2204 + 7B], px
	move.b 8(%a6),%d2	| MEM[(const unsigned char *)_2204 + 8B], px
	move.b 9(%a6),95(%sp)	| MEM[(const unsigned char *)_2204 + 9B], %sfp
	move.b 10(%a6),93(%sp)	| MEM[(const unsigned char *)_2204 + 10B], %sfp
	move.b 11(%a6),65(%sp)	| MEM[(const unsigned char *)_2204 + 11B], %sfp
	move.b 12(%a6),61(%sp)	| MEM[(const unsigned char *)_2204 + 12B], %sfp
	move.b 13(%a6),57(%sp)	| MEM[(const unsigned char *)_2204 + 13B], %sfp
	move.b 14(%a6),53(%sp)	| MEM[(const unsigned char *)_2204 + 14B], %sfp
	move.b 15(%a6),49(%sp)	| MEM[(const unsigned char *)_2204 + 15B], %sfp
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1257
	add.w %d1,%a5	| tmp1257, tmp1258
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1258,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1261
	add.w %d0,%a3	| tmp1261, tmp1262
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1262,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1265
	add.w %d0,%a5	| tmp1265, tmp1266
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1266,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1269
	add.w %d0,%a3	| tmp1269, tmp1270
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1270,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1273
	add.w %d0,%a5	| tmp1273, tmp1274
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1274,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1277
	add.w %d0,%a3	| tmp1277, tmp1278
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1278,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1281
	add.w %d0,%a5	| tmp1281, tmp1282
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1282,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1285
	add.w %d0,%a3	| tmp1285, tmp1286
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 95(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1286,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1289
	add.w %d0,%a5	| tmp1289, tmp1290
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 93(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1290,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1293
	add.w %d0,%a3	| tmp1293, tmp1294
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 65(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1294,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1297
	add.w %d0,%a5	| tmp1297, tmp1298
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 61(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1298,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1301
	add.w %d0,%a3	| tmp1301, tmp1302
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1302,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1305
	add.w %d0,%a5	| tmp1305, tmp1306
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1306,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp1309
	add.w %d0,%a3	| tmp1309, tmp1310
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1310,
	or.w %d1,%d0	|,
	move.w %d0,(%a4)	|, MEM[(short unsigned int *)out_1153]
| voxel.c:151: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp1316
| voxel.c:151: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp1316,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1320
	add.w %d1,%a5	| tmp1320, tmp1321
| voxel.c:151: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1321,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1325
	add.w %d0,%a5	| tmp1325, tmp1326
| voxel.c:151: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1326,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1330
	add.w %d1,%a5	| tmp1330, tmp1331
| voxel.c:151: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1331,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1335
	add.w %d0,%a5	| tmp1335, tmp1336
| voxel.c:151: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1336,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1340
	add.w %d1,%a5	| tmp1340, tmp1341
| voxel.c:151: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1341,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1345
	add.w %d0,%a5	| tmp1345, tmp1346
| voxel.c:151: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1346,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1350
	add.w %d1,%a5	| tmp1350, tmp1351
| voxel.c:151: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1351,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1355
	add.w %d0,%a5	| tmp1355, tmp1356
| voxel.c:151: 				px >>= 1;
	move.b 95(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1356,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1360
	add.w %d1,%a5	| tmp1360, tmp1361
| voxel.c:151: 				px >>= 1;
	move.b 93(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1361,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1365
	add.w %d0,%a5	| tmp1365, tmp1366
| voxel.c:151: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1366,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1370
	add.w %d1,%a5	| tmp1370, tmp1371
| voxel.c:151: 				px >>= 1;
	move.b 61(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1371,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1375
	add.w %d0,%a5	| tmp1375, tmp1376
| voxel.c:151: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1376,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp1380
	add.w %d1,%a3	| tmp1380, tmp1381
| voxel.c:151: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1381,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1385
	add.w %d0,%a5	| tmp1385, tmp1386
| voxel.c:151: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1386,
	or.w %d0,%d1	|,
	move.w %d1,2(%a4)	|, MEM[(short unsigned int *)out_1153 + 2B]
| voxel.c:153: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp1393
| voxel.c:153: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1393,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1397
	add.w %d0,%a5	| tmp1397, tmp1398
| voxel.c:153: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1398,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1402
	add.w %d1,%a5	| tmp1402, tmp1403
| voxel.c:153: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1403,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1407
	add.w %d0,%a5	| tmp1407, tmp1408
| voxel.c:153: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1408,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1412
	add.w %d1,%a5	| tmp1412, tmp1413
| voxel.c:153: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1413,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1417
	add.w %d0,%a5	| tmp1417, tmp1418
| voxel.c:153: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1422
	add.w %d1,%a5	| tmp1422, tmp1423
| voxel.c:153: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1423,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1427
	add.w %d0,%a5	| tmp1427, tmp1428
| voxel.c:153: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1428,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1432
	add.w %d1,%a5	| tmp1432, tmp1433
| voxel.c:153: 				px >>= 1;
	move.b 95(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1433,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1437
	add.w %d0,%a5	| tmp1437, tmp1438
| voxel.c:153: 				px >>= 1;
	move.b 93(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1438,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1442
	add.w %d1,%a5	| tmp1442, tmp1443
| voxel.c:153: 				px >>= 1;
	move.b 65(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1443,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1447
	add.w %d0,%a5	| tmp1447, tmp1448
| voxel.c:153: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1448,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp1452
	add.w %d1,%a3	| tmp1452, tmp1453
| voxel.c:153: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1453,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1457
	add.w %d0,%a5	| tmp1457, tmp1458
| voxel.c:153: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1458,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp1462
	add.w %d1,%a3	| tmp1462, tmp1463
| voxel.c:153: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	| tmp1463,
	or.w %d1,%d0	|,
	move.w %d0,4(%a4)	|, MEM[(short unsigned int *)out_1153 + 4B]
| voxel.c:161: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:155: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a2	|, tmp1470
| voxel.c:155: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	|,
	and.w #1,%d1	|,
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1470,
	or.w %d0,%d1	|,
	move.w %d1,%a1	|, tmp1474
	add.w %d1,%a1	| tmp1474, tmp1475
| voxel.c:155: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	| tmp1475,
	or.w %d1,%d0	|,
	move.w %d0,%a0	|, tmp1479
	add.w %d0,%a0	| tmp1479, tmp1480
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp1483
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	| tmp1480,
	or.w %d0,%d7	|, tmp1484
	add.w %d7,%d7	| tmp1484, tmp1485
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp1488
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp1485, tmp1489
	add.w %d6,%d6	| tmp1489, tmp1490
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp1493
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp1490, tmp1494
	add.w %d5,%d5	| tmp1494, tmp1495
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp1498
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp1495, tmp1499
	add.w %d4,%d4	| tmp1499, tmp1500
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp1503
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp1500, tmp1504
	add.w %d3,%d3	| tmp1504, tmp1505
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp1508
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp1505, tmp1509
	add.w %d2,%d2	| tmp1509, tmp1510
| voxel.c:155: 				px >>= 1;
	move.b 95(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1513
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp1510, tmp1514
	add.w %d1,%d1	| tmp1514, tmp1515
| voxel.c:155: 				px >>= 1;
	move.b 93(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1518
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1518, tmp1519
	add.w %d1,%d1	| tmp1519, tmp1520
| voxel.c:155: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1523
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1523, tmp1524
	add.w %d1,%d1	| tmp1524, tmp1525
| voxel.c:155: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1528
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1528, tmp1529
	add.w %d1,%d1	| tmp1529, tmp1530
| voxel.c:155: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1533
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1533, tmp1534
	add.w %d1,%d1	| tmp1534, tmp1535
| voxel.c:155: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1538
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp1535, tmp1539
	add.w %d0,%d0	| tmp1539, tmp1540
| voxel.c:155: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1543
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1540, tmp1543
	move.w %d1,-2(%a4)	| tmp1543, MEM[(short unsigned int *)out_515 + 4294967294B]
| voxel.c:144: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.551
	cmp.l 72(%sp),%a4	| %sfp, out
	jne .L143		|
| voxel.c:143: 	for (int y=0; y<height; y++) {
	lea (160,%a4),%a4	|, out
	move.l %a4,72(%sp)	| out, %sfp
	move.l 84(%sp),%d1	| %sfp,
	add.l %d1,76(%sp)	|, %sfp
	cmp.l 88(%sp),%a4	| %sfp, out
	jne .L142		|
| voxel.c:787: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,130(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	clr.w 102(%sp)	| %sfp
| voxel.c:792: 	int frames = 0;
	clr.l 114(%sp)	| %sfp
| voxel.c:790: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,92(%sp)	|, %sfp
| voxel.c:788: 	unsigned long t_render = 0;
	clr.l 110(%sp)	| %sfp
| voxel.c:785: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d7	|, fog_enabled
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a4	|, tmp1924
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1545
#APP
| 721 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1545
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1953
	jeq .L244		|
.L326:
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 721 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1545
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp1548
	ext.l %d0	| tmp1548
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,128(%sp)	| tmp1548, %sfp
| voxel.c:796: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L322		|
| voxel.c:801: 		frames++;
	addq.l #1,114(%sp)	|, %sfp
| voxel.c:133: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.46_327
	move.w (%a0),%d0	| *hw_palette.46_327, _328
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d6	| MEM <unsigned int> [(short int *)&pos], _332
| voxel.c:806: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp1553
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp1555
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp1557
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp1559
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp1560
	add.l %d1,%d0	| tmp1559, tmp1561
	add.l %d0,%d0	| tmp1561, tmp1562
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2718.height, combined[_21][_24].D.2718.height
	lsr.b #1,%d0	|, tmp1565
| voxel.c:806: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp1567
	lsl.w #7,%d0	|, tmp1568
	move.w %d3,%d4	| _28,
	sub.w %d0,%d4	| tmp1568,
	move.w %d4,118(%sp)	|, %sfp
| voxel.c:807: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jlt .L323		|
.L147:
| voxel.c:808: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%a0	| %sfp, desired_height
| voxel.c:808: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 92(%sp),%d0	| %sfp, tmp1579
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp1579
| voxel.c:808: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp1579,
	move.l %a1,-(%sp)	|,
	sub.w 122(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:810: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L149		|
	move.w #-256,%d0	|, altitude_delta
.L150:
| voxel.c:811: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:812: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jgt .L151		|
.L338:
| voxel.c:811: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _38, pos.z
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _2349
| voxel.c:842: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d3	| _2349
	move.w %d0,%d3	| _2349, _2349
	move.l #256,%d1	|, tmp1588
	sub.l %d3,%d1	| _2349, tmp1588
	add.l %d1,%d1	| tmp1588, _2357
| voxel.c:498: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1590
	sub.w %d0,%a0	| _2349, tmp1590
| voxel.c:500: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1590, tmp1591
	add.l %a0,%a0	| tmp1591, tmp1591
	move.l %a0,124(%sp)	| tmp1591, %sfp
.L148:
| voxel.c:815: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_40
	move.w -602(%a0),108(%sp)	| MEM[(short int *)__aline.3_40 + 4294966694B], %sfp
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:818: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,120(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 102(%sp),%d2	| %sfp, _43
	and.w #8,%d2	|, _43
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, tmp1903
	move.w %d2,50(%sp)	| tmp1903, %sfp
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_40 + 4294966696B],
	move.l %a0,104(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp1595
	add.l %a0,%d0	|, tmp1595
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp1595
	move.l %d0,80(%sp)	| tmp1595, %sfp
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 108(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp1597
	add.l #-160,%d0	|, tmp1597
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,76(%sp)	| pos.dirx, %sfp
| voxel.c:842: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2357
	move.l %d1,94(%sp)	| _2357, %sfp
	move.b %d7,%d3	| fog_enabled,
	eor.b #1,%d3	|,
	move.b %d3,129(%sp)	|, %sfp
	btst #0,%d7	|, fog_enabled
	jne .L152		|
.L327:
	move.l #_fog_table+48,98(%sp)	|, %sfp
| voxel.c:533: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d3	| pdata_table[15][0][0], movep_data
	move.l %d0,%d4	| _49,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	and.l #65535,%d2	|, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,56(%sp)	| tmp1956, %sfp
	add.l %d2,%d2	| x, tmp1610
	move.l %d2,%a6	| tmp1610, ivtmp.536
	add.l #_horizon,%a6	|, ivtmp.536
	move.l %d6,88(%sp)	| sample_uv, %sfp
	move.l %d3,%d6	| movep_data, movep_data
	move.l %a6,%a5	| ivtmp.536, ivtmp.536
.L218:
| voxel.c:846: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 50(%sp),%d4	| %sfp, tmp1611
	lsr.w #3,%d4	|, tmp1611
	and.l #65535,%d4	|, _77
| voxel.c:846: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _77, tmp1613
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d2	| view_max[_77], _2597
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 50(%sp),%d0	| %sfp, tmp1614
	asr.w #4,%d0	|, tmp1614
	ext.l %d0	| tmp1615
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp1615, tmp1616
	add.l %d0,%d0	| tmp1616, tmp1616
	move.l %d0,60(%sp)	| tmp1616, %sfp
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 50(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp1619
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp1619,
	move.l %d1,64(%sp)	|, %sfp
| voxel.c:845: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d3	| _2597, _2594
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 60(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 80(%sp),%d0	| %sfp, tmp1957
	move.l %d0,52(%sp)	| tmp1957, %sfp
| voxel.c:845: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d0	| _2597, y
	sub.w 54(%sp),%d0	| %sfp, y
| voxel.c:850: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d5	| view_min[_77], y_min
	sub.w 54(%sp),%d5	| %sfp, y_min
| voxel.c:436: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L215		|
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w 50(%sp),%d1	| %sfp, _57
	add.w #-160,%d1	|, _57
| voxel.c:833: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 72(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _57, tmp1628
| voxel.c:833: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d4	|, tmp1629
| voxel.c:833: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 76(%sp),%d3	| %sfp, tmp1630
	sub.w %d4,%d3	| tmp1629, tmp1630
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp1632
	clr.w %d3	| tmp1632
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 76(%sp),%d1	| %sfp, tmp1633
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d1	|, tmp1634
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 72(%sp),%d1	| %sfp, tmp1635
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp1635, tmp1637
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp1637
	move.l %d3,%a2	| tmp1637, _338
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l 88(%sp),%d1	| %sfp, tmp1638
	add.l %d3,%d1	| _338, tmp1638
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1639
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _338, tmp1640
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1641
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _338, tmp1642
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1643
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _338, tmp1644
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp1645
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 60(%sp),%d2	| %sfp, tmp1647
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp1647, tmp1648
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp1648, tmp1649
	add.l 64(%sp),%a0	| %sfp, tmp1649
	add.l 68(%sp),%a0	| %sfp, pBlock
| voxel.c:432: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 94(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d3	|, z
.L159:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_1028, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.388
	move.b %d4,%d2	| sample, SR.388
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_1032, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L155		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L245		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1655
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_1038, _1039
.L157:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1039, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L157		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp1657
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L159		|
.L334:
.L160:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _338, tmp1658
	add.l %a2,%d3	| _338, tmp1658
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _346
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
| voxel.c:436: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _346, _346
	move.w %d2,%d3	| z, z
.L161:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_952, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.386
	move.b %d4,%d2	| sample, SR.386
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_956, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L162		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L247		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1664
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_962, _963
.L164:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _963, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L164		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, tmp1666
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L161		|
.L332:
| voxel.c:436: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _346, _346
.L166:
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _346, _346
	move.w %d2,%d3	| z, z
.L172:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_876, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.384
	move.b %d4,%d2	| sample, SR.384
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_880, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L168		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L248		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1672
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_886, _887
.L170:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _887, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L170		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, tmp1674
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L172		|
.L333:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _346, _346
.L173:
	add.l %a2,%d3	| _346, tmp1675
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _344
| voxel.c:436: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _344, _344
	move.w %d2,%d3	| z, z
.L179:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_800, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.382
	move.b %d4,%d2	| sample, SR.382
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_804, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L175		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L249		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1681
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_810, _811
.L177:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _811, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L177		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _344, tmp1683
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L179		|
.L331:
| voxel.c:436: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _344, _344
.L180:
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
	move.l 98(%sp),%a2	| %sfp, fog_table_shifted
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _344, _344
	move.w %d2,%d3	| z, z
.L190:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_724, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.380
	move.b %d2,%d4	| sample, SR.380
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_728, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L182		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L250		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L183:
| voxel.c:397: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:453: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L184		|
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2704
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d2.l),%d2	| *_734, _735
.L185:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _735, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L185		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L189:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _344, tmp1700
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L190		|
.L330:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l %a6,%d3	| _344, _344
.L191:
	add.l %a6,%d3	| _344, tmp1701
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _342
| voxel.c:436: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
| voxel.c:439: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d7	|, fog_enabled
	jeq .L193		|
| voxel.c:439: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L193:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _342, _342
	move.w %d2,%d3	| z, z
.L202:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_647, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.378
	move.b %d2,%d4	| sample, SR.378
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_651, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L194		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L251		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L195:
| voxel.c:397: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:453: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L196		|
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2702
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d2.l),%d2	| *_657, _658
.L197:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _658, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L197		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L201:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _342, tmp1718
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L202		|
.L329:
| voxel.c:436: 	if (y < y_min) goto finish;
	move.l %a6,%d3	| _342, _342
.L203:
	cmp.w %d5,%d0	| y_min, y
	jlt .L204		|
| voxel.c:439: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d7	|, fog_enabled
	jeq .L205		|
| voxel.c:439: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L205:
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
	move.l %d3,%a6	| _342, _342
	move.w %d2,%d3	| z, z
.L214:
| voxel.c:371: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_570, sample
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.376
	move.b %d2,%d4	| sample, SR.376
| voxel.c:444: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_574, sample_y
| voxel.c:445: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L206		|
| voxel.c:447: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L252		|
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L207:
| voxel.c:397: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:453: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L208		|
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _2700
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d2.l),%d2	| *_580, _581
.L209:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _581, pBlock
| 0 "" 2
| voxel.c:459: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:460: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:461: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L209		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L213:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _342, tmp1735
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L214		|
.L204:
| voxel.c:869: 			state.y += y_offset;
	move.w %d0,%d3	| y, _2594
	add.w 54(%sp),%d3	| %sfp, _2594
	move.w %d3,%d2	| _2594, _2597
.L215:
| voxel.c:542: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w (%a5),%d0	| MEM[(short int *)_2179], _526
| voxel.c:542: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d3	| _526, _527
| voxel.c:542: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp1736
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp1737
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 60(%sp),%d0	| %sfp, tmp1739
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp1739, tmp1740
| voxel.c:358: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 64(%sp),%d0	| %sfp, tmp1741
	move.l 68(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp1741, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _527
	jle .L216		|
	mulu.w #160,%d3	|, tmp1742
	add.l %a0,%d3	| pBlock, _2023
.L217:
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 363 "voxel.c" 1
	movep.l %d6, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:536: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:534: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d3	| pBlock, _2023
	jne .L217		|
.L216:
| voxel.c:543: 	horizon[x] = y;
	move.w %d2,(%a5)	| _2597, MEM[(short int *)_2179]
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,50(%sp)	|, %sfp
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 84(%sp),%d3	| %sfp,
	add.l %d3,56(%sp)	|, %sfp
	lea (32,%a5),%a5	|, ivtmp.536
	cmp.w #319,50(%sp)	|, %sfp
	jls .L218		|
| voxel.c:873: 		unsigned long t_render_1 = *_hz_200;
	move.l 88(%sp),%d6	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:874: 		t_render += t_render_1 - t_render_0;
	sub.l 120(%sp),%d0	| %sfp, tmp1745
| voxel.c:874: 		t_render += t_render_1 - t_render_0;
	add.l %d0,110(%sp)	| tmp1745, %sfp
| voxel.c:500: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 124(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:505: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:503: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:506: 	unsigned short z = 0;
	clr.w %d1	| z
.L221:
	move.w %d1,%d4	| z, z
| voxel.c:515: 		z++;
	addq.w #1,%d1	|, z
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:516: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.l %d6,%d0	| sample_uv, uv
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d6	| delta_uv, tmp1746
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:508: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L219		|
| voxel.c:371: 	asm (
#APP
| 371 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:384: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:385: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d0.l),%d0	| *_1098, sample
| voxel.c:510: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.389
| voxel.c:511: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_1102, *_1102
	cmp.w %d5,%d0	| min_y, *_1102
	jge .L220		|
	move.w %d0,%d5	| *_1102, min_y
.L220:
| voxel.c:519: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp1752
	and.w #15,%d0	|, tmp1752
	jne .L219		|
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp1753
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:393: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp1754
| voxel.c:393: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L219:
| voxel.c:507: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L221		|
| voxel.c:880: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L253		|
	move.w #128,%a0	|, _2617
| voxel.c:882: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L222		|
| voxel.c:885: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp1755
	add.w %d5,%d5	| tmp1755, tmp1756
	add.w %d5,%d5	| tmp1756, sunlight
| voxel.c:888: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _2617
.L222:
	move.l %a0,-(%sp)	| _2617,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _101
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _102
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _102,
	muls.w %d3,%d0	| _101, tmp1762
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1763
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp1763, pos.x
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _108
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _108,
	muls.w %d3,%d0	| _101, tmp1766
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1767
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _113
	add.w %d0,%a0	| tmp1767, _113
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp1769
	sub.l 108(%sp),%d0	| %sfp, tmp1769
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp1770
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _101, _119
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _119, tmp1771
	asr.w #3,%d3	|, tmp1771
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _119, tmp1772
	asr.w #4,%d4	|, tmp1772
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp1772, tmp1773
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _126
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _119
	jle .L223		|
.L339:
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _126, _129
.L224:
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _113, pos.y
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _129, pos.speed
| voxel.c:897: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 108(%sp),%d3	| %sfp, rot
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _108, tmp1776
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, tmp1777
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _102, _141
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	move.w %d3,%d2	| rot,
	muls.w %d0,%d2	| _141, tmp1778
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d2	|, tmp1779
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d2,%d1	| tmp1779, _148
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _141,
	muls.w %d0,%d2	| _141, tmp1780
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1781
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _148,
	muls.w %d1,%d3	| _148, tmp1782
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp1783
| voxel.c:902: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, tmp1784
	add.w %d3,%a0	| tmp1783, tmp1784
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| tmp1784, tmp1785
	moveq #-128,%d3	|, tmp1786
	add.l %a0,%d3	| tmp1785, tmp1786
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, tmp1787
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _384
	sub.w %d3,%d2	| tmp1787, _384
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _384, tmp1790
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1791
| voxel.c:903: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp1789
	clr.w %d0	| tmp1789
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _148, tmp1796
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1797
| voxel.c:903: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| tmp1797, tmp1789
	move.l %d0,_pos+6	| tmp1789, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:906: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		if (pressed_keys.up) {
	jpl .L225		|
| voxel.c:907: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L255		|
| voxel.c:910: 			desired_height += FIXP(1, 0);
	move.w 92(%sp),%d0	| %sfp, _2619
.L226:
	add.w #128,%d0	|, _2619
	move.w %d0,92(%sp)	| _2619, %sfp
| voxel.c:911: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L225		|
	move.w #32512,92(%sp)	|, %sfp
.L225:
| voxel.c:915: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:915: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L228		|
| voxel.c:916: 			if (desired_height < FIXP(0, 0)) {
	tst.w 92(%sp)	| %sfp
	jlt .L229		|
| voxel.c:919: 			desired_height -= FIXP(1, 0);
	move.w 92(%sp),118(%sp)	| %sfp, %sfp
.L229:
| voxel.c:924: 		if (key == 0x23) {
	cmp.b #35,128(%sp)	|, %sfp
	jeq .L256		|
| voxel.c:919: 			desired_height -= FIXP(1, 0);
	move.w 118(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,92(%sp)	|, %sfp
| voxel.c:920: 			if (desired_height < FIXP(0, 0)) {
	jmi .L324		|
.L232:
| voxel.c:931: 		} else if (key == 0x20) {
	cmp.b #32,128(%sp)	|, %sfp
	jeq .L325		|
.L230:
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1809
	and.w #8192,%d0	|, _1929
| voxel.c:220: 	data &= mask;
	move.l 68(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp1810
	and.l #-536879105,%d3	|, tmp1810
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1929
	move.w %d0,%d1	| _1929, _1929
| voxel.c:220: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp1815
	and.l #-536879105,%d4	|, tmp1815
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1929
	swap %d2	| _1929
	clr.w %d2	| _1929
	move.w %d0,%d2	| _1929, _1929
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _1929, tmp1815
	move.l %d4,(%a3)	| tmp1815, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _1929, tmp1810
	move.l %d3,4(%a3)	| tmp1810, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1823
	and.b #1,%d0	|, _160
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1826
	ext.w %d0	| tmp1825
	neg.w %d0	| tmp1827
	lsl.w %d1,%d0	|, _2667
| voxel.c:220: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp1828
	and.l #-536879105,%d3	|, tmp1828
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2667
	move.w %d0,%d1	| _2667, _2667
| voxel.c:220: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp1833
	and.l #-536879105,%d4	|, tmp1833
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2667
	swap %d2	| _2667
	clr.w %d2	| _2667
	move.w %d0,%d2	| _2667, _2667
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2667, tmp1833
	move.l %d4,640(%a3)	| tmp1833, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2667, tmp1828
	move.l %d3,644(%a3)	| tmp1828, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp1841
	and.b #1,%d0	|, _161
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp1844
	ext.w %d0	| tmp1843
	move.w %d0,%d1	| tmp1843, _1423
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1423
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1847
	and.b #1,%d0	|, _162
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1850
	ext.w %d0	| tmp1849
	neg.w %d0	| tmp1851
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _612
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d3	| _1423, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d2	| _1423, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:232: 	data &= mask;
	or.w %d1,%d4	| _1423, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp1856
	not.w %d1	| tmp1856
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1855
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1931
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _612, data
| voxel.c:220: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1931, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _612, data
| voxel.c:224: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1931, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:232: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1931, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	addq.w #8,102(%sp)	|, %sfp
.L328:
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1545
#APP
| 721 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1545
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:721: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1953
	jne .L326		|
.L244:
	clr.b 128(%sp)	| %sfp
| voxel.c:801: 		frames++;
	addq.l #1,114(%sp)	|, %sfp
| voxel.c:133: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.46_327
	move.w (%a0),%d0	| *hw_palette.46_327, _328
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d6	| MEM <unsigned int> [(short int *)&pos], _332
| voxel.c:806: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp1553
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp1555
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp1557
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp1559
	moveq #9,%d2	|,
	lsl.l %d2,%d0	|, tmp1560
	add.l %d1,%d0	| tmp1559, tmp1561
	add.l %d0,%d0	| tmp1561, tmp1562
| voxel.c:805: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_21][_24].D.2718.height, combined[_21][_24].D.2718.height
	lsr.b #1,%d0	|, tmp1565
| voxel.c:806: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp1567
	lsl.w #7,%d0	|, tmp1568
	move.w %d3,%d4	| _28,
	sub.w %d0,%d4	| tmp1568,
	move.w %d4,118(%sp)	|, %sfp
| voxel.c:807: 		if (desired_height >= 0) {
	tst.w 92(%sp)	| %sfp
	jge .L147		|
.L323:
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _2348
| voxel.c:842: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d1	| _2348
	move.w %d3,%d1	| _2348, _2348
	move.l #256,%d0	|, tmp1570
	sub.l %d1,%d0	| _2348, tmp1570
	move.l %d0,%d1	| tmp1570, _2357
	add.l %d0,%d1	| tmp1570, _2357
| voxel.c:498: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1572
	sub.w %d3,%a0	| _2348, tmp1572
| voxel.c:500: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1572, tmp1573
	add.l %a0,%a0	| tmp1573, tmp1573
	move.l %a0,124(%sp)	| tmp1573, %sfp
| voxel.c:815: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_40
	move.w -602(%a0),108(%sp)	| MEM[(short int *)__aline.3_40 + 4294966694B], %sfp
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d6	|, sample_uv
| voxel.c:818: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,120(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 102(%sp),%d2	| %sfp, _43
	and.w #8,%d2	|, _43
| voxel.c:821: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, tmp1903
	move.w %d2,50(%sp)	| tmp1903, %sfp
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_40 + 4294966696B],
	move.l %a0,104(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp1595
	add.l %a0,%d0	|, tmp1595
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp1595
	move.l %d0,80(%sp)	| tmp1595, %sfp
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 108(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp1597
	add.l #-160,%d0	|, tmp1597
| voxel.c:827: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,72(%sp)	| pos.diry, %sfp
| voxel.c:834: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,76(%sp)	| pos.dirx, %sfp
| voxel.c:842: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2357
	move.l %d1,94(%sp)	| _2357, %sfp
	move.b %d7,%d3	| fog_enabled,
	eor.b #1,%d3	|,
	move.b %d3,129(%sp)	|, %sfp
	btst #0,%d7	|, fog_enabled
	jeq .L327		|
.L152:
	move.l #_fog_table+40,98(%sp)	|, %sfp
| voxel.c:533: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d3	| pdata_table[15][0][0], movep_data
	move.l %d0,%d4	| _49,
	lsl.l #4,%d4	|,
	move.l %d4,84(%sp)	|, %sfp
	and.l #65535,%d2	|, x
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| x,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,56(%sp)	| tmp1956, %sfp
	add.l %d2,%d2	| x, tmp1610
	move.l %d2,%a6	| tmp1610, ivtmp.536
	add.l #_horizon,%a6	|, ivtmp.536
	move.l %d6,88(%sp)	| sample_uv, %sfp
	move.l %d3,%d6	| movep_data, movep_data
	move.l %a6,%a5	| ivtmp.536, ivtmp.536
	jra .L218		|
.L322:
| voxel.c:948: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:949: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 130(%sp),%a0	| %sfp, tmp1862
| voxel.c:949: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp1862, tmp1864
	add.l %a0,%d0	| tmp1862, tmp1864
	add.l %d0,%d0	| tmp1864, tmp1865
| voxel.c:950: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp1869
	move.l 114(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp1869
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp1958, tmp1870
| voxel.c:951: 	print("Total time per frame: ");
	pea .LC16		|
	jsr _print		|
| voxel.c:952: 	printnum(millis_per_frame);
	move.l %d2,-(%sp)	| tmp1870,
	jsr _printnum		|
| voxel.c:953: 	print("\r\nTime spent rendering terrain: ");
	pea .LC17		|
	jsr _print		|
| voxel.c:954: 	printnum(t_render * 5 / frames);
	move.l 122(%sp),%d0	| %sfp, tmp1875
	add.l %d0,%d0	|, tmp1875
	add.l %d0,%d0	| tmp1875, tmp1876
| voxel.c:954: 	printnum(t_render * 5 / frames);
	move.l 126(%sp),-(%sp)	| %sfp,
	move.l 126(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp1869
| voxel.c:954: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1959,
	jsr _printnum		|
| voxel.c:955: 	print("\r\n");
	pea .LC4		|
	jsr _print		|
| voxel.c:956: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:957: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (20,%sp),%sp	|,
.L134:
| voxel.c:960: 	print("Press any key to exit to TOS.\r\n");
	pea .LC18		|
	jsr _print		|
| voxel.c:725: 	while (Bconstat(_CON))
	addq.l #4,%sp	|,
| voxel.c:725: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp1888
.L235:
#APP
| 725 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1888
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp1960
	jne .L235		|
| voxel.c:727: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp1890
.L236:
#APP
| 727 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1890
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:727: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp1961
	jeq .L236		|
| voxel.c:729: 	Bconin(_CON);
#APP
| 729 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1890
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:962: 	install_palette(saved_palette);
#NO_APP
	pea 148(%sp)		|
	jsr _install_palette		|
| voxel.c:963: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:964: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (136,%sp),%sp	|,
	rts	
.L325:
	move.b 129(%sp),%d7	| %sfp, fog_enabled
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1809
	and.w #8192,%d0	|, _1929
| voxel.c:220: 	data &= mask;
	move.l 68(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp1810
	and.l #-536879105,%d3	|, tmp1810
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1929
	move.w %d0,%d1	| _1929, _1929
| voxel.c:220: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp1815
	and.l #-536879105,%d4	|, tmp1815
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1929
	swap %d2	| _1929
	clr.w %d2	| _1929
	move.w %d0,%d2	| _1929, _1929
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _1929, tmp1815
	move.l %d4,(%a3)	| tmp1815, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _1929, tmp1810
	move.l %d3,4(%a3)	| tmp1810, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1823
	and.b #1,%d0	|, _160
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1826
	ext.w %d0	| tmp1825
	neg.w %d0	| tmp1827
	lsl.w %d1,%d0	|, _2667
| voxel.c:220: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp1828
	and.l #-536879105,%d3	|, tmp1828
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2667
	move.w %d0,%d1	| _2667, _2667
| voxel.c:220: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp1833
	and.l #-536879105,%d4	|, tmp1833
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2667
	swap %d2	| _2667
	clr.w %d2	| _2667
	move.w %d0,%d2	| _2667, _2667
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2667, tmp1833
	move.l %d4,640(%a3)	| tmp1833, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2667, tmp1828
	move.l %d3,644(%a3)	| tmp1828, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp1841
	and.b #1,%d0	|, _161
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp1844
	ext.w %d0	| tmp1843
	move.w %d0,%d1	| tmp1843, _1423
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1423
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1847
	and.b #1,%d0	|, _162
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1850
	ext.w %d0	| tmp1849
	neg.w %d0	| tmp1851
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _612
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d3	| _1423, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d2	| _1423, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:232: 	data &= mask;
	or.w %d1,%d4	| _1423, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp1856
	not.w %d1	| tmp1856
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1855
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1931
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _612, data
| voxel.c:220: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1931, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _612, data
| voxel.c:224: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1931, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:232: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1931, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	addq.w #8,102(%sp)	|, %sfp
	jra .L328		|
.L324:
| voxel.c:920: 			if (desired_height < FIXP(0, 0)) {
	clr.w 92(%sp)	| %sfp
| voxel.c:931: 		} else if (key == 0x20) {
	cmp.b #32,128(%sp)	|, %sfp
	jne .L230		|
	jra .L325		|
.L206:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L213		|
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L336:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _342, tmp1735
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L214		|
	jra .L204		|
.L194:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L201		|
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L335:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _342, tmp1718
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L202		|
	jra .L329		|
.L182:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L189		|
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L337:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d1	| _344, tmp1700
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L190		|
	jra .L330		|
.L175:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _344, tmp1683
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L179		|
	jra .L331		|
.L162:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, tmp1666
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L161		|
	jra .L332		|
.L168:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, tmp1674
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L172		|
	jra .L333		|
.L155:
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _338, tmp1657
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:442: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L159		|
	jra .L334		|
.L245:
| voxel.c:449: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1655
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_1038, _1039
	jra .L157		|
.L196:
| voxel.c:402: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1246,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:403: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _672
	move.w %a3,%d2	| offset, _672
	move.l %d2,%a3	| _672, tmp1904
	add.l #_pdata_table,%a3	|, tmp1904
.L199:
| voxel.c:467: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp1711
	and.l %d0,%d2	| y, tmp1711
	add.l %d2,%d2	| tmp1711, tmp1712
	add.l %d2,%d2	| tmp1712, tmp1713
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_678, *_678
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_678, pBlock
| 0 "" 2
| voxel.c:469: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:470: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:471: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L199		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L335		|
.L248:
| voxel.c:449: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1672
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_886, _887
	jra .L170		|
.L247:
| voxel.c:449: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1664
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_962, _963
	jra .L164		|
.L208:
| voxel.c:402: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1227,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:403: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _595
	move.w %a3,%d2	| offset, _595
	move.l %d2,%a3	| _595, tmp1902
	add.l #_pdata_table,%a3	|, tmp1902
.L211:
| voxel.c:467: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp1728
	and.l %d0,%d2	| y, tmp1728
	add.l %d2,%d2	| tmp1728, tmp1729
	add.l %d2,%d2	| tmp1729, tmp1730
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_601, *_601
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_601, pBlock
| 0 "" 2
| voxel.c:469: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:470: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:471: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L211		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L336		|
.L252:
| voxel.c:449: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L207		|
.L251:
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L195		|
.L249:
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1681
| voxel.c:398: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|,
	move.l (%a3,%d4.l),%d4	| *_810, _811
	jra .L177		|
.L184:
| voxel.c:402: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_928,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:403: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _749
	move.w %a3,%d2	| offset, _749
	move.l %d2,%a3	| _749, tmp1905
	add.l #_pdata_table,%a3	|, tmp1905
.L187:
| voxel.c:467: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp1693
	and.l %d0,%d2	| y, tmp1693
	add.l %d2,%d2	| tmp1693, tmp1694
	add.l %d2,%d2	| tmp1694, tmp1695
| voxel.c:363: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_755, *_755
#APP
| 363 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_755, pBlock
| 0 "" 2
| voxel.c:469: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:470: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:471: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L187		|
| voxel.c:476: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:477: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L337		|
.L250:
| voxel.c:449: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L183		|
.L149:
| voxel.c:811: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L150		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _28, _38
| voxel.c:812: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jle .L338		|
.L151:
| voxel.c:812: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,124(%sp)	|, %sfp
	jra .L148		|
.L228:
| voxel.c:924: 		if (key == 0x23) {
	cmp.b #35,128(%sp)	|, %sfp
	jne .L232		|
| voxel.c:926: 			if (desired_height < 0) {
	tst.w 92(%sp)	| %sfp
	jge .L256		|
| voxel.c:927: 				desired_height = player_height;
	move.w 118(%sp),92(%sp)	| %sfp, %sfp
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1809
	and.w #8192,%d0	|, _1929
| voxel.c:220: 	data &= mask;
	move.l 68(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp1810
	and.l #-536879105,%d3	|, tmp1810
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1929
	move.w %d0,%d1	| _1929, _1929
| voxel.c:220: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp1815
	and.l #-536879105,%d4	|, tmp1815
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1929
	swap %d2	| _1929
	clr.w %d2	| _1929
	move.w %d0,%d2	| _1929, _1929
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _1929, tmp1815
	move.l %d4,(%a3)	| tmp1815, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _1929, tmp1810
	move.l %d3,4(%a3)	| tmp1810, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1823
	and.b #1,%d0	|, _160
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1826
	ext.w %d0	| tmp1825
	neg.w %d0	| tmp1827
	lsl.w %d1,%d0	|, _2667
| voxel.c:220: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp1828
	and.l #-536879105,%d3	|, tmp1828
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2667
	move.w %d0,%d1	| _2667, _2667
| voxel.c:220: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp1833
	and.l #-536879105,%d4	|, tmp1833
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2667
	swap %d2	| _2667
	clr.w %d2	| _2667
	move.w %d0,%d2	| _2667, _2667
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2667, tmp1833
	move.l %d4,640(%a3)	| tmp1833, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2667, tmp1828
	move.l %d3,644(%a3)	| tmp1828, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp1841
	and.b #1,%d0	|, _161
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp1844
	ext.w %d0	| tmp1843
	move.w %d0,%d1	| tmp1843, _1423
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1423
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1847
	and.b #1,%d0	|, _162
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1850
	ext.w %d0	| tmp1849
	neg.w %d0	| tmp1851
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _612
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d3	| _1423, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d2	| _1423, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:232: 	data &= mask;
	or.w %d1,%d4	| _1423, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp1856
	not.w %d1	| tmp1856
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1855
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1931
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _612, data
| voxel.c:220: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1931, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _612, data
| voxel.c:224: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1931, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:232: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1931, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	addq.w #8,102(%sp)	|, %sfp
	jra .L328		|
.L253:
	sub.l %a0,%a0	| _2617
| voxel.c:888: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2617,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _101
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _102
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _102,
	muls.w %d3,%d0	| _101, tmp1762
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1763
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| tmp1763, pos.x
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _108
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _108,
	muls.w %d3,%d0	| _101, tmp1766
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1767
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _113
	add.w %d0,%a0	| tmp1767, _113
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, tmp1769
	sub.l 108(%sp),%d0	| %sfp, tmp1769
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, tmp1770
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _101, _119
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _119, tmp1771
	asr.w #3,%d3	|, tmp1771
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _119, tmp1772
	asr.w #4,%d4	|, tmp1772
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp1772, tmp1773
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _126
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _119
	jgt .L339		|
.L223:
| voxel.c:896: 		else pos.speed += drag;
	add.w %d3,%d0	| _126, _129
	jra .L224		|
.L256:
| voxel.c:929: 				desired_height = -1;
	move.w #-1,92(%sp)	|, %sfp
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp1809
	and.w #8192,%d0	|, _1929
| voxel.c:220: 	data &= mask;
	move.l 68(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp1810
	and.l #-536879105,%d3	|, tmp1810
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1929
	move.w %d0,%d1	| _1929, _1929
| voxel.c:220: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp1815
	and.l #-536879105,%d4	|, tmp1815
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1929
	swap %d2	| _1929
	clr.w %d2	| _1929
	move.w %d0,%d2	| _1929, _1929
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _1929, tmp1815
	move.l %d4,(%a3)	| tmp1815, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _1929, tmp1810
	move.l %d3,4(%a3)	| tmp1810, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1823
	and.b #1,%d0	|, _160
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1826
	ext.w %d0	| tmp1825
	neg.w %d0	| tmp1827
	lsl.w %d1,%d0	|, _2667
| voxel.c:220: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp1828
	and.l #-536879105,%d3	|, tmp1828
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2667
	move.w %d0,%d1	| _2667, _2667
| voxel.c:220: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp1833
	and.l #-536879105,%d4	|, tmp1833
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2667
	swap %d2	| _2667
	clr.w %d2	| _2667
	move.w %d0,%d2	| _2667, _2667
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2667, tmp1833
	move.l %d4,640(%a3)	| tmp1833, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2667, tmp1828
	move.l %d3,644(%a3)	| tmp1828, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d0	|, tmp1841
	and.b #1,%d0	|, _161
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d0		| tmp1844
	ext.w %d0	| tmp1843
	move.w %d0,%d1	| tmp1843, _1423
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1423
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp1847
	and.b #1,%d0	|, _162
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp1850
	ext.w %d0	| tmp1849
	neg.w %d0	| tmp1851
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _612
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d3	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d3	| _1423, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d2	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d2	| _1423, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d4	|, data
| voxel.c:232: 	data &= mask;
	or.w %d1,%d4	| _1423, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 92(%sp),%d1	| %sfp, tmp1856
	not.w %d1	| tmp1856
	moveq #15,%d6	|,
	lsr.w %d6,%d1	|, tmp1855
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1931
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d3	| _612, data
| voxel.c:220: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d1,%d3	| _1931, data
	move.w %d3,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d2	| _612, data
| voxel.c:224: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _1931, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d4,%d0	| data, data
| voxel.c:232: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1931, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	addq.w #8,102(%sp)	|, %sfp
	jra .L328		|
.L255:
	move.w 118(%sp),%d0	| %sfp, _2619
	jra .L226		|
.L321:
| voxel.c:760: 		print("Failed to load voxel data.\r\n");
	pea .LC10		|
	jsr _print		|
| voxel.c:761: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:960: 	print("Press any key to exit to TOS.\r\n");
	pea .LC18		|
	jsr _print		|
| voxel.c:725: 	while (Bconstat(_CON))
	addq.l #4,%sp	|,
| voxel.c:725: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp1888
	jra .L235		|
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
