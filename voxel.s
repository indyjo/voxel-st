| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
_print:
	movem.l %d2-%d3/%a2-%a3,-(%sp)	|
	move.l 20(%sp),%a3	| s, s
| voxel.c:58: 	while (*s) {
	move.b (%a3),%d0	| *s_5(D), _2
	jeq .L1		|
| voxel.c:59: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp35
.L3:
	and.w #255,%d0	|, _b_7
#APP
| 59 "voxel.c" 1
	movw	%d0,%sp@-	| _b_7
	movw	%d3,%sp@-	| tmp35
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:60: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:58: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_9], _2
	jne .L3		|
.L1:
| voxel.c:62: }
	movem.l (%sp)+,%d2-%d3/%a2-%a3	|
	rts	
	.even
_printnum:
	lea (-16,%sp),%sp	|,
	movem.l %d2-%d4/%a2-%a4,-(%sp)	|
	move.l 44(%sp),%d4	| n, n
| voxel.c:66: 	if (neg) n = -n;
	move.l %d4,%d2	| n, _11
	jmi .L18		|
.L11:
| voxel.c:69: 	*p=0;
	clr.b 39(%sp)	| MEM[(char *)&buf + 15B]
| voxel.c:68: 	char *p=buf+15;
	lea (39,%sp),%a2	|,, p
| voxel.c:70: 	while (n > 0) {
	tst.l %d4	| n
	jeq .L12		|
	lea ___modsi3,%a4	|, tmp68
	lea ___divsi3,%a3	|, tmp69
.L13:
	move.l %a2,%d3	| p, p
| voxel.c:71: 		*(--p)='0' + (n % 10);
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a4)		| tmp68
	addq.l #8,%sp	|,
| voxel.c:71: 		*(--p)='0' + (n % 10);
	add.b #48,%d0	|,
	move.b %d0,-(%a2)	|, MEM[(char *)p_18]
| voxel.c:72: 		n /= 10;
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a3)		| tmp69
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp71, n
| voxel.c:70: 	while (n > 0) {
	jne .L13		|
| voxel.c:74: 	if (neg) *(--p)='-';
	tst.l %d4	| n
	jlt .L19		|
.L12:
| voxel.c:75: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:76: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,%d2-%d4/%a2-%a4	|
	lea (16,%sp),%sp	|,
	rts	
.L19:
| voxel.c:74: 	if (neg) *(--p)='-';
	move.b #45,-1(%a2)	|, MEM[(char *)p_18 + 4294967295B]
	move.l %d3,%a2	| p, p
	subq.l #2,%a2	|, p
| voxel.c:75: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:76: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,%d2-%d4/%a2-%a4	|
	lea (16,%sp),%sp	|,
	rts	
.L18:
| voxel.c:66: 	if (neg) n = -n;
	neg.l %d2	| _11
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
	lea (-444,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
	move.l #_y_table+1024,%d6	|, ivtmp.324
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:211: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:210: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp384
	lea _fog_table,%a5	|, tmp387
.L21:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _154
	lsr.w #7,%d0	|, _154
| voxel.c:214: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _154, _3
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	muls.w #70,%d0	|, _7
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.324, ivtmp.313
	move.w #-17920,%a2	|, ivtmp.310
.L22:
| voxel.c:214: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.310,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _59,
	sub.w %d0,%d1	| tmp438,
	move.w %d1,(%a3)+	|, MEM[(short int *)_74]
| voxel.c:213: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.310
	cmp.w #17920,%a2	|, ivtmp.310
	jne .L22		|
| voxel.c:219: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:221: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, _14
	and.l %d4,%d0	| z, _14
| voxel.c:221: 		if (TRIGGERS_PROGRESSION(z))
	jne .L23		|
| voxel.c:79: 	return x + x;
	add.w %d7,%d7	| step, step
| voxel.c:224: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, _229
	add.l %d4,%a0	| z, _229
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _229
	jlt .L102		|
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _229, _229
	move.l %a0,%d0	| _229, tmp249
	lsl.l #8,%d0	|, tmp249
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _229, tmp249
	move.l %d0,-(%sp)	| tmp249,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _250 * 1]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.324
.L103:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _154
	lsr.w #7,%d0	|, _154
| voxel.c:214: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _154, _3
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	muls.w #70,%d0	|, _7
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:216: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.324, ivtmp.313
	move.w #-17920,%a2	|, ivtmp.310
	jra .L22		|
.L102:
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| _229
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _229, _229
	move.l %a0,%d0	| _229, tmp249
	lsl.l #8,%d0	|, tmp249
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _229, tmp249
	move.l %d0,-(%sp)	| tmp249,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _250 * 1]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.324
	jra .L103		|
.L23:
| voxel.c:224: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, _246
	add.l %d4,%a0	| z, _246
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _246
	jlt .L104		|
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _246, _246
	move.l %a0,%d0	| _246, tmp265
	lsl.l #8,%d0	|, tmp265
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _246, tmp265
	move.l %d0,-(%sp)	| tmp265,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _161 * 1]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.324
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
.L105:
	lea _combined+1025,%a1	|, ivtmp.301
	clr.b %d2	| max_height_lsm_flag.211
	clr.b %d1	| max_height_lsm.210
.L27:
	lea (-1024,%a1),%a0	|, ivtmp.301, ivtmp.294
.L29:
| voxel.c:233: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_206], _502
| voxel.c:233: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.210, _502
	jls .L28		|
| voxel.c:234: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _502, max_height_lsm.210
| voxel.c:233: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.211
.L28:
| voxel.c:232: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.294
	cmp.l %a1,%a0	| ivtmp.301, ivtmp.294
	jne .L29		|
| voxel.c:231: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a1),%a1	|, ivtmp.301
	cmp.l #_combined+525313,%a1	|, ivtmp.301
	jne .L27		|
	tst.b %d2	| max_height_lsm_flag.211
	jeq .L71		|
| voxel.c:238: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_324
	move.b %d1,_max_height	| prephitmp_324, max_height
| voxel.c:240: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp290
	add.l #232,%d2	|, tmp290
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp290,
	jsr _memcpy		|
	move.l %d2,124(%sp)	| tmp290, %sfp
	lea _pdata_table,%a6	|, tmp386
	move.l %a6,160(%sp)	| tmp386, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:250: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	move.l %a5,%a4	| y, y
.L31:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 112(%sp),%a0	| %sfp,
	move.l (%a0),116(%sp)	| MEM[(int *)_236], %sfp
	move.l 4(%a0),120(%sp)	| MEM[(int *)_236 + 4B], %sfp
	move.l 8(%a0),124(%sp)	| MEM[(int *)_236 + 8B], %sfp
	move.l 12(%a0),128(%sp)	| MEM[(int *)_236 + 12B], %sfp
	move.l 16(%a0),132(%sp)	| MEM[(int *)_236 + 16B], %sfp
	move.l 20(%a0),136(%sp)	| MEM[(int *)_236 + 20B], %sfp
	move.l 24(%a0),140(%sp)	| MEM[(int *)_236 + 24B], %sfp
	move.l 28(%a0),144(%sp)	| MEM[(int *)_236 + 28B], %sfp
	move.l 148(%sp),108(%sp)	| %sfp, %sfp
	clr.l 100(%sp)	| %sfp
| voxel.c:251: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a5,%a5	| fog
	move.l %a5,%a3	| fog, fog
	move.l %a4,%a5	| y, y
.L67:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 116(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	sge %d1		| tmp372
	neg.b %d1	| mask
	move.l 120(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L58		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d1	|, mask
.L58:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 124(%sp),%d2	| %sfp,
	cmp.l 100(%sp),%d2	| %sfp,
	jlt .L59		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d1	|, mask
.L59:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 128(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jlt .L60		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d1	|, mask
.L60:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 132(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L61		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d1	|, mask
.L61:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 136(%sp),%d2	| %sfp,
	cmp.l 100(%sp),%d2	| %sfp,
	jlt .L62		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d1	|, mask
.L62:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 140(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jlt .L63		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d1	|, mask
.L63:
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 144(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L64		|
| voxel.c:256: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d1	|, mask
.L64:
| voxel.c:263: 						| pdata_pattern(15, ~mask);
	move.b %d1,%d0	| mask, _30
	not.b %d0	| _30
	and.l #255,%d0	|, _133
	move.l %d0,%d2	| _133, tmp377
	lsl.l #8,%d2	|, tmp377
	add.l %d2,%d0	| tmp377, tmp378
	move.l %d0,%d2	| tmp378, tmp379
	swap %d2	| tmp379
	clr.w %d2	| tmp379
	add.l %d2,%d0	| tmp379, tmp378
	move.l %d0,86(%sp)	| tmp378, %sfp
| voxel.c:261: 						| pdata_pattern(color1, mask & evn)
	move.b %d1,%d2	| mask,
	and.b #-86,%d2	|,
	move.b %d2,99(%sp)	|, %sfp
| voxel.c:262: 						| pdata_pattern(color2, mask & odd)
	move.b %d1,%d0	| mask,
	and.b #85,%d0	|,
	move.b %d0,98(%sp)	|, %sfp
	move.l 108(%sp),62(%sp)	| %sfp, %sfp
	clr.l 66(%sp)	| %sfp
| voxel.c:258: 			for (int color1 = 0; color1 < 16; color1++) {
	sub.l %a4,%a4	| color1
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d0	| _381
	move.b %d2,%d0	|, _381
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d0,%d2	| _381,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,78(%sp)	|, %sfp
	or.l 86(%sp),%d2	| %sfp,
	move.l %d2,90(%sp)	|, %sfp
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d0,%d2	| _381,
	lsl.l #8,%d2	|,
	move.l %d2,74(%sp)	|, %sfp
	or.l 90(%sp),%d2	| %sfp,
	move.l %d2,94(%sp)	|, %sfp
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d2	|,
	and.l %d1,%d2	| mask,
	move.l %d2,82(%sp)	|, %sfp
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,54(%sp)	|, %sfp
	lsl.w #8,%d0	|, _381
	swap %d0	| _381
	clr.w %d0	| _381
	move.l %d0,104(%sp)	| _381, %sfp
	move.l %a4,%d3	| color1, color1
	move.l %a5,%a4	| y, y
	move.l %a3,%a5	| fog, fog
.L65:
	move.b %d3,%d6	| color1, _349
	move.b %d3,%d2	|,
	and.b #2,%d2	|,
	move.b %d2,46(%sp)	|, %sfp
	move.b %d3,%d7	|, _192
	and.b #4,%d7	|, _192
	btst #3,%d3	|, color1
	jeq .L40		|
	move.b 99(%sp),%d4	| %sfp, _198
.L41:
	and.l #255,%d4	|, iftmp.33_199
	btst #0,%d6	|, _349
	jeq .L42		|
	move.l 104(%sp),%d0	| %sfp, _431
	or.l 86(%sp),%d0	| %sfp, _431
	move.l 62(%sp),%a0	| %sfp, ivtmp.264
	move.l 66(%sp),%d2	| %sfp, ivtmp.263
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,58(%sp)	|, %sfp
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.l 82(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,70(%sp)	|, %sfp
	move.w %d7,%a1	| _192, _192
	move.l %d4,50(%sp)	| iftmp.33_199, %sfp
	move.w %d6,%a3	| _349, _349
	move.l %d0,%a2	| _431, _431
.L38:
	move.l %a2,%d0	| _431, prephitmp_435
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	tst.b 46(%sp)	| %sfp
	jeq .L32		|
	or.l 78(%sp),%d0	| %sfp, prephitmp_435
.L32:
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jeq .L33		|
	or.l 74(%sp),%d0	| %sfp, prephitmp_435
.L33:
	move.w %a3,%d1	| _349, _214
	add.b %d2,%d1	| ivtmp.263, _214
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _214
	jeq .L73		|
	move.l 54(%sp),%d7	| %sfp, iftmp.30_443
.L34:
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _214
	jeq .L74		|
	move.l 58(%sp),%d6	| %sfp, iftmp.31_447
.L35:
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _214
	jeq .L75		|
	move.l 70(%sp),%d4	| %sfp, iftmp.32_451
.L36:
	move.b %d1,%d5	| _214, _182
	and.b #8,%d5	|, _182
| voxel.c:202: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _214
	jeq .L37		|
	move.b 98(%sp),%d5	| %sfp, _182
.L37:
| voxel.c:260: 					unsigned int pdata = 0
	or.l 50(%sp),%d0	| %sfp, _456
	or.l %d7,%d0	| iftmp.30_443, _457
	or.l %d6,%d0	| iftmp.31_447, _458
	or.l %d4,%d0	| iftmp.32_451, _459
	or.b %d5,%d0	| _182, pdata
| voxel.c:264: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _194
	and.l %d2,%d1	| ivtmp.263, _194
	lsl.l #4,%d1	|, _464
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp312
	lsl.l #3,%d1	|, tmp313
	add.l %a5,%d1	| fog, tmp314
	lsl.l #3,%d1	|, tmp315
	add.l %a4,%d1	| y, tmp316
	add.l %d1,%d1	| tmp316, tmp317
	add.l %d1,%d1	| tmp317, tmp318
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_465][fog_232][y_231]
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_496]
| voxel.c:259: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.263
	lea (-3840,%a0),%a0	|, ivtmp.264
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.263,
	jne .L38		|
.L50:
| voxel.c:258: 			for (int color1 = 0; color1 < 16; color1++) {
	addq.l #1,%d3	|, color1
| voxel.c:258: 			for (int color1 = 0; color1 < 16; color1++) {
	subq.l #1,66(%sp)	|, %sfp
	add.l #4096,62(%sp)	|, %sfp
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L65		|
| voxel.c:251: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	move.l %a5,%a3	| fog, fog
	move.l %a4,%a5	| y, y
	addq.l #1,%a3	|, fog
| voxel.c:251: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,100(%sp)	|, %sfp
	moveq #32,%d1	|,
	add.l %d1,108(%sp)	|, %sfp
	moveq #8,%d2	|,
	cmp.l %a3,%d2	| fog,
	jne .L67		|
| voxel.c:250: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a4	|, y
| voxel.c:250: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d0	|,
	add.l %d0,112(%sp)	|, %sfp
	addq.l #4,148(%sp)	|, %sfp
	moveq #8,%d1	|,
	cmp.l %a4,%d1	| y,
	jne .L31		|
| voxel.c:275: 	short top_envelope[20] = {
	move.l #1048590,152(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,156(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,160(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,164(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,168(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,172(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,176(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655394,180(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #2228258,184(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #2228258,188(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:281: 	short bottom_envelope[20] = {
	move.l #458758,192(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #327684,196(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #196610,200(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #65537,204(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	clr.l 208(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	clr.l 212(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	clr.l 216(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	clr.l 220(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	clr.l 224(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	clr.l 228(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (152,%sp),%a0	|,, ivtmp.235
	lea _view_min+80,%a6	|, ivtmp.238
	lea _view_min,%a1	|, tmp385
	move.l %a1,%a5	| tmp385, ivtmp.240
	lea (192,%sp),%a4	|,, ivtmp.242
	lea _view_max+80,%a3	|, ivtmp.245
	lea _view_max,%a2	|, ivtmp.247
	moveq #40,%d1	|, _87
	add.l %a0,%d1	| ivtmp.235, _87
.L68:
| voxel.c:289: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_94], _38
| voxel.c:289: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_93]
| voxel.c:289: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_92]
| voxel.c:290: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_91], _42
| voxel.c:290: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_90]
| voxel.c:290: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_89]
| voxel.c:288: 	for (int i=0; i<20; i++) {
	cmp.l %d1,%a0	| _87, ivtmp.235
	jne .L68		|
	lea _horizon,%a0	|, ivtmp.228
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L69:
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, _43
	asr.l #3,%d0	|, _43
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| _43, tmp383
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_115]
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:297: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L69		|
| voxel.c:298: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (444,%sp),%sp	|,
	rts	
.L104:
| voxel.c:225: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| _246
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _246, _246
	move.l %a0,%d0	| _246, tmp265
	lsl.l #8,%d0	|, tmp265
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _246, tmp265
	move.l %d0,-(%sp)	| tmp265,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:227: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _161 * 1]
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:212: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.324
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
	jra .L105		|
.L75:
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d4	| iftmp.32_451
	jra .L36		|
.L74:
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d6	| iftmp.31_447
	jra .L35		|
.L73:
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d7	| iftmp.30_443
	jra .L34		|
.L42:
| voxel.c:258: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 62(%sp),%a0	| %sfp, ivtmp.254
	move.l 66(%sp),%d2	| %sfp, ivtmp.253
	tst.b 46(%sp)	| %sfp
	jne .L43		|
	move.l 74(%sp),%d0	| %sfp,
	or.l 86(%sp),%d0	| %sfp,
	move.l %d0,46(%sp)	|, %sfp
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,50(%sp)	|, %sfp
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.l 82(%sp),%d0	| %sfp,
	lsl.l #8,%d0	|,
	move.l %d0,58(%sp)	|, %sfp
	move.w %d7,%a1	| _192, _192
	move.l %d4,%a2	| iftmp.33_199, iftmp.33_199
	move.w %d6,%a3	| _349, _349
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jeq .L77		|
.L106:
	move.l 46(%sp),%d0	| %sfp, prephitmp_24
	move.w %a3,%d1	| _349, _480
	add.b %d2,%d1	| ivtmp.253, _480
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _480
	jeq .L78		|
.L107:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_354
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _480
	jeq .L79		|
.L108:
	move.l 50(%sp),%d6	| %sfp, iftmp.31_162
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _480
	jeq .L80		|
.L109:
	move.l 58(%sp),%d4	| %sfp, iftmp.32_72
.L47:
	move.b %d1,%d5	| _480, _202
	and.b #8,%d5	|, _202
| voxel.c:202: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _480
	jeq .L48		|
	move.b 98(%sp),%d5	| %sfp, _202
.L48:
| voxel.c:260: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_199,
	or.l %d1,%d0	|, _21
	or.l %d7,%d0	| iftmp.30_354, _22
	or.l %d6,%d0	| iftmp.31_162, _11
	or.l %d4,%d0	| iftmp.32_72, _26
	or.b %d5,%d0	| _202, pdata
| voxel.c:264: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _541
	and.l %d2,%d1	| ivtmp.253, _541
	lsl.l #4,%d1	|, _242
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp341
	lsl.l #3,%d1	|, tmp342
	add.l %a5,%d1	| fog, tmp343
	lsl.l #3,%d1	|, tmp344
	add.l %a4,%d1	| y, tmp345
	add.l %d1,%d1	| tmp345, tmp346
	add.l %d1,%d1	| tmp346, tmp347
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_241][fog_232][y_231]
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_495]
| voxel.c:259: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.253
	lea (-3840,%a0),%a0	|, ivtmp.254
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.253,
	jeq .L50		|
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jne .L106		|
.L77:
	move.l 86(%sp),%d0	| %sfp, prephitmp_24
	move.w %a3,%d1	| _349, _480
	add.b %d2,%d1	| ivtmp.253, _480
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _480
	jne .L107		|
.L78:
	moveq #0,%d7	| iftmp.30_354
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _480
	jne .L108		|
.L79:
	moveq #0,%d6	| iftmp.31_162
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _480
	jne .L109		|
.L80:
	moveq #0,%d4	| iftmp.32_72
	jra .L47		|
.L40:
	clr.b %d4	| _198
	jra .L41		|
.L43:
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,46(%sp)	|, %sfp
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.l 82(%sp),%d0	| %sfp,
	lsl.l #8,%d0	|,
	move.l %d0,50(%sp)	|, %sfp
	move.w %d7,%a1	| _192, _192
	move.l %d4,%a2	| iftmp.33_199, iftmp.33_199
	move.w %d6,%a3	| _349, _349
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jeq .L82		|
.L110:
	move.l 94(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _349, _359
	add.b %d2,%d1	| ivtmp.258, _359
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _359
	jeq .L83		|
.L111:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_391
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _359
	jeq .L84		|
.L112:
	move.l 46(%sp),%d6	| %sfp, iftmp.31_395
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _359
	jeq .L85		|
.L113:
	move.l 50(%sp),%d4	| %sfp, iftmp.32_399
.L54:
	move.b %d1,%d5	| _359, _49
	and.b #8,%d5	|, _49
| voxel.c:202: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _359
	jeq .L55		|
	move.b 98(%sp),%d5	| %sfp, _49
.L55:
| voxel.c:260: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_199,
	or.l %d1,%d0	|, _404
	or.l %d7,%d0	| iftmp.30_391, _405
	or.l %d6,%d0	| iftmp.31_395, _406
	or.l %d4,%d0	| iftmp.32_399, _407
	or.b %d5,%d0	| _49, pdata
| voxel.c:264: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _174
	and.l %d2,%d1	| ivtmp.258, _174
	lsl.l #4,%d1	|, _412
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp365
	lsl.l #3,%d1	|, tmp366
	add.l %a5,%d1	| fog, tmp367
	lsl.l #3,%d1	|, tmp368
	add.l %a4,%d1	| y, tmp369
	add.l %d1,%d1	| tmp369, tmp370
	add.l %d1,%d1	| tmp370, tmp371
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_413][fog_232][y_231]
| voxel.c:266: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_426]
| voxel.c:259: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.258
	lea (-3840,%a0),%a0	|, ivtmp.259
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.258,
	jeq .L50		|
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jne .L110		|
.L82:
	move.l 90(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _349, _359
	add.b %d2,%d1	| ivtmp.258, _359
| voxel.c:199: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _359
	jne .L111		|
.L83:
	moveq #0,%d7	| iftmp.30_391
| voxel.c:200: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _359
	jne .L112		|
.L84:
	moveq #0,%d6	| iftmp.31_395
| voxel.c:201: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _359
	jne .L113		|
.L85:
	moveq #0,%d4	| iftmp.32_399
	jra .L54		|
.L71:
| voxel.c:231: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_324
| voxel.c:238: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_324, max_height
| voxel.c:240: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp290
	add.l #232,%d2	|, tmp290
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp290,
	jsr _memcpy		|
	move.l %d2,124(%sp)	| tmp290, %sfp
	lea _pdata_table,%a6	|, tmp386
	move.l %a6,160(%sp)	| tmp386, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:250: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	move.l %a5,%a4	| y, y
	jra .L31		|
	.text
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
	.text
	.even
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
	move.l 8268(%sp),%d4	| screen, screen
| voxel.c:642: 	print("Loading colors.tga\r\n");
	pea .LC1		|
	lea _print,%a5	|, tmp139
	jsr (%a5)		| tmp139
| voxel.c:643: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC2,%d0	|, tmp97
	clr.w %d3	| tmp98
#APP
| 643 "voxel.c" 1
	movw	%d3,%sp@-	| tmp98
	movl	%d0,%sp@-	| tmp97
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d7	| tmp147, _43
| voxel.c:644: 	if (file1 < 0) {
	addq.l #4,%sp	|,
	jmi .L145		|
| voxel.c:648: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _43,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:661: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d7,%a6	| _43, _27
| voxel.c:649: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L146		|
.L117:
| voxel.c:707: 	Fclose(file1);
#APP
| 707 "voxel.c" 1
	movw	%d7,%sp@-	| _43
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L132:
| voxel.c:709: 	return 0;
	moveq #0,%d0	| <retval>
.L114:
| voxel.c:710: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (8220,%sp),%sp	|,
	rts	
.L146:
| voxel.c:651: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:651: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:652: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:653: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:655: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:656: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:661: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	moveq #80,%d5	|, ivtmp.341
	add.l %sp,%d5	|, ivtmp.341
	move.l #8192,%d3	|,
#APP
| 661 "voxel.c" 1
	movl	%d5,%sp@-	| ivtmp.341
	movl	%d3,%sp@-	|
	movw	%d7,%sp@-	| _43
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp148, n
| voxel.c:661: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
	tst.l %d0	| n
	jeq .L126		|
| voxel.c:660: 	short lines_remaining = 200;
	move.w #200,%d3	|, lines_remaining
| voxel.c:659: 	unsigned char *p = &combined[0][0].color;
	lea _combined,%a4	|, p
| voxel.c:658: 	size_t n, remaining = 512*512;
	moveq #4,%d6	|, remaining
	swap %d6	| remaining
| voxel.c:669: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	lea _c2p,%a3	|, tmp144
.L118:
| voxel.c:662: 		remaining -= n;
	sub.l %a2,%d6	| n, remaining
| voxel.c:663: 		print(".");
	pea .LC7		|
	jsr (%a5)		| tmp139
	move.l %d5,%d2	| ivtmp.341, ivtmp.352
	move.l %d5,%d0	| ivtmp.341, _120
	add.l %a2,%d0	| n, _120
	addq.l #4,%sp	|,
	move.l %d5,%a1	| ivtmp.341, ivtmp.359
	move.l %a4,%a0	| p, p
.L121:
| voxel.c:665: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_116], MEM[(unsigned char *)p_137]
| voxel.c:666: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:664: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.359, _120
	jne .L121		|
	move.l %a2,%d0	| n, _36
	subq.l #1,%d0	|, _36
	move.l %d0,%d1	| _36, _35
	add.l %d0,%d1	| _36, _35
	lea 2(%a4,%d1.l),%a4	|, p
	moveq #9,%d1	|,
	lsr.l %d1,%d0	|, _118
	move.w %d3,%a2	| lines_remaining, _141
	subq.w #1,%a2	|, _141
	sub.w %d0,%a2	| _118, _127
.L122:
| voxel.c:668: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	tst.w %d3	| lines_remaining
	jeq .L123		|
| voxel.c:669: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	moveq #1,%d0	|,
	and.l %d3,%d0	| lines_remaining,
	move.l %d0,-(%sp)	|,
	pea 320.w		|
	move.l %d2,-(%sp)	| ivtmp.352,
	move.l %d4,-(%sp)	| screen,
	jsr (%a3)		| tmp144
| voxel.c:670: 			screen += 80; // advance screen pointer one line
	add.l #160,%d4	|, screen
	subq.w #1,%d3	|, lines_remaining
| voxel.c:668: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	add.l #512,%d2	|, ivtmp.352
	lea (16,%sp),%sp	|,
	cmp.w %a2,%d3	| _127, lines_remaining
	jne .L122		|
.L123:
| voxel.c:661: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d6,%d0	| remaining, _13
	cmp.l #8192,%d6	|, remaining
	jls .L125		|
	move.l #8192,%d0	|, _13
.L125:
#APP
| 661 "voxel.c" 1
	movl	%d5,%sp@-	| ivtmp.341
	movl	%d0,%sp@-	| _13
	movw	%a6,%sp@-	| _27
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a2	| tmp150, n
| voxel.c:661: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jne .L118		|
.L126:
| voxel.c:674: 	print("\r\n");
	pea .LC4		|
	jsr (%a5)		| tmp139
| voxel.c:675: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp138
	jsr (%a4)		| tmp138
| voxel.c:677: 	print("Loading height.tga\r\n");
	pea .LC5		|
	jsr (%a5)		| tmp139
| voxel.c:678: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC6,%d0	|, tmp112
	clr.w %d3	| tmp113
#APP
| 678 "voxel.c" 1
	movw	%d3,%sp@-	| tmp113
	movl	%d0,%sp@-	| tmp112
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d6	| tmp149, _62
| voxel.c:679: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L147		|
| voxel.c:683: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _62,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:687: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d6,%a3	| _62, _34
| voxel.c:684: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L127		|
| voxel.c:687: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a6	|, tmp126
#APP
| 687 "voxel.c" 1
	movl	%d5,%sp@-	| ivtmp.341
	movl	%a6,%sp@-	| tmp126
	movw	%d6,%sp@-	| _62
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp151, n
| voxel.c:685: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:686: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:687: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L131		|
.L128:
| voxel.c:688: 		remaining -= n;
	sub.l %d2,%d3	| n, remaining
| voxel.c:689: 		print(".");
	pea .LC7		|
	jsr (%a5)		| tmp139
	move.l %d5,%a1	| ivtmp.341, ivtmp.341
	lea (%a1,%d2.l),%a2	| _19, n, _19
	addq.l #4,%sp	|,
	move.l %d4,%a0	| p, p
.L129:
| voxel.c:693: 			*p = buf[i]*2;
	move.b (%a1)+,%d1	| MEM[(unsigned char *)_113], _15
| voxel.c:693: 			*p = buf[i]*2;
	add.b %d1,%d1	| _15, _16
	move.b %d1,(%a0)	| _16, MEM[(unsigned char *)p_140]
| voxel.c:694: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:690: 		for (size_t i=0; i<n; i++) {
	cmp.l %a2,%a1	| _19, ivtmp.341
	jne .L129		|
	add.l %d2,%d2	| _73
	add.l %d2,%d4	| _73, p
| voxel.c:687: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d3,%d0	| remaining, _17
	cmp.l #8192,%d3	|, remaining
	jls .L130		|
	move.l %a6,%d0	| tmp126, _17
.L130:
#APP
| 687 "voxel.c" 1
	movl	%d5,%sp@-	| ivtmp.341
	movl	%d0,%sp@-	| _17
	movw	%a3,%sp@-	| _34
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp152, n
| voxel.c:687: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L128		|
.L131:
| voxel.c:697: 	print("\r\n");
	pea .LC4		|
	jsr (%a5)		| tmp139
| voxel.c:698: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp138
| voxel.c:700: 	Fclose(file1);
#APP
| 700 "voxel.c" 1
	movw	%d7,%sp@-	| _43
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:701: 	Fclose(file2);
| 701 "voxel.c" 1
	movw	%d6,%sp@-	| _62
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:702: 	return 1; // success
#NO_APP
	addq.l #8,%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:710: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (8220,%sp),%sp	|,
	rts	
.L145:
| voxel.c:645: 		print("Error reading colors.tga\r\n");
	pea .LC3		|
	jsr (%a5)		| tmp139
| voxel.c:646: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:709: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L114		|
.L127:
| voxel.c:705: 	Fclose(file2);
#APP
| 705 "voxel.c" 1
	movw	%d6,%sp@-	| _62
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:707: 	Fclose(file1);
| 707 "voxel.c" 1
	movw	%d7,%sp@-	| _43
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L132		|
.L147:
| voxel.c:680: 		print("Error reading height.tga\r\n");
	pea .LC8		|
	jsr (%a5)		| tmp139
| voxel.c:681: 		goto error1;
	addq.l #4,%sp	|,
| voxel.c:707: 	Fclose(file1);
#APP
| 707 "voxel.c" 1
	movw	%d7,%sp@-	| _43
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L132		|
	.even
_compute_and_set_bottom_palette.isra.0:
	link.w %fp,#-84	|,
	movem.l %d2-%d7/%a2-%a5,-(%sp)	|
	move.l 8(%fp),%d3	| sunlight_factor, sunlight_factor
| voxel.c:592: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d6	| pos.diry, _8
	neg.w %d6	| _8
| voxel.c:595: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:602: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:604: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	move.w %d3,%d4	|,
	asr.w #3,%d4	|,
	move.w %d4,%a5	|, _88
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%a3	| sunlight_factor, _400
	moveq #0,%d3	|
	move.b %d2,%d3	| _10,
	move.l %d3,%a4	|, _672
	moveq #0,%d4	|
	move.b %d1,%d4	| _13,
	move.l %d4,-58(%fp)	|, %sfp
	move.b %d0,%d3	| _16,
	move.l %d3,-62(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|, _18
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, _19
	sub.w %d2,%a0	| _18, _19
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a0,%d4	| _19,
	move.l %d4,-66(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|, _21
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, _22
	sub.w %d1,%a0	| _21, _22
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d1	|
	move.w %a0,%d1	| _22,
	move.l %d1,-70(%fp)	|, %sfp
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|, _24
| voxel.c:597: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, _25
	sub.w %d0,%d1	| _24, _25
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-74(%fp)	|, %sfp
	lea _palette_vectors+6,%a1	|, ivtmp.384
| voxel.c:604: 	*p++ = 0;
	lea (-45,%fp),%a0	|,, p
	lea (-3,%fp),%a2	|,,
	move.l %a2,-82(%fp)	|, %sfp
.L155:
| voxel.c:607: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a1),-54(%fp)	| MEM[(union  *)_282], normal_lcs
	move.w 4(%a1),-50(%fp)	| MEM[(union  *)_282], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d4	| normal_lcs.a[2], b$a$2
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d1	| b$a$2,
	muls.w %d7,%d1	| _4, _332
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _333
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d2	| _8,
	muls.w %d0,%d2	| b$a$0, _442
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _451
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d1	| _451, _353
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d1	|, _688
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _208
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d7,%d0	| _4, _14
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _17
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d2	| b$a$2,
	muls.w %d6,%d2	| _8, _23
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _26
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _26, _203
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, _211
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _633
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| _208, _646
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a3,%d1	|,
	muls.w %d1,%d0	|, _651
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _652
| voxel.c:614: 		if (c_sun < 0) c_sun = 0;
	tst.w %d0	| _655
	jlt .L165		|
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	add.w %a5,%d0	| _88, c_sun
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	ext.l %d1	| normal_lcs.a[1]
	move.l %d1,%d3	| normal_lcs.a[1], _228
	lsl.l #7,%d3	|, _228
| voxel.c:622: 		if (c_sky < 0) c_sky = 0;
	tst.w %d1	| result_230
	jlt .L166		|
.L150:
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%a2	| result_230,
	move.l %a2,-78(%fp)	|, %sfp
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| c_sun,
	muls.w -68(%fp),%d2	| %sfp, _610
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _220
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d5	| result_230,
	muls.w -56(%fp),%d5	| %sfp, _551
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, _232
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d2	| _232, _501
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	| c_sun,
	muls.w -72(%fp),%d5	| %sfp, _221
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, _222
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -60(%fp),%d1	| %sfp, _235
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _236
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d1	| _222, _243
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d3	| _245
	asr.l #7,%d3	|, _456
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| b$a$2, _249
| voxel.c:626: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d3,%d4	| _249, c_cabinlight_256
	asr.w #2,%d4	|, c_cabinlight_256
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d3	| _249
	jlt .L167		|
.L151:
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a4,%d3	|,
	muls.w -76(%fp),%d3	| %sfp, _541
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _550
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d4,%d3	| c_cabinlight_256, _412
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -64(%fp),%d0	| %sfp, _603
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _607
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| _607, _422
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d1	| _243
	jlt .L156		|
.L168:
	cmp.w #128,%d1	|, _243
	jge .L157		|
	add.b %d1,%d1	| _243, iftmp.81_266
.L152:
| voxel.c:630: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.81_266, MEM[(unsigned char *)p_213]
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jlt .L158		|
.L169:
	cmp.w #128,%d2	|, _501
	jge .L159		|
	add.b %d2,%d2	| _501, iftmp.81_270
.L153:
| voxel.c:631: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.81_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jlt .L160		|
.L170:
	cmp.w #128,%d3	|, _422
	jge .L161		|
	add.b %d3,%d3	| _422, iftmp.81_279
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.81_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.384
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L155		|
.L171:
| voxel.c:634: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:635: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:637: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:638: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),%d2-%d7/%a2-%a5	|
	unlk %fp		|
	rts	
.L167:
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d4	| c_cabinlight_256
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a4,%d3	|,
	muls.w -76(%fp),%d3	| %sfp, _541
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _550
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d4,%d3	| c_cabinlight_256, _412
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -64(%fp),%d0	| %sfp, _603
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _607
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| _607, _422
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d1	| _243
	jge .L168		|
.L156:
	clr.b %d1	| iftmp.81_266
| voxel.c:630: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.81_266, MEM[(unsigned char *)p_213]
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jge .L169		|
.L158:
	clr.b %d2	| iftmp.81_270
| voxel.c:631: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.81_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:585: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jge .L170		|
.L160:
	clr.b %d3	| iftmp.81_279
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.81_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.384
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L155		|
	jra .L171		|
.L165:
| voxel.c:614: 		if (c_sun < 0) c_sun = 0;
	clr.w %d0	| _655
| voxel.c:616: 		c_sun += sunlight_factor >> 3;
	add.w %a5,%d0	| _88, c_sun
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	ext.l %d1	| normal_lcs.a[1]
	move.l %d1,%d3	| normal_lcs.a[1], _228
	lsl.l #7,%d3	|, _228
| voxel.c:622: 		if (c_sky < 0) c_sky = 0;
	tst.w %d1	| result_230
	jge .L150		|
.L166:
	clr.w %d1	| result_230
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%a2	| result_230,
	move.l %a2,-78(%fp)	|, %sfp
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| c_sun,
	muls.w -68(%fp),%d2	| %sfp, _610
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _220
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d5	| result_230,
	muls.w -56(%fp),%d5	| %sfp, _551
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, _232
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d2	| _232, _501
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	| c_sun,
	muls.w -72(%fp),%d5	| %sfp, _221
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, _222
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -60(%fp),%d1	| %sfp, _235
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _236
| voxel.c:580: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d1	| _222, _243
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d3	| _245
	asr.l #7,%d3	|, _456
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| b$a$2, _249
| voxel.c:626: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d3,%d4	| _249, c_cabinlight_256
	asr.w #2,%d4	|, c_cabinlight_256
| voxel.c:627: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d3	| _249
	jge .L151		|
	jra .L167		|
.L157:
| voxel.c:585: 	return val < 0 ? 0 : (
	st %d1		| iftmp.81_266
	jra .L152		|
.L161:
	st %d3		| iftmp.81_279
| voxel.c:632: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.81_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:605: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.384
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L155		|
	jra .L171		|
.L159:
| voxel.c:585: 	return val < 0 ? 0 : (
	st %d2		| iftmp.81_270
	jra .L153		|
	.text
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
	.ascii "\15\12Time spent rendering map: \0"
.LC19:
	.ascii "Press any key to exit to TOS.\15\12\0"
	.text
	.even
	.globl	_mymain
_mymain:
	lea (-180,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
| voxel.c:735: 	print("\33H\33f");
	pea .LC9		|
	jsr _print		|
| voxel.c:738: 	Super(0L);
	moveq #0,%d0	| tmp1168
#APP
| 738 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1168
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:740: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:742: 	lineaa();
	jsr _lineaa		|
| voxel.c:745: 	save_palette(saved_palette);
	pea 164(%sp)		|
	jsr _save_palette		|
| voxel.c:747: 	unsigned short *screen = Physbase();
#APP
| 747 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,82(%sp)	| tmp2127, %sfp
| voxel.c:749: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:751: 	init_c2p_table();
	jsr _init_c2p_table		|
| voxel.c:753: 	if (!load_voxel_data(screen)) {
	move.l 82(%sp),-(%sp)	| %sfp,
	jsr _load_voxel_data		|
| voxel.c:753: 	if (!load_voxel_data(screen)) {
	lea (12,%sp),%sp	|,
	tst.l %d0	| tmp2128
	jeq .L369		|
| voxel.c:758: 	print("Loading cockpit.tga\r\n");
	pea .LC11		|
	jsr _print		|
| voxel.c:759: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC12		|
	lea (154,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 158(%sp),%a5	| cockpit.pixels, cockpit$pixels
| voxel.c:725: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1181
#APP
| 725 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1181
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2129, _409
| voxel.c:726: 	print("TOS reports ");
	pea .LC13		|
	jsr _print		|
| voxel.c:727: 	printnum(size);
	move.l %d2,-(%sp)	| _409,
	jsr _printnum		|
| voxel.c:728: 	print(" bytes free.\r\n");
	pea .LC14		|
	jsr _print		|
| voxel.c:761: 	print("Computing tables\r\n");
	pea .LC15		|
	jsr _print		|
| voxel.c:762: 	build_tables();
	jsr _build_tables		|
| voxel.c:763: 	if (!cockpit.pixels) goto error;
	lea (24,%sp),%sp	|,
	cmp.w #0,%a5	|, cockpit$pixels
	jeq .L174		|
| voxel.c:764: 	read_palette_vectors(cockpit.colors);
	move.l 154(%sp),%a4	| cockpit.colors, colors
	lea _palette_vectors,%a3	|, ivtmp.682
	move.l #_palette_vectors+96,%d5	|, _2552
.L175:
| voxel.c:567: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_1544], b
| voxel.c:568: 		unsigned char g = *colors++;
	move.b 1(%a4),%d3	| MEM[(const unsigned char *)colors_1544 + 1B], g
| voxel.c:569: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:548: 	signed char c = color - 128;
	move.b -1(%a4),%d4	| MEM[(const unsigned char *)colors_413 + 4294967295B], _415
	add.b #-128,%d4	|, _415
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d4	|, _417
| voxel.c:548: 	signed char c = color - 128;
	add.b #-128,%d3	|, _419
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d3	|, _421
| voxel.c:548: 	signed char c = color - 128;
	add.b #-128,%d2	|, _423
| voxel.c:549: 	return c >> 1;
	asr.b #1,%d2	|, _425
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _2509
	move.w %d2,%d0	| _2509,
	muls.w %d2,%d0	| _2509, _938
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _937
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _2029
	move.w %d3,%d1	| _2029,
	muls.w %d3,%d1	| _2029, _1007
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _968
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| _968, _1067
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _763
	move.w %d4,%d1	| _763,
	muls.w %d4,%d1	| _763, _1014
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _1013
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| _1013, _940
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1245
	ext.l %d0	| _862
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _861
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d1	|, _864
	sub.w %d0,%d1	| _861, _864
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d4	| _864, _793
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _786
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d3	| _864, _788
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _779
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _864, _716
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _717
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _779,
	move.l %d3,-(%sp)	| _779,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp2130, _519
	asr.l #7,%d6	|, _519
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _786,
	move.l %d4,-(%sp)	| _786,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _555
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d6	| _555, _243
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _717,
	move.l %d2,-(%sp)	| _717,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1053
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d0	| _243, _1055
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1249
	ext.l %d0	| _1045
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1046
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d7	|, _1048
	sub.w %d0,%d7	| _1046, _1048
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d7	|, _982
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _982,
	move.l %d4,-(%sp)	| _786,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp2133, _977
	asr.l #7,%d6	|, _977
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _982,
	move.l %d3,-(%sp)	| _779,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2134, _981
	asr.l #7,%d3	|, _981
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _982,
	move.l %d2,-(%sp)	| _717,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2135, _986
	asr.l #7,%d4	|, _986
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _981,
	move.l %d3,-(%sp)	| _981,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2136, _898
	asr.l #7,%d2	|, _898
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _977,
	move.l %d6,-(%sp)	| _977,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _893
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _893, _823
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _986,
	move.l %d4,-(%sp)	| _986,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _826
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _823, _828
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1240
	ext.l %d0	| _818
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _819
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _821
	sub.w %d0,%a2	| _819, _821
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _821, _475
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _977,
	move.l %a2,-(%sp)	| _475,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp2139, _299
	asr.l #7,%d6	|, _299
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _981,
	move.l %a2,-(%sp)	| _475,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2140, _405
	asr.l #7,%d3	|, _405
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _986,
	move.l %a2,-(%sp)	| _475,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2141, _271
	asr.l #7,%d4	|, _271
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _299,
	move.l %d6,-(%sp)	| _299,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2142, _1601
	asr.l #7,%d2	|, _1601
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _405,
	move.l %d3,-(%sp)	| _405,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1606
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1606, _1608
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _271,
	move.l %d4,-(%sp)	| _271,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1612
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1612, _1614
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| _1614, _1620
	moveq #-128,%d1	|, _1621
	add.l %a0,%d1	| _1620, _1621
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, _1622
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1624
	sub.w %d1,%a2	| _1622, _1624
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1624, _1629
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1629,
	move.l %d6,-(%sp)	| _299,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2145, _1631
	asr.l #7,%d2	|, _1631
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1629,
	move.l %d3,-(%sp)	| _405,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2146, _1635
	asr.l #7,%d3	|, _1635
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1629,
	move.l %d4,-(%sp)	| _271,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1639
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| _1631, _1658
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _1659
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| _1635, _1663
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1664
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d1	| _1664, _1666
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d4	|,
	muls.w %d0,%d4	| _1639, _1669
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1670
| voxel.c:554: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d1	| _1670, _1672
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| _1672, _1678
	moveq #-128,%d1	|, _1679
	add.l %a0,%d1	| _1678, _1679
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, _1680
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1683
	sub.w %d1,%d4	| _1680, _1683
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d4,%d1	| _1683, _1688
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _1689
| voxel.c:574: 		palette_vectors[i].c = v.c;
	swap %d1	| _2113
	clr.w %d1	| _2113
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d3	| _1683, _1692
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _1693
| voxel.c:574: 		palette_vectors[i].c = v.c;
	move.w %d3,%d1	| _1693, _2113
	move.l %d1,(%a3)	| _2113, MEM <vector(2) short int> [(union  *)_2567]
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d4,%d0	| _1683, _1696
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1697
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| _1697, MEM <fixp> [(union  *)_2567 + 4B]
| voxel.c:566: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.682
	cmp.l %d5,%a3	| _2552, ivtmp.682
	jne .L175		|
	move.l 74(%sp),%a0	| %sfp,
	lea (32000,%a0),%a0	|,
	move.l %a0,86(%sp)	|, %sfp
	move.l 74(%sp),%a0	| %sfp, ivtmp.673
	move.l 86(%sp),%d0	| %sfp, _2589
.L176:
| voxel.c:162: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.431_787]
	cmp.l %d0,%a0	| _2589, ivtmp.673
	jne .L176		|
| voxel.c:478: 	unsigned int movep_data = pdata_table[color][0][0];
	lea _pdata_table,%a4	|, tmp2106
	move.l (%a4),%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.664
	lea _view_max,%a3	|, ivtmp.667
	move.l #_view_min+80,%d5	|, _2616
	clr.w %d3	| ivtmp.665
	move.l 74(%sp),%a1	| %sfp, _207
.L181:
| voxel.c:768: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_2618], _6
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d4	| ivtmp.665, _303
	asr.w #4,%d4	|, _303
	ext.l %d4	| _304
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d4	| _304, tmp1305
	add.l %d4,%d4	| tmp1305, _305
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, _309
	lsr.l #3,%d2	|, _309
	moveq #1,%d6	|,
	and.l %d6,%d2	|, _310
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	moveq #0,%d6	| _305
	move.w %d4,%d6	| _305, _305
	add.l %d6,%d6	| _305, _307
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _307, _311
	add.l %d2,%a0	| _310, _311
	lea (%a1,%a0.l),%a0	| _207, _311, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _6
	jle .L177		|
	mulu.w #160,%d1	|, _2516
	add.l %a0,%d1	| pBlock, _2694
.L178:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:481: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2694
	jne .L178		|
.L177:
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_2615], _10
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _12
	sub.w %a0,%d1	| _10, _12
| voxel.c:769: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, _14
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d6	| _14,
	muls.w #80,%d6	|,
	move.l %d6,%a0	|, _246
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _305, _242
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| _242, _235
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| _235, _274
	lea (%a1,%d2.l),%a0	| _207, _274, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _12
	jle .L179		|
	mulu.w #160,%d1	|, _2510
	add.l %a0,%d1	| pBlock, _2511
.L180:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:481: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2511
	jne .L180		|
.L179:
| voxel.c:767: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.665
	cmp.l %d5,%a2	| _2616, ivtmp.664
	jne .L181		|
| voxel.c:772: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:773: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:774: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:777: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	move.l 78(%sp),%d0	| %sfp,
	add.l #19200,%d0	|,
	move.l %d0,86(%sp)	|, %sfp
	move.w 150(%sp),%a0	| cockpit.width,
	move.l %a0,94(%sp)	|, %sfp
	lea (320,%a5),%a5	|, cockpit$pixels
	move.l %a5,82(%sp)	| cockpit$pixels, %sfp
	addq.l #4,%sp	|,
.L182:
	move.l 82(%sp),70(%sp)	| %sfp, %sfp
	move.l 78(%sp),%a2	| %sfp, ivtmp.631
	lea (-320,%a2),%a2	|, ivtmp.631
.L183:
| voxel.c:142: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a2),%d0	| MEM[(const unsigned char *)_2347],
	move.w %d0,%a1	|, px
	move.b 1(%a2),%d1	| MEM[(const unsigned char *)_2347 + 1B],
	move.w %d1,%a0	|, px
	move.b 2(%a2),%d7	| MEM[(const unsigned char *)_2347 + 2B], px
	move.b 3(%a2),%d6	| MEM[(const unsigned char *)_2347 + 3B], px
	move.b 4(%a2),%d5	| MEM[(const unsigned char *)_2347 + 4B], px
	move.b 5(%a2),%d4	| MEM[(const unsigned char *)_2347 + 5B], px
	move.b 6(%a2),%d3	| MEM[(const unsigned char *)_2347 + 6B], px
	move.b 7(%a2),%d2	| MEM[(const unsigned char *)_2347 + 7B], px
	move.b 8(%a2),99(%sp)	| MEM[(const unsigned char *)_2347 + 8B], %sfp
	move.b 9(%a2),95(%sp)	| MEM[(const unsigned char *)_2347 + 9B], %sfp
	move.b 10(%a2),67(%sp)	| MEM[(const unsigned char *)_2347 + 10B], %sfp
	move.b 11(%a2),63(%sp)	| MEM[(const unsigned char *)_2347 + 11B], %sfp
	move.b 12(%a2),59(%sp)	| MEM[(const unsigned char *)_2347 + 12B], %sfp
	move.b 13(%a2),55(%sp)	| MEM[(const unsigned char *)_2347 + 13B], %sfp
	move.b 14(%a2),51(%sp)	| MEM[(const unsigned char *)_2347 + 14B], %sfp
	move.b 15(%a2),49(%sp)	| MEM[(const unsigned char *)_2347 + 15B], %sfp
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2637
	add.w %d1,%a5	| _2637, _2490
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2490,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2487
	add.w %d0,%a3	| _2487, _2451
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2451,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2448
	add.w %d0,%a5	| _2448, _2412
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2412,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2409
	add.w %d0,%a3	| _2409, _2373
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2373,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2370
	add.w %d0,%a5	| _2370, _2334
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2334,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2331
	add.w %d0,%a3	| _2331, _2295
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2295,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2292
	add.w %d0,%a5	| _2292, _2256
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 99(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2256,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2253
	add.w %d0,%a3	| _2253, _2217
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 95(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2217,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2214
	add.w %d0,%a5	| _2214, _2178
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 67(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2178,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2175
	add.w %d0,%a3	| _2175, _2139
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 63(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2139,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2136
	add.w %d0,%a5	| _2136, _2100
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2100,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2097
	add.w %d0,%a3	| _2097, _2061
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2061,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2058
	add.w %d0,%a5	| _2058, _2022
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2022,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2019
	add.w %d0,%a3	| _2019, _482
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _2109
| voxel.c:146: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2566
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a6	|, _2649
| voxel.c:146: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2639
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2649,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2652
	add.w %d0,%a6	| _2652, _2483
| voxel.c:146: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2485
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2483,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2480
	add.w %d1,%a6	| _2480, _2444
| voxel.c:146: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2446
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2444,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2441
	add.w %d0,%a6	| _2441, _2405
| voxel.c:146: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2407
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2405,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2402
	add.w %d1,%a6	| _2402, _2366
| voxel.c:146: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2368
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2366,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2363
	add.w %d0,%a6	| _2363, _2327
| voxel.c:146: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2329
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2327,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2324
	add.w %d1,%a6	| _2324, _2288
| voxel.c:146: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2290
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2288,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2285
	add.w %d0,%a6	| _2285, _2249
| voxel.c:146: 				px >>= 1;
	move.b 99(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2251
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2249,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2246
	add.w %d1,%a6	| _2246, _2210
| voxel.c:146: 				px >>= 1;
	move.b 95(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2212
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2210,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2207
	add.w %d0,%a6	| _2207, _2171
| voxel.c:146: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2173
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2171,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2168
	add.w %d1,%a6	| _2168, _2132
| voxel.c:146: 				px >>= 1;
	move.b 63(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2134
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2132,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2129
	add.w %d0,%a6	| _2129, _2093
| voxel.c:146: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2095
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2093,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2090
	add.w %d1,%a6	| _2090, _2054
| voxel.c:146: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2056
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2054,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2051
	add.w %d0,%a6	| _2051, _2015
| voxel.c:146: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2017
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2015,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2012
	add.w %d1,%a5	| _2012, _491
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d1	| _2109,
	move.w %a5,%d1	| _491,
	move.l %d1,%a3	|, _2109
	move.b 49(%sp),%d0	| %sfp,
	moveq #1,%d1	|,
	and.l %d1,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a6	|, _2107
| voxel.c:146: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
| voxel.c:147: 				plane1 = (plane1 << 1) | (px & 1);
	and.b #1,%d0	|,
	move.b %d0,%d1	|,
	and.w #255,%d1	|,
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a6,%d0	| _2107,
	move.w %d1,%d0	| _493,
| voxel.c:153: 			*out++ = plane0;
	move.l %a3,%d1	| _2109,
	or.l %d0,%d1	|,
	move.l 70(%sp),%a5	| %sfp,
	move.l %d1,(%a5)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2419]
| voxel.c:148: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2587
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, _2662
| voxel.c:148: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px_2654
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| _2662,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1108
	add.w %d1,%a5	| _1108, _2476
| voxel.c:148: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2478
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2476,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2473, _2437
	add.w %d0,%a6	| _2473, _2437
| voxel.c:148: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2439
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2437,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2434, _2398
	add.w %d1,%a5	| _2434, _2398
| voxel.c:148: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2400
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2398,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2395, _2359
	add.w %d0,%a6	| _2395, _2359
| voxel.c:148: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2361
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2359,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2356, _2320
	add.w %d1,%a5	| _2356, _2320
| voxel.c:148: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2322
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2320,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2317, _2281
	add.w %d0,%a6	| _2317, _2281
| voxel.c:148: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2283
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2281,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2278, _2242
	add.w %d1,%a5	| _2278, _2242
| voxel.c:148: 				px >>= 1;
	move.b 99(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2244
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2242,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2239, _2203
	add.w %d0,%a6	| _2239, _2203
| voxel.c:148: 				px >>= 1;
	move.b 95(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2205
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2203,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2200, _2164
	add.w %d1,%a5	| _2200, _2164
| voxel.c:148: 				px >>= 1;
	move.b 67(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2166
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2164,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2161, _2125
	add.w %d0,%a6	| _2161, _2125
| voxel.c:148: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2127
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2125,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2122, _2086
	add.w %d1,%a5	| _2122, _2086
| voxel.c:148: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2088
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2086,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2083
	add.w %d0,%a3	| _2083, _2047
| voxel.c:148: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px_2049
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| _2047,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2044
	add.w %d1,%a5	| _2044, _2008
| voxel.c:148: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2010
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:149: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2008,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2005
	add.w %d0,%a3	| _2005, _499
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _2110
| voxel.c:150: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px_2600
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a1	|, _1097
| voxel.c:150: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a0	|, px_1100
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	| _1097,
	or.w %d1,%d0	|,
	move.w %d0,%a0	|, _2669
	add.w %d0,%a0	| _2669, _2469
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d7	|, px_2471
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, _2467
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d0	| _2469,
	or.w %d0,%d7	|, _2466
	add.w %d7,%d7	| _2466, _2430
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d6	|, px_2432
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, _2428
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| _2430, _2427
	add.w %d6,%d6	| _2427, _2391
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d5	|, px_2393
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, _2389
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| _2391, _2388
	add.w %d5,%d5	| _2388, _2352
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d4	|, px_2354
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, _2350
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| _2352, _2349
	add.w %d4,%d4	| _2349, _2313
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d3	|, px_2315
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, _2311
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| _2313, _2310
	add.w %d3,%d3	| _2310, _2274
| voxel.c:150: 				px >>= 1;
	lsr.b #3,%d2	|, px_2276
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, _2272
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| _2274, _2271
	add.w %d2,%d2	| _2271, _2235
| voxel.c:150: 				px >>= 1;
	move.b 99(%sp),%d1	| %sfp, px_2237
	lsr.b #3,%d1	|, px_2237
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, _2233
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| _2235, _2232
	add.w %d1,%d1	| _2232, _2196
| voxel.c:150: 				px >>= 1;
	move.b 95(%sp),%d0	| %sfp, px_2198
	lsr.b #3,%d0	|, px_2198
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2194
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2194, _2193
	add.w %d1,%d1	| _2193, _2157
| voxel.c:150: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp, px_2159
	lsr.b #3,%d0	|, px_2159
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2155
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2155, _2154
	add.w %d1,%d1	| _2154, _2118
| voxel.c:150: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp, px_2120
	lsr.b #3,%d0	|, px_2120
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2116
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2116, _2115
	add.w %d1,%d1	| _2115, _2079
| voxel.c:150: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px_2081
	lsr.b #3,%d0	|, px_2081
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2077
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2077, _2076
	add.w %d1,%d1	| _2076, _2040
| voxel.c:150: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px_2042
	lsr.b #3,%d0	|, px_2042
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2038
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2038, _2037
	add.w %d1,%d1	| _2037, _2001
| voxel.c:150: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp, px_2003
	lsr.b #3,%d0	|, px_2003
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1999
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| _2001, _1998
	add.w %d0,%d0	| _1998, _507
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d1	| _2110,
	move.w %d0,%d1	| _507,
	move.l %d1,%a3	|, _2110
| voxel.c:148: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px_496
	lsr.b #2,%d1	|, px_496
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	moveq #1,%d2	|,
	and.l %d2,%d1	|, _501
	swap %d1	| _2108
	clr.w %d1	| _2108
| voxel.c:150: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp, px_504
	lsr.b #3,%d0	|, px_504
| voxel.c:151: 				plane3 = (plane3 << 1) | (px & 1);
	and.b #1,%d0	|, _508
	and.w #255,%d0	|, _509
| voxel.c:145: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d1	| _509, _2108
| voxel.c:153: 			*out++ = plane0;
	move.l %a3,%d4	| _2110,
	or.l %d1,%d4	| _2108,
	move.l 70(%sp),%a0	| %sfp,
	move.l %d4,4(%a0)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2419 + 4B]
| voxel.c:139: 		for (int chunk=0; chunk<20; chunk++) {
	addq.l #8,70(%sp)	|, %sfp
	lea (16,%a2),%a2	|, ivtmp.631
	cmp.l 78(%sp),%a2	| %sfp, ivtmp.631
	jne .L183		|
	add.l #160,82(%sp)	|, %sfp
| voxel.c:138: 	for (int y=0; y<height; y++) {
	add.l 90(%sp),%a2	| %sfp, ivtmp.631
	move.l %a2,78(%sp)	| ivtmp.631, %sfp
	move.l 82(%sp),%a1	| %sfp,
	cmp.l 86(%sp),%a1	| %sfp,
	jne .L182		|
| voxel.c:781: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,142(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:786: 	int frames = 0;
	clr.l 108(%sp)	| %sfp
| voxel.c:784: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,98(%sp)	|, %sfp
| voxel.c:782: 	unsigned long t_render = 0, t_map = 0;
	clr.l 130(%sp)	| %sfp
| voxel.c:782: 	unsigned long t_render = 0, t_map = 0;
	clr.l 126(%sp)	| %sfp
| voxel.c:779: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	move.b #1,115(%sp)	|, %sfp
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a6	|, tmp2122
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1642
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1642
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2148
	jeq .L288		|
.L374:
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1642
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| _323
	ext.l %d0	| _323
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,140(%sp)	| _323, %sfp
| voxel.c:790: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L370		|
| voxel.c:795: 		frames++;
	addq.l #1,108(%sp)	|, %sfp
| voxel.c:128: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_329
	move.w (%a0),%d0	| *hw_palette.49_329, _330
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,124(%sp)	| pos.y, %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a5	|,
	move.l (%a5),%d2	| MEM <unsigned int> [(short int *)&pos], _334
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a5),122(%sp)	| pos.x, %sfp
| voxel.c:800: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 124(%sp),%d0	| %sfp, _328
	lsr.w #7,%d0	|, _328
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, _21
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 122(%sp),%d1	| %sfp, _326
	lsr.w #7,%d1	|, _326
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, _24
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1655
	add.l %d1,%d0	| _24, tmp1656
	add.l %d0,%d0	| tmp1656, tmp1657
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a6,%d0.l),%d0	| combined[_21][_24].D.2786.height, combined[_21][_24].D.2786.height
	lsr.b #1,%d0	|, _26
| voxel.c:800: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _403
	lsl.w #7,%d0	|, terrain_height.1_29
	move.w %d3,%d6	| _28,
	sub.w %d0,%d6	| terrain_height.1_29,
	move.w %d6,134(%sp)	|, %sfp
| voxel.c:801: 		if (desired_height >= 0) {
	tst.w 98(%sp)	| %sfp
	jlt .L371		|
.L187:
| voxel.c:802: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 98(%sp),%a0	| %sfp, _31
| voxel.c:802: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,82(%sp)	|, %sfp
	move.w 98(%sp),%d0	| %sfp, _34
	moveq #9,%d1	|,
	asr.w %d1,%d0	|, _34
	move.w %d0,%a1	| _34,
	move.l %a1,-(%sp)	|,
	sub.w 138(%sp),%a0	| %sfp, _31
	move.l %a0,-(%sp)	| _31,
	move.l 90(%sp),%a5	| %sfp,
	jsr (%a5)		|
	addq.l #8,%sp	|,
| voxel.c:804: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta_226
	jge .L189		|
	move.w #-256,%d0	|, altitude_delta_226
.L190:
| voxel.c:805: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:806: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jgt .L191		|
.L387:
| voxel.c:805: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _38, pos.z
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _2497
| voxel.c:836: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	and.l #65535,%d0	|, _2500
	move.l #256,%d1	|, _2503
	sub.l %d0,%d1	| _2500, _2503
	add.l %d1,%d1	| _2503, _2505
.L188:
| voxel.c:809: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_40
	move.w -602(%a0),120(%sp)	| MEM[(short int *)__aline.3_40 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _334
	move.l %d2,94(%sp)	| _334, %sfp
| voxel.c:812: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,136(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 110(%sp),%d2	| %sfp, _2340
	lsl.w #3,%d2	|, _2340
	subq.w #8,%d2	|, _42
	and.w #8,%d2	|, _43
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, _1312
	move.w %d2,48(%sp)	| _1312, %sfp
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_40 + 4294966696B],
	move.l %a0,116(%sp)	|, %sfp
	moveq #-100,%d0	|, _45
	add.l %a0,%d0	|, _45
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _45
	move.l %d0,86(%sp)	| _45, %sfp
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 120(%sp),%a0	| %sfp, _47
	move.l %a0,%d0	| _47, _48
	add.l #-160,%d0	|, _48
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,70(%sp)	| pos.diry, %sfp
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:836: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2505
	move.l %d1,100(%sp)	| _2505, %sfp
	move.b 115(%sp),%d4	| %sfp,
	eor.b #1,%d4	|,
	move.b %d4,141(%sp)	|, %sfp
	move.b 115(%sp),%d6	| %sfp,
	btst #0,%d6	|,
	jne .L192		|
.L375:
	move.l #_fog_table+48,104(%sp)	|, %sfp
| voxel.c:478: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _49,
	lsl.l #4,%d1	|,
	move.l %d1,90(%sp)	|, %sfp
	and.l #65535,%d2	|, _2289
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| _2289,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp2151, %sfp
	add.l %d2,%d2	| _2289, _2307
	move.l %d2,%a5	| _2307, ivtmp.616
	add.l #_horizon,%a5	|, ivtmp.616
	move.b 115(%sp),%d7	| %sfp, fog_enabled
	move.l %a5,50(%sp)	| ivtmp.616, %sfp
.L258:
| voxel.c:840: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 48(%sp),%d4	| %sfp, _76
	lsr.w #3,%d4	|, _76
	and.l #65535,%d4	|, _77
| voxel.c:840: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _77, tmp1707
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d2	| view_max[_77], _2738
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp, _351
	asr.w #4,%d0	|, _351
	ext.l %d0	| _352
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _352, tmp1710
	add.l %d0,%d0	| tmp1710, tmp1710
	move.l %d0,62(%sp)	| tmp1710, %sfp
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 48(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, _358
	moveq #1,%d1	|,
	and.l %d0,%d1	| _358,
	move.l %d1,66(%sp)	|, %sfp
| voxel.c:839: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d3	| _2738, _2735
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 62(%sp),-(%sp)	| %sfp,
	move.l 90(%sp),%a0	| %sfp,
	jsr (%a0)		|
	addq.l #8,%sp	|,
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 86(%sp),%d0	| %sfp, tmp2152
	move.l %d0,54(%sp)	| tmp2152, %sfp
| voxel.c:839: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d0	| _2738, y
	sub.w 56(%sp),%d0	| %sfp, y
| voxel.c:844: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a1	|,
	move.w (%a1,%d4.l),%d5	| view_min[_77], y_min
	sub.w 56(%sp),%d5	| %sfp, y_min
| voxel.c:381: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L255		|
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w 48(%sp),%d1	| %sfp, _57
	add.w #-160,%d1	|, _57
| voxel.c:827: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 70(%sp),%d4	| %sfp,
	muls.w %d1,%d4	| _57, _67
| voxel.c:827: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d4	|, _68
| voxel.c:827: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 78(%sp),%d3	| %sfp, _70
	sub.w %d4,%d3	| _68, _70
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| _337
	clr.w %d3	| _337
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	muls.w 78(%sp),%d1	| %sfp, _61
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d1	|, _62
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 70(%sp),%d1	| %sfp, _64
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| _64, _339
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, _339
	move.l %d3,%a2	| _339, _340
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 94(%sp),%d1	| %sfp, _1406
	add.l %d3,%d1	| _340, _1406
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1382
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _340, _1408
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1385
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _340, _1378
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1379
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _340, _1375
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, _350
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d2	| %sfp, _354
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| _354, _356
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| _356, _360
	add.l 66(%sp),%a0	| %sfp, _360
	add.l 74(%sp),%a0	| %sfp, pBlock
| voxel.c:377: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 100(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d3	|, z
.L199:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index_1024
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d4	| *_1025, D.4797
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| _1027
	move.b %d4,%d2	| D.4797, _1027
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_1029, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d0,%d2	| y, sample_y
	jgt .L195		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L289		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _1034
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_1035, _1036
.L197:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1036, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L197		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _340, _1065
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L199		|
.L382:
.L200:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _340, _347
	add.l %a2,%d3	| _340, _347
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _348
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
| voxel.c:381: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _348, _348
	move.w %d2,%d3	| z, z
.L201:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index_948
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d4	| *_949, D.4769
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| _951
	move.b %d4,%d2	| D.4769, _951
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_953, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L202		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L291		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _958
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_959, _960
.L204:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _960, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L204		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _348, _989
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L201		|
.L380:
| voxel.c:381: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _348, _348
.L206:
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _348, _348
	move.w %d2,%d3	| z, z
.L212:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index_872
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d4	| *_873, D.4741
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| _875
	move.b %d4,%d2	| D.4741, _875
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_877, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d0,%d2	| y, sample_y
	jgt .L208		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L292		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _882
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_883, _884
.L210:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _884, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L210		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _348, _913
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L212		|
.L381:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _348, _348
.L213:
	add.l %a2,%d3	| _348, _345
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _346
| voxel.c:381: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _346, _346
	move.w %d2,%d3	| z, z
.L219:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index_796
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d4	| *_797, D.4713
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| _799
	move.b %d4,%d2	| D.4713, _799
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_801, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L215		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L293		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _806
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_807, _808
.L217:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _808, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L217		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, _837
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L219		|
.L379:
| voxel.c:381: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _346, _346
.L220:
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
	move.l 104(%sp),%a2	| %sfp, fog_table_shifted
	move.w #-8,%a5	|, z
	move.w %a5,%d2	| z, z
	move.l %d3,%a5	| _346, _346
	move.w %d2,%d3	| z, z
.L230:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index_720
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d2	| *_721, D.4685
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| _723
	move.b %d2,%d4	| D.4685, _723
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_725, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L222		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L294		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L223:
| voxel.c:342: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, D.4685
	move.w %d2,44(%sp)	| D.4685, %sfp
| voxel.c:398: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L224		|
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _730
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d2.l),%d2	| *_731, _732
.L225:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _732, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L225		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L229:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _346, _761
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L230		|
.L378:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a5,%d3	| _346, _346
.L231:
	add.l %a5,%d3	| _346, _343
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _344
| voxel.c:381: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
| voxel.c:384: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d7	|, fog_enabled
	jeq .L233		|
| voxel.c:384: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L233:
	move.w #-8,%a5	|, z
	move.w %a5,%d2	| z, z
	move.l %d3,%a5	| _344, _344
	move.w %d2,%d3	| z, z
.L242:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index_643
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d2	| *_644, D.4657
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| _646
	move.b %d2,%d4	| D.4657, _646
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_648, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L234		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L295		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L235:
| voxel.c:342: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, D.4657
	move.w %d2,44(%sp)	| D.4657, %sfp
| voxel.c:398: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L236		|
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _653
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d2.l),%d2	| *_654, _655
.L237:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _655, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L237		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L241:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _344, _684
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L242		|
.L377:
| voxel.c:381: 	if (y < y_min) goto finish;
	move.l %a5,%d3	| _344, _344
.L243:
	cmp.w %d5,%d0	| y_min, y
	jlt .L244		|
| voxel.c:384: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d7	|, fog_enabled
	jeq .L245		|
| voxel.c:384: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L245:
	move.w #-8,%a5	|, z
	move.w %a5,%d2	| z, z
	move.l %d3,%a5	| _344, _344
	move.w %d2,%d3	| z, z
.L254:
| voxel.c:316: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index_566
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d2.l),%d2	| *_567, D.4629
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| _569
	move.b %d2,%d4	| D.4629, _569
| voxel.c:389: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_571, sample_y
| voxel.c:390: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L246		|
| voxel.c:392: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L296		|
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L247:
| voxel.c:342: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, D.4629
	move.w %d2,44(%sp)	| D.4629, %sfp
| voxel.c:398: 			if (!fog) {
	cmp.b #1,%d7	|, fog_enabled
	jeq .L248		|
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _576
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d2.l),%d2	| *_577, _578
.L249:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _578, pBlock
| 0 "" 2
| voxel.c:404: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:405: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:406: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L249		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L253:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _344, _607
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L254		|
.L244:
| voxel.c:863: 			state.y += y_offset;
	move.w %d0,%d3	| y, _2735
	add.w 56(%sp),%d3	| %sfp, _2735
	move.w %d3,%d2	| _2735, _2738
.L255:
| voxel.c:487: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 50(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_2321], _523
| voxel.c:487: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d3	| _523, _524
| voxel.c:487: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, _526
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, _529
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 62(%sp),%d0	| %sfp, _533
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _533, _535
| voxel.c:302: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 66(%sp),%d0	| %sfp, _539
	move.l 74(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| _539, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _524
	jle .L256		|
	mulu.w #160,%d3	|, _2158
	add.l %a0,%d3	| pBlock, _2165
.L257:
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 307 "voxel.c" 1
	movep.l %d6, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:481: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:479: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d3	| pBlock, _2165
	jne .L257		|
.L256:
| voxel.c:488: 	horizon[x] = y;
	move.l 50(%sp),%a1	| %sfp,
	move.w %d2,(%a1)	| _2738, MEM[(short int *)_2321]
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	add.w #16,48(%sp)	|, %sfp
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.l 90(%sp),%d1	| %sfp,
	add.l %d1,58(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,50(%sp)	|, %sfp
	cmp.w #319,48(%sp)	|, %sfp
	jls .L258		|
| voxel.c:867: 		unsigned long t_render_1 = *_hz_200;
	move.l 1210.w,%a3	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:868: 		t_render += t_render_1 - t_render_0;
	move.l %a3,%d0	| t_render_1, _94
	sub.l 136(%sp),%d0	| %sfp, _94
| voxel.c:868: 		t_render += t_render_1 - t_render_0;
	add.l %d0,126(%sp)	| _94, %sfp
| voxel.c:871: 		draw_map((unsigned char *)screen, &pos, frames & 1);
	moveq #1,%d5	|, _95
	and.l 108(%sp),%d5	| %sfp, _95
| voxel.c:505: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 70(%sp),%d2	| %sfp, _1129
	lsl.w #8,%d2	|, _1129
| voxel.c:505: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 78(%sp),%d0	| %sfp, tmp1846
	add.w %d0,%d0	|, tmp1846
	add.w 78(%sp),%d0	| %sfp, _1130
	lsl.w #6,%d0	|, tmp1848
| voxel.c:505: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	add.w %d0,%d2	| tmp1848, _1131
	add.w 122(%sp),%d2	| %sfp, _1132
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| _1134
	clr.w %d2	| _1134
| voxel.c:506: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 70(%sp),%d0	| %sfp, tmp1854
	add.w %d0,%d0	|, tmp1854
	add.w 70(%sp),%d0	| %sfp, _1121
	lsl.w #6,%d0	|, tmp1856
| voxel.c:506: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	add.w 124(%sp),%d0	| %sfp, _1122
| voxel.c:506: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 78(%sp),%d1	| %sfp, _1125
	lsl.w #8,%d1	|, _1125
| voxel.c:506: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	sub.w %d1,%d0	| _1125, _1126
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d2	| _1126, _1136
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:507: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 78(%sp),%d0	| %sfp, tmp1863
	lsl.w #4,%d0	|, tmp1863
	move.w %d0,%d3	| tmp1863, _1139
	neg.w %d3	| _1139
| voxel.c:507: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 70(%sp),%d6	| %sfp, tmp1865
	lsl.w #4,%d6	|, tmp1865
	neg.w %d6	| _1138
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #65535,%d6	|, _1142
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| _1141
	clr.w %d3	| _1141
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.l %d6,%d3	| _1142, _1143
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d6	| _1145
	clr.w %d6	| _1145
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d6	| tmp1863, _1147
	move.l 74(%sp),%a2	| %sfp, ivtmp.499
	lea (384,%a2),%a2	|, ivtmp.499
	moveq #0,%d7	| ivtmp.493
| voxel.c:526: 		c2p_x2(out, buffer, 64, odd);
	move.l %d5,%d4	| _95, _1267
	eor.w #1,%d4	|, _1267
.L261:
| voxel.c:515: 		if ((odd ^ y) & 1) {
	move.l %d7,%d0	| ivtmp.493, _1153
	eor.l %d5,%d0	| _95, _1153
| voxel.c:515: 		if ((odd ^ y) & 1) {
	btst #0,%d0	|, _1153
	jeq .L297		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _1143, _1156
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:514: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d7	|, ivtmp.493
	lea (320,%a2),%a2	|, ivtmp.499
	moveq #16,%d0	|,
	cmp.l %d7,%d0	| ivtmp.493,
	jne .L261		|
.L386:
| voxel.c:872: 		unsigned long t_render_2 = *_hz_200;
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_2
| voxel.c:873: 		t_map += t_render_2 - t_render_1;
	sub.l %a3,%d0	| t_render_1, _96
| voxel.c:873: 		t_map += t_render_2 - t_render_1;
	add.l %d0,130(%sp)	| _96, %sfp
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 94(%sp),%d0	| %sfp, _260
	add.l #65408,%d0	|, _260
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _253
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _1172
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _816
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _2519
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2520
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _2850
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2754
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d1	| pos.z, pos.z
	lsr.w #7,%d1	|, _365
| voxel.c:443: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, _1085
	sub.w %d1,%a0	| _365, _1085
| voxel.c:445: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| _1085, _1085
	add.l %a0,%a0	| _1085, _1088
	add.l #_y_table+4096,%a0	|, _2752
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	moveq #127,%d4	|, delta_uv
	not.w %d4	| delta_uv
| voxel.c:450: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:448: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:451: 	unsigned short z = 0;
	moveq #4,%d2	|, z
.L264:
	move.l %d0,%d1	| _2754, uv
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %d4,%d0	| delta_uv, _2755
	add.l %d1,%d0	| uv, _2755
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2754
| voxel.c:460: 		z++;
	addq.w #1,%d2	|, z
| voxel.c:316: 	asm (
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d1	| index_mask, index_2750
| voxel.c:330: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a6,%d1.l),%d1	| *_2749, sample
| voxel.c:455: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, _2745
| voxel.c:456: 			if (sample_y < min_y) {
	move.w (%a0,%d1.l),%d1	| *_2744, *_2744
	lea (1024,%a0),%a0	|, _2752
	cmp.w %d5,%d1	| min_y, *_2744
	jge .L262		|
	move.w %d1,%d5	| *_2744, min_y
.L262:
| voxel.c:464: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, _2741
	and.w #15,%d1	|, _2741
	jne .L263		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| _2740
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, delta_uv
| voxel.c:338: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, _2698
| voxel.c:338: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L263:
| voxel.c:452: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L264		|
| voxel.c:880: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L298		|
	move.w #128,%a0	|, _2774
| voxel.c:882: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L265		|
| voxel.c:885: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, _100
	add.w %d5,%d5	| _100, tmp1916
	add.w %d5,%d5	| tmp1916, sunlight_244
| voxel.c:888: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight_244, _2774
.L265:
	move.l %a0,-(%sp)	| _2774,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _103
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _104
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _104,
	muls.w %d3,%d0	| _103, _371
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _372
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| _372, pos.x
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _110,
	muls.w %d3,%d0	| _103, _367
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _368
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _115
	add.w %d0,%a0	| _368, _115
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, _118
	sub.l 120(%sp),%d0	| %sfp, _118
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, _119
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _103, _121
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _121, _123
	asr.w #3,%d3	|, _123
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _121, _125
	asr.w #4,%d4	|, _125
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| _125, _127
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _128
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _121
	jle .L266		|
.L388:
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d0	| _128, _130
.L267:
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _115, pos.y
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _130, pos.speed
| voxel.c:897: 		fixp rot = 160 - mouse_x;
	move.w #160,%d3	|, rot
	sub.w 120(%sp),%d3	| %sfp, rot
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d3,%d0	| rot,
	muls.w %d1,%d0	| _110, _139
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, _140
| voxel.c:898: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d2,%d0	| _104, _143
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d3	| _143, _146
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d3	|, _147
| voxel.c:899: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d3,%d1	| _147, _150
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _143,
	muls.w %d0,%d2	| _143, _389
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _390
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d3	| _150,
	muls.w %d1,%d3	| _150, _387
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _388
| voxel.c:902: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	move.w %d2,%a0	|, _153
	add.w %d3,%a0	| _388, _153
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| _153, _380
	moveq #-128,%d3	|, _381
	add.l %a0,%d3	| _380, _381
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, _382
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _385
	sub.w %d3,%d2	| _382, _385
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _385, _377
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _378
| voxel.c:903: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| _2071
	clr.w %d0	| _2071
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d1,%d2	| _150, _373
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _374
| voxel.c:903: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d2,%d0	| _374, _2071
	move.l %d0,_pos+6	| _2071, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:906: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:906: 		if (pressed_keys.up) {
	jpl .L268		|
| voxel.c:907: 			if (desired_height < FIXP(0, 0)) {
	tst.w 98(%sp)	| %sfp
	jlt .L300		|
| voxel.c:910: 			desired_height += FIXP(1, 0);
	move.w 98(%sp),%d0	| %sfp, _2776
.L269:
	add.w #128,%d0	|, _2776
	move.w %d0,98(%sp)	| _2776, %sfp
| voxel.c:911: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L268		|
	move.w #32512,98(%sp)	|, %sfp
.L268:
| voxel.c:915: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:915: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L271		|
| voxel.c:916: 			if (desired_height < FIXP(0, 0)) {
	tst.w 98(%sp)	| %sfp
	jlt .L272		|
| voxel.c:919: 			desired_height -= FIXP(1, 0);
	move.w 98(%sp),134(%sp)	| %sfp, %sfp
.L272:
| voxel.c:924: 		if (key == 0x23) {
	cmp.b #35,140(%sp)	|, %sfp
	jeq .L301		|
| voxel.c:919: 			desired_height -= FIXP(1, 0);
	move.w 134(%sp),%d6	| %sfp,
	add.w #-128,%d6	|,
	move.w %d6,98(%sp)	|, %sfp
| voxel.c:920: 			if (desired_height < FIXP(0, 0)) {
	jmi .L372		|
.L275:
| voxel.c:931: 		} else if (key == 0x20) {
	cmp.b #32,140(%sp)	|, %sfp
	jeq .L373		|
.L273:
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _2028
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _623
| voxel.c:179: 	data &= mask;
	move.l 74(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208], _2773
	and.l #-536879105,%d2	|, _2773
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2055
	swap %d1	| _2055
	clr.w %d1	| _2055
	move.w %d0,%d1	| _623, _2055
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2055, _2773
	move.l %d2,(%a5)	| _2773, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208]
| voxel.c:191: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 4B], data_1225
	or.w #8192,%d1	|, data_1225
| voxel.c:189: 	*out++ = data;
	swap %d1	| _2034
	clr.w %d1	| _2034
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1232
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1232, _2034
	move.l %d1,4(%a5)	| _2034, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _194
| voxel.c:179: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B], _2818
	and.l #-536879105,%d2	|, _2818
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2023
	swap %d1	| _2023
	clr.w %d1	| _2023
	move.w %d0,%d1	| _194, _2023
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2023, _2818
	move.l %d2,640(%a5)	| _2818, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B]
| voxel.c:191: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 644B], data_1271
	or.w #8192,%d1	|, data_1271
| voxel.c:189: 	*out++ = data;
	swap %d1	| _1996
	clr.w %d1	| _1996
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1278
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1278, _1996
	move.l %d1,644(%a5)	| _1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d2	|, tmp2002
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d1	|,
	lsl.w %d1,%d2	|, _490
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _164
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _1077
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d3	| MEM[(short unsigned int *)screen_208 + 326B], data_1324
	and.w #30719,%d3	|, data_1324
| voxel.c:191: 	data &= mask;
	or.w %d2,%d3	| _490, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2011
	not.w %d1	| tmp2011
	moveq #15,%d4	|,
	lsr.w %d4,%d1	|, _2031
	moveq #13,%d6	|,
	lsl.w %d6,%d1	|, _2183
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _2683
	swap %d4	| _2683
	clr.w %d4	| _2683
	move.w %d2,%d4	| _490, _2683
	move.l 320(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B], _332
	and.l #2013231103,%d2	|, _332
| voxel.c:179: 	data &= mask;
	or.l %d4,%d2	| _2683, _193
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d4	|, _498
	swap %d4	| _498
	clr.w %d4	| _498
	move.w %d0,%d4	| _1077, _498
	or.l %d4,%d2	| _498, _182
| voxel.c:179: 	data &= mask;
	and.l #-536879105,%d2	|, _618
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _2684
	swap %d4	| _2684
	clr.w %d4	| _2684
	move.w %d1,%d4	| _2183, _2684
| voxel.c:181: 	*out++ = data;
	or.l %d4,%d2	| _2684, _618
	move.l %d2,320(%a5)	| _618, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B]
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data_1370
| voxel.c:191: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 324B], data_1409
	or.w #-22528,%d2	|, data_1409
| voxel.c:189: 	*out++ = data;
	swap %d2	| _620
	clr.w %d2	| _620
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2183, data_1416
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d2	| data_1416, _620
	move.l %d2,324(%a5)	| _620, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 324B]
.L376:
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1642
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1642
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:713: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2148
	jne .L374		|
.L288:
	clr.b 140(%sp)	| %sfp
| voxel.c:795: 		frames++;
	addq.l #1,108(%sp)	|, %sfp
| voxel.c:128: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_329
	move.w (%a0),%d0	| *hw_palette.49_329, _330
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,124(%sp)	| pos.y, %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a5	|,
	move.l (%a5),%d2	| MEM <unsigned int> [(short int *)&pos], _334
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a5),122(%sp)	| pos.x, %sfp
| voxel.c:800: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _28
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 124(%sp),%d0	| %sfp, _328
	lsr.w #7,%d0	|, _328
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, _21
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w 122(%sp),%d1	| %sfp, _326
	lsr.w #7,%d1	|, _326
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, _24
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1655
	add.l %d1,%d0	| _24, tmp1656
	add.l %d0,%d0	| tmp1656, tmp1657
| voxel.c:799: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a6,%d0.l),%d0	| combined[_21][_24].D.2786.height, combined[_21][_24].D.2786.height
	lsr.b #1,%d0	|, _26
| voxel.c:800: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _403
	lsl.w #7,%d0	|, terrain_height.1_29
	move.w %d3,%d6	| _28,
	sub.w %d0,%d6	| terrain_height.1_29,
	move.w %d6,134(%sp)	|, %sfp
| voxel.c:801: 		if (desired_height >= 0) {
	tst.w 98(%sp)	| %sfp
	jge .L187		|
.L371:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _2496
| voxel.c:836: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	and.l #65535,%d3	|, _2499
	move.l #256,%d1	|, _2502
	sub.l %d3,%d1	| _2499, _2502
	add.l %d1,%d1	| _2502, _2505
	move.l #___divsi3,82(%sp)	|, %sfp
| voxel.c:809: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_40
	move.w -602(%a0),120(%sp)	| MEM[(short int *)__aline.3_40 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _334
	move.l %d2,94(%sp)	| _334, %sfp
| voxel.c:812: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,136(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	move.w 110(%sp),%d2	| %sfp, _2340
	lsl.w #3,%d2	|, _2340
	subq.w #8,%d2	|, _42
	and.w #8,%d2	|, _43
| voxel.c:815: 		for (unsigned short x = VIEWPORT_MIN + 3 + ((i&1)<<3); x < VIEWPORT_MAX; x += 16) {
	addq.w #3,%d2	|, _1312
	move.w %d2,48(%sp)	| _1312, %sfp
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_40 + 4294966696B],
	move.l %a0,116(%sp)	|, %sfp
	moveq #-100,%d0	|, _45
	add.l %a0,%d0	|, _45
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _45
	move.l %d0,86(%sp)	| _45, %sfp
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 120(%sp),%a0	| %sfp, _47
	move.l %a0,%d0	| _47, _48
	add.l #-160,%d0	|, _48
| voxel.c:821: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _49
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,70(%sp)	| pos.diry, %sfp
| voxel.c:828: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,78(%sp)	| pos.dirx, %sfp
| voxel.c:836: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2505
	move.l %d1,100(%sp)	| _2505, %sfp
	move.b 115(%sp),%d4	| %sfp,
	eor.b #1,%d4	|,
	move.b %d4,141(%sp)	|, %sfp
	move.b 115(%sp),%d6	| %sfp,
	btst #0,%d6	|,
	jeq .L375		|
.L192:
	move.l #_fog_table+40,104(%sp)	|, %sfp
| voxel.c:478: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d6	| pdata_table[15][0][0], movep_data
	move.l %d0,%d1	| _49,
	lsl.l #4,%d1	|,
	move.l %d1,90(%sp)	|, %sfp
	and.l #65535,%d2	|, _2289
	move.l %d0,-(%sp)	| _49,
	move.l %d2,%a0	| _2289,
	pea -160(%a0)		|
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
	move.l %d0,58(%sp)	| tmp2151, %sfp
	add.l %d2,%d2	| _2289, _2307
	move.l %d2,%a5	| _2307, ivtmp.616
	add.l #_horizon,%a5	|, ivtmp.616
	move.b 115(%sp),%d7	| %sfp, fog_enabled
	move.l %a5,50(%sp)	| ivtmp.616, %sfp
	jra .L258		|
.L370:
| voxel.c:948: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:949: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 142(%sp),%a0	| %sfp, _165
| voxel.c:949: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| _165, tmp2044
	add.l %a0,%d0	| _165, tmp2044
	add.l %d0,%d0	| tmp2044, tmp2045
| voxel.c:950: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp2049
	move.l 108(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2049
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp2153, millis_per_frame_286
| voxel.c:951: 	print("Total time per frame: ");
	pea .LC16		|
	jsr _print		|
| voxel.c:952: 	printnum(millis_per_frame);
	move.l %d2,-(%sp)	| millis_per_frame_286,
	jsr _printnum		|
| voxel.c:953: 	print("\r\nTime spent rendering terrain: ");
	pea .LC17		|
	jsr _print		|
| voxel.c:954: 	printnum(t_render * 5 / frames);
	move.l 138(%sp),%d0	| %sfp, tmp2055
	add.l %d0,%d0	|, tmp2055
	add.l %d0,%d0	| tmp2055, tmp2056
| voxel.c:954: 	printnum(t_render * 5 / frames);
	move.l 120(%sp),-(%sp)	| %sfp,
	move.l 142(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2049
| voxel.c:954: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2154,
	jsr _printnum		|
| voxel.c:955: 	print("\r\nTime spent rendering map: ");
	pea .LC18		|
	jsr _print		|
| voxel.c:956: 	printnum(t_map * 5 / frames);
	move.l 150(%sp),%d0	| %sfp, tmp2066
	add.l %d0,%d0	|, tmp2066
	add.l %d0,%d0	| tmp2066, tmp2067
| voxel.c:956: 	printnum(t_map * 5 / frames);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l 154(%sp),%a1	| %sfp,
	pea (%a1,%d0.l)		|
	jsr (%a2)		| tmp2049
| voxel.c:956: 	printnum(t_map * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2155,
	jsr _printnum		|
| voxel.c:957: 	print("\r\n");
	pea .LC4		|
	jsr _print		|
| voxel.c:958: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:959: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	lea (28,%sp),%sp	|,
.L174:
| voxel.c:962: 	print("Press any key to exit to TOS.\r\n");
	pea .LC19		|
	jsr _print		|
| voxel.c:717: 	while (Bconstat(_CON))
	moveq #2,%d0	|, tmp2079
#APP
| 717 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2079
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:718: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2081
| voxel.c:717: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2156
	jeq .L280		|
.L278:
| voxel.c:718: 		Bconin(_CON);
#APP
| 718 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2081
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:717: 	while (Bconstat(_CON))
| 717 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2081
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2157
	jne .L278		|
.L280:
| voxel.c:719: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp2084
.L279:
#APP
| 719 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2084
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:719: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2158
	jeq .L279		|
| voxel.c:721: 	Bconin(_CON);
#APP
| 721 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2084
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:964: 	install_palette(saved_palette);
#NO_APP
	pea 160(%sp)		|
	jsr _install_palette		|
| voxel.c:965: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:966: }
	moveq #0,%d0	|
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (180,%sp),%sp	|,
	rts	
.L373:
| voxel.c:933: 			fog_enabled = !fog_enabled;
	move.b 141(%sp),115(%sp)	| %sfp, %sfp
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _2028
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _623
| voxel.c:179: 	data &= mask;
	move.l 74(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208], _2773
	and.l #-536879105,%d2	|, _2773
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2055
	swap %d1	| _2055
	clr.w %d1	| _2055
	move.w %d0,%d1	| _623, _2055
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2055, _2773
	move.l %d2,(%a5)	| _2773, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208]
| voxel.c:191: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 4B], data_1225
	or.w #8192,%d1	|, data_1225
| voxel.c:189: 	*out++ = data;
	swap %d1	| _2034
	clr.w %d1	| _2034
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1232
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1232, _2034
	move.l %d1,4(%a5)	| _2034, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _194
| voxel.c:179: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B], _2818
	and.l #-536879105,%d2	|, _2818
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2023
	swap %d1	| _2023
	clr.w %d1	| _2023
	move.w %d0,%d1	| _194, _2023
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2023, _2818
	move.l %d2,640(%a5)	| _2818, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B]
| voxel.c:191: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 644B], data_1271
	or.w #8192,%d1	|, data_1271
| voxel.c:189: 	*out++ = data;
	swap %d1	| _1996
	clr.w %d1	| _1996
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1278
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1278, _1996
	move.l %d1,644(%a5)	| _1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d2	|, tmp2002
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d1	|,
	lsl.w %d1,%d2	|, _490
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _164
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _1077
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d3	| MEM[(short unsigned int *)screen_208 + 326B], data_1324
	and.w #30719,%d3	|, data_1324
| voxel.c:191: 	data &= mask;
	or.w %d2,%d3	| _490, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2011
	not.w %d1	| tmp2011
	moveq #15,%d4	|,
	lsr.w %d4,%d1	|, _2031
	moveq #13,%d6	|,
	lsl.w %d6,%d1	|, _2183
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _2683
	swap %d4	| _2683
	clr.w %d4	| _2683
	move.w %d2,%d4	| _490, _2683
	move.l 320(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B], _332
	and.l #2013231103,%d2	|, _332
| voxel.c:179: 	data &= mask;
	or.l %d4,%d2	| _2683, _193
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d4	|, _498
	swap %d4	| _498
	clr.w %d4	| _498
	move.w %d0,%d4	| _1077, _498
	or.l %d4,%d2	| _498, _182
| voxel.c:179: 	data &= mask;
	and.l #-536879105,%d2	|, _618
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _2684
	swap %d4	| _2684
	clr.w %d4	| _2684
	move.w %d1,%d4	| _2183, _2684
| voxel.c:181: 	*out++ = data;
	or.l %d4,%d2	| _2684, _618
	move.l %d2,320(%a5)	| _618, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B]
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data_1370
| voxel.c:191: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 324B], data_1409
	or.w #-22528,%d2	|, data_1409
| voxel.c:189: 	*out++ = data;
	swap %d2	| _620
	clr.w %d2	| _620
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2183, data_1416
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d2	| data_1416, _620
	move.l %d2,324(%a5)	| _620, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 324B]
	jra .L376		|
.L372:
| voxel.c:920: 			if (desired_height < FIXP(0, 0)) {
	clr.w 98(%sp)	| %sfp
| voxel.c:931: 		} else if (key == 0x20) {
	cmp.b #32,140(%sp)	|, %sfp
	jne .L273		|
	jra .L373		|
.L246:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L253		|
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L384:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _344, _607
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L254		|
	jra .L244		|
.L234:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L241		|
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L385:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _344, _684
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L242		|
	jra .L377		|
.L222:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	tst.b %d7	| fog_enabled
	jeq .L229		|
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L383:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _346, _761
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L230		|
	jra .L378		|
.L215:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _346, _837
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L219		|
	jra .L379		|
.L202:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _348, _989
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L201		|
	jra .L380		|
.L208:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _348, _913
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L212		|
	jra .L381		|
.L195:
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _340, _1065
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:387: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L199		|
	jra .L382		|
.L291:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _958
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_959, _960
	jra .L204		|
.L289:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _1034
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_1035, _1036
	jra .L197		|
.L224:
| voxel.c:347: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_88,
	move.w %d2,%a3	|, opacity_preshifted_743
	add.w 44(%sp),%a3	| %sfp, offset_745
| voxel.c:348: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _746
	move.w %a3,%d2	| offset_745, _746
	move.l %d2,%a3	| _746, tmp2100
	add.l #_pdata_table,%a3	|, tmp2100
.L227:
| voxel.c:412: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, _749
	and.l %d0,%d2	| y, _749
	add.l %d2,%d2	| _749, tmp1789
	add.l %d2,%d2	| tmp1789, _750
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_752, *_752
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_752, pBlock
| 0 "" 2
| voxel.c:414: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:415: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:416: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L227		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L383		|
.L294:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L223		|
.L293:
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _806
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_807, _808
	jra .L217		|
.L292:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, _882
| voxel.c:343: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a4,%d4.l),%d4	| *_883, _884
	jra .L210		|
.L248:
| voxel.c:347: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1580,
	move.w %d2,%a3	|, opacity_preshifted_589
	add.w 44(%sp),%a3	| %sfp, offset_591
| voxel.c:348: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _592
	move.w %a3,%d2	| offset_591, _592
	move.l %d2,%a3	| _592, tmp2096
	add.l #_pdata_table,%a3	|, tmp2096
.L251:
| voxel.c:412: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, _595
	and.l %d0,%d2	| y, _595
	add.l %d2,%d2	| _595, tmp1826
	add.l %d2,%d2	| tmp1826, _596
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_598, *_598
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_598, pBlock
| 0 "" 2
| voxel.c:414: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:415: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:416: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L251		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L384		|
.L296:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L247		|
.L236:
| voxel.c:347: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1381,
	move.w %d2,%a3	|, opacity_preshifted_666
	add.w 44(%sp),%a3	| %sfp, offset_668
| voxel.c:348: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _669
	move.w %a3,%d2	| offset_668, _669
	move.l %d2,%a3	| _669, tmp2097
	add.l #_pdata_table,%a3	|, tmp2097
.L239:
| voxel.c:412: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, _672
	and.l %d0,%d2	| y, _672
	add.l %d2,%d2	| _672, tmp1808
	add.l %d2,%d2	| tmp1808, _673
| voxel.c:307: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_675, *_675
#APP
| 307 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_675, pBlock
| 0 "" 2
| voxel.c:414: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:415: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:416: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L239		|
| voxel.c:421: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:422: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L385		|
.L295:
| voxel.c:394: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L235		|
.L297:
	move.l %d2,%d1	| sample_uv, sample_uv
	lea (192,%sp),%a0	|,, out
.L259:
| voxel.c:316: 	asm (
	move.l %d1,%d0	| sample_uv, uv
#APP
| 316 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:329: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d0	|, index_1162
| voxel.c:494: 		*out++ = sample.color;
	move.b (%a6,%d0.l),(%a0)+	| _1163->D.2786.color, MEM[(unsigned char *)out_1166 + 4294967295B]
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d1	| _1147, _1167
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:492: 	for (; samples > 0; --samples) {
	lea (224,%sp),%a1	|,,
	cmp.l %a0,%a1	| out,
	jne .L259		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d2	| _1143, _1173
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_uv
| voxel.c:523: 		c2p_x2(out, buffer, 64, odd);
	move.l %d5,-(%sp)	| _95,
	pea 64.w		|
	pea 200(%sp)		|
	pea -320(%a2)		|
	jsr _c2p_x2		|
| voxel.c:526: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,-(%sp)	| _1267,
	pea 64.w		|
	pea 216(%sp)		|
	pea -160(%a2)		|
	jsr _c2p_x2		|
	lea (32,%sp),%sp	|,
| voxel.c:514: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d7	|, ivtmp.493
	lea (320,%a2),%a2	|, ivtmp.499
	moveq #16,%d0	|,
	cmp.l %d7,%d0	| ivtmp.493,
	jne .L261		|
	jra .L386		|
.L189:
| voxel.c:803: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #256,%d0	|, altitude_delta_226
	jle .L190		|
	move.w #256,%d0	|, altitude_delta_226
| voxel.c:805: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _28, _38
| voxel.c:806: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _38
	jle .L387		|
.L191:
| voxel.c:806: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|, _2505
	jra .L188		|
.L298:
	sub.l %a0,%a0	| _2774
| voxel.c:888: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2774,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d3	| pos.speed, _103
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d2	| pos.dirx, _104
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	| _104,
	muls.w %d3,%d0	| _103, _371
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _372
| voxel.c:890: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| _372, pos.x
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _110,
	muls.w %d3,%d0	| _103, _367
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _368
| voxel.c:891: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _115
	add.w %d0,%a0	| _368, _115
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, _118
	sub.l 120(%sp),%d0	| %sfp, _118
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, _119
| voxel.c:893: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d0	| _103, _121
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d3	| _121, _123
	asr.w #3,%d3	|, _123
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _121, _125
	asr.w #4,%d4	|, _125
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| _125, _127
| voxel.c:894: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _128
| voxel.c:895: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _121
	jgt .L388		|
.L266:
| voxel.c:896: 		else pos.speed += drag;
	add.w %d3,%d0	| _128, _130
	jra .L267		|
.L271:
| voxel.c:924: 		if (key == 0x23) {
	cmp.b #35,140(%sp)	|, %sfp
	jne .L275		|
| voxel.c:926: 			if (desired_height < 0) {
	tst.w 98(%sp)	| %sfp
	jge .L301		|
| voxel.c:927: 				desired_height = player_height;
	move.w 134(%sp),98(%sp)	| %sfp, %sfp
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _2028
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _623
| voxel.c:179: 	data &= mask;
	move.l 74(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208], _2773
	and.l #-536879105,%d2	|, _2773
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2055
	swap %d1	| _2055
	clr.w %d1	| _2055
	move.w %d0,%d1	| _623, _2055
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2055, _2773
	move.l %d2,(%a5)	| _2773, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208]
| voxel.c:191: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 4B], data_1225
	or.w #8192,%d1	|, data_1225
| voxel.c:189: 	*out++ = data;
	swap %d1	| _2034
	clr.w %d1	| _2034
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1232
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1232, _2034
	move.l %d1,4(%a5)	| _2034, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _194
| voxel.c:179: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B], _2818
	and.l #-536879105,%d2	|, _2818
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2023
	swap %d1	| _2023
	clr.w %d1	| _2023
	move.w %d0,%d1	| _194, _2023
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2023, _2818
	move.l %d2,640(%a5)	| _2818, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B]
| voxel.c:191: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 644B], data_1271
	or.w #8192,%d1	|, data_1271
| voxel.c:189: 	*out++ = data;
	swap %d1	| _1996
	clr.w %d1	| _1996
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1278
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1278, _1996
	move.l %d1,644(%a5)	| _1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d2	|, tmp2002
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d1	|,
	lsl.w %d1,%d2	|, _490
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _164
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _1077
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d3	| MEM[(short unsigned int *)screen_208 + 326B], data_1324
	and.w #30719,%d3	|, data_1324
| voxel.c:191: 	data &= mask;
	or.w %d2,%d3	| _490, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2011
	not.w %d1	| tmp2011
	moveq #15,%d4	|,
	lsr.w %d4,%d1	|, _2031
	moveq #13,%d6	|,
	lsl.w %d6,%d1	|, _2183
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _2683
	swap %d4	| _2683
	clr.w %d4	| _2683
	move.w %d2,%d4	| _490, _2683
	move.l 320(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B], _332
	and.l #2013231103,%d2	|, _332
| voxel.c:179: 	data &= mask;
	or.l %d4,%d2	| _2683, _193
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d4	|, _498
	swap %d4	| _498
	clr.w %d4	| _498
	move.w %d0,%d4	| _1077, _498
	or.l %d4,%d2	| _498, _182
| voxel.c:179: 	data &= mask;
	and.l #-536879105,%d2	|, _618
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _2684
	swap %d4	| _2684
	clr.w %d4	| _2684
	move.w %d1,%d4	| _2183, _2684
| voxel.c:181: 	*out++ = data;
	or.l %d4,%d2	| _2684, _618
	move.l %d2,320(%a5)	| _618, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B]
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data_1370
| voxel.c:191: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 324B], data_1409
	or.w #-22528,%d2	|, data_1409
| voxel.c:189: 	*out++ = data;
	swap %d2	| _620
	clr.w %d2	| _620
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2183, data_1416
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d2	| data_1416, _620
	move.l %d2,324(%a5)	| _620, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 324B]
	jra .L376		|
.L300:
	move.w 134(%sp),%d0	| %sfp, _2776
	jra .L269		|
.L301:
| voxel.c:929: 				desired_height = -1;
	move.w #-1,98(%sp)	|, %sfp
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:938: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _2028
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _623
| voxel.c:179: 	data &= mask;
	move.l 74(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208], _2773
	and.l #-536879105,%d2	|, _2773
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2055
	swap %d1	| _2055
	clr.w %d1	| _2055
	move.w %d0,%d1	| _623, _2055
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2055, _2773
	move.l %d2,(%a5)	| _2773, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208]
| voxel.c:191: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 4B], data_1225
	or.w #8192,%d1	|, data_1225
| voxel.c:189: 	*out++ = data;
	swap %d1	| _2034
	clr.w %d1	| _2034
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1232
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1232, _2034
	move.l %d1,4(%a5)	| _2034, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 4B]
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:939: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _194
| voxel.c:179: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B], _2818
	and.l #-536879105,%d2	|, _2818
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _2023
	swap %d1	| _2023
	clr.w %d1	| _2023
	move.w %d0,%d1	| _194, _2023
| voxel.c:181: 	*out++ = data;
	or.l %d1,%d2	| _2023, _2818
	move.l %d2,640(%a5)	| _2818, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 640B]
| voxel.c:191: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_208 + 644B], data_1271
	or.w #8192,%d1	|, data_1271
| voxel.c:189: 	*out++ = data;
	swap %d1	| _1996
	clr.w %d1	| _1996
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1278
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d1	| data_1278, _1996
	move.l %d1,644(%a5)	| _1996, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 644B]
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d2	|, tmp2002
| voxel.c:940: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d1	|,
	lsl.w %d1,%d2	|, _490
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _164
| voxel.c:941: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _1077
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d3	| MEM[(short unsigned int *)screen_208 + 326B], data_1324
	and.w #30719,%d3	|, data_1324
| voxel.c:191: 	data &= mask;
	or.w %d2,%d3	| _490, data
| voxel.c:942: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2011
	not.w %d1	| tmp2011
	moveq #15,%d4	|,
	lsr.w %d4,%d1	|, _2031
	moveq #13,%d6	|,
	lsl.w %d6,%d1	|, _2183
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _2683
	swap %d4	| _2683
	clr.w %d4	| _2683
	move.w %d2,%d4	| _490, _2683
	move.l 320(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B], _332
	and.l #2013231103,%d2	|, _332
| voxel.c:179: 	data &= mask;
	or.l %d4,%d2	| _2683, _193
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d0,%d4	|, _498
	swap %d4	| _498
	clr.w %d4	| _498
	move.w %d0,%d4	| _1077, _498
	or.l %d4,%d2	| _498, _182
| voxel.c:179: 	data &= mask;
	and.l #-536879105,%d2	|, _618
| voxel.c:180: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _2684
	swap %d4	| _2684
	clr.w %d4	| _2684
	move.w %d1,%d4	| _2183, _2684
| voxel.c:181: 	*out++ = data;
	or.l %d4,%d2	| _2684, _618
	move.l %d2,320(%a5)	| _618, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 320B]
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data_1370
| voxel.c:191: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:188: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_208 + 324B], data_1409
	or.w #-22528,%d2	|, data_1409
| voxel.c:189: 	*out++ = data;
	swap %d2	| _620
	clr.w %d2	| _620
| voxel.c:192: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2183, data_1416
| voxel.c:189: 	*out++ = data;
	move.w %d0,%d2	| data_1416, _620
	move.l %d2,324(%a5)	| _620, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_208 + 324B]
	jra .L376		|
.L369:
| voxel.c:754: 		print("Failed to load voxel data.\r\n");
	pea .LC10		|
	jsr _print		|
| voxel.c:755: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:962: 	print("Press any key to exit to TOS.\r\n");
	pea .LC19		|
	jsr _print		|
| voxel.c:717: 	while (Bconstat(_CON))
	moveq #2,%d0	|, tmp2079
#APP
| 717 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2079
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:718: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2081
| voxel.c:717: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2156
	jne .L278		|
	jra .L280		|
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
