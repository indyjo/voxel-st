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
	move.l #_y_table+1024,%d6	|, ivtmp.320
| voxel.c:253: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:252: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:251: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp251
	lea _fog_table,%a5	|, tmp252
.L21:
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _157
	lsr.w #7,%d0	|, _157
| voxel.c:255: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _157, _3
| voxel.c:257: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:257: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _58
	add.w #45,%d2	|, _58
| voxel.c:257: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.320, ivtmp.309
	move.w #-17920,%a2	|, ivtmp.306
.L22:
| voxel.c:255: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.306,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:257: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _58,
	sub.w %d0,%d1	| tmp280,
	move.w %d1,(%a3)+	|, MEM[(short int *)_250]
| voxel.c:254: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.306
	cmp.w #17920,%a2	|, ivtmp.306
	jne .L22		|
| voxel.c:260: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:262: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp172
	and.l %d4,%d0	| z, tmp172
| voxel.c:262: 		if (TRIGGERS_PROGRESSION(z))
	jne .L23		|
| voxel.c:84: 	return x + x;
	add.w %d7,%d7	| step, step
.L23:
| voxel.c:265: 		int rel_dist = z - FOG_START;
	moveq #-40,%d0	|, rel_dist
	add.l %d4,%d0	| z, rel_dist
| voxel.c:266: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L76		|
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:253: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:253: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.320
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
.L77:
	lea _combined+1025,%a1	|, ivtmp.297
	clr.b %d2	| max_height_lsm_flag.220
	clr.b %d1	| max_height_lsm.219
.L25:
	lea (-1024,%a1),%a0	|, ivtmp.297, ivtmp.290
.L27:
| voxel.c:274: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_368], _20
| voxel.c:274: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _20, max_height_lsm.219
	jcc .L26		|
| voxel.c:275: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _20, max_height_lsm.219
| voxel.c:274: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.220
.L26:
| voxel.c:273: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.290
	cmp.l %a0,%a1	| ivtmp.290, ivtmp.297
	jne .L27		|
| voxel.c:272: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.290, ivtmp.297
	cmp.l #_combined+524289,%a0	|, ivtmp.290
	jne .L25		|
	tst.b %d2	| max_height_lsm_flag.220
	jeq .L56		|
| voxel.c:279: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_341
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:281: 	int bayer[8][8] = {
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
| voxel.c:291: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L29:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
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
| voxel.c:292: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a4,%a4	| fog
.L52:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sle %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jgt .L44		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L44:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jgt .L45		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L45:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jgt .L46		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L46:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jgt .L47		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L47:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jgt .L48		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L48:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jgt .L49		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L49:
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jgt .L50		|
| voxel.c:297: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L50:
| voxel.c:302: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:240: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _186
	move.b %d7,%d1	|, _186
| voxel.c:240: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:241: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _186,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:242: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _186
	move.l %d1,68(%sp)	| _186, %sfp
| voxel.c:240: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _168
	and.l %d0,%d7	| mask, _168
| voxel.c:240: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _168, iftmp.40_169
	lsl.w #8,%d6	|, iftmp.40_169
	swap %d6	| iftmp.40_169
	clr.w %d6	| iftmp.40_169
| voxel.c:241: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _168,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.41_172
| voxel.c:242: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _168,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.42_178
| voxel.c:304: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.270
| voxel.c:299: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L42:
	move.b %d3,%d5	| color1, _120
	btst #1,%d3	|, color1
	jeq .L30		|
	move.l 64(%sp),%d0	| %sfp, iftmp.41_190
.L31:
	btst #0,%d3	|, color1
	jeq .L32		|
	move.l 60(%sp),%d1	| %sfp, iftmp.40_187
.L33:
	or.l %d1,%d0	| iftmp.40_187, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _120
	jeq .L34		|
	move.l 68(%sp),%d4	| %sfp, iftmp.42_196
.L35:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _120
	jeq .L36		|
	move.b 55(%sp),%d0	| %sfp, _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.262
	neg.l %d2	| ivtmp.262
	move.l %a3,%a0	| ivtmp.270, ivtmp.263
	move.l %d7,44(%sp)	| _168, %sfp
.L41:
	move.b %d5,%d0	| _120, _146
	add.b %d2,%d0	| ivtmp.262, _146
| voxel.c:240: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _146, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.40_169, tmp224
	or.l %d4,%d1	| _334, _33
| voxel.c:241: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _146
	jeq .L38		|
	move.l %a2,%d7	| iftmp.41_172,
	or.l %d7,%d1	|, _33
.L38:
| voxel.c:242: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _146
	jeq .L39		|
	move.l %a1,%d7	| iftmp.42_178,
	or.l %d7,%d1	|, _33
.L39:
| voxel.c:243: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _146
	jeq .L40		|
	or.l 44(%sp),%d1	| %sfp, _33
.L40:
| voxel.c:305: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.262, tmp229
| voxel.c:307: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| fog, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _33, pdata_table[index1_277][fog_232][y_230]
| voxel.c:307: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d1,(%a0)	| _33, MEM[(unsigned int *)_144]
| voxel.c:300: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.262
	lea (-3840,%a0),%a0	|, ivtmp.263
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.262,
	jne .L41		|
| voxel.c:299: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _168
	addq.l #1,%d3	|, color1
| voxel.c:299: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.270
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L42		|
| voxel.c:292: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #1,%a4	|, fog
| voxel.c:292: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| fog,
	jne .L52		|
| voxel.c:291: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:291: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L29		|
| voxel.c:316: 	short top_envelope[20] = {
	move.l #1048590,116(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,120(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,124(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,128(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,132(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,136(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,140(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655371,144(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #786466,148(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #2228258,152(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:322: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.243
	lea _view_min+80,%a6	|, ivtmp.246
	lea _view_min,%a1	|, tmp254
	move.l %a1,%a5	| tmp254, ivtmp.248
	lea (156,%sp),%a4	|,, ivtmp.250
	lea _view_max+80,%a3	|, ivtmp.253
	lea _view_max,%a2	|, ivtmp.255
	moveq #40,%d1	|, _325
	add.l %a0,%d1	| ivtmp.243, _325
.L53:
| voxel.c:330: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_317], _38
| voxel.c:330: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_320]
| voxel.c:330: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_321]
| voxel.c:331: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_322], _42
| voxel.c:331: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_299]
| voxel.c:331: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_323]
| voxel.c:329: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.243, _325
	jne .L53		|
	lea _horizon,%a0	|, ivtmp.236
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L54:
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_184]
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:338: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L54		|
| voxel.c:339: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L76:
| voxel.c:266: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d0	| rel_dist
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp177
	lsl.l #8,%d1	|, tmp177
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp177
	move.l %d1,-(%sp)	| tmp177,
	jsr (%a4)		| tmp251
	addq.l #8,%sp	|,
| voxel.c:268: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _145 * 1]
| voxel.c:253: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:253: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.320
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
	jra .L77		|
.L36:
	clr.b %d0	| _26
	or.b %d0,%d4	| _26, _334
	move.l %d3,%d2	| color1, ivtmp.262
	neg.l %d2	| ivtmp.262
| voxel.c:299: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.270, ivtmp.263
	move.l %d7,44(%sp)	| _168, %sfp
	jra .L41		|
.L34:
	moveq #0,%d4	| iftmp.42_196
	jra .L35		|
.L32:
	moveq #0,%d1	| iftmp.40_187
	jra .L33		|
.L30:
	moveq #0,%d0	| iftmp.41_190
	jra .L31		|
.L56:
| voxel.c:272: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_341
| voxel.c:279: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_341, max_height
| voxel.c:281: 	int bayer[8][8] = {
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
| voxel.c:291: 	for (int y = 0; y < 8; y++) {
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
	lea (-8232,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 8280(%sp),%d3	| screen, screen
| voxel.c:762: 	print("Loading colors.tga\r\n");
	pea .LC1		|
	lea _print,%a4	|, tmp366
	jsr (%a4)		| tmp366
| voxel.c:763: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC2,%d0	|, tmp235
	clr.w %d4	| tmp236
#APP
| 763 "voxel.c" 1
	movw	%d4,%sp@-	| tmp236
	movl	%d0,%sp@-	| tmp235
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,56(%sp)	| tmp372, %sfp
| voxel.c:764: 	if (file1 < 0) {
	addq.l #4,%sp	|,
	jmi .L119		|
| voxel.c:768: 	image_t texture = read_tga_header(file1);
	move.l 52(%sp),-(%sp)	| %sfp,
	lea (60,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w 58(%sp),%a5	| %sfp, _699
| voxel.c:769: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 56(%sp)	| texture.width
	jne .L120		|
.L81:
| voxel.c:827: 	Fclose(file1);
	move.w 54(%sp),%d4	| %sfp,
#APP
| 827 "voxel.c" 1
	movw	%d4,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L101:
| voxel.c:829: 	return 0;
	moveq #0,%d0	| <retval>
.L78:
| voxel.c:830: }
	movem.l (%sp)+,#31996	|,
	lea (8232,%sp),%sp	|,
	rts	
.L120:
| voxel.c:771: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 64(%sp),%a0	| texture.colors, _2
| voxel.c:771: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:772: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:773: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:775: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:776: 	set_palette_immediately(texture.colors);
	move.l 68(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	moveq #92,%d6	|, ivtmp.338
	add.l %sp,%d6	|, ivtmp.338
	move.w 62(%sp),%d4	| %sfp,
	move.l #8192,%d5	|,
#APP
| 781 "voxel.c" 1
	movl	%d6,%sp@-	| ivtmp.338
	movl	%d5,%sp@-	|
	movw	%d4,%sp@-	|
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp373, n
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
	tst.l %d0	| n
	jeq .L91		|
| voxel.c:780: 	short lines_remaining = 200;
	move.w #200,%a3	|, lines_remaining
| voxel.c:779: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:778: 	size_t n, remaining = 512*512;
	moveq #4,%d5	|, remaining
	swap %d5	| remaining
	move.l %d5,48(%sp)	| remaining, %sfp
	move.w %a3,%d7	| lines_remaining, lines_remaining
	move.l %d4,%a3	| p, p
| voxel.c:782: 		remaining -= n;
	move.l %a2,%d0	| n,
	sub.l %d0,48(%sp)	|, %sfp
| voxel.c:783: 		print(".");
	pea .LC7		|
	jsr (%a4)		| tmp366
	move.l %a2,%d0	| n, _623
	add.l %d6,%d0	| ivtmp.338, _623
	addq.l #4,%sp	|,
	move.l %d6,%a1	| ivtmp.338, ivtmp.375
	move.l %a3,%a0	| p, p
.L85:
| voxel.c:785: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_621], MEM[(unsigned char *)p_257]
| voxel.c:786: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:784: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.375, _623
	jne .L85		|
	move.l %a2,%d0	| n, tmp253
	add.l %a2,%d0	| n, tmp253
	add.l %d0,%a3	| tmp253, p
| voxel.c:788: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	tst.w %d7	| lines_remaining
	jle .L103		|
	move.l %sp,%d2	|, ivtmp.368
	add.l #404,%d2	|, ivtmp.368
	move.l %a2,%d0	| n, tmp256
	subq.l #1,%d0	|, tmp256
	moveq #9,%d1	|,
	lsr.l %d1,%d0	|, tmp257
	move.w %d7,%d4	| lines_remaining, tmp255
	subq.w #1,%d4	|, tmp255
	sub.w %d0,%d4	| tmp257, lines_remaining
	move.w %d7,%d5	| lines_remaining, lines_remaining
.L88:
| voxel.c:789: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	move.l %d2,%a0	| ivtmp.368, in
	lea (-320,%a0),%a0	|, in
| voxel.c:387: 	const unsigned int *table = c2p_table[odd];
	moveq #1,%d0	|, tmp259
	and.l %d5,%d0	| lines_remaining, tmp259
	neg.l %d0	| tmp260
	and.l #1024,%d0	|, tmp261
	move.l %d0,%a1	| tmp261, table
	add.l #_c2p_table,%a1	|, table
	move.l %d3,%a2	| screen, out
.L87:
| voxel.c:390: 		pdata |= table[*in++] & 0x80808080;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282]
	move.b (%a0),%d0	| MEM[(const unsigned char *)in_282], MEM[(const unsigned char *)in_282]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282], tmp264
	add.l %d0,%d0	| tmp264, tmp265
| voxel.c:390: 		pdata |= table[*in++] & 0x80808080;
	move.l (%a1,%d0.l),%d1	| *_113, tmp266
	and.l #-2139062144,%d1	|, tmp266
| voxel.c:391: 		pdata |= table[*in++] & 0x40404040;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 1B]
	move.b 1(%a0),%d0	| MEM[(const unsigned char *)in_282 + 1B], MEM[(const unsigned char *)in_282 + 1B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 1B], tmp269
	add.l %d0,%d0	| tmp269, tmp270
| voxel.c:391: 		pdata |= table[*in++] & 0x40404040;
	move.l (%a1,%d0.l),%d0	| *_119, tmp271
	and.l #1077952576,%d0	|, tmp271
| voxel.c:391: 		pdata |= table[*in++] & 0x40404040;
	or.l %d0,%d1	| tmp271, pdata
| voxel.c:392: 		pdata |= table[*in++] & 0x20202020;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 2B]
	move.b 2(%a0),%d0	| MEM[(const unsigned char *)in_282 + 2B], MEM[(const unsigned char *)in_282 + 2B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 2B], tmp274
	add.l %d0,%d0	| tmp274, tmp275
| voxel.c:392: 		pdata |= table[*in++] & 0x20202020;
	move.l (%a1,%d0.l),%d0	| *_126, tmp276
	and.l #538976288,%d0	|, tmp276
| voxel.c:392: 		pdata |= table[*in++] & 0x20202020;
	or.l %d0,%d1	| tmp276, pdata
| voxel.c:393: 		pdata |= table[*in++] & 0x10101010;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 3B]
	move.b 3(%a0),%d0	| MEM[(const unsigned char *)in_282 + 3B], MEM[(const unsigned char *)in_282 + 3B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 3B], tmp279
	add.l %d0,%d0	| tmp279, tmp280
| voxel.c:393: 		pdata |= table[*in++] & 0x10101010;
	move.l (%a1,%d0.l),%d0	| *_133, tmp281
	and.l #269488144,%d0	|, tmp281
| voxel.c:393: 		pdata |= table[*in++] & 0x10101010;
	or.l %d0,%d1	| tmp281, pdata
| voxel.c:394: 		pdata |= table[*in++] & 0x08080808;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 4B]
	move.b 4(%a0),%d0	| MEM[(const unsigned char *)in_282 + 4B], MEM[(const unsigned char *)in_282 + 4B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 4B], tmp284
	add.l %d0,%d0	| tmp284, tmp285
| voxel.c:394: 		pdata |= table[*in++] & 0x08080808;
	move.l (%a1,%d0.l),%d0	| *_140, tmp286
	and.l #134744072,%d0	|, tmp286
| voxel.c:394: 		pdata |= table[*in++] & 0x08080808;
	or.l %d0,%d1	| tmp286, pdata
| voxel.c:395: 		pdata |= table[*in++] & 0x04040404;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 5B]
	move.b 5(%a0),%d0	| MEM[(const unsigned char *)in_282 + 5B], MEM[(const unsigned char *)in_282 + 5B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 5B], tmp289
	add.l %d0,%d0	| tmp289, tmp290
| voxel.c:395: 		pdata |= table[*in++] & 0x04040404;
	move.l (%a1,%d0.l),%d0	| *_147, tmp291
	and.l #67372036,%d0	|, tmp291
| voxel.c:395: 		pdata |= table[*in++] & 0x04040404;
	or.l %d0,%d1	| tmp291, pdata
| voxel.c:396: 		pdata |= table[*in++] & 0x02020202;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 6B]
	move.b 6(%a0),%d0	| MEM[(const unsigned char *)in_282 + 6B], MEM[(const unsigned char *)in_282 + 6B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 6B], tmp294
	add.l %d0,%d0	| tmp294, tmp295
| voxel.c:396: 		pdata |= table[*in++] & 0x02020202;
	move.l (%a1,%d0.l),%d0	| *_154, tmp296
	and.l #33686018,%d0	|, tmp296
| voxel.c:396: 		pdata |= table[*in++] & 0x02020202;
	or.l %d0,%d1	| tmp296, pdata
| voxel.c:397: 		pdata |= table[*in++] & 0x01010101;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 7B]
	move.b 7(%a0),%d0	| MEM[(const unsigned char *)in_282 + 7B], MEM[(const unsigned char *)in_282 + 7B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 7B], tmp299
	add.l %d0,%d0	| tmp299, tmp300
| voxel.c:397: 		pdata |= table[*in++] & 0x01010101;
	move.l (%a1,%d0.l),%d0	| *_161, tmp301
	and.l #16843009,%d0	|, tmp301
| voxel.c:397: 		pdata |= table[*in++] & 0x01010101;
	or.l %d1,%d0	| pdata, pdata
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a2)	| pdata, out
| 0 "" 2
| voxel.c:400: 		pdata |= table[*in++] & 0x80808080;
#NO_APP
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 8B]
	move.b 8(%a0),%d0	| MEM[(const unsigned char *)in_282 + 8B], MEM[(const unsigned char *)in_282 + 8B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 8B], tmp305
	add.l %d0,%d0	| tmp305, tmp306
| voxel.c:400: 		pdata |= table[*in++] & 0x80808080;
	move.l (%a1,%d0.l),%d1	| *_169, tmp307
	and.l #-2139062144,%d1	|, tmp307
| voxel.c:401: 		pdata |= table[*in++] & 0x40404040;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 9B]
	move.b 9(%a0),%d0	| MEM[(const unsigned char *)in_282 + 9B], MEM[(const unsigned char *)in_282 + 9B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 9B], tmp310
	add.l %d0,%d0	| tmp310, tmp311
| voxel.c:401: 		pdata |= table[*in++] & 0x40404040;
	move.l (%a1,%d0.l),%d0	| *_175, tmp312
	and.l #1077952576,%d0	|, tmp312
| voxel.c:401: 		pdata |= table[*in++] & 0x40404040;
	or.l %d0,%d1	| tmp312, pdata
| voxel.c:402: 		pdata |= table[*in++] & 0x20202020;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 10B]
	move.b 10(%a0),%d0	| MEM[(const unsigned char *)in_282 + 10B], MEM[(const unsigned char *)in_282 + 10B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 10B], tmp315
	add.l %d0,%d0	| tmp315, tmp316
| voxel.c:402: 		pdata |= table[*in++] & 0x20202020;
	move.l (%a1,%d0.l),%d0	| *_182, tmp317
	and.l #538976288,%d0	|, tmp317
| voxel.c:402: 		pdata |= table[*in++] & 0x20202020;
	or.l %d0,%d1	| tmp317, pdata
| voxel.c:403: 		pdata |= table[*in++] & 0x10101010;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 11B]
	move.b 11(%a0),%d0	| MEM[(const unsigned char *)in_282 + 11B], MEM[(const unsigned char *)in_282 + 11B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 11B], tmp320
	add.l %d0,%d0	| tmp320, tmp321
| voxel.c:403: 		pdata |= table[*in++] & 0x10101010;
	move.l (%a1,%d0.l),%d0	| *_189, tmp322
	and.l #269488144,%d0	|, tmp322
| voxel.c:403: 		pdata |= table[*in++] & 0x10101010;
	or.l %d0,%d1	| tmp322, pdata
| voxel.c:404: 		pdata |= table[*in++] & 0x08080808;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 12B]
	move.b 12(%a0),%d0	| MEM[(const unsigned char *)in_282 + 12B], MEM[(const unsigned char *)in_282 + 12B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 12B], tmp325
	add.l %d0,%d0	| tmp325, tmp326
| voxel.c:404: 		pdata |= table[*in++] & 0x08080808;
	move.l (%a1,%d0.l),%d0	| *_196, tmp327
	and.l #134744072,%d0	|, tmp327
| voxel.c:404: 		pdata |= table[*in++] & 0x08080808;
	or.l %d0,%d1	| tmp327, pdata
| voxel.c:405: 		pdata |= table[*in++] & 0x04040404;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 13B]
	move.b 13(%a0),%d0	| MEM[(const unsigned char *)in_282 + 13B], MEM[(const unsigned char *)in_282 + 13B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 13B], tmp330
	add.l %d0,%d0	| tmp330, tmp331
| voxel.c:405: 		pdata |= table[*in++] & 0x04040404;
	move.l (%a1,%d0.l),%d0	| *_203, tmp332
	and.l #67372036,%d0	|, tmp332
| voxel.c:405: 		pdata |= table[*in++] & 0x04040404;
	or.l %d0,%d1	| tmp332, pdata
| voxel.c:406: 		pdata |= table[*in++] & 0x02020202;
	moveq #0,%d0	| MEM[(const unsigned char *)in_282 + 14B]
	move.b 14(%a0),%d0	| MEM[(const unsigned char *)in_282 + 14B], MEM[(const unsigned char *)in_282 + 14B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_282 + 14B], tmp335
	add.l %d0,%d0	| tmp335, tmp336
| voxel.c:406: 		pdata |= table[*in++] & 0x02020202;
	move.l (%a1,%d0.l),%d0	| *_210, tmp337
	and.l #33686018,%d0	|, tmp337
| voxel.c:406: 		pdata |= table[*in++] & 0x02020202;
	or.l %d0,%d1	| tmp337, pdata
| voxel.c:407: 		pdata |= table[*in++] & 0x01010101;
	lea (16,%a0),%a0	|, in
| voxel.c:407: 		pdata |= table[*in++] & 0x01010101;
	moveq #0,%d0	| MEM[(const unsigned char *)in_214 + 4294967295B]
	move.b -1(%a0),%d0	| MEM[(const unsigned char *)in_214 + 4294967295B], MEM[(const unsigned char *)in_214 + 4294967295B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_214 + 4294967295B], tmp340
	add.l %d0,%d0	| tmp340, tmp341
| voxel.c:407: 		pdata |= table[*in++] & 0x01010101;
	move.l (%a1,%d0.l),%d0	| *_218, tmp342
	and.l #16843009,%d0	|, tmp342
| voxel.c:407: 		pdata |= table[*in++] & 0x01010101;
	or.l %d1,%d0	| pdata, pdata
| voxel.c:408: 		move_p(out+1, pdata);
	lea (1,%a2),%a6	|, out, tmp344
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a6)	| pdata, tmp344
| 0 "" 2
| voxel.c:410: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| voxel.c:388: 	while (pixels > 15) {
	cmp.l %a0,%d2	| in, ivtmp.368
	jne .L87		|
| voxel.c:790: 			screen += 80; // advance screen pointer one line
	add.l #160,%d3	|, screen
	subq.w #1,%d5	|, lines_remaining
| voxel.c:788: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	cmp.w %d5,%d4	| lines_remaining, lines_remaining
	jeq .L86		|
	move.l %a0,%d2	| in, ivtmp.368
	add.l #512,%d2	|, ivtmp.368
	tst.w %d5	| lines_remaining
	jne .L88		|
	clr.w %d4	| lines_remaining
.L86:
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l 48(%sp),%d0	| %sfp, _b
	cmp.l #8192,%d0	|,
	jls .L89		|
	move.l #8192,%d0	|, _b
.L89:
#APP
| 781 "voxel.c" 1
	movl	%d6,%sp@-	| ivtmp.338
	movl	%d0,%sp@-	| _b
	movw	%a5,%sp@-	| _699
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp375, n
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L91		|
	tst.w %d7	| lines_remaining
	jle .L121		|
	move.w %d4,%d7	| lines_remaining, lines_remaining
| voxel.c:782: 		remaining -= n;
	move.l %a2,%d0	| n,
	sub.l %d0,48(%sp)	|, %sfp
| voxel.c:783: 		print(".");
	pea .LC7		|
	jsr (%a4)		| tmp366
	move.l %a2,%d0	| n, _623
	add.l %d6,%d0	| ivtmp.338, _623
	addq.l #4,%sp	|,
	move.l %d6,%a1	| ivtmp.338, ivtmp.375
	move.l %a3,%a0	| p, p
	jra .L85		|
.L121:
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l 48(%sp),%d5	| %sfp, remaining
	move.l %a3,%d4	| p, p
	move.l #8192,%d3	|, _b
.L94:
| voxel.c:782: 		remaining -= n;
	sub.l %d0,%d5	| n, remaining
| voxel.c:783: 		print(".");
	pea .LC7		|
	move.l %d0,48(%sp)	|,
	jsr (%a4)		| tmp366
	move.l 48(%sp),%d0	|,
	move.l %d6,%d1	| ivtmp.338, _598
	add.l %d0,%d1	| n, _598
	addq.l #4,%sp	|,
	move.l %d6,%a1	| ivtmp.338, ivtmp.345
	move.l %d4,%a0	| p, p
.L92:
| voxel.c:785: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_596], MEM[(unsigned char *)p_677]
| voxel.c:786: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:784: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d1	| ivtmp.345, _598
	jne .L92		|
	add.l %d0,%d0	| n, tmp347
	add.l %d0,%d4	| tmp347, p
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _b
	cmp.l #8192,%d5	|, remaining
	jls .L93		|
	move.l %d3,%d0	| _b, _b
.L93:
#APP
| 781 "voxel.c" 1
	movl	%d6,%sp@-	| ivtmp.338
	movl	%d0,%sp@-	| _b
	movw	%a5,%sp@-	| _699
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
| voxel.c:781: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
#NO_APP
	tst.l %d0	| n
	jne .L94		|
.L91:
| voxel.c:794: 	print("\r\n");
	pea .LC4		|
	jsr (%a4)		| tmp366
| voxel.c:795: 	free_image(&texture);
	pea 60(%sp)		|
	lea _free_image,%a5	|, tmp362
	jsr (%a5)		| tmp362
| voxel.c:797: 	print("Loading height.tga\r\n");
	pea .LC5		|
	jsr (%a4)		| tmp366
| voxel.c:798: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC6,%d0	|, tmp250
	clr.w %d3	| tmp251
#APP
| 798 "voxel.c" 1
	movw	%d3,%sp@-	| tmp251
	movl	%d0,%sp@-	| tmp250
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d5	| tmp374, _66
| voxel.c:799: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L122		|
| voxel.c:803: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _66,
	lea (74,%sp),%a6	|,, tmp363
	move.l %a6,%a1	| tmp363,
	jsr _read_tga_header		|
| voxel.c:807: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d5,%d7	| _66, _698
| voxel.c:804: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 70(%sp)	| height.width
	jeq .L96		|
| voxel.c:807: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a3	|, tmp352
#APP
| 807 "voxel.c" 1
	movl	%d6,%sp@-	| ivtmp.338
	movl	%a3,%sp@-	| tmp352
	movw	%d5,%sp@-	| _66
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp377, n
| voxel.c:805: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:806: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:807: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L100		|
.L97:
| voxel.c:808: 		remaining -= n;
	sub.l %d2,%d3	| n, remaining
| voxel.c:809: 		print(".");
	pea .LC7		|
	jsr (%a4)		| tmp366
	move.l %d6,%a1	| ivtmp.338, ivtmp.338
	move.l %d2,%d0	| n, _590
	add.l %d6,%d0	| ivtmp.338, _590
	addq.l #4,%sp	|,
	move.l %d4,%a0	| p, p
.L98:
| voxel.c:813: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_592], _16
| voxel.c:813: 			*p = buf[i]*2;
	add.b %d1,%d1	| _16, tmp357
	move.b %d1,(%a0)	| tmp357, MEM[(unsigned char *)p_260]
| voxel.c:814: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:810: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.338, _590
	jne .L98		|
	add.l %d2,%d2	| n, tmp358
	add.l %d2,%d4	| tmp358, p
| voxel.c:807: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d3,%d0	| remaining, _b
	cmp.l #8192,%d3	|, remaining
	jls .L99		|
	move.l %a3,%d0	| tmp352, _b
.L99:
#APP
| 807 "voxel.c" 1
	movl	%d6,%sp@-	| ivtmp.338
	movl	%d0,%sp@-	| _b
	movw	%d7,%sp@-	| _698
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp378, n
| voxel.c:807: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L97		|
.L100:
| voxel.c:817: 	print("\r\n");
	pea .LC4		|
	jsr (%a4)		| tmp366
| voxel.c:818: 	free_image(&height);
	move.l %a6,-(%sp)	| tmp363,
	jsr (%a5)		| tmp362
| voxel.c:820: 	Fclose(file1);
	move.w 62(%sp),%d3	| %sfp,
#APP
| 820 "voxel.c" 1
	movw	%d3,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:821: 	Fclose(file2);
| 821 "voxel.c" 1
	movw	%d5,%sp@-	| _66
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:822: 	return 1; // success
#NO_APP
	addq.l #8,%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:830: }
	movem.l (%sp)+,#31996	|,
	lea (8232,%sp),%sp	|,
	rts	
.L119:
| voxel.c:765: 		print("Error reading colors.tga\r\n");
	pea .LC3		|
	jsr (%a4)		| tmp366
| voxel.c:766: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:829: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L78		|
.L96:
| voxel.c:825: 	Fclose(file2);
#APP
| 825 "voxel.c" 1
	movw	%d5,%sp@-	| _66
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:827: 	Fclose(file1);
#NO_APP
	move.w 54(%sp),%d4	| %sfp,
#APP
| 827 "voxel.c" 1
	movw	%d4,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L101		|
.L103:
| voxel.c:788: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	move.w %d7,%d4	| lines_remaining, lines_remaining
	jra .L86		|
.L122:
| voxel.c:800: 		print("Error reading height.tga\r\n");
	pea .LC8		|
	jsr (%a4)		| tmp366
| voxel.c:801: 		goto error1;
	addq.l #4,%sp	|,
| voxel.c:827: 	Fclose(file1);
	move.w 54(%sp),%d4	| %sfp,
#APP
| 827 "voxel.c" 1
	movw	%d4,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L101		|
	.even
_compute_and_set_bottom_palette.isra.0:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 8(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:712: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:715: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:722: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:724: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:736: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp157
	sub.w %d2,%a0	|, tmp157
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp157,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp159
	sub.w -74(%fp),%d1	| %sfp, tmp159
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:717: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp161
	sub.w -72(%fp),%d0	| %sfp, tmp161
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.400
| voxel.c:724: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp229
.L130:
| voxel.c:727: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d0	| tmp174, result
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp176
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp178
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp178, result
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp180
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp181
| voxel.c:734: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp162
	jlt .L140		|
| voxel.c:736: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:742: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jlt .L141		|
.L125:
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
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:746: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:747: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L142		|
.L126:
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jlt .L131		|
.L143:
	cmp.w #128,%d4	|, _250
	jge .L132		|
	add.b %d4,%d4	| _250, iftmp.90_273
.L127:
| voxel.c:750: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.90_273, MEM[(unsigned char *)p_220]
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jlt .L133		|
.L144:
	cmp.w #128,%d3	|, _501
	jge .L134		|
	add.b %d3,%d3	| _501, iftmp.90_277
.L128:
| voxel.c:751: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.90_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:752: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jlt .L135		|
.L145:
	cmp.w #128,%d2	|, _422
	jge .L136		|
	add.b %d2,%d2	| _422, iftmp.90_286
| voxel.c:752: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.90_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:725: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.400
	cmp.l %a0,%a4	|, tmp229
	jne .L130		|
.L146:
| voxel.c:754: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:755: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:757: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:758: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L142:
| voxel.c:747: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jge .L143		|
.L131:
	clr.b %d4	| iftmp.90_273
| voxel.c:750: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.90_273, MEM[(unsigned char *)p_220]
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jge .L144		|
.L133:
	clr.b %d3	| iftmp.90_277
| voxel.c:751: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.90_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:752: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:705: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jge .L145		|
.L135:
	clr.b %d2	| iftmp.90_286
| voxel.c:752: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.90_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:725: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.400
	cmp.l %a0,%a4	|, tmp229
	jne .L130		|
	jra .L146		|
.L140:
| voxel.c:734: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp162
| voxel.c:736: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:742: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jge .L125		|
.L141:
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
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:700: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:746: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:747: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L126		|
	jra .L142		|
.L132:
| voxel.c:705: 	return val < 0 ? 0 : (
	st %d4		| iftmp.90_273
	jra .L127		|
.L136:
	st %d2		| iftmp.90_286
| voxel.c:752: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.90_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:725: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.400
	cmp.l %a0,%a4	|, tmp229
	jne .L130		|
	jra .L146		|
.L134:
| voxel.c:705: 	return val < 0 ? 0 : (
	st %d3		| iftmp.90_277
	jra .L128		|
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
	lea (-112,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:855: 	print("\33H\33f");
	pea .LC9		|
	jsr _print		|
| voxel.c:858: 	Super(0L);
	moveq #0,%d0	| tmp1180
#APP
| 858 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1180
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:860: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:862: 	lineaa();
	jsr _lineaa		|
| voxel.c:865: 	save_palette(saved_palette);
	pea 128(%sp)		|
	jsr _save_palette		|
| voxel.c:867: 	unsigned short *screen = Physbase();
#APP
| 867 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,62(%sp)	| tmp2096, %sfp
| voxel.c:869: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
	lea _c2p_table,%a0	|, ivtmp.685
	addq.l #8,%sp	|,
| voxel.c:355: 	for (int i=0; i<256; i++) {
	moveq #0,%d1	| i
| voxel.c:357: 		if (i & 1) pdata |= 0xaa000000;
	move.l #-1442840576,%a1	|, pdata
.L155:
| voxel.c:357: 		if (i & 1) pdata |= 0xaa000000;
	btst #0,%d1	|, i
	jne .L242		|
	move.l #11141120,%d3	|, pdata
| voxel.c:356: 		unsigned int pdata = 0;
	moveq #0,%d0	| pdata
.L148:
| voxel.c:358: 		if (i & 2) pdata |= 0x00aa0000;
	btst #1,%d1	|, i
	jne .L149		|
	move.l %d0,%d3	| pdata, pdata
.L149:
| voxel.c:359: 		if (i & 4) pdata |= 0x0000aa00;
	btst #2,%d1	|, i
	jeq .L150		|
| voxel.c:359: 		if (i & 4) pdata |= 0x0000aa00;
	or.w #43520,%d3	|, pdata
.L150:
| voxel.c:360: 		if (i & 8) pdata |= 0x000000aa;
	btst #3,%d1	|, i
	jeq .L151		|
| voxel.c:360: 		if (i & 8) pdata |= 0x000000aa;
	moveq #85,%d0	|,
	not.b %d0	|
	or.l %d0,%d3	|, pdata
.L151:
| voxel.c:362: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.b %d1,%d2	|, tmp1192
	and.b #15,%d2	|, tmp1192
| voxel.c:362: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.l %d1,%d0	| i, tmp1191
	asr.l #4,%d0	|, tmp1191
	add.b %d0,%d2	| tmp1191, c
| voxel.c:363: 		if (c & 1) pdata |= 0x55000000;
	moveq #1,%d0	|, tmp1194
	and.l %d2,%d0	| c, tmp1194
	neg.l %d0	| tmp1195
	and.l #1426063360,%d0	|, tmp1196
	or.l %d3,%d0	| pdata, pdata
| voxel.c:364: 		if (c & 2) pdata |= 0x00550000;
	btst #1,%d2	|, c
	jeq .L152		|
| voxel.c:364: 		if (c & 2) pdata |= 0x00550000;
	or.l #5570560,%d0	|, pdata
.L152:
| voxel.c:365: 		if (c & 4) pdata |= 0x00005500;
	btst #2,%d2	|, c
	jeq .L153		|
| voxel.c:365: 		if (c & 4) pdata |= 0x00005500;
	or.w #21760,%d0	|, pdata
.L153:
| voxel.c:366: 		if (c & 8) pdata |= 0x00000055;
	btst #3,%d2	|, c
	jeq .L154		|
| voxel.c:366: 		if (c & 8) pdata |= 0x00000055;
	moveq #85,%d2	|,
	or.l %d2,%d0	|, pdata
.L154:
| voxel.c:367: 		c2p_table[0][i] = pdata;
	move.l %d0,(%a0)+	| pdata, MEM[(unsigned int *)_2915]
| voxel.c:355: 	for (int i=0; i<256; i++) {
	addq.l #1,%d1	|, i
| voxel.c:355: 	for (int i=0; i<256; i++) {
	cmp.l #256,%d1	|, i
	jne .L155		|
	lea _c2p_table+1024,%a0	|, ivtmp.676
| voxel.c:370: 	for (int i=0; i<256; i++) {
	moveq #0,%d1	| i
| voxel.c:372: 		if (i & 1) pdata |= 0x55000000;
	move.l #1426063360,%a1	|, pdata
.L163:
| voxel.c:372: 		if (i & 1) pdata |= 0x55000000;
	btst #0,%d1	|, i
	jne .L243		|
	moveq #85,%d3	|, pdata
	swap %d3	| pdata
| voxel.c:371: 		unsigned int pdata = 0;
	moveq #0,%d0	| pdata
.L156:
| voxel.c:373: 		if (i & 2) pdata |= 0x00550000;
	btst #1,%d1	|, i
	jne .L157		|
	move.l %d0,%d3	| pdata, pdata
.L157:
| voxel.c:374: 		if (i & 4) pdata |= 0x00005500;
	btst #2,%d1	|, i
	jeq .L158		|
| voxel.c:374: 		if (i & 4) pdata |= 0x00005500;
	or.w #21760,%d3	|, pdata
.L158:
| voxel.c:375: 		if (i & 8) pdata |= 0x00000055;
	btst #3,%d1	|, i
	jeq .L159		|
| voxel.c:375: 		if (i & 8) pdata |= 0x00000055;
	moveq #85,%d4	|,
	or.l %d4,%d3	|, pdata
.L159:
| voxel.c:377: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.b %d1,%d2	|, tmp1205
	and.b #15,%d2	|, tmp1205
| voxel.c:377: 		unsigned char c = (i & 0xf) + (i >> 4);
	move.l %d1,%d0	| i, tmp1204
	asr.l #4,%d0	|, tmp1204
	add.b %d0,%d2	| tmp1204, c
| voxel.c:378: 		if (c & 1) pdata |= 0xaa000000;
	moveq #1,%d0	|, tmp1207
	and.l %d2,%d0	| c, tmp1207
	neg.l %d0	| tmp1208
	and.l #-1442840576,%d0	|, tmp1209
	or.l %d3,%d0	| pdata, pdata
| voxel.c:379: 		if (c & 2) pdata |= 0x00aa0000;
	btst #1,%d2	|, c
	jeq .L160		|
| voxel.c:379: 		if (c & 2) pdata |= 0x00aa0000;
	or.l #11141120,%d0	|, pdata
.L160:
| voxel.c:380: 		if (c & 4) pdata |= 0x0000aa00;
	btst #2,%d2	|, c
	jeq .L161		|
| voxel.c:380: 		if (c & 4) pdata |= 0x0000aa00;
	or.w #43520,%d0	|, pdata
.L161:
| voxel.c:381: 		if (c & 8) pdata |= 0x000000aa;
	btst #3,%d2	|, c
	jeq .L162		|
| voxel.c:381: 		if (c & 8) pdata |= 0x000000aa;
	moveq #85,%d6	|,
	not.b %d6	|
	or.l %d6,%d0	|, pdata
.L162:
| voxel.c:382: 		c2p_table[1][i] = pdata;
	move.l %d0,(%a0)+	| pdata, MEM[(unsigned int *)_2910]
| voxel.c:370: 	for (int i=0; i<256; i++) {
	addq.l #1,%d1	|, i
| voxel.c:370: 	for (int i=0; i<256; i++) {
	cmp.l #256,%d1	|, i
	jne .L163		|
| voxel.c:873: 	if (!load_voxel_data(screen)) {
	move.l 54(%sp),-(%sp)	| %sfp,
	jsr _load_voxel_data		|
| voxel.c:873: 	if (!load_voxel_data(screen)) {
	addq.l #4,%sp	|,
	tst.l %d0	| tmp2097
	jeq .L321		|
| voxel.c:878: 	print("Loading cockpit.tga\r\n");
	pea .LC11		|
	jsr _print		|
| voxel.c:879: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC12		|
	lea (118,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 122(%sp),86(%sp)	| cockpit.pixels, %sfp
| voxel.c:845: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1218
#APP
| 845 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1218
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2098, _346
| voxel.c:846: 	print("TOS reports ");
	pea .LC13		|
	jsr _print		|
| voxel.c:847: 	printnum(size);
	move.l %d2,-(%sp)	| _346,
	jsr _printnum		|
| voxel.c:848: 	print(" bytes free.\r\n");
	pea .LC14		|
	jsr _print		|
| voxel.c:881: 	print("Computing tables\r\n");
	pea .LC15		|
	jsr _print		|
| voxel.c:882: 	build_tables();
	jsr _build_tables		|
| voxel.c:883: 	if (!cockpit.pixels) goto error;
	lea (24,%sp),%sp	|,
	tst.l 78(%sp)	| %sfp
	jeq .L165		|
| voxel.c:884: 	read_palette_vectors(cockpit.colors);
	move.l 118(%sp),%a4	| cockpit.colors, colors
	lea _palette_vectors,%a3	|, ivtmp.668
	lea ___mulsi3,%a2	|, tmp2069
.L166:
| voxel.c:687: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_1262], b
| voxel.c:688: 		unsigned char g = *colors++;
	move.b 1(%a4),%d3	| MEM[(const unsigned char *)colors_1262 + 1B], g
| voxel.c:689: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:668: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_350 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:669: 	return c >> 1;
	asr.b #1,%d1	|, _354
| voxel.c:668: 	signed char c = color - 128;
	add.b #-128,%d3	|, c
| voxel.c:669: 	return c >> 1;
	asr.b #1,%d3	|, _358
| voxel.c:668: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:669: 	return c >> 1;
	asr.b #1,%d2	|, _362
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _358
	move.w %d3,%d0	| _358,
	muls.w %d3,%d0	| _358, tmp1229
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1230
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _362
	move.w %d2,%d4	| _362,
	muls.w %d2,%d4	| _362, tmp1233
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1234
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1234, tmp1235
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _354
	move.w %d1,%d4	| _354,
	muls.w %d1,%d4	| _354, tmp1238
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1239
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1239, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1241
	ext.l %d0	| tmp1242
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1243
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, tmp1244
	sub.w %d0,%d4	| tmp1243, tmp1244
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d4	|, _805
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _805,
	move.w %d1,%a0	| _354,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2099, _807
	asr.l #7,%d5	|, _807
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _805,
	move.w %d3,%a1	| _358,
	move.l %a1,-(%sp)	|,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2100, _812
	asr.l #7,%d3	|, _812
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _805,
	move.w %d2,%a0	| _362,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2101, _729
	asr.l #7,%d4	|, _729
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _812,
	move.l %d3,-(%sp)	| _812,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2102, tmp1259
	asr.l #7,%d2	|, tmp1259
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _807,
	move.l %d5,-(%sp)	| _807,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1262
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1262, tmp1263
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _729,
	move.l %d4,-(%sp)	| _729,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1266
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1263, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1268
	ext.l %d0	| tmp1269
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1270
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp1271
	sub.w %d0,%d2	| tmp1270, tmp1271
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _1000
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1000,
	move.l %d5,-(%sp)	| _807,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2105, _1003
	asr.l #7,%d5	|, _1003
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1000,
	move.l %d3,-(%sp)	| _812,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2106, _989
	asr.l #7,%d3	|, _989
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1000,
	move.l %d4,-(%sp)	| _729,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2107, _993
	asr.l #7,%d4	|, _993
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1003,
	move.l %d5,-(%sp)	| _1003,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2108, tmp1280
	asr.l #7,%d2	|, tmp1280
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _989,
	move.l %d3,-(%sp)	| _989,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1283
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1283, tmp1284
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _993,
	move.l %d4,-(%sp)	| _993,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1287
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1284, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1289
	ext.l %d0	| tmp1290
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1291
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp1292
	sub.w %d0,%a5	| tmp1291, tmp1292
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp1292, _774
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1003,
	move.l %a5,-(%sp)	| _774,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2111, _776
	asr.l #7,%d5	|, _776
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _989,
	move.l %a5,-(%sp)	| _774,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2112, _762
	asr.l #7,%d3	|, _762
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _993,
	move.l %a5,-(%sp)	| _774,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2113, _678
	asr.l #7,%d4	|, _678
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _762,
	move.l %d3,-(%sp)	| _762,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2114, tmp1301
	asr.l #7,%d2	|, tmp1301
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _776,
	move.l %d5,-(%sp)	| _776,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1304
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1304, tmp1305
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _678,
	move.l %d4,-(%sp)	| _678,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1308
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1305, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| result
	moveq #-128,%d1	|,
	add.l %d1,%d0	|, tmp1311
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1312
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp1313
	sub.w %d0,%a5	| tmp1312, tmp1313
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp1313, _418
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _776,
	move.l %a5,-(%sp)	| _418,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2117, tmp1316
	asr.l #7,%d2	|, tmp1316
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _762,
	move.l %a5,-(%sp)	| _418,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2118, tmp1319
	asr.l #7,%d3	|, tmp1319
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _678,
	move.l %a5,-(%sp)	| _418,
	jsr (%a2)		| tmp2069
	addq.l #8,%sp	|,
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d1	| tmp2119, tmp1322
	asr.l #7,%d1	|, tmp1322
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| tmp1316, tmp1323
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1324
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| tmp1319, tmp1325
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1326
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1326, tmp1327
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d4	|,
	muls.w %d1,%d4	| tmp1322, tmp1328
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1329
| voxel.c:674: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1329, result
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| result
	moveq #-128,%d4	|,
	add.l %d4,%d0	|, tmp1332
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1333
| voxel.c:191: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1661
	sub.w %d0,%d4	| tmp1333, _1661
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d4,%d0	| _1661, tmp1335
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1336
| voxel.c:694: 		palette_vectors[i].c = v.c;
	swap %d0	| tmp1334
	clr.w %d0	| tmp1334
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	|,
	muls.w %d4,%d2	| _1661, tmp1341
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1342
| voxel.c:694: 		palette_vectors[i].c = v.c;
	move.w %d2,%d0	| tmp1342, tmp1334
	move.l %d0,(%a3)	| tmp1334, MEM <vector(2) short int> [(union  *)_2873]
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	|,
	muls.w %d4,%d0	| _1661, tmp1343
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1344
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp1344, MEM <fixp> [(union  *)_2873 + 4B]
| voxel.c:686: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.668
	cmp.l #_palette_vectors+96,%a3	|, ivtmp.668
	jne .L166		|
	move.l 54(%sp),%d0	| %sfp, _2869
	add.l #32000,%d0	|, _2869
	move.l 54(%sp),%a0	| %sfp, ivtmp.659
.L167:
| voxel.c:167: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.450_3281]
	cmp.l %a0,%d0	| ivtmp.659, _2869
	jne .L167		|
| voxel.c:625: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a6	|, tmp2058
	move.l (%a6),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.650
	lea _view_max,%a3	|, ivtmp.653
	clr.w %d3	| ivtmp.651
.L172:
| voxel.c:888: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_2836], _5
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.651,
	asr.w #4,%d6	|,
	move.w %d6,%a1	| tmp1346, tmp1347
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp1347, tmp1348
	add.l %a1,%a1	| tmp1348, _213
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp1351
	lsr.l #3,%d2	|, tmp1351
	moveq #1,%d7	|,
	and.l %d7,%d2	|, _218
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%a1.l),%a0	| _213, _213, tmp1352
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _218, tmp1353
	add.l 54(%sp),%a0	| %sfp, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L168		|
	mulu.w #160,%d1	|, tmp1354
	add.l %a0,%d1	| pBlock, _2811
.L169:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:628: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2811
	jne .L169		|
.L168:
| voxel.c:889: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_2850], _9
| voxel.c:889: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _11
	sub.w %a0,%d1	| _9, _11
| voxel.c:889: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp1356
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp1356,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp1357
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| _213, tmp1359
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1359, tmp1360
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp1360, tmp1361
	move.l 54(%sp),%a0	| %sfp, pBlock
	add.l %d2,%a0	| tmp1361, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L170		|
	mulu.w #160,%d1	|, tmp1362
	add.l %a0,%d1	| pBlock, _2794
.L171:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:628: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2794
	jne .L171		|
.L170:
| voxel.c:887: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.651
	cmp.l #_view_min+80,%a2	|, ivtmp.650
	jne .L172		|
| voxel.c:892: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:893: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:894: 	install_interrupts();
	jsr _install_interrupts		|
	move.l 58(%sp),%d6	| %sfp,
	add.l #19360,%d6	|,
	move.l %d6,74(%sp)	|, %sfp
	move.w 114(%sp),%a0	| cockpit.width,
	move.l %a0,86(%sp)	|, %sfp
	move.l 58(%sp),%d0	| %sfp,
	add.l #32160,%d0	|,
	move.l %d0,90(%sp)	|, %sfp
	addq.l #4,%sp	|,
| voxel.c:897: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l 74(%sp)	| %sfp
.L173:
	move.l 70(%sp),%a3	| %sfp, out
	lea (-160,%a3),%a3	|, out
	move.l 78(%sp),%a4	| %sfp, ivtmp.618
	add.l 74(%sp),%a4	| %sfp, ivtmp.618
.L174:
| voxel.c:147: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a4),%d1	| MEM[(const unsigned char *)_2681],
	move.w %d1,%a1	|, px
	move.b 1(%a4),%d2	| MEM[(const unsigned char *)_2681 + 1B],
	move.w %d2,%a0	|, px
	move.b 2(%a4),%d7	| MEM[(const unsigned char *)_2681 + 2B], px
	move.b 3(%a4),%d6	| MEM[(const unsigned char *)_2681 + 3B], px
	move.b 4(%a4),%d5	| MEM[(const unsigned char *)_2681 + 4B], px
	move.b 5(%a4),%d4	| MEM[(const unsigned char *)_2681 + 5B], px
	move.b 6(%a4),%d3	| MEM[(const unsigned char *)_2681 + 6B], px
	move.b 7(%a4),%d2	| MEM[(const unsigned char *)_2681 + 7B], px
	move.b 8(%a4),93(%sp)	| MEM[(const unsigned char *)_2681 + 8B], %sfp
	move.b 9(%a4),91(%sp)	| MEM[(const unsigned char *)_2681 + 9B], %sfp
	move.b 10(%a4),69(%sp)	| MEM[(const unsigned char *)_2681 + 10B], %sfp
	move.b 11(%a4),67(%sp)	| MEM[(const unsigned char *)_2681 + 11B], %sfp
	move.b 12(%a4),63(%sp)	| MEM[(const unsigned char *)_2681 + 12B], %sfp
	move.b 13(%a4),59(%sp)	| MEM[(const unsigned char *)_2681 + 13B], %sfp
	move.b 14(%a4),51(%sp)	| MEM[(const unsigned char *)_2681 + 14B], %sfp
	move.b 15(%a4),47(%sp)	| MEM[(const unsigned char *)_2681 + 15B], %sfp
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1372
	add.w %d1,%a5	| tmp1372, tmp1373
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1373,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1376
	add.w %d0,%a2	| tmp1376, tmp1377
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1377,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1380
	add.w %d0,%a5	| tmp1380, tmp1381
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1381,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1384
	add.w %d0,%a2	| tmp1384, tmp1385
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1385,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1388
	add.w %d0,%a5	| tmp1388, tmp1389
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1389,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1392
	add.w %d0,%a2	| tmp1392, tmp1393
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1393,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1396
	add.w %d0,%a5	| tmp1396, tmp1397
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 93(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1397,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1400
	add.w %d0,%a2	| tmp1400, tmp1401
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 91(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1401,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1404
	add.w %d0,%a5	| tmp1404, tmp1405
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 69(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1405,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1408
	add.w %d0,%a2	| tmp1408, tmp1409
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 67(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1409,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1412
	add.w %d0,%a5	| tmp1412, tmp1413
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 63(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1413,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1416
	add.w %d0,%a2	| tmp1416, tmp1417
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1417,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1420
	add.w %d0,%a5	| tmp1420, tmp1421
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1421,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1424
	add.w %d0,%a2	| tmp1424, tmp1425
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:150: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1425,
	or.w %d1,%d0	|,
	move.w %d0,(%a3)	|, MEM[(short unsigned int *)out_1617]
| voxel.c:151: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a2	|, tmp1431
| voxel.c:151: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1431,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1435
	add.w %d1,%a5	| tmp1435, tmp1436
| voxel.c:151: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1436,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1440
	add.w %d0,%a2	| tmp1440, tmp1441
| voxel.c:151: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1441,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1445
	add.w %d1,%a5	| tmp1445, tmp1446
| voxel.c:151: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1446,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1450
	add.w %d0,%a2	| tmp1450, tmp1451
| voxel.c:151: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1451,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1455
	add.w %d1,%a5	| tmp1455, tmp1456
| voxel.c:151: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1456,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1460
	add.w %d0,%a2	| tmp1460, tmp1461
| voxel.c:151: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1461,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1465
	add.w %d1,%a5	| tmp1465, tmp1466
| voxel.c:151: 				px >>= 1;
	move.b 93(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1466,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1470
	add.w %d0,%a2	| tmp1470, tmp1471
| voxel.c:151: 				px >>= 1;
	move.b 91(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1471,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1475
	add.w %d1,%a5	| tmp1475, tmp1476
| voxel.c:151: 				px >>= 1;
	move.b 69(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1476,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1480
	add.w %d0,%a2	| tmp1480, tmp1481
| voxel.c:151: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1481,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1485
	add.w %d1,%a5	| tmp1485, tmp1486
| voxel.c:151: 				px >>= 1;
	move.b 63(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1486,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1490
	add.w %d0,%a2	| tmp1490, tmp1491
| voxel.c:151: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1491,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1495
	add.w %d1,%a5	| tmp1495, tmp1496
| voxel.c:151: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1496,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1500
	add.w %d0,%a2	| tmp1500, tmp1501
| voxel.c:151: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1501,
	or.w %d0,%d1	|,
	move.w %d1,2(%a3)	|, MEM[(short unsigned int *)out_1617 + 2B]
| voxel.c:153: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp1508
| voxel.c:153: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1508,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1512
	add.w %d0,%a5	| tmp1512, tmp1513
| voxel.c:153: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1513,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1517
	add.w %d1,%a2	| tmp1517, tmp1518
| voxel.c:153: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1518,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1522
	add.w %d0,%a5	| tmp1522, tmp1523
| voxel.c:153: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1523,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1527
	add.w %d1,%a2	| tmp1527, tmp1528
| voxel.c:153: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1528,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1532
	add.w %d0,%a5	| tmp1532, tmp1533
| voxel.c:153: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1533,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1537
	add.w %d1,%a2	| tmp1537, tmp1538
| voxel.c:153: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1538,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1542
	add.w %d0,%a5	| tmp1542, tmp1543
| voxel.c:153: 				px >>= 1;
	move.b 93(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1543,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1547
	add.w %d1,%a2	| tmp1547, tmp1548
| voxel.c:153: 				px >>= 1;
	move.b 91(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1548,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1552
	add.w %d0,%a5	| tmp1552, tmp1553
| voxel.c:153: 				px >>= 1;
	move.b 69(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1553,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1557
	add.w %d1,%a2	| tmp1557, tmp1558
| voxel.c:153: 				px >>= 1;
	move.b 67(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1558,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1562
	add.w %d0,%a5	| tmp1562, tmp1563
| voxel.c:153: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1563,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1567
	add.w %d1,%a2	| tmp1567, tmp1568
| voxel.c:153: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1568,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1572
	add.w %d0,%a5	| tmp1572, tmp1573
| voxel.c:153: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1573,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1577
	add.w %d1,%a2	| tmp1577, tmp1578
| voxel.c:153: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1578,
	or.w %d1,%d0	|,
	move.w %d0,4(%a3)	|, MEM[(short unsigned int *)out_1617 + 4B]
| voxel.c:161: 			*out++ = plane3;
	addq.l #8,%a3	|, out
| voxel.c:155: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a1	|, tmp1585
| voxel.c:155: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp1585,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp1589
	add.w %d1,%a0	| tmp1589, tmp1590
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp1593
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp1590,
	or.w %d1,%d7	|, tmp1594
	add.w %d7,%d7	| tmp1594, tmp1595
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp1598
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp1595, tmp1599
	add.w %d6,%d6	| tmp1599, tmp1600
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp1603
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp1600, tmp1604
	add.w %d5,%d5	| tmp1604, tmp1605
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp1608
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp1605, tmp1609
	add.w %d4,%d4	| tmp1609, tmp1610
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp1613
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp1610, tmp1614
	add.w %d3,%d3	| tmp1614, tmp1615
| voxel.c:155: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp1618
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp1615, tmp1619
	add.w %d2,%d2	| tmp1619, tmp1620
| voxel.c:155: 				px >>= 1;
	move.b 93(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1623
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp1620, tmp1624
	add.w %d1,%d1	| tmp1624, tmp1625
| voxel.c:155: 				px >>= 1;
	move.b 91(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1628
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1628, tmp1629
	add.w %d1,%d1	| tmp1629, tmp1630
| voxel.c:155: 				px >>= 1;
	move.b 69(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1633
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1633, tmp1634
	add.w %d1,%d1	| tmp1634, tmp1635
| voxel.c:155: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1638
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1638, tmp1639
	add.w %d1,%d1	| tmp1639, tmp1640
| voxel.c:155: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1643
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1643, tmp1644
	add.w %d1,%d1	| tmp1644, tmp1645
| voxel.c:155: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1648
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1648, tmp1649
	add.w %d1,%d1	| tmp1649, tmp1650
| voxel.c:155: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1653
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp1650, tmp1654
	add.w %d0,%d0	| tmp1654, tmp1655
| voxel.c:155: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1658
| voxel.c:156: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1655, tmp1658
	move.w %d1,-2(%a3)	| tmp1658, MEM[(short unsigned int *)out_458 + 4294967294B]
| voxel.c:144: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a4),%a4	|, ivtmp.618
	cmp.l 70(%sp),%a3	| %sfp, out
	jne .L174		|
| voxel.c:143: 	for (int y=0; y<height; y++) {
	lea (160,%a3),%a3	|, out
	move.l %a3,70(%sp)	| out, %sfp
	move.l 82(%sp),%d2	| %sfp,
	add.l %d2,74(%sp)	|, %sfp
	cmp.l 86(%sp),%a3	| %sfp, out
	jne .L173		|
| voxel.c:901: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,106(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:642: 	out += 64; 
	move.w #64,%a0	|,
	add.l 54(%sp),%a0	| %sfp,
	move.l %a0,102(%sp)	|, %sfp
	clr.w 86(%sp)	| %sfp
| voxel.c:906: 	int frames = 0;
	clr.l 78(%sp)	| %sfp
| voxel.c:902: 	unsigned long t_render = 0;
	clr.l 82(%sp)	| %sfp
	lea _combined,%a5	|, tmp2059
.L239:
| voxel.c:915: 		frames++;
	addq.l #1,78(%sp)	|, %sfp
| voxel.c:133: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.58_232
	move.w (%a0),%d0	| *hw_palette.58_232, _233
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, pos.y
	move.w %d0,92(%sp)	| pos.y, %sfp
	lea _pos,%a1	|,
	move.w (%a1),%d0	| pos.x, pos.x
	lsr.w #7,%d0	|, pos.x
	move.w %d0,90(%sp)	| pos.x, %sfp
| voxel.c:920: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d2	| pos.z, _28
| voxel.c:919: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	moveq #0,%d0	| _231
	move.w 92(%sp),%d0	| %sfp, _231
	moveq #0,%d1	| _229
	move.w 90(%sp),%d1	| %sfp, _229
	moveq #9,%d3	|,
	lsl.l %d3,%d0	|, tmp1668
	add.l %d1,%d0	| _229, tmp1669
	add.l %d0,%d0	| tmp1669, tmp1670
| voxel.c:919: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a5,%d0.l),%d0	| combined[_21][_24].D.2718.height, combined[_21][_24].D.2718.height
	lsr.b #1,%d0	|, tmp1673
| voxel.c:920: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp1675
	lsl.w #7,%d0	|, tmp1676
	move.w %d2,%d1	| _28, player_height
	sub.w %d0,%d1	| tmp1676, player_height
| voxel.c:922: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w #2560,%a0	|, _32
	sub.w %d1,%a0	| player_height, _32
| voxel.c:935: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 86(%sp),%d0	| %sfp, tmp1679
	and.w #8,%d0	|, tmp1679
| voxel.c:935: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d0	|, tmp1679
	move.w %d0,48(%sp)	| tmp1679, %sfp
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l (%a1),%d7	| MEM <unsigned int> [(short int *)&pos], sample_uv
	and.l #-65538,%d7	|, sample_uv
| voxel.c:923: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #1284,%a0	|, _32
	jle .L176		|
| voxel.c:925: 			pos.z += altitude_delta;
	move.w %d2,%d1	| _28, _1395
	add.w #256,%d1	|, _1395
	move.w %d1,_pos+4	| _1395, pos.z
| voxel.c:932: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d1	|, _3105
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d2	| _3105
	move.w %d1,%d2	| _3105, _3105
	move.l #256,%d0	|, tmp1684
	sub.l %d2,%d0	| _3105, tmp1684
	add.l %d0,%d0	| tmp1684, _3117
| voxel.c:590: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1686
	sub.w %d1,%a0	| _3105, tmp1686
| voxel.c:592: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1686, tmp1687
	add.l %a0,%a0	| tmp1687, tmp1687
	move.l %a0,98(%sp)	| tmp1687, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d0	|, _3117
	move.l %d0,74(%sp)	| _3117, %sfp
| voxel.c:625: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp1716
	add.l #_horizon,%d0	|, tmp1716
	move.l %d0,50(%sp)	| tmp1716, %sfp
	move.l %d7,70(%sp)	| sample_uv, %sfp
.L229:
| voxel.c:960: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 48(%sp),%d1	| %sfp, tmp1717
	lsr.w #3,%d1	|, tmp1717
	and.l #65535,%d1	|, _63
| voxel.c:960: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d1,%d1	| _63, tmp1719
	lea _view_max,%a0	|,
	move.w (%a0,%d1.l),%d0	| view_max[_63], y
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d2	| %sfp, tmp1720
	asr.w #4,%d2	|, tmp1720
	move.w %d2,%a0	| tmp1720, tmp1721
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1721, tmp1722
	add.l %a0,%a0	| tmp1722, tmp1722
	move.l %a0,58(%sp)	| tmp1722, %sfp
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d2	| %sfp,
	lsr.l #3,%d2	|, tmp1725
	moveq #1,%d3	|,
	and.l %d2,%d3	| tmp1725,
	move.l %d3,62(%sp)	|, %sfp
| voxel.c:964: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d1.l),%d4	| view_min[_63], _66
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d0,%d4	| y, _66
	jgt .L221		|
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w 48(%sp),%d1	| %sfp, _43
	add.w #-160,%d1	|, _43
| voxel.c:947: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 66(%sp),%d3	| %sfp,
	muls.w %d1,%d3	| _43, tmp1728
| voxel.c:947: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d3	|, tmp1729
| voxel.c:947: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 68(%sp),%d2	| %sfp, tmp1730
	sub.w %d3,%d2	| tmp1729, tmp1730
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp1732
	clr.w %d2	| tmp1732
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 68(%sp),%d1	| %sfp, tmp1733
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d1	|, tmp1734
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 66(%sp),%d1	| %sfp, tmp1735
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d2	| tmp1735, tmp1737
| voxel.c:195: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _243
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l 70(%sp),%d1	| %sfp, tmp1738
	add.l %d2,%d1	| _243, tmp1738
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1739
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _243, tmp1740
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1741
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _243, tmp1742
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1743
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _243, tmp1744
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d3	| y,
	muls.w #80,%d3	|, tmp1745
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 58(%sp),%a0	| %sfp, tmp1747
	add.l %d3,%a0	| tmp1745, tmp1747
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1747, tmp1748
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%a0	| %sfp, tmp1749
	add.l 54(%sp),%a0	| %sfp, pBlock
| voxel.c:524: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 74(%sp),%a2	| %sfp, y_table_shifted
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d5	|, z
.L185:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d3	| *_968, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d7	| SR.445
	move.b %d3,%d7	| sample, SR.445
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d7.l),%a1	| *_972, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L181		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, _66
	jge .L244		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1755
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_978, _979
.L183:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _979, pBlock
| 0 "" 2
| voxel.c:551: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:553: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L183		|
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _243, tmp1757
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L185		|
.L325:
.L186:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| _243, tmp1758
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _251
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
.L191:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d3	| *_892, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d7	| SR.443
	move.b %d3,%d7	| sample, SR.443
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d7.l),%a1	| *_896, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L187		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, _66
	jge .L245		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1764
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_902, _903
.L189:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _903, pBlock
| 0 "" 2
| voxel.c:551: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:553: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L189		|
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _251, tmp1766
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L191		|
.L326:
.L192:
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
.L198:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d3	| *_816, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d7	| SR.441
	move.b %d3,%d7	| sample, SR.441
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d7.l),%a1	| *_820, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L194		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, _66
	jge .L246		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1772
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_826, _827
.L196:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _827, pBlock
| 0 "" 2
| voxel.c:551: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:553: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L196		|
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _251, tmp1774
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L198		|
.L324:
.L199:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| _251, tmp1775
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _249
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
.L205:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d3	| *_740, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d7	| SR.439
	move.b %d3,%d7	| sample, SR.439
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d7.l),%a1	| *_744, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %a1,%d0	| sample_y, y
	jlt .L201		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %a1,%d4	| sample_y, _66
	jge .L247		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1781
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_750, _751
.L203:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _751, pBlock
| 0 "" 2
| voxel.c:551: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:553: 				} while (sample_y <= y);
	cmp.w %a1,%d0	| sample_y, y
	jge .L203		|
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _249, tmp1783
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L205		|
.L328:
.L206:
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
	lea _fog_table+40,%a4	|, fog_table_shifted
	move.l %d6,%a1	| movep_data, movep_data
.L212:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d7	| *_664, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.437
	move.b %d7,%d3	| sample, SR.437
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d3.l),%d3	| *_668, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L208		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _66, sample_y
	jle .L248		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1623],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1789
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1789, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _689
	move.w %a3,%d7	| offset, _689
	move.l %d7,%a3	| _689, tmp2067
	add.l #_pdata_table,%a3	|, tmp2067
	move.l %a1,%d6	| movep_data, movep_data
.L210:
| voxel.c:559: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp1792
	add.l %d7,%a1	| tmp1792, tmp1793
	add.l %a1,%a1	| tmp1793, tmp1794
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a1.l),%d7	| *_695, *_695
#APP
| 348 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_695, pBlock
| 0 "" 2
| voxel.c:561: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:563: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L210		|
	move.l %d6,%a1	| movep_data, movep_data
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _249, tmp1799
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L212		|
.L327:
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l %a1,%d6	| movep_data, movep_data
.L213:
	add.l %d2,%d2	| _249, tmp1800
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _247
| voxel.c:528: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
.L219:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d7	| *_588, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.435
	move.b %d7,%d3	| sample, SR.435
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d3.l),%d3	| *_592, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L215		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _66, sample_y
	jle .L249		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1621],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1806
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1806, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _613
	move.w %a3,%d7	| offset, _613
	move.l %d7,%a3	| _613, tmp2066
	add.l #_pdata_table,%a3	|, tmp2066
	move.l %a1,%d6	| movep_data, movep_data
.L217:
| voxel.c:559: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp1809
	add.l %d7,%a1	| tmp1809, tmp1810
	add.l %a1,%a1	| tmp1810, tmp1811
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a1.l),%d7	| *_619, *_619
#APP
| 348 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_619, pBlock
| 0 "" 2
| voxel.c:561: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:562: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:563: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L217		|
	move.l %d6,%a1	| movep_data, movep_data
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _247, tmp1816
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L219		|
.L329:
| voxel.c:528: 	if (y < y_min) goto finish;
	move.l %a1,%d6	| movep_data, movep_data
.L220:
	cmp.w %d4,%d0	| _66, y
	jlt .L221		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-8,%d5	|, z
.L226:
| voxel.c:463: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d3	|, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d3.l),%d7	| *_512, sample
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d3	| SR.433
	move.b %d7,%d3	| sample, SR.433
| voxel.c:536: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a2,%d3.l),%d3	| *_516, sample_y
| voxel.c:537: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jlt .L222		|
| voxel.c:539: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _66, sample_y
	jle .L250		|
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1619],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1822
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1822, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _537
	move.w %a3,%d7	| offset, _537
	move.l %d7,%a3	| _537, tmp2065
	add.l #_pdata_table,%a3	|, tmp2065
	move.l %a1,%d6	| movep_data, movep_data
.L224:
| voxel.c:559: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d7	|,
	and.l %d0,%d7	| y,
	move.l %d7,%a1	|, tmp1825
	add.l %d7,%a1	| tmp1825, tmp1826
	add.l %a1,%a1	| tmp1826, tmp1827
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a1.l),%d7	| *_543, *_543
#APP
| 348 "voxel.c" 1
	movep.l %d7, 0(%a0)	| *_543, pBlock
| 0 "" 2
| voxel.c:561: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:562: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:563: 				} while (sample_y <= y);
	cmp.w %d3,%d0	| sample_y, y
	jge .L224		|
	move.l %d6,%a1	| movep_data, movep_data
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _247, tmp1832
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L226		|
.L323:
	move.l %a1,%d6	| movep_data, movep_data
.L221:
| voxel.c:634: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 50(%sp),%a1	| %sfp,
	move.w (%a1),%a0	| MEM[(short int *)_447], _469
| voxel.c:634: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.w %d0,%d1	| y, _470
	sub.w %a0,%d1	| _469, _470
| voxel.c:634: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp1833
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d2	| tmp1833,
	muls.w #80,%d2	|,
	move.l %d2,%a0	|, tmp1834
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 58(%sp),%a0	| %sfp, tmp1836
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1836, tmp1837
| voxel.c:343: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%a0	| %sfp, tmp1838
	add.l 54(%sp),%a0	| %sfp, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _470
	jle .L227		|
	mulu.w #160,%d1	|, tmp1839
	add.l %a0,%d1	| pBlock, _2661
.L228:
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d6, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:628: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:626: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2661
	jne .L228		|
.L227:
| voxel.c:635: 	horizon[x] = y;
	move.l 50(%sp),%a0	| %sfp,
	move.w %d0,(%a0)	| y, MEM[(short int *)_447]
| voxel.c:935: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:935: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	moveq #32,%d0	|,
	add.l %d0,50(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L229		|
| voxel.c:987: 		unsigned long t_render_1 = *_hz_200;
	move.l 70(%sp),%d7	| %sfp, sample_uv
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
	add.l 82(%sp),%d0	| %sfp, _1020
| voxel.c:988: 		t_render += t_render_1 - t_render_0;
	sub.l 94(%sp),%d0	| %sfp, _1020
	move.l %d0,82(%sp)	| _1020, %sfp
	move.b 81(%sp),%d5	| %sfp, odd
	and.b #1,%d5	|, odd
| voxel.c:639: 	unsigned short v = (fixp_uint(posy) - 128) & (HEIGHT-1);
	move.w 92(%sp),%d4	| %sfp, tmp1843
	add.w #-128,%d4	|, tmp1843
| voxel.c:639: 	unsigned short v = (fixp_uint(posy) - 128) & (HEIGHT-1);
	and.w #511,%d4	|, v
| voxel.c:640: 	unsigned short u = (fixp_uint(posx) - 256) & (WIDTH-1);
	move.w 90(%sp),%d0	| %sfp, tmp1844
	add.w #-256,%d0	|, tmp1844
| voxel.c:640: 	unsigned short u = (fixp_uint(posx) - 256) & (WIDTH-1);
	and.w #511,%d0	|, u
| voxel.c:641: 	if (v == HEIGHT - 1) v = 0;
	cmp.w #511,%d4	|, v
	jeq .L322		|
| voxel.c:644: 		c2p_skip(out, (unsigned char *)(combined[v]+u), 64, 16, odd ^ (y&1));
	and.l #65535,%d0	|, u
	move.l %d0,%a4	| u, _1087
	add.l %d0,%a4	| u, _1087
| voxel.c:642: 	out += 64; 
	move.l 102(%sp),%d6	| %sfp, out
| voxel.c:643: 	for (short y = 0; y < 32; y++) {
	clr.w %d3	| y
.L234:
| voxel.c:644: 		c2p_skip(out, (unsigned char *)(combined[v]+u), 64, 16, odd ^ (y&1));
	moveq #0,%d0	| v
	move.w %d4,%d0	| v, v
	moveq #10,%d1	|,
	lsl.l %d1,%d0	|, v
	move.l %d0,%a0	| v, tmp1848
	add.l %a4,%a0	| _1087, tmp1849
	add.l #_combined,%a0	|, in
| voxel.c:644: 		c2p_skip(out, (unsigned char *)(combined[v]+u), 64, 16, odd ^ (y&1));
	move.l %d3,%d0	|, tmp1851
	eor.l %d5,%d0	| odd, tmp1851
| voxel.c:415: 	const unsigned int *table = c2p_table[odd];
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp1852
	neg.l %d0	| tmp1853
	and.l #1024,%d0	|, tmp1854
	move.l %d0,%a1	| tmp1854, table
	add.l #_c2p_table,%a1	|, table
	move.l %a0,%d2	| in, _2653
	add.l #1024,%d2	|, _2653
	move.l %d6,%a2	| out, out
.L231:
| voxel.c:418: 		pdata |= table[*in] & 0x80808080;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804]
	move.b (%a0),%d0	| MEM[(const unsigned char *)in_804], MEM[(const unsigned char *)in_804]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804], tmp1857
	add.l %d0,%d0	| tmp1857, tmp1858
| voxel.c:418: 		pdata |= table[*in] & 0x80808080;
	move.l (%a1,%d0.l),%d1	| *_1105, tmp1859
	and.l #-2139062144,%d1	|, tmp1859
| voxel.c:420: 		pdata |= table[*in] & 0x40404040;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 16B]
	move.b 16(%a0),%d0	| MEM[(const unsigned char *)in_804 + 16B], MEM[(const unsigned char *)in_804 + 16B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 16B], tmp1862
	add.l %d0,%d0	| tmp1862, tmp1863
| voxel.c:420: 		pdata |= table[*in] & 0x40404040;
	move.l (%a1,%d0.l),%d0	| *_1113, tmp1864
	and.l #1077952576,%d0	|, tmp1864
| voxel.c:420: 		pdata |= table[*in] & 0x40404040;
	or.l %d0,%d1	| tmp1864, pdata
| voxel.c:422: 		pdata |= table[*in] & 0x20202020;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 32B]
	move.b 32(%a0),%d0	| MEM[(const unsigned char *)in_804 + 32B], MEM[(const unsigned char *)in_804 + 32B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 32B], tmp1867
	add.l %d0,%d0	| tmp1867, tmp1868
| voxel.c:422: 		pdata |= table[*in] & 0x20202020;
	move.l (%a1,%d0.l),%d0	| *_1121, tmp1869
	and.l #538976288,%d0	|, tmp1869
| voxel.c:422: 		pdata |= table[*in] & 0x20202020;
	or.l %d0,%d1	| tmp1869, pdata
| voxel.c:424: 		pdata |= table[*in] & 0x10101010;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 48B]
	move.b 48(%a0),%d0	| MEM[(const unsigned char *)in_804 + 48B], MEM[(const unsigned char *)in_804 + 48B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 48B], tmp1872
	add.l %d0,%d0	| tmp1872, tmp1873
| voxel.c:424: 		pdata |= table[*in] & 0x10101010;
	move.l (%a1,%d0.l),%d0	| *_1129, tmp1874
	and.l #269488144,%d0	|, tmp1874
| voxel.c:424: 		pdata |= table[*in] & 0x10101010;
	or.l %d0,%d1	| tmp1874, pdata
| voxel.c:426: 		pdata |= table[*in] & 0x08080808;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 64B]
	move.b 64(%a0),%d0	| MEM[(const unsigned char *)in_804 + 64B], MEM[(const unsigned char *)in_804 + 64B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 64B], tmp1877
	add.l %d0,%d0	| tmp1877, tmp1878
| voxel.c:426: 		pdata |= table[*in] & 0x08080808;
	move.l (%a1,%d0.l),%d0	| *_1137, tmp1879
	and.l #134744072,%d0	|, tmp1879
| voxel.c:426: 		pdata |= table[*in] & 0x08080808;
	or.l %d0,%d1	| tmp1879, pdata
| voxel.c:428: 		pdata |= table[*in] & 0x04040404;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 80B]
	move.b 80(%a0),%d0	| MEM[(const unsigned char *)in_804 + 80B], MEM[(const unsigned char *)in_804 + 80B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 80B], tmp1882
	add.l %d0,%d0	| tmp1882, tmp1883
| voxel.c:428: 		pdata |= table[*in] & 0x04040404;
	move.l (%a1,%d0.l),%d0	| *_1145, tmp1884
	and.l #67372036,%d0	|, tmp1884
| voxel.c:428: 		pdata |= table[*in] & 0x04040404;
	or.l %d0,%d1	| tmp1884, pdata
| voxel.c:430: 		pdata |= table[*in] & 0x02020202;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 96B]
	move.b 96(%a0),%d0	| MEM[(const unsigned char *)in_804 + 96B], MEM[(const unsigned char *)in_804 + 96B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 96B], tmp1887
	add.l %d0,%d0	| tmp1887, tmp1888
| voxel.c:430: 		pdata |= table[*in] & 0x02020202;
	move.l (%a1,%d0.l),%d0	| *_1153, tmp1889
	and.l #33686018,%d0	|, tmp1889
| voxel.c:430: 		pdata |= table[*in] & 0x02020202;
	or.l %d0,%d1	| tmp1889, pdata
| voxel.c:432: 		pdata |= table[*in] & 0x01010101;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 112B]
	move.b 112(%a0),%d0	| MEM[(const unsigned char *)in_804 + 112B], MEM[(const unsigned char *)in_804 + 112B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 112B], tmp1892
	add.l %d0,%d0	| tmp1892, tmp1893
| voxel.c:432: 		pdata |= table[*in] & 0x01010101;
	move.l (%a1,%d0.l),%d0	| *_1161, tmp1894
	and.l #16843009,%d0	|, tmp1894
| voxel.c:432: 		pdata |= table[*in] & 0x01010101;
	or.l %d1,%d0	| pdata, pdata
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a2)	| pdata, out
| 0 "" 2
| voxel.c:436: 		pdata |= table[*in] & 0x80808080;
#NO_APP
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 128B]
	move.b 128(%a0),%d0	| MEM[(const unsigned char *)in_804 + 128B], MEM[(const unsigned char *)in_804 + 128B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 128B], tmp1898
	add.l %d0,%d0	| tmp1898, tmp1899
| voxel.c:436: 		pdata |= table[*in] & 0x80808080;
	move.l (%a1,%d0.l),%d1	| *_1170, tmp1900
	and.l #-2139062144,%d1	|, tmp1900
| voxel.c:438: 		pdata |= table[*in] & 0x40404040;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 144B]
	move.b 144(%a0),%d0	| MEM[(const unsigned char *)in_804 + 144B], MEM[(const unsigned char *)in_804 + 144B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 144B], tmp1903
	add.l %d0,%d0	| tmp1903, tmp1904
| voxel.c:438: 		pdata |= table[*in] & 0x40404040;
	move.l (%a1,%d0.l),%d0	| *_1177, tmp1905
	and.l #1077952576,%d0	|, tmp1905
| voxel.c:438: 		pdata |= table[*in] & 0x40404040;
	or.l %d0,%d1	| tmp1905, pdata
| voxel.c:440: 		pdata |= table[*in] & 0x20202020;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 160B]
	move.b 160(%a0),%d0	| MEM[(const unsigned char *)in_804 + 160B], MEM[(const unsigned char *)in_804 + 160B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 160B], tmp1908
	add.l %d0,%d0	| tmp1908, tmp1909
| voxel.c:440: 		pdata |= table[*in] & 0x20202020;
	move.l (%a1,%d0.l),%d0	| *_1185, tmp1910
	and.l #538976288,%d0	|, tmp1910
| voxel.c:440: 		pdata |= table[*in] & 0x20202020;
	or.l %d0,%d1	| tmp1910, pdata
| voxel.c:442: 		pdata |= table[*in] & 0x10101010;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 176B]
	move.b 176(%a0),%d0	| MEM[(const unsigned char *)in_804 + 176B], MEM[(const unsigned char *)in_804 + 176B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 176B], tmp1913
	add.l %d0,%d0	| tmp1913, tmp1914
| voxel.c:442: 		pdata |= table[*in] & 0x10101010;
	move.l (%a1,%d0.l),%d0	| *_1193, tmp1915
	and.l #269488144,%d0	|, tmp1915
| voxel.c:442: 		pdata |= table[*in] & 0x10101010;
	or.l %d0,%d1	| tmp1915, pdata
| voxel.c:444: 		pdata |= table[*in] & 0x08080808;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 192B]
	move.b 192(%a0),%d0	| MEM[(const unsigned char *)in_804 + 192B], MEM[(const unsigned char *)in_804 + 192B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 192B], tmp1918
	add.l %d0,%d0	| tmp1918, tmp1919
| voxel.c:444: 		pdata |= table[*in] & 0x08080808;
	move.l (%a1,%d0.l),%d0	| *_1201, tmp1920
	and.l #134744072,%d0	|, tmp1920
| voxel.c:444: 		pdata |= table[*in] & 0x08080808;
	or.l %d0,%d1	| tmp1920, pdata
| voxel.c:446: 		pdata |= table[*in] & 0x04040404;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 208B]
	move.b 208(%a0),%d0	| MEM[(const unsigned char *)in_804 + 208B], MEM[(const unsigned char *)in_804 + 208B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 208B], tmp1923
	add.l %d0,%d0	| tmp1923, tmp1924
| voxel.c:446: 		pdata |= table[*in] & 0x04040404;
	move.l (%a1,%d0.l),%d0	| *_1209, tmp1925
	and.l #67372036,%d0	|, tmp1925
| voxel.c:446: 		pdata |= table[*in] & 0x04040404;
	or.l %d0,%d1	| tmp1925, pdata
| voxel.c:448: 		pdata |= table[*in] & 0x02020202;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 224B]
	move.b 224(%a0),%d0	| MEM[(const unsigned char *)in_804 + 224B], MEM[(const unsigned char *)in_804 + 224B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 224B], tmp1928
	add.l %d0,%d0	| tmp1928, tmp1929
| voxel.c:448: 		pdata |= table[*in] & 0x02020202;
	move.l (%a1,%d0.l),%d0	| *_1217, tmp1930
	and.l #33686018,%d0	|, tmp1930
| voxel.c:448: 		pdata |= table[*in] & 0x02020202;
	or.l %d0,%d1	| tmp1930, pdata
| voxel.c:450: 		pdata |= table[*in] & 0x01010101;
	moveq #0,%d0	| MEM[(const unsigned char *)in_804 + 240B]
	move.b 240(%a0),%d0	| MEM[(const unsigned char *)in_804 + 240B], MEM[(const unsigned char *)in_804 + 240B]
	add.l %d0,%d0	| MEM[(const unsigned char *)in_804 + 240B], tmp1933
	add.l %d0,%d0	| tmp1933, tmp1934
| voxel.c:450: 		pdata |= table[*in] & 0x01010101;
	move.l (%a1,%d0.l),%d0	| *_1225, tmp1935
	and.l #16843009,%d0	|, tmp1935
| voxel.c:450: 		pdata |= table[*in] & 0x01010101;
	or.l %d1,%d0	| pdata, pdata
| voxel.c:451: 		in += skip;
	lea (256,%a0),%a0	|, in
| voxel.c:452: 		move_p(out+1, pdata);
	lea (1,%a2),%a3	|, out, tmp1936
| voxel.c:348: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 348 "voxel.c" 1
	movep.l %d0, 0(%a3)	| pdata, tmp1936
| 0 "" 2
| voxel.c:454: 		out += 8;
#NO_APP
	addq.l #8,%a2	|, out
| voxel.c:416: 	while (pixels > 15) {
	cmp.l %a0,%d2	| in, _2653
	jne .L231		|
| voxel.c:645: 		out += 160;
	add.l #160,%d6	|, out
| voxel.c:646: 		v += 8;
	move.w %d4,%d0	| v, v
	addq.w #8,%d0	|, v
| voxel.c:647: 		if (v >= HEIGHT) v -= HEIGHT;
	cmp.w #511,%d0	|, v
	jls .L232		|
| voxel.c:647: 		if (v >= HEIGHT) v -= HEIGHT;
	add.w #-504,%d4	|, v
	addq.w #1,%d3	|, y
| voxel.c:643: 	for (short y = 0; y < 32; y++) {
	cmp.w #32,%d3	|, y
	jne .L234		|
.L330:
| voxel.c:592: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 98(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:597: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:595: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:598: 	unsigned short z = 0;
	clr.w %d1	| z
.L237:
	move.w %d1,%d4	| z, z
| voxel.c:607: 		z++;
	addq.w #1,%d1	|, z
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:608: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
	move.l %d7,%d0	| sample_uv, uv
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	move.l %d2,%d7	| delta_uv, tmp1937
	add.l %d0,%d7	| uv, tmp1937
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d7	|, sample_uv
| voxel.c:600: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d4	|, z
	jls .L235		|
| voxel.c:463: 	asm (
#APP
| 463 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:476: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:477: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a5,%d0.l),%d0	| *_1038, sample
| voxel.c:602: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.446
| voxel.c:603: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_1042, *_1042
	cmp.w %d5,%d0	| min_y, *_1042
	jge .L236		|
	move.w %d0,%d5	| *_1042, min_y
.L236:
| voxel.c:611: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp1943
	and.w #15,%d0	|, tmp1943
	jne .L235		|
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp1944
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:485: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp1945
| voxel.c:485: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L235:
| voxel.c:599: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L237		|
| voxel.c:998: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L253		|
	move.w #128,%a0	|, _3467
| voxel.c:1000: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L238		|
| voxel.c:1003: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp1946
	add.w %d5,%d5	| tmp1946, tmp1947
	add.w %d5,%d5	| tmp1947, sunlight
| voxel.c:1006: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _3467
.L238:
	move.l %a0,-(%sp)	| _3467,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _82
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _82,
	muls.w _pos+6,%d0	| pos.dirx, tmp1954
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1955
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp1957
	swap %d0	| vect__88.456
	clr.w %d0	| vect__88.456
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp1963
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp1964
| voxel.c:1009: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp1966
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp1966, vect__88.456
	move.l %d0,(%a0)	| vect__88.456, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:1056: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:1056: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #4,%sp	|,
	lsr.w #2,%d0	|, tmp1972
	and.w #8192,%d0	|, _2680
| voxel.c:220: 	data &= mask;
	move.l 54(%sp),%a1	| %sfp,
	move.l 4(%a1),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 4B], tmp1973
	and.l #-536879105,%d3	|, tmp1973
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2680
	move.w %d0,%d1	| _2680, _2680
| voxel.c:220: 	data &= mask;
	move.l (%a1),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130], tmp1978
	and.l #-536879105,%d4	|, tmp1978
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2680
	swap %d2	| _2680
	clr.w %d2	| _2680
	move.w %d0,%d2	| _2680, _2680
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2680, tmp1978
	move.l %d4,(%a1)	| tmp1978, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130]
	or.l %d1,%d3	| _2680, tmp1973
	move.l %d3,4(%a1)	| tmp1973, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 4B]
| voxel.c:1057: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1986
	and.b #1,%d0	|, _96
| voxel.c:1057: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1989
	ext.w %d0	| tmp1988
	neg.w %d0	| tmp1990
	lsl.w %d1,%d0	|, _2719
| voxel.c:220: 	data &= mask;
	move.l 644(%a1),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 644B], tmp1991
	and.l #-536879105,%d3	|, tmp1991
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2719
	move.w %d0,%d1	| _2719, _2719
| voxel.c:220: 	data &= mask;
	move.l 640(%a1),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 640B], tmp1996
	and.l #-536879105,%d4	|, tmp1996
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2719
	swap %d2	| _2719
	clr.w %d2	| _2719
	move.w %d0,%d2	| _2719, _2719
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2719, tmp1996
	move.l %d4,640(%a1)	| tmp1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 640B]
	or.l %d1,%d3	| _2719, tmp1991
	move.l %d3,644(%a1)	| tmp1991, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 644B]
| voxel.c:1058: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2004
	and.b #1,%d1	|, _97
| voxel.c:1058: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2007
	ext.w %d1	| tmp2006
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _565
| voxel.c:1059: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2010
	and.b #1,%d0	|, _98
| voxel.c:1059: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2013
	ext.w %d0	| tmp2012
	neg.w %d0	| tmp2014
	moveq #11,%d6	|,
	lsl.w %d6,%d0	|, _2627
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a1),%d4	| MEM[(short unsigned int *)screen_130 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d4	| _565, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a1),%d3	| MEM[(short unsigned int *)screen_130 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d3	| _565, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a1),%d2	| MEM[(short unsigned int *)screen_130 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:232: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2627, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a1)	| data, MEM[(short unsigned int *)screen_130 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2627, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a1)	| data, MEM[(short unsigned int *)screen_130 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a1)	|, MEM[(short unsigned int *)screen_130 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a1)	| data, MEM[(short unsigned int *)screen_130 + 326B]
| voxel.c:913: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,86(%sp)	|, %sfp
	cmp.l #800,78(%sp)	|, %sfp
	jne .L239		|
.L331:
| voxel.c:1066: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%d2	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:1069: 	print("Total time per frame: ");
	pea .LC16		|
	jsr _print		|
| voxel.c:1067: 	unsigned long millis = (t1 - t0) * 5;
	move.l %d2,%a0	| t1, tmp2024
	sub.l 110(%sp),%a0	| %sfp, tmp2024
| voxel.c:1067: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp2024, tmp2026
	add.l %a0,%d0	| tmp2024, tmp2026
	add.l %d0,%d0	| tmp2026, tmp2027
| voxel.c:1068: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp2032
	move.l 82(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2032
| voxel.c:1070: 	printnum(millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2121,
	jsr _printnum		|
| voxel.c:1071: 	print("\r\nTime spent rendering terrain: ");
	pea .LC17		|
	jsr _print		|
| voxel.c:1072: 	printnum(t_render * 5 / frames);
	move.l 94(%sp),%d0	| %sfp, tmp2037
	add.l %d0,%d0	|, tmp2037
	add.l %d0,%d0	| tmp2037, tmp2038
| voxel.c:1072: 	printnum(t_render * 5 / frames);
	move.l 90(%sp),-(%sp)	| %sfp,
	move.l 98(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2032
| voxel.c:1072: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2122,
	jsr _printnum		|
| voxel.c:1073: 	print("\r\n");
	pea .LC4		|
	jsr _print		|
| voxel.c:1074: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:1075: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (20,%sp),%sp	|,
.L165:
| voxel.c:1078: 	print("Press any key to exit to TOS.\r\n");
	pea .LC18		|
	jsr _print		|
| voxel.c:837: 	while (Bconstat(_CON))
	addq.l #4,%sp	|,
| voxel.c:837: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp2050
.L240:
#APP
| 837 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2050
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2123
	jne .L240		|
| voxel.c:839: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp2052
.L241:
#APP
| 839 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2052
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:839: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2124
	jeq .L241		|
| voxel.c:841: 	Bconin(_CON);
#APP
| 841 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2052
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:1080: 	install_palette(saved_palette);
#NO_APP
	pea 124(%sp)		|
	jsr _install_palette		|
| voxel.c:1081: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:1082: }
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (112,%sp),%sp	|,
	rts	
.L243:
| voxel.c:372: 		if (i & 1) pdata |= 0x55000000;
	move.l #1431633920,%d3	|, pdata
| voxel.c:372: 		if (i & 1) pdata |= 0x55000000;
	move.l %a1,%d0	| pdata, pdata
	jra .L156		|
.L242:
| voxel.c:357: 		if (i & 1) pdata |= 0xaa000000;
	move.l #-1431699456,%d3	|, pdata
| voxel.c:357: 		if (i & 1) pdata |= 0xaa000000;
	move.l %a1,%d0	| pdata, pdata
	jra .L148		|
.L321:
| voxel.c:874: 		print("Failed to load voxel data.\r\n");
	pea .LC10		|
	jsr _print		|
| voxel.c:875: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:1078: 	print("Press any key to exit to TOS.\r\n");
	pea .LC18		|
	jsr _print		|
| voxel.c:837: 	while (Bconstat(_CON))
	addq.l #4,%sp	|,
| voxel.c:837: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp2050
	jra .L240		|
.L322:
| voxel.c:641: 	if (v == HEIGHT - 1) v = 0;
	clr.w %d4	| v
| voxel.c:644: 		c2p_skip(out, (unsigned char *)(combined[v]+u), 64, 16, odd ^ (y&1));
	and.l #65535,%d0	|, u
	move.l %d0,%a4	| u, _1087
	add.l %d0,%a4	| u, _1087
| voxel.c:642: 	out += 64; 
	move.l 102(%sp),%d6	| %sfp, out
| voxel.c:643: 	for (short y = 0; y < 32; y++) {
	clr.w %d3	| y
	jra .L234		|
.L222:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _247, tmp1832
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L226		|
	jra .L323		|
.L194:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _251, tmp1774
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L198		|
	jra .L324		|
.L181:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _243, tmp1757
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L185		|
	jra .L325		|
.L187:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _251, tmp1766
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L191		|
	jra .L326		|
.L208:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _249, tmp1799
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L212		|
	jra .L327		|
.L201:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _249, tmp1783
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L205		|
	jra .L328		|
.L215:
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:568: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:569: 		if (fog) fog_table_shifted++;
	addq.l #1,%a4	|, fog_table_shifted
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _247, tmp1816
| voxel.c:199: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:534: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L219		|
	jra .L329		|
.L232:
| voxel.c:648: 		else if (v == HEIGHT - 1) v = 0;
	cmp.w #511,%d0	|, v
	jeq .L252		|
| voxel.c:646: 		v += 8;
	move.w %d0,%d4	| v, v
	addq.w #1,%d3	|, y
| voxel.c:643: 	for (short y = 0; y < 32; y++) {
	cmp.w #32,%d3	|, y
	jne .L234		|
	jra .L330		|
.L250:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%d3	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1619],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1822
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1822, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _537
	move.w %a3,%d7	| offset, _537
	move.l %d7,%a3	| _537, tmp2065
	add.l #_pdata_table,%a3	|, tmp2065
	move.l %a1,%d6	| movep_data, movep_data
	jra .L224		|
.L249:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%d3	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1621],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1806
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1806, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _613
	move.w %a3,%d7	| offset, _613
	move.l %d7,%a3	| _613, tmp2066
	add.l #_pdata_table,%a3	|, tmp2066
	move.l %a1,%d6	| movep_data, movep_data
	jra .L217		|
.L246:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%a1	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1772
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_826, _827
	jra .L196		|
.L248:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%d3	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d6	|
	move.b (%a4),%d6	| MEM[(unsigned char *)fog_table_shifted_1623],
	move.w %d6,%a3	|, opacity_preshifted
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	and.w #-256,%d7	|, tmp1789
| voxel.c:494: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	add.w %d7,%a3	| tmp1789, offset
| voxel.c:495: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _689
	move.w %a3,%d7	| offset, _689
	move.l %d7,%a3	| _689, tmp2067
	add.l #_pdata_table,%a3	|, tmp2067
	move.l %a1,%d6	| movep_data, movep_data
	jra .L210		|
.L247:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%a1	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1781
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_750, _751
	jra .L203		|
.L244:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%a1	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1755
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_978, _979
	jra .L183		|
.L245:
| voxel.c:541: 				sample_y = y_min;
	move.w %d4,%a1	| _66, sample_y
	moveq #1,%d5	|, z
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d3	|, tmp1764
| voxel.c:490: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d3.l),%d3	| *_902, _903
	jra .L189		|
.L252:
| voxel.c:648: 		else if (v == HEIGHT - 1) v = 0;
	clr.w %d4	| v
	addq.w #1,%d3	|, y
| voxel.c:643: 	for (short y = 0; y < 32; y++) {
	cmp.w #32,%d3	|, y
	jne .L234		|
	jra .L330		|
.L176:
| voxel.c:924: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-1284,%a0	|, _32
	jlt .L178		|
| voxel.c:922: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	pea 5.w		|
	move.l %a0,-(%sp)	| _32,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:925: 			pos.z += altitude_delta;
	move.w %d2,%d1	| _28, _1060
	add.w %d0,%d1	| tmp2120, _1060
	move.w %d1,_pos+4	| _1060, pos.z
| voxel.c:932: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d1	|, _3106
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d2	| _3106
	move.w %d1,%d2	| _3106, _3106
	move.l #256,%d0	|, tmp1697
	sub.l %d2,%d0	| _3106, tmp1697
	add.l %d0,%d0	| tmp1697, _3117
| voxel.c:590: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1699
	sub.w %d1,%a0	| _3106, tmp1699
| voxel.c:592: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	moveq #0,%d1	| tmp1700
	move.w %a0,%d1	| tmp1699, tmp1700
	add.l %d1,%d1	| tmp1700, tmp1700
	move.l %d1,98(%sp)	| tmp1700, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d0	|, _3117
	move.l %d0,74(%sp)	| _3117, %sfp
| voxel.c:625: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp1716
	add.l #_horizon,%d0	|, tmp1716
	move.l %d0,50(%sp)	| tmp1716, %sfp
	move.l %d7,70(%sp)	| sample_uv, %sfp
	jra .L229		|
.L253:
	sub.l %a0,%a0	| _3467
| voxel.c:1006: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _3467,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _82
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _82,
	muls.w _pos+6,%d0	| pos.dirx, tmp1954
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1955
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, tmp1957
	swap %d0	| vect__88.456
	clr.w %d0	| vect__88.456
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d1	| pos.diry, tmp1963
| voxel.c:183: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp1964
| voxel.c:1009: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%d1	| pos.y, tmp1966
| voxel.c:1008: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w %d1,%d0	| tmp1966, vect__88.456
	move.l %d0,(%a0)	| vect__88.456, MEM <vector(2) short int> [(short int *)&pos]
| voxel.c:1056: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:1056: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	addq.l #4,%sp	|,
	lsr.w #2,%d0	|, tmp1972
	and.w #8192,%d0	|, _2680
| voxel.c:220: 	data &= mask;
	move.l 54(%sp),%a1	| %sfp,
	move.l 4(%a1),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 4B], tmp1973
	and.l #-536879105,%d3	|, tmp1973
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2680
	move.w %d0,%d1	| _2680, _2680
| voxel.c:220: 	data &= mask;
	move.l (%a1),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130], tmp1978
	and.l #-536879105,%d4	|, tmp1978
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2680
	swap %d2	| _2680
	clr.w %d2	| _2680
	move.w %d0,%d2	| _2680, _2680
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2680, tmp1978
	move.l %d4,(%a1)	| tmp1978, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130]
	or.l %d1,%d3	| _2680, tmp1973
	move.l %d3,4(%a1)	| tmp1973, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 4B]
| voxel.c:1057: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp1986
	and.b #1,%d0	|, _96
| voxel.c:1057: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp1989
	ext.w %d0	| tmp1988
	neg.w %d0	| tmp1990
	lsl.w %d1,%d0	|, _2719
| voxel.c:220: 	data &= mask;
	move.l 644(%a1),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 644B], tmp1991
	and.l #-536879105,%d3	|, tmp1991
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2719
	move.w %d0,%d1	| _2719, _2719
| voxel.c:220: 	data &= mask;
	move.l 640(%a1),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 640B], tmp1996
	and.l #-536879105,%d4	|, tmp1996
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2719
	swap %d2	| _2719
	clr.w %d2	| _2719
	move.w %d0,%d2	| _2719, _2719
| voxel.c:222: 	*out++ = data;
	or.l %d2,%d4	| _2719, tmp1996
	move.l %d4,640(%a1)	| tmp1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 640B]
	or.l %d1,%d3	| _2719, tmp1991
	move.l %d3,644(%a1)	| tmp1991, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_130 + 644B]
| voxel.c:1058: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2004
	and.b #1,%d1	|, _97
| voxel.c:1058: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2007
	ext.w %d1	| tmp2006
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _565
| voxel.c:1059: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2010
	and.b #1,%d0	|, _98
| voxel.c:1059: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2013
	ext.w %d0	| tmp2012
	neg.w %d0	| tmp2014
	moveq #11,%d6	|,
	lsl.w %d6,%d0	|, _2627
| voxel.c:221: 	data |= (color & 1) << (15-x);
	move.w 320(%a1),%d4	| MEM[(short unsigned int *)screen_130 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:220: 	data &= mask;
	or.w %d1,%d4	| _565, data
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a1),%d3	| MEM[(short unsigned int *)screen_130 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:224: 	data &= mask;
	or.w %d1,%d3	| _565, data
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a1),%d2	| MEM[(short unsigned int *)screen_130 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:232: 	data &= mask;
	or.w %d2,%d1	| data, data
| voxel.c:221: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _2627, data
	or.w #8192,%d4	|, data
	move.w %d4,320(%a1)	| data, MEM[(short unsigned int *)screen_130 + 320B]
| voxel.c:225: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _2627, data
	or.w #8192,%d3	|, data
	move.w %d3,322(%a1)	| data, MEM[(short unsigned int *)screen_130 + 322B]
| voxel.c:229: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a1)	|, MEM[(short unsigned int *)screen_130 + 324B]
| voxel.c:233: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| data, data
	or.w #8192,%d0	|, data
	move.w %d0,326(%a1)	| data, MEM[(short unsigned int *)screen_130 + 326B]
| voxel.c:913: 	for(int i=0; i<FRAMES; i++) {
	addq.w #8,86(%sp)	|, %sfp
	cmp.l #800,78(%sp)	|, %sfp
	jne .L239		|
	jra .L331		|
.L178:
| voxel.c:925: 			pos.z += altitude_delta;
	add.w #-256,%d2	|, _35
	move.w %d2,_pos+4	| _35, pos.z
| voxel.c:926: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d2	|, _35
	jle .L179		|
| voxel.c:926: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
| voxel.c:932: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	moveq #2,%d4	|,
	move.l %d4,98(%sp)	|, %sfp
	moveq #2,%d0	|, _3117
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d0	|, _3117
	move.l %d0,74(%sp)	| _3117, %sfp
| voxel.c:625: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp1716
	add.l #_horizon,%d0	|, tmp1716
	move.l %d0,50(%sp)	| tmp1716, %sfp
	move.l %d7,70(%sp)	| sample_uv, %sfp
	jra .L229		|
.L179:
| voxel.c:932: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:175: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d2	|, _3104
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d1	| _3104
	move.w %d2,%d1	| _3104, _3104
	move.l #256,%d0	|, tmp1707
	sub.l %d1,%d0	| _3104, tmp1707
	add.l %d0,%d0	| tmp1707, _3117
| voxel.c:590: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1709
	sub.w %d2,%a0	| _3104, tmp1709
| voxel.c:592: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1709, tmp1710
	add.l %a0,%a0	| tmp1710, tmp1710
	move.l %a0,98(%sp)	| tmp1710, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,66(%sp)	| pos.diry, %sfp
| voxel.c:948: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,68(%sp)	| pos.dirx, %sfp
| voxel.c:956: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d0	|, _3117
	move.l %d0,74(%sp)	| _3117, %sfp
| voxel.c:625: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	moveq #0,%d0	| x
	move.w 48(%sp),%d0	| %sfp, x
	add.l %d0,%d0	| x, tmp1716
	add.l #_horizon,%d0	|, tmp1716
	move.l %d0,50(%sp)	| tmp1716, %sfp
	move.l %d7,70(%sp)	| sample_uv, %sfp
	jra .L229		|
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
.lcomm _c2p_table,2048
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
