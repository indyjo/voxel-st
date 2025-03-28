| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
_print:
	movem.l %d2-%d3/%a2-%a3,-(%sp)	|
	move.l 20(%sp),%a3	| s, s
| voxel.c:61: 	while (*s) {
	move.b (%a3),%d0	| *s_5(D), _2
	jeq .L1		|
| voxel.c:62: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp35
.L3:
	and.w #255,%d0	|, _b_7
#APP
| 62 "voxel.c" 1
	movw	%d0,%sp@-	| _b_7
	movw	%d3,%sp@-	| tmp35
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:63: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:61: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_9], _2
	jne .L3		|
.L1:
| voxel.c:65: }
	movem.l (%sp)+,%d2-%d3/%a2-%a3	|
	rts	
	.even
_printnum:
	lea (-16,%sp),%sp	|,
	movem.l %d2-%d4/%a2-%a4,-(%sp)	|
	move.l 44(%sp),%d4	| n, n
| voxel.c:69: 	if (neg) n = -n;
	move.l %d4,%d2	| n, _11
	jmi .L18		|
.L11:
| voxel.c:72: 	*p=0;
	clr.b 39(%sp)	| MEM[(char *)&buf + 15B]
| voxel.c:71: 	char *p=buf+15;
	lea (39,%sp),%a2	|,, p
| voxel.c:73: 	while (n > 0) {
	tst.l %d4	| n
	jeq .L12		|
	lea ___modsi3,%a4	|, tmp68
	lea ___divsi3,%a3	|, tmp69
.L13:
	move.l %a2,%d3	| p, p
| voxel.c:74: 		*(--p)='0' + (n % 10);
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a4)		| tmp68
	addq.l #8,%sp	|,
| voxel.c:74: 		*(--p)='0' + (n % 10);
	add.b #48,%d0	|,
	move.b %d0,-(%a2)	|, MEM[(char *)p_18]
| voxel.c:75: 		n /= 10;
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a3)		| tmp69
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp71, n
| voxel.c:73: 	while (n > 0) {
	jne .L13		|
| voxel.c:77: 	if (neg) *(--p)='-';
	tst.l %d4	| n
	jlt .L19		|
.L12:
| voxel.c:78: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:79: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,%d2-%d4/%a2-%a4	|
	lea (16,%sp),%sp	|,
	rts	
.L19:
| voxel.c:77: 	if (neg) *(--p)='-';
	move.b #45,-1(%a2)	|, MEM[(char *)p_18 + 4294967295B]
	move.l %d3,%a2	| p, p
	subq.l #2,%a2	|, p
| voxel.c:78: 	print(p);
	move.l %a2,-(%sp)	| p,
	jsr _print		|
| voxel.c:79: }
	addq.l #4,%sp	|,
	movem.l (%sp)+,%d2-%d4/%a2-%a4	|
	lea (16,%sp),%sp	|,
	rts	
.L18:
| voxel.c:69: 	if (neg) n = -n;
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
	move.l #_y_table+1024,%d6	|, ivtmp.318
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:214: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:213: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp384
	lea _fog_table,%a5	|, tmp387
.L21:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _154
	lsr.w #7,%d0	|, _154
| voxel.c:217: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _154, _3
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	muls.w #70,%d0	|, _7
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.318, ivtmp.307
	move.w #-17920,%a2	|, ivtmp.304
.L22:
| voxel.c:217: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.304,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _59,
	sub.w %d0,%d1	| tmp438,
	move.w %d1,(%a3)+	|, MEM[(short int *)_74]
| voxel.c:216: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.304
	cmp.w #17920,%a2	|, ivtmp.304
	jne .L22		|
| voxel.c:222: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:224: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, _14
	and.l %d4,%d0	| z, _14
| voxel.c:224: 		if (TRIGGERS_PROGRESSION(z))
	jne .L23		|
| voxel.c:82: 	return x + x;
	add.w %d7,%d7	| step, step
| voxel.c:227: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, _229
	add.l %d4,%a0	| z, _229
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _229
	jlt .L102		|
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _229, _229
	move.l %a0,%d0	| _229, tmp249
	lsl.l #8,%d0	|, tmp249
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _229, tmp249
	move.l %d0,-(%sp)	| tmp249,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _250 * 1]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
.L103:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _154
	lsr.w #7,%d0	|, _154
| voxel.c:217: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _154, _3
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	muls.w #70,%d0	|, _7
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:219: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.318, ivtmp.307
	move.w #-17920,%a2	|, ivtmp.304
	jra .L22		|
.L102:
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| _229
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _229, _229
	move.l %a0,%d0	| _229, tmp249
	lsl.l #8,%d0	|, tmp249
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _229, tmp249
	move.l %d0,-(%sp)	| tmp249,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _250 * 1]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
	jra .L103		|
.L23:
| voxel.c:227: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, _246
	add.l %d4,%a0	| z, _246
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _246
	jlt .L104		|
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _246, _246
	move.l %a0,%d0	| _246, tmp265
	lsl.l #8,%d0	|, tmp265
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _246, tmp265
	move.l %d0,-(%sp)	| tmp265,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _161 * 1]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
.L105:
	lea _combined+1025,%a1	|, ivtmp.295
	clr.b %d2	| max_height_lsm_flag.205
	clr.b %d1	| max_height_lsm.204
.L27:
	lea (-1024,%a1),%a0	|, ivtmp.295, ivtmp.288
.L29:
| voxel.c:236: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_206], _502
| voxel.c:236: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.204, _502
	jls .L28		|
| voxel.c:237: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _502, max_height_lsm.204
| voxel.c:236: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.205
.L28:
| voxel.c:235: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.288
	cmp.l %a1,%a0	| ivtmp.295, ivtmp.288
	jne .L29		|
| voxel.c:234: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a1),%a1	|, ivtmp.295
	cmp.l #_combined+525313,%a1	|, ivtmp.295
	jne .L27		|
	tst.b %d2	| max_height_lsm_flag.205
	jeq .L71		|
| voxel.c:241: 	max_height >>= 1;
	lsr.b #1,%d1	|, prephitmp_324
	move.b %d1,_max_height	| prephitmp_324, max_height
| voxel.c:243: 	int bayer[8][8] = {
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
| voxel.c:253: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	move.l %a5,%a4	| y, y
.L31:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
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
| voxel.c:254: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a5,%a5	| fog
	move.l %a5,%a3	| fog, fog
	move.l %a4,%a5	| y, y
.L67:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 116(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	sge %d1		| tmp372
	neg.b %d1	| mask
	move.l 120(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L58		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d1	|, mask
.L58:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 124(%sp),%d2	| %sfp,
	cmp.l 100(%sp),%d2	| %sfp,
	jlt .L59		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d1	|, mask
.L59:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 128(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jlt .L60		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d1	|, mask
.L60:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 132(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L61		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d1	|, mask
.L61:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 136(%sp),%d2	| %sfp,
	cmp.l 100(%sp),%d2	| %sfp,
	jlt .L62		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d1	|, mask
.L62:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 140(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jlt .L63		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d1	|, mask
.L63:
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 144(%sp),%d0	| %sfp,
	cmp.l 100(%sp),%d0	| %sfp,
	jlt .L64		|
| voxel.c:259: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d1	|, mask
.L64:
| voxel.c:266: 						| pdata_pattern(15, ~mask);
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
| voxel.c:264: 						| pdata_pattern(color1, mask & evn)
	move.b %d1,%d2	| mask,
	and.b #-86,%d2	|,
	move.b %d2,99(%sp)	|, %sfp
| voxel.c:265: 						| pdata_pattern(color2, mask & odd)
	move.b %d1,%d0	| mask,
	and.b #85,%d0	|,
	move.b %d0,98(%sp)	|, %sfp
	move.l 108(%sp),62(%sp)	| %sfp, %sfp
	clr.l 66(%sp)	| %sfp
| voxel.c:261: 			for (int color1 = 0; color1 < 16; color1++) {
	sub.l %a4,%a4	| color1
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d0	| _381
	move.b %d2,%d0	|, _381
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d0,%d2	| _381,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,78(%sp)	|, %sfp
	or.l 86(%sp),%d2	| %sfp,
	move.l %d2,90(%sp)	|, %sfp
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d0,%d2	| _381,
	lsl.l #8,%d2	|,
	move.l %d2,74(%sp)	|, %sfp
	or.l 90(%sp),%d2	| %sfp,
	move.l %d2,94(%sp)	|, %sfp
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d2	|,
	and.l %d1,%d2	| mask,
	move.l %d2,82(%sp)	|, %sfp
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
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
	move.l 62(%sp),%a0	| %sfp, ivtmp.258
	move.l 66(%sp),%d2	| %sfp, ivtmp.257
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,58(%sp)	|, %sfp
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.l 82(%sp),%d1	| %sfp,
	lsl.l #8,%d1	|,
	move.l %d1,70(%sp)	|, %sfp
	move.w %d7,%a1	| _192, _192
	move.l %d4,50(%sp)	| iftmp.33_199, %sfp
	move.w %d6,%a3	| _349, _349
	move.l %d0,%a2	| _431, _431
.L38:
	move.l %a2,%d0	| _431, prephitmp_435
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	tst.b 46(%sp)	| %sfp
	jeq .L32		|
	or.l 78(%sp),%d0	| %sfp, prephitmp_435
.L32:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jeq .L33		|
	or.l 74(%sp),%d0	| %sfp, prephitmp_435
.L33:
	move.w %a3,%d1	| _349, _214
	add.b %d2,%d1	| ivtmp.257, _214
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _214
	jeq .L73		|
	move.l 54(%sp),%d7	| %sfp, iftmp.30_443
.L34:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _214
	jeq .L74		|
	move.l 58(%sp),%d6	| %sfp, iftmp.31_447
.L35:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _214
	jeq .L75		|
	move.l 70(%sp),%d4	| %sfp, iftmp.32_451
.L36:
	move.b %d1,%d5	| _214, _182
	and.b #8,%d5	|, _182
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _214
	jeq .L37		|
	move.b 98(%sp),%d5	| %sfp, _182
.L37:
| voxel.c:263: 					unsigned int pdata = 0
	or.l 50(%sp),%d0	| %sfp, _456
	or.l %d7,%d0	| iftmp.30_443, _457
	or.l %d6,%d0	| iftmp.31_447, _458
	or.l %d4,%d0	| iftmp.32_451, _459
	or.b %d5,%d0	| _182, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _194
	and.l %d2,%d1	| ivtmp.257, _194
	lsl.l #4,%d1	|, _464
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp312
	lsl.l #3,%d1	|, tmp313
	add.l %a5,%d1	| fog, tmp314
	lsl.l #3,%d1	|, tmp315
	add.l %a4,%d1	| y, tmp316
	add.l %d1,%d1	| tmp316, tmp317
	add.l %d1,%d1	| tmp317, tmp318
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_465][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_496]
| voxel.c:262: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.257
	lea (-3840,%a0),%a0	|, ivtmp.258
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.257,
	jne .L38		|
.L50:
| voxel.c:261: 			for (int color1 = 0; color1 < 16; color1++) {
	addq.l #1,%d3	|, color1
| voxel.c:261: 			for (int color1 = 0; color1 < 16; color1++) {
	subq.l #1,66(%sp)	|, %sfp
	add.l #4096,62(%sp)	|, %sfp
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L65		|
| voxel.c:254: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	move.l %a5,%a3	| fog, fog
	move.l %a4,%a5	| y, y
	addq.l #1,%a3	|, fog
| voxel.c:254: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,100(%sp)	|, %sfp
	moveq #32,%d1	|,
	add.l %d1,108(%sp)	|, %sfp
	moveq #8,%d2	|,
	cmp.l %a3,%d2	| fog,
	jne .L67		|
| voxel.c:253: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a4	|, y
| voxel.c:253: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d0	|,
	add.l %d0,112(%sp)	|, %sfp
	addq.l #4,148(%sp)	|, %sfp
	moveq #8,%d1	|,
	cmp.l %a4,%d1	| y,
	jne .L31		|
| voxel.c:278: 	short top_envelope[20] = {
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
| voxel.c:284: 	short bottom_envelope[20] = {
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
	lea (152,%sp),%a0	|,, ivtmp.229
	lea _view_min+80,%a6	|, ivtmp.232
	lea _view_min,%a1	|, tmp385
	move.l %a1,%a5	| tmp385, ivtmp.234
	lea (192,%sp),%a4	|,, ivtmp.236
	lea _view_max+80,%a3	|, ivtmp.239
	lea _view_max,%a2	|, ivtmp.241
	moveq #40,%d1	|, _87
	add.l %a0,%d1	| ivtmp.229, _87
.L68:
| voxel.c:292: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_94], _38
| voxel.c:292: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _38, MEM[(short int *)_93]
| voxel.c:292: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _38, MEM[(short int *)_92]
| voxel.c:293: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	moveq #118,%d0	|, _42
	sub.w (%a4)+,%d0	| MEM[(short int *)_91], _42
| voxel.c:293: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,-(%a3)	| _42, MEM[(short int *)_90]
| voxel.c:293: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d0,(%a2)+	| _42, MEM[(short int *)_89]
| voxel.c:291: 	for (int i=0; i<20; i++) {
	cmp.l %d1,%a0	| _87, ivtmp.229
	jne .L68		|
	lea _horizon,%a0	|, ivtmp.222
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L69:
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, _43
	asr.l #3,%d0	|, _43
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| _43, tmp383
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.w (%a1,%d0.l),%d0	| view_min[_43],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_115]
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:300: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L69		|
| voxel.c:301: }
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (444,%sp),%sp	|,
	rts	
.L104:
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| _246
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.w %a0,%a0	| _246, _246
	move.l %a0,%d0	| _246, tmp265
	lsl.l #8,%d0	|, tmp265
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %a0,%d0	| _246, tmp265
	move.l %d0,-(%sp)	| tmp265,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&fog_table + _161 * 1]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
	jra .L105		|
.L75:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d4	| iftmp.32_451
	jra .L36		|
.L74:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d6	| iftmp.31_447
	jra .L35		|
.L73:
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d7	| iftmp.30_443
	jra .L34		|
.L42:
| voxel.c:261: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 62(%sp),%a0	| %sfp, ivtmp.248
	move.l 66(%sp),%d2	| %sfp, ivtmp.247
	tst.b 46(%sp)	| %sfp
	jne .L43		|
	move.l 74(%sp),%d0	| %sfp,
	or.l 86(%sp),%d0	| %sfp,
	move.l %d0,46(%sp)	|, %sfp
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,50(%sp)	|, %sfp
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
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
	add.b %d2,%d1	| ivtmp.247, _480
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _480
	jeq .L78		|
.L107:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_354
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _480
	jeq .L79		|
.L108:
	move.l 50(%sp),%d6	| %sfp, iftmp.31_162
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _480
	jeq .L80		|
.L109:
	move.l 58(%sp),%d4	| %sfp, iftmp.32_72
.L47:
	move.b %d1,%d5	| _480, _202
	and.b #8,%d5	|, _202
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _480
	jeq .L48		|
	move.b 98(%sp),%d5	| %sfp, _202
.L48:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_199,
	or.l %d1,%d0	|, _21
	or.l %d7,%d0	| iftmp.30_354, _22
	or.l %d6,%d0	| iftmp.31_162, _11
	or.l %d4,%d0	| iftmp.32_72, _26
	or.b %d5,%d0	| _202, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _541
	and.l %d2,%d1	| ivtmp.247, _541
	lsl.l #4,%d1	|, _242
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp341
	lsl.l #3,%d1	|, tmp342
	add.l %a5,%d1	| fog, tmp343
	lsl.l #3,%d1	|, tmp344
	add.l %a4,%d1	| y, tmp345
	add.l %d1,%d1	| tmp345, tmp346
	add.l %d1,%d1	| tmp346, tmp347
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_241][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_495]
| voxel.c:262: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.247
	lea (-3840,%a0),%a0	|, ivtmp.248
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.247,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jne .L106		|
.L77:
	move.l 86(%sp),%d0	| %sfp, prephitmp_24
	move.w %a3,%d1	| _349, _480
	add.b %d2,%d1	| ivtmp.247, _480
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _480
	jne .L107		|
.L78:
	moveq #0,%d7	| iftmp.30_354
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _480
	jne .L108		|
.L79:
	moveq #0,%d6	| iftmp.31_162
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _480
	jne .L109		|
.L80:
	moveq #0,%d4	| iftmp.32_72
	jra .L47		|
.L40:
	clr.b %d4	| _198
	jra .L41		|
.L43:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	move.l 82(%sp),%d1	| %sfp,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,46(%sp)	|, %sfp
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
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
	add.b %d2,%d1	| ivtmp.252, _359
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _359
	jeq .L83		|
.L111:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _359
	jeq .L84		|
.L112:
	move.l 46(%sp),%d6	| %sfp, iftmp.31_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _359
	jeq .L85		|
.L113:
	move.l 50(%sp),%d4	| %sfp, iftmp.32_399
.L54:
	move.b %d1,%d5	| _359, _49
	and.b #8,%d5	|, _49
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _359
	jeq .L55		|
	move.b 98(%sp),%d5	| %sfp, _49
.L55:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_199,
	or.l %d1,%d0	|, _404
	or.l %d7,%d0	| iftmp.30_391, _405
	or.l %d6,%d0	| iftmp.31_395, _406
	or.l %d4,%d0	| iftmp.32_399, _407
	or.b %d5,%d0	| _49, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _174
	and.l %d2,%d1	| ivtmp.252, _174
	lsl.l #4,%d1	|, _412
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp365
	lsl.l #3,%d1	|, tmp366
	add.l %a5,%d1	| fog, tmp367
	lsl.l #3,%d1	|, tmp368
	add.l %a4,%d1	| y, tmp369
	add.l %d1,%d1	| tmp369, tmp370
	add.l %d1,%d1	| tmp370, tmp371
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_413][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_426]
| voxel.c:262: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.252
	lea (-3840,%a0),%a0	|, ivtmp.253
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.252,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _192,
	tst.b %d1	|
	jne .L110		|
.L82:
	move.l 90(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _349, _359
	add.b %d2,%d1	| ivtmp.252, _359
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _359
	jne .L111		|
.L83:
	moveq #0,%d7	| iftmp.30_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _359
	jne .L112		|
.L84:
	moveq #0,%d6	| iftmp.31_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _359
	jne .L113		|
.L85:
	moveq #0,%d4	| iftmp.32_399
	jra .L54		|
.L71:
| voxel.c:234: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_324
| voxel.c:241: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_324, max_height
| voxel.c:243: 	int bayer[8][8] = {
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
| voxel.c:253: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
	move.l %a5,%a4	| y, y
	jra .L31		|
	.even
_compute_and_set_bottom_palette.isra.0:
	link.w %fp,#-84	|,
	movem.l %d2-%d7/%a2-%a5,-(%sp)	|
	move.l 8(%fp),%d3	| sunlight_factor, sunlight_factor
| voxel.c:584: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d6	| pos.diry, _8
	neg.w %d6	| _8
| voxel.c:587: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:594: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:596: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:608: 		c_sun += sunlight_factor >> 3;
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
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|, _18
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, _19
	sub.w %d2,%a0	| _18, _19
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a0,%d4	| _19,
	move.l %d4,-66(%fp)	|, %sfp
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|, _21
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, _22
	sub.w %d1,%a0	| _21, _22
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d1	|
	move.w %a0,%d1	| _22,
	move.l %d1,-70(%fp)	|, %sfp
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|, _24
| voxel.c:589: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, _25
	sub.w %d0,%d1	| _24, _25
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-74(%fp)	|, %sfp
	lea _palette_vectors+6,%a1	|, ivtmp.345
| voxel.c:596: 	*p++ = 0;
	lea (-45,%fp),%a0	|,, p
	lea (-3,%fp),%a2	|,,
	move.l %a2,-82(%fp)	|, %sfp
.L121:
| voxel.c:599: 		vec3_t normal_lcs = palette_vectors[i];
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
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
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
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _26, _203
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, _211
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _633
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| _208, _646
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a3,%d1	|,
	muls.w %d1,%d0	|, _651
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _652
| voxel.c:606: 		if (c_sun < 0) c_sun = 0;
	tst.w %d0	| _655
	jlt .L131		|
| voxel.c:608: 		c_sun += sunlight_factor >> 3;
	add.w %a5,%d0	| _88, c_sun
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	ext.l %d1	| normal_lcs.a[1]
	move.l %d1,%d3	| normal_lcs.a[1], _228
	lsl.l #7,%d3	|, _228
| voxel.c:614: 		if (c_sky < 0) c_sky = 0;
	tst.w %d1	| result_230
	jlt .L132		|
.L116:
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
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d1	| _222, _243
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d3	| _245
	asr.l #7,%d3	|, _456
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| b$a$2, _249
| voxel.c:618: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d3,%d4	| _249, c_cabinlight_256
	asr.w #2,%d4	|, c_cabinlight_256
| voxel.c:619: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d3	| _249
	jlt .L133		|
.L117:
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a4,%d3	|,
	muls.w -76(%fp),%d3	| %sfp, _541
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _550
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d4,%d3	| c_cabinlight_256, _412
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -64(%fp),%d0	| %sfp, _603
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _607
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| _607, _422
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d1	| _243
	jlt .L122		|
.L134:
	cmp.w #128,%d1	|, _243
	jge .L123		|
	add.b %d1,%d1	| _243, iftmp.78_266
.L118:
| voxel.c:622: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.78_266, MEM[(unsigned char *)p_213]
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jlt .L124		|
.L135:
	cmp.w #128,%d2	|, _501
	jge .L125		|
	add.b %d2,%d2	| _501, iftmp.78_270
.L119:
| voxel.c:623: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.78_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jlt .L126		|
.L136:
	cmp.w #128,%d3	|, _422
	jge .L127		|
	add.b %d3,%d3	| _422, iftmp.78_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.78_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.345
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L121		|
.L137:
| voxel.c:626: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:627: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:629: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:630: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),%d2-%d7/%a2-%a5	|
	unlk %fp		|
	rts	
.L133:
| voxel.c:619: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d4	| c_cabinlight_256
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a4,%d3	|,
	muls.w -76(%fp),%d3	| %sfp, _541
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _550
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d4,%d3	| c_cabinlight_256, _412
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -64(%fp),%d0	| %sfp, _603
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _607
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| _607, _422
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d1	| _243
	jge .L134		|
.L122:
	clr.b %d1	| iftmp.78_266
| voxel.c:622: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.78_266, MEM[(unsigned char *)p_213]
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jge .L135		|
.L124:
	clr.b %d2	| iftmp.78_270
| voxel.c:623: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.78_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jge .L136		|
.L126:
	clr.b %d3	| iftmp.78_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.78_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.345
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L121		|
	jra .L137		|
.L131:
| voxel.c:606: 		if (c_sun < 0) c_sun = 0;
	clr.w %d0	| _655
| voxel.c:608: 		c_sun += sunlight_factor >> 3;
	add.w %a5,%d0	| _88, c_sun
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d1	| normal_lcs.a[1],
	ext.l %d1	| normal_lcs.a[1]
	move.l %d1,%d3	| normal_lcs.a[1], _228
	lsl.l #7,%d3	|, _228
| voxel.c:614: 		if (c_sky < 0) c_sky = 0;
	tst.w %d1	| result_230
	jge .L116		|
.L132:
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
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
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
| voxel.c:572: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d5,%d1	| _222, _243
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d3	| _245
	asr.l #7,%d3	|, _456
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d3	| b$a$2, _249
| voxel.c:618: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d3,%d4	| _249, c_cabinlight_256
	asr.w #2,%d4	|, c_cabinlight_256
| voxel.c:619: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d3	| _249
	jge .L117		|
	jra .L133		|
.L123:
| voxel.c:577: 	return val < 0 ? 0 : (
	st %d1		| iftmp.78_266
	jra .L118		|
.L127:
	st %d3		| iftmp.78_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.78_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.345
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L121		|
	jra .L137		|
.L125:
| voxel.c:577: 	return val < 0 ? 0 : (
	st %d2		| iftmp.78_270
	jra .L119		|
	.text
.LC1:
	.ascii "\33H\33f\0"
.LC2:
	.ascii "Loading colors.tga\15\12\0"
.LC3:
	.ascii "colors.tga\0"
.LC4:
	.ascii "Error reading colors.tga\15\12\0"
.LC5:
	.ascii "\15\12\0"
.LC6:
	.ascii "Loading height.tga\15\12\0"
.LC7:
	.ascii "height.tga\0"
.LC8:
	.ascii ".\0"
.LC9:
	.ascii "Error reading height.tga\15\12\0"
.LC10:
	.ascii "Loading cockpit.tga\15\12\0"
.LC11:
	.ascii "cockpit.tga\0"
.LC12:
	.ascii "TOS reports \0"
.LC13:
	.ascii " bytes free.\15\12\0"
.LC14:
	.ascii "Computing tables\15\12\0"
.LC15:
	.ascii "Failed to load voxel data.\15\12\0"
.LC16:
	.ascii "Total time per frame: \0"
.LC17:
	.ascii "\15\12Time spent rendering terrain: \0"
.LC18:
	.ascii "\15\12Time spent rendering map: \0"
.LC19:
	.ascii "\15\12Time spent on C2P conversion: \0"
.LC20:
	.ascii "Press any key to exit to TOS.\15\12\0"
	.text
	.even
	.globl	_mymain
_mymain:
	lea (-8356,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
| voxel.c:727: 	print("\33H\33f");
	pea .LC1		|
	jsr _print		|
| voxel.c:730: 	Super(0L);
	moveq #0,%d0	| tmp1171
#APP
| 730 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1171
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:732: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:734: 	lineaa();
	jsr _lineaa		|
| voxel.c:737: 	save_palette(saved_palette);
	pea 148(%sp)		|
	jsr _save_palette		|
| voxel.c:739: 	unsigned short *screen = Physbase();
#APP
| 739 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,98(%sp)	| tmp2180, %sfp
| voxel.c:741: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:743: 	init_c2p_table();
	jsr _init_c2p_table		|
| voxel.c:634: 	print("Loading colors.tga\r\n");
	pea .LC2		|
	jsr _print		|
| voxel.c:635: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC3,%d0	|, tmp1180
	clr.w %d3	| tmp1181
#APP
| 635 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1181
	movl	%d0,%sp@-	| tmp1180
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d4	| tmp2181, _438
| voxel.c:636: 	if (file1 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L321		|
| voxel.c:640: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _438,
	move.l %sp,%d7	|, tmp2147
	add.l #134,%d7	|, tmp2147
	move.l %d7,%a1	| tmp2147,
	lea _read_tga_header,%a5	|, tmp2144
	jsr (%a5)		| tmp2144
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d4,56(%sp)	| _438, %sfp
| voxel.c:641: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 130(%sp)	| MEM[(struct  *)_1713].width
	jne .L322		|
.L141:
| voxel.c:699: 	Fclose(file1);
#APP
| 699 "voxel.c" 1
	movw	%d4,%sp@-	| _438
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L140:
| voxel.c:746: 		print("Failed to load voxel data.\r\n");
	pea .LC15		|
	jsr _print		|
| voxel.c:747: 		goto error;
	addq.l #4,%sp	|,
.L153:
| voxel.c:972: 	print("Press any key to exit to TOS.\r\n");
	pea .LC20		|
	jsr _print		|
| voxel.c:709: 	while (Bconstat(_CON))
	moveq #2,%d0	|, tmp2127
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2127
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2129
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2216
	jeq .L249		|
.L247:
| voxel.c:710: 		Bconin(_CON);
#APP
| 710 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2129
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: 	while (Bconstat(_CON))
| 709 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2129
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2217
	jne .L247		|
.L249:
| voxel.c:711: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp2132
.L248:
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2132
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2218
	jeq .L248		|
| voxel.c:713: 	Bconin(_CON);
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2132
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:974: 	install_palette(saved_palette);
#NO_APP
	pea 144(%sp)		|
	jsr _install_palette		|
| voxel.c:975: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:976: }
	moveq #0,%d0	|
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (8356,%sp),%sp	|,
	rts	
.L322:
| voxel.c:643: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 138(%sp),%a0	| MEM[(struct  *)_1713].colors, _440
| voxel.c:643: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_440 + 47B], sky_color[0]
| voxel.c:644: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_440 + 46B], sky_color[1]
| voxel.c:645: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_440 + 45B], sky_color[2]
| voxel.c:647: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _440,
	jsr _set_top_palette		|
| voxel.c:648: 	set_palette_immediately(texture.colors);
	move.l 142(%sp),-(%sp)	| MEM[(struct  *)_1713].colors,
	jsr _set_palette_immediately		|
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	lea (216,%sp),%a0	|,,
	move.l %a0,56(%sp)	|, %sfp
	move.w #8192,%a6	|,
	move.l %a0,%d3	|,
#APP
| 653 "voxel.c" 1
	movl	%d3,%sp@-	|
	movl	%a6,%sp@-	|
	movw	%d4,%sp@-	| _438
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2182, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
	jeq .L150		|
	move.l 90(%sp),%d5	| %sfp, screen
| voxel.c:652: 	short lines_remaining = 200;
	move.w #200,%d3	|, lines_remaining
| voxel.c:651: 	unsigned char *p = &combined[0][0].color;
	lea _combined,%a3	|, p
| voxel.c:650: 	size_t n, remaining = 512*512;
	moveq #4,%d6	|, remaining
	swap %d6	| remaining
| voxel.c:661: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	lea _c2p,%a4	|, tmp2177
	move.l %d4,60(%sp)	| _438, %sfp
.L142:
| voxel.c:654: 		remaining -= n;
	sub.l %d2,%d6	| n, remaining
| voxel.c:655: 		print(".");
	pea .LC8		|
	jsr _print		|
	move.l %sp,%d4	|, ivtmp.648
	add.l #212,%d4	|, ivtmp.648
	moveq #43,%d1	|, _1538
	not.b %d1	| _1538
	add.l %sp,%d1	|, _1538
	add.l %d2,%d1	| n, _1538
	addq.l #4,%sp	|,
	move.l %d4,%a1	| ivtmp.648, ivtmp.655
	move.l %a3,%a0	| p, p
.L145:
| voxel.c:657: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_1548], MEM[(unsigned char *)p_1506]
| voxel.c:658: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:656: 		for (size_t i=0; i<n; i++) {
	cmp.l %d1,%a1	| _1538, ivtmp.655
	jne .L145		|
	subq.l #1,%d2	|, _1009
	move.l %d2,%d1	| _1009, _1012
	add.l %d2,%d1	| _1009, _1012
	lea 2(%a3,%d1.l),%a3	|, p
	moveq #9,%d0	|,
	lsr.l %d0,%d2	|, _2287
	move.w %d3,%a2	| lines_remaining, _995
	subq.w #1,%a2	|, _995
	sub.w %d2,%a2	| _2287, _1565
.L146:
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	tst.w %d3	| lines_remaining
	jeq .L147		|
| voxel.c:661: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	moveq #1,%d1	|,
	and.l %d3,%d1	| lines_remaining,
	move.l %d1,-(%sp)	|,
	pea 320.w		|
	move.l %d4,-(%sp)	| ivtmp.648,
	move.l %d5,-(%sp)	| screen,
	jsr (%a4)		| tmp2177
| voxel.c:662: 			screen += 80; // advance screen pointer one line
	add.l #160,%d5	|, screen
	subq.w #1,%d3	|, lines_remaining
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	add.l #512,%d4	|, ivtmp.648
	lea (16,%sp),%sp	|,
	cmp.w %a2,%d3	| _1565, lines_remaining
	jne .L146		|
.L147:
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d6,%d0	| remaining, _466
	cmp.l #8192,%d6	|, remaining
	jls .L149		|
	move.l #8192,%d0	|, _466
.L149:
	move.w 52(%sp),%d4	| %sfp,
	move.l 48(%sp),%a6	| %sfp,
#APP
| 653 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%d0,%sp@-	| _466
	movw	%d4,%sp@-	|
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2184, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L142		|
	move.l 60(%sp),%d4	| %sfp, _438
.L150:
| voxel.c:666: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:667: 	free_image(&texture);
	move.l %d7,-(%sp)	| tmp2147,
	lea _free_image,%a3	|, tmp2151
	jsr (%a3)		| tmp2151
| voxel.c:669: 	print("Loading height.tga\r\n");
	pea .LC6		|
	jsr _print		|
| voxel.c:670: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC7,%d0	|, tmp1195
	clr.w %d3	| tmp1196
#APP
| 670 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1196
	movl	%d0,%sp@-	| tmp1195
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp2183, _471
| voxel.c:671: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L323		|
| voxel.c:675: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _471,
	lea (180,%sp),%a1	|,,
	jsr (%a5)		| tmp2144
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d3,%a5	| _471, _2617
| voxel.c:676: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 176(%sp)	| MEM[(struct  *)_1732].width
	jeq .L151		|
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a4	|, tmp1209
	move.l 48(%sp),%d5	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%d5,%sp@-	|
	movl	%a4,%sp@-	| tmp1209
	movw	%d3,%sp@-	| _471
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2185, n
| voxel.c:677: 	p = &combined[0][0].height;
	move.l #_combined+1,%d6	|, p
| voxel.c:678: 	remaining = 512*512;
	moveq #4,%d5	|, remaining
	swap %d5	| remaining
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L157		|
.L152:
| voxel.c:680: 		remaining -= n;
	sub.l %d2,%d5	| n, remaining
| voxel.c:681: 		print(".");
	pea .LC8		|
	jsr _print		|
	lea (212,%sp),%a1	|,, ivtmp.637
	moveq #43,%d1	|, _2317
	not.b %d1	| _2317
	add.l %sp,%d1	|, _2317
	add.l %d2,%d1	| n, _2317
	addq.l #4,%sp	|,
	move.l %d6,%a0	| p, p
.L155:
| voxel.c:685: 			*p = buf[i]*2;
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_2327], _478
| voxel.c:685: 			*p = buf[i]*2;
	add.b %d0,%d0	| _478, _479
	move.b %d0,(%a0)	| _479, MEM[(unsigned char *)p_654]
| voxel.c:686: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:682: 		for (size_t i=0; i<n; i++) {
	cmp.l %d1,%a1	| _2317, ivtmp.637
	jne .L155		|
	add.l %d2,%d2	| _1027
	add.l %d2,%d6	| _1027, p
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _484
	cmp.l #8192,%d5	|, remaining
	jls .L156		|
	move.l %a4,%d0	| tmp1209, _484
.L156:
	move.l 48(%sp),%a6	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%d0,%sp@-	| _484
	movw	%a5,%sp@-	| _2617
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2187, n
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L152		|
.L157:
| voxel.c:689: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:690: 	free_image(&height);
	pea 180(%sp)		|
	jsr (%a3)		| tmp2151
| voxel.c:692: 	Fclose(file1);
#APP
| 692 "voxel.c" 1
	movw	%d4,%sp@-	| _438
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:693: 	Fclose(file2);
| 693 "voxel.c" 1
	movw	%d3,%sp@-	| _471
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:750: 	print("Loading cockpit.tga\r\n");
#NO_APP
	pea .LC10		|
	jsr _print		|
| voxel.c:751: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC11		|
	move.l %d7,%a1	| tmp2147,
	jsr _read_tga		|
	move.l 150(%sp),%d7	| MEM[(struct  *)_1713].pixels, cockpit$pixels
| voxel.c:717: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1216
#APP
| 717 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1216
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2186, _497
| voxel.c:718: 	print("TOS reports ");
	pea .LC12		|
	jsr _print		|
| voxel.c:719: 	printnum(size);
	move.l %d2,-(%sp)	| _497,
	jsr _printnum		|
| voxel.c:720: 	print(" bytes free.\r\n");
	pea .LC13		|
	jsr _print		|
| voxel.c:753: 	print("Computing tables\r\n");
	pea .LC14		|
	jsr _print		|
| voxel.c:754: 	build_tables();
	lea (32,%sp),%sp	|,
	jsr _build_tables		|
| voxel.c:755: 	if (!cockpit.pixels) goto error;
	tst.l %d7	| cockpit$pixels
	jeq .L153		|
| voxel.c:756: 	read_palette_vectors(cockpit.colors);
	move.l 138(%sp),%a4	| MEM[(struct  *)_1713].colors, colors
	lea _palette_vectors,%a3	|, ivtmp.630
	lea _palette_vectors+96,%a5	|, _2355
.L158:
| voxel.c:559: 		unsigned char b = *colors++;
	move.b (%a4),%d1	| MEM[(const unsigned char *)colors_494], b
| voxel.c:560: 		unsigned char g = *colors++;
	move.b 1(%a4),%d2	| MEM[(const unsigned char *)colors_494 + 1B], g
| voxel.c:561: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:540: 	signed char c = color - 128;
	move.b -1(%a4),%d3	| MEM[(const unsigned char *)colors_501 + 4294967295B], _503
	add.b #-128,%d3	|, _503
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d3	|, _505
| voxel.c:540: 	signed char c = color - 128;
	add.b #-128,%d2	|, _507
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d2	|, _509
| voxel.c:540: 	signed char c = color - 128;
	add.b #-128,%d1	|, _511
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d1	|, _513
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _2133
	move.w %d1,%d0	| _2133,
	muls.w %d1,%d0	| _2133, _844
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _846
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _2218
	move.w %d2,%d4	| _2218,
	muls.w %d2,%d4	| _2218, _895
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _897
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _897, _557
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _140
	move.w %d3,%d4	| _140,
	muls.w %d3,%d4	| _140, _901
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _900
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _900, _840
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1429
	ext.l %d0	| _788
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _790
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _784
	sub.w %d0,%d5	| _790, _784
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d3	| _784, _732
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,%d4	| _732, _734
	asr.l #7,%d4	|, _734
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _784, _727
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,%d3	| _727, _729
	asr.l #7,%d3	|, _729
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d1	| _784, _676
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d1,%d2	| _676, _675
	asr.l #7,%d2	|, _675
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _729,
	move.l %d3,-(%sp)	| _729,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2188, _563
	asr.l #7,%d5	|, _563
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _734,
	move.l %d4,-(%sp)	| _734,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _870
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d5	| _870, _327
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _675,
	move.l %d2,-(%sp)	| _675,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _433
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| _327, _255
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1430
	ext.l %d0	| _296
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _239
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d6	|, _232
	sub.w %d0,%d6	| _239, _232
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d6	|, _1558
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _1558,
	move.l %d4,-(%sp)	| _734,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2191, _1560
	asr.l #7,%d5	|, _1560
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _1558,
	move.l %d3,-(%sp)	| _729,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2192, _1564
	asr.l #7,%d3	|, _1564
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _1558,
	move.l %d2,-(%sp)	| _675,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2193, _1568
	asr.l #7,%d4	|, _1568
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1560,
	move.l %d5,-(%sp)	| _1560,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2194, _1588
	asr.l #7,%d2	|, _1588
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1564,
	move.l %d3,-(%sp)	| _1564,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1593
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1593, _1595
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1568,
	move.l %d4,-(%sp)	| _1568,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1599
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _1595, _1601
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _531
	ext.l %d0	| _1608
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1609
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1611
	sub.w %d0,%a2	| _1609, _1611
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1611, _1616
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1616,
	move.l %d5,-(%sp)	| _1560,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2197, _1618
	asr.l #7,%d5	|, _1618
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1616,
	move.l %d3,-(%sp)	| _1564,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2198, _1622
	asr.l #7,%d3	|, _1622
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1616,
	move.l %d4,-(%sp)	| _1568,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2199, _1626
	asr.l #7,%d4	|, _1626
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1618,
	move.l %d5,-(%sp)	| _1618,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2200, _1646
	asr.l #7,%d2	|, _1646
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1622,
	move.l %d3,-(%sp)	| _1622,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1651
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1651, _1653
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1626,
	move.l %d4,-(%sp)	| _1626,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1657
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _1653, _1659
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1665
	moveq #-128,%d1	|,
	add.l %d1,%d0	|, _1666
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1667
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1669
	sub.w %d0,%a2	| _1667, _1669
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1669, _1674
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1674,
	move.l %d5,-(%sp)	| _1618,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2203, _1676
	asr.l #7,%d2	|, _1676
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1674,
	move.l %d3,-(%sp)	| _1622,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2204, _1680
	asr.l #7,%d3	|, _1680
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1674,
	move.l %d4,-(%sp)	| _1626,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d1	| tmp2205, _1684
	asr.l #7,%d1	|, _1684
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| _1676, _1703
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1704
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| _1680, _1708
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1709
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1709, _1711
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d4	|,
	muls.w %d1,%d4	| _1684, _1714
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1715
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1715, _1717
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1723
	moveq #-128,%d4	|,
	add.l %d4,%d0	|, _1724
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1725
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1728
	sub.w %d0,%d4	| _1725, _1728
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d4,%d0	| _1728, _1733
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1734
| voxel.c:566: 		palette_vectors[i].c = v.c;
	swap %d0	| _1931
	clr.w %d0	| _1931
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	|,
	muls.w %d4,%d2	| _1728, _1737
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _1738
| voxel.c:566: 		palette_vectors[i].c = v.c;
	move.w %d2,%d0	| _1738, _1931
	move.l %d0,(%a3)	| _1931, MEM <vector(2) short int> [(union  *)_2368]
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	|,
	muls.w %d4,%d0	| _1728, _1741
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1742
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| _1742, MEM <fixp> [(union  *)_2368 + 4B]
| voxel.c:558: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.630
	cmp.l %a5,%a3	| _2355, ivtmp.630
	jne .L158		|
	move.l 90(%sp),%a5	| %sfp,
	lea (32000,%a5),%a5	|,
	move.l %a5,82(%sp)	|, %sfp
	move.l 90(%sp),%a0	| %sfp, ivtmp.620
	move.l %a5,%d0	|, _2385
.L159:
| voxel.c:165: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.397_869]
	cmp.l %d0,%a0	| _2385, ivtmp.620
	jne .L159		|
| voxel.c:470: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table,%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.612
	lea _view_max,%a3	|, ivtmp.615
	clr.w %d3	| ivtmp.613
.L164:
| voxel.c:760: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_2465], _5
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d2	| ivtmp.613,
	asr.w #4,%d2	|,
	move.w %d2,%a1	| _331, _332
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| _332, tmp1347
	add.l %a1,%a1	| tmp1347, _333
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, _337
	lsr.l #3,%d2	|, _337
	moveq #1,%d4	|,
	and.l %d4,%d2	|, _338
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	moveq #0,%d4	| _333
	move.w %a1,%d4	| _333, _333
	add.l %d4,%d4	| _333, _335
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%a0	| _335, _339
	add.l %d2,%a0	| _338, _339
	add.l 90(%sp),%a0	| %sfp, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L160		|
	mulu.w #160,%d1	|, _2264
	add.l %a0,%d1	| pBlock, _2271
.L161:
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2271
	jne .L161		|
.L160:
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_2406], _9
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _11
	sub.w %a0,%d1	| _9, _11
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, _13
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d5	| _13,
	muls.w #80,%d5	|,
	move.l %d5,%a0	|, _263
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| _333, _259
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| _259, _252
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| _252, _293
	move.l 90(%sp),%a0	| %sfp, pBlock
	add.l %d2,%a0	| _293, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L162		|
	mulu.w #160,%d1	|, _2241
	add.l %a0,%d1	| pBlock, _2242
.L163:
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2242
	jne .L163		|
.L162:
| voxel.c:759: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.613
	cmp.l #_view_min+80,%a2	|, ivtmp.612
	jne .L164		|
| voxel.c:764: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:765: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:766: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:769: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	move.l 94(%sp),%d0	| %sfp,
	add.l #19200,%d0	|,
	move.l %d0,82(%sp)	|, %sfp
	move.w 134(%sp),%a0	| MEM[(struct  *)_1713].width,
	move.l %a0,90(%sp)	|, %sfp
	add.l #320,%d7	|, cockpit$pixels
	move.l %d7,78(%sp)	| cockpit$pixels, %sfp
	addq.l #4,%sp	|,
.L165:
	move.l 78(%sp),70(%sp)	| %sfp, %sfp
	move.l 74(%sp),%a4	| %sfp, ivtmp.579
	lea (-320,%a4),%a4	|, ivtmp.579
.L166:
| voxel.c:145: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a4),%d0	| MEM[(const unsigned char *)_2121],
	move.w %d0,%a2	|, px
	move.b 1(%a4),%d1	| MEM[(const unsigned char *)_2121 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a4),%d2	| MEM[(const unsigned char *)_2121 + 2B],
	move.w %d2,%a0	|, px
	move.b 3(%a4),%d7	| MEM[(const unsigned char *)_2121 + 3B], px
	move.b 4(%a4),%d6	| MEM[(const unsigned char *)_2121 + 4B], px
	move.b 5(%a4),%d5	| MEM[(const unsigned char *)_2121 + 5B], px
	move.b 6(%a4),%d4	| MEM[(const unsigned char *)_2121 + 6B], px
	move.b 7(%a4),%d3	| MEM[(const unsigned char *)_2121 + 7B], px
	move.b 8(%a4),%d2	| MEM[(const unsigned char *)_2121 + 8B], px
	move.b 9(%a4),97(%sp)	| MEM[(const unsigned char *)_2121 + 9B], %sfp
	move.b 10(%a4),95(%sp)	| MEM[(const unsigned char *)_2121 + 10B], %sfp
	move.b 11(%a4),67(%sp)	| MEM[(const unsigned char *)_2121 + 11B], %sfp
	move.b 12(%a4),65(%sp)	| MEM[(const unsigned char *)_2121 + 12B], %sfp
	move.b 13(%a4),61(%sp)	| MEM[(const unsigned char *)_2121 + 13B], %sfp
	move.b 14(%a4),57(%sp)	| MEM[(const unsigned char *)_2121 + 14B], %sfp
	move.b 15(%a4),55(%sp)	| MEM[(const unsigned char *)_2121 + 15B], %sfp
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d1	|,
	and.w #1,%d1	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2416
	add.w %d1,%a5	| _2416, _2270
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2270,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2267
	add.w %d0,%a3	| _2267, _2231
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2231,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2228
	add.w %d0,%a5	| _2228, _2192
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2192,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2189
	add.w %d0,%a3	| _2189, _2153
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2153,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2150
	add.w %d0,%a5	| _2150, _2114
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2114,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2111
	add.w %d0,%a3	| _2111, _2075
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2075,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2072
	add.w %d0,%a5	| _2072, _2036
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2036,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2033
	add.w %d0,%a3	| _2033, _1997
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 97(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _1997,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1994
	add.w %d0,%a5	| _1994, _1958
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 95(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1958,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1955
	add.w %d0,%a3	| _1955, _1919
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 67(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _1919,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1916
	add.w %d0,%a5	| _1916, _1880
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 65(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1880,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1877
	add.w %d0,%a3	| _1877, _1841
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 61(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _1841,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1838
	add.w %d0,%a5	| _1838, _1802
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1802,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1799
	add.w %d0,%a3	| _1799, _570
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1927
| voxel.c:149: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2325
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a6	|, _2426
| voxel.c:149: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2418
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2426,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2435
	add.w %d0,%a6	| _2435, _2263
| voxel.c:149: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2265
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2263,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2260
	add.w %d1,%a6	| _2260, _2224
| voxel.c:149: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2226
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2224,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2221
	add.w %d0,%a6	| _2221, _2185
| voxel.c:149: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2187
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2185,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2182
	add.w %d1,%a6	| _2182, _2146
| voxel.c:149: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2148
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2146,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2143
	add.w %d0,%a6	| _2143, _2107
| voxel.c:149: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2109
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2107,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2104
	add.w %d1,%a6	| _2104, _2068
| voxel.c:149: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2070
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2068,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2065
	add.w %d0,%a6	| _2065, _2029
| voxel.c:149: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2031
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2029,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2026
	add.w %d1,%a6	| _2026, _1990
| voxel.c:149: 				px >>= 1;
	move.b 97(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1992
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1990,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1987
	add.w %d0,%a6	| _1987, _1951
| voxel.c:149: 				px >>= 1;
	move.b 95(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1953
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1951,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1948
	add.w %d1,%a6	| _1948, _1912
| voxel.c:149: 				px >>= 1;
	move.b 67(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1914
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1912,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1909
	add.w %d0,%a6	| _1909, _1873
| voxel.c:149: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1875
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1873,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1870
	add.w %d1,%a6	| _1870, _1834
| voxel.c:149: 				px >>= 1;
	move.b 61(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1836
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1834,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1831
	add.w %d0,%a6	| _1831, _1795
| voxel.c:149: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1797
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1795,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1792
	add.w %d1,%a5	| _1792, _579
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d1	| _1927,
	move.w %a5,%d1	| _579,
	move.l %d1,%a3	|, _1927
	move.b 55(%sp),%d0	| %sfp,
	moveq #1,%d1	|,
	and.l %d1,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a6	|, _1925
| voxel.c:149: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.b #1,%d0	|,
	move.b %d0,%d1	|,
	and.w #255,%d1	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a6,%d0	| _1925,
	move.w %d1,%d0	| _581,
| voxel.c:156: 			*out++ = plane0;
	move.l %a3,%d1	| _1927,
	or.l %d0,%d1	|,
	move.l 70(%sp),%a5	| %sfp,
	move.l %d1,(%a5)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2164]
| voxel.c:151: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2338
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a6	|, _2445
| voxel.c:151: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2437
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2445,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2448, _2256
	add.w %d1,%a5	| _2448, _2256
| voxel.c:151: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2258
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2256,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2253, _2217
	add.w %d0,%a6	| _2253, _2217
| voxel.c:151: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2219
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2217,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2214, _2178
	add.w %d1,%a5	| _2214, _2178
| voxel.c:151: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2180
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2178,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2175, _2139
	add.w %d0,%a6	| _2175, _2139
| voxel.c:151: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2141
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2139,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2136, _2100
	add.w %d1,%a5	| _2136, _2100
| voxel.c:151: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2102
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2100,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2097, _2061
	add.w %d0,%a6	| _2097, _2061
| voxel.c:151: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2063
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2061,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2058, _2022
	add.w %d1,%a5	| _2058, _2022
| voxel.c:151: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2024
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2022,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2019, _1983
	add.w %d0,%a6	| _2019, _1983
| voxel.c:151: 				px >>= 1;
	move.b 97(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1985
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _1983,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _1980, _1944
	add.w %d1,%a5	| _1980, _1944
| voxel.c:151: 				px >>= 1;
	move.b 95(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1946
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1944,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _1941, _1905
	add.w %d0,%a6	| _1941, _1905
| voxel.c:151: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1907
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _1905,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _1902, _1866
	add.w %d1,%a5	| _1902, _1866
| voxel.c:151: 				px >>= 1;
	move.b 65(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1868
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1866,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _1863, _1827
	add.w %d0,%a6	| _1863, _1827
| voxel.c:151: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1829
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _1827,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _1824, _1788
	add.w %d1,%a5	| _1824, _1788
| voxel.c:151: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1790
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1788,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1785
	add.w %d0,%a3	| _1785, _587
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1928
| voxel.c:153: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px_2357
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, _2466
| voxel.c:153: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px_2464
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| _2466,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, _426
	add.w %d0,%a1	| _426, _2249
| voxel.c:153: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px_2251
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| _2249,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, _2246
	add.w %d1,%a0	| _2246, _2210
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d7	|, px_2212
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, _2208
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| _2210,
	or.w %d1,%d7	|, _2207
	add.w %d7,%d7	| _2207, _2171
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d6	|, px_2173
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, _2169
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| _2171, _2168
	add.w %d6,%d6	| _2168, _2132
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d5	|, px_2134
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, _2130
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| _2132, _2129
	add.w %d5,%d5	| _2129, _2093
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d4	|, px_2095
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, _2091
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| _2093, _2090
	add.w %d4,%d4	| _2090, _2054
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d3	|, px_2056
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, _2052
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| _2054, _2051
	add.w %d3,%d3	| _2051, _2015
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d2	|, px_2017
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, _2013
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| _2015, _2012
	add.w %d2,%d2	| _2012, _1976
| voxel.c:153: 				px >>= 1;
	move.b 97(%sp),%d1	| %sfp, px_1978
	lsr.b #3,%d1	|, px_1978
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, _1974
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| _1976, _1973
	add.w %d1,%d1	| _1973, _1937
| voxel.c:153: 				px >>= 1;
	move.b 95(%sp),%d0	| %sfp, px_1939
	lsr.b #3,%d0	|, px_1939
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1935
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1935, _1934
	add.w %d1,%d1	| _1934, _1898
| voxel.c:153: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp, px_1900
	lsr.b #3,%d0	|, px_1900
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1896
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1896, _1895
	add.w %d1,%d1	| _1895, _1859
| voxel.c:153: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp, px_1861
	lsr.b #3,%d0	|, px_1861
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1857
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1857, _1856
	add.w %d1,%d1	| _1856, _1820
| voxel.c:153: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp, px_1822
	lsr.b #3,%d0	|, px_1822
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1818
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1818, _1817
	add.w %d1,%d1	| _1817, _1781
| voxel.c:153: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px_1783
	lsr.b #3,%d0	|, px_1783
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1779
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| _1781, _1778
	add.w %d0,%d0	| _1778, _595
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d2	| _1928,
	move.w %d0,%d2	| _595,
| voxel.c:151: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp, px_584
	lsr.b #2,%d1	|, px_584
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	moveq #1,%d3	|,
	and.l %d3,%d1	|, _589
	swap %d1	| _1926
	clr.w %d1	| _1926
| voxel.c:153: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px_592
	lsr.b #3,%d0	|, px_592
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.b #1,%d0	|, _596
	and.w #255,%d0	|, _597
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d1	| _597, _1926
| voxel.c:156: 			*out++ = plane0;
	or.l %d1,%d2	| _1926,
	move.l 70(%sp),%a0	| %sfp,
	move.l %d2,4(%a0)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2164 + 4B]
| voxel.c:142: 		for (int chunk=0; chunk<20; chunk++) {
	addq.l #8,70(%sp)	|, %sfp
	lea (16,%a4),%a4	|, ivtmp.579
	cmp.l 74(%sp),%a4	| %sfp, ivtmp.579
	jne .L166		|
	add.l #160,78(%sp)	|, %sfp
| voxel.c:141: 	for (int y=0; y<height; y++) {
	add.l 86(%sp),%a4	| %sfp, ivtmp.579
	move.l %a4,74(%sp)	| ivtmp.579, %sfp
	move.l 78(%sp),%a1	| %sfp,
	cmp.l 82(%sp),%a1	| %sfp,
	jne .L165		|
| voxel.c:773: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,118(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:778: 	int frames = 0;
	clr.l 96(%sp)	| %sfp
| voxel.c:776: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,94(%sp)	|, %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 82(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 106(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 102(%sp)	| %sfp
	lea (1808,%sp),%a5	|,,
	move.l %a5,44(%sp)	|, %sfp
	move.l %a5,%d3	|,
	subq.l #1,%d3	|,
	move.l %d3,78(%sp)	|, %sfp
| voxel.c:484: 	for (; samples > 0; --samples) {
	lea (176,%sp),%a5	|,,
	lea (32,%a5),%a5	|,
	move.l %a5,126(%sp)	|, %sfp
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1684
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1684
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2206
	jeq .L253		|
.L336:
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1684
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| _351
	ext.l %d0	| _351
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,111(%sp)	| _351, %sfp
| voxel.c:782: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L324		|
| voxel.c:787: 		frames++;
	addq.l #1,96(%sp)	|, %sfp
| voxel.c:131: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_358
	move.w (%a0),%d0	| *hw_palette.49_358, _359
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a6	|,
	move.l (%a6),%d2	| MEM <unsigned int> [(short int *)&pos], _363
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _25
	move.w %d3,%a5	| _25, pretmp_2302
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a3	|, tmp2138
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, _357
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, _19
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a6),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, _355
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, _21
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1699
	add.l %d1,%d0	| _21, tmp1700
	add.l %d0,%d0	| tmp1700, tmp1701
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a3,%d0.l),%d0	| combined[_19][_21].D.2792.height, combined[_19][_21].D.2792.height
	lsr.b #1,%d0	|, _23
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _431
	lsl.w #7,%d0	|, terrain_height.1_26
	move.w %d3,%d5	| _25,
	sub.w %d0,%d5	| terrain_height.1_26,
	move.w %d5,100(%sp)	|, %sfp
| voxel.c:793: 		if (desired_height >= 0) {
	tst.w 94(%sp)	| %sfp
	jlt .L325		|
.L309:
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 94(%sp),%a0	| %sfp, _28
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,70(%sp)	|, %sfp
	move.w 94(%sp),%d0	| %sfp, _31
	moveq #9,%d1	|,
	asr.w %d1,%d0	|, _31
	move.w %d0,%a1	| _31,
	move.l %a1,-(%sp)	|,
	sub.w 104(%sp),%a0	| %sfp, _28
	move.l %a0,-(%sp)	| _28,
	move.l 78(%sp),%a5	| %sfp,
	jsr (%a5)		|
	addq.l #8,%sp	|,
| voxel.c:796: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta_244
	jge .L171		|
	move.w #-256,%d0	|, altitude_delta_244
.L172:
| voxel.c:797: 			pos.z += altitude_delta;
	move.w %d0,%a5	| altitude_delta_244, pretmp_2302
	add.w %d3,%a5	| _25, pretmp_2302
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,%d0	|,
	cmp.w %a5,%d0	| pretmp_2302,
	jlt .L173		|
.L339:
| voxel.c:797: 			pos.z += altitude_delta;
	move.w %a5,_pos+4	| pretmp_2302, pos.z
| voxel.c:801: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_37
	move.w -602(%a0),116(%sp)	| MEM[(short int *)__aline.3_37 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _363
	move.l %d2,86(%sp)	| _363, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,122(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_37 + 4294966696B],
	move.l %a0,112(%sp)	|, %sfp
	moveq #-100,%d0	|, _39
	add.l %a0,%d0	|, _39
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _39
	move.l %d0,74(%sp)	| _39, %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 116(%sp),%a0	| %sfp, _41
	move.l %a0,%d0	| _41, _42
	add.l #-160,%d0	|, _42
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _43
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,60(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,%a4	| pos.dirx, prephitmp_2461
	move.l %d0,%d1	| _43,
	add.l %d0,%d1	| _43,
	move.l %d1,66(%sp)	|, %sfp
	add.l %d1,%d1	|, tmp1730
	move.l %d1,%d5	| tmp1730, tmp1731
	add.l %d0,%d5	| _43, tmp1731
	lsl.l #5,%d5	|, tmp1732
	neg.l %d5	| tmp1732
	move.l %d5,52(%sp)	| tmp1732, %sfp
	moveq #0,%d6	| ivtmp.567
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d3	| ci_idx
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %a4,64(%sp)	| prephitmp_2461, %sfp
.L227:
| voxel.c:834: 				.pixel = &chunks[ci_idx],
	moveq #0,%d0	| _939
	move.w %d3,%d0	| ci_idx, _939
	add.l %d0,%d0	| _939, _827
	lea (208,%sp),%a2	|,, pChunky
	add.l %d0,%a2	| _827, pChunky
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	move.w %d6,%d7	|, _72
	lsr.w #3,%d7	|, _72
	and.l #65535,%d7	|, _73
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	add.l %d7,%d7	| _73, tmp1739
	lea _view_max,%a0	|,
	move.w (%a0,%d7.l),58(%sp)	| view_max[_73], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 56(%sp),-(%sp)	| %sfp,
	move.l 78(%sp),%a1	| %sfp,
	jsr (%a1)		|
	addq.l #8,%sp	|,
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 74(%sp),%d0	| %sfp, y_offset_280
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	move.w 58(%sp),%d2	| %sfp, y
	sub.w %d0,%d2	| y_offset_280, y
| voxel.c:838: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a6	|,
	move.w (%a6,%d7.l),%a4	| view_min[_73], _80
| voxel.c:838: 			short y_min = view_min[x >> 3] - y_offset;
	move.w %a4,%d7	| _80, y_min
	sub.w %d0,%d7	| y_offset_280, y_min
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d2,%d7	| y, y_min
	jgt .L215		|
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.l %d6,%a6	| ivtmp.567, _52
	lea (-160,%a6),%a6	|, _52
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.l %a6,-(%sp)	| _52,
	move.w 64(%sp),%a0	| %sfp,
	move.l %a0,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	asr.l #8,%d0	|, _62
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 64(%sp),%d1	| %sfp, _64
	sub.w %d0,%d1	| _62, _64
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d1,%d4	|, _366
	swap %d4	| _366
	clr.w %d4	| _366
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.l %a6,-(%sp)	| _52,
	move.w 68(%sp),%a1	| %sfp,
	move.l %a1,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	asr.l #8,%d0	|, _56
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 60(%sp),%d0	| %sfp, _58
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d4,%d1	| _366, _368
	or.w %d0,%d1	| _58, _368
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, _368
	move.l %d1,%a6	| _368, _369
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 86(%sp),%d0	| %sfp, _1324
	add.l %d1,%d0	| _369, _1324
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1300
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1326
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1303
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1296
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1297
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1293
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %a5,%d1	| pretmp_2302, _379
	lsr.w #7,%d1	|, _379
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	and.l #65535,%d1	|, _66
	move.w #256,%a0	|, _67
	sub.l %d1,%a0	| _66, _67
	add.l %a0,%a0	| _67, _68
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%a0	|, y_table_shifted
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-12,%a5	|, z
	move.w %a5,%d4	| z, z
.L179:
| voxel.c:319: 	asm (
	move.l %d0,%d1	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d1	|, index_962
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d1.l),%d1	| *_963, sample
| voxel.c:334: 		return sample;
	move.w %d1,%d5	| sample, tmp1776
	lsr.w #8,%d5	|, tmp1776
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, _966
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d1.l),%d1	| *_968, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| y, sample_y
	jle .L326		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d4	|, z
.L178:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d0	| _369, _983
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d4	| z
	jlt .L179		|
.L180:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a6,%d1	| _369, _376
	add.l %a6,%d1	| _369, _376
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _377
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
	move.w %d3,%a5	| ci_idx, ci_idx
.L185:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d4	|, index_906
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_907, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1786
	lsr.w #8,%d3	|, tmp1786
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _910
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_912, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L327		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L184:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _377, _927
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L185		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.w %a5,%d3	| ci_idx, ci_idx
.L186:
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
.L192:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index_850
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_851, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1795
	lsr.w #8,%d3	|, tmp1795
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _854
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_856, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L328		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L191:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _377, _871
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L192		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.w %a5,%d3	| ci_idx, ci_idx
.L193:
	add.l %d1,%d1	| _377, _374
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _375
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
.L199:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d4	|, index_794
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_795, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1805
	lsr.w #8,%d3	|, tmp1805
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _798
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_800, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L329		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L198:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _375, _815
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L199		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.w %a5,%d3	| ci_idx, ci_idx
.L200:
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
.L206:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index_738
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_739, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1814
	lsr.w #8,%d3	|, tmp1814
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _742
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_744, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L330		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L205:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _375, _759
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L206		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.w %a5,%d3	| ci_idx, ci_idx
.L207:
	add.l %d1,%d1	| _375, _372
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _373
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
.L213:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d4	|, index_681
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_682, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1824
	lsr.w #8,%d3	|, tmp1824
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _685
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_687, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L331		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L212:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _373, _702
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L213		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.w %a5,%d3	| ci_idx, ci_idx
.L214:
	cmp.w %d7,%d2	| y_min, y
	jlt .L215		|
	move.w #-8,%a6	|, z
	move.w %a6,%d5	| z, z
.L220:
| voxel.c:319: 	asm (
	move.l %d0,%d4	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d4	| uv
	swap %d4	| uv
	lsr.l #6, %d4	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d4	|, index_624
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d4.l),%d4	| *_625, sample
| voxel.c:334: 		return sample;
	move.w %d4,%d3	| sample, tmp1833
	lsr.w #8,%d3	|, tmp1833
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d4	|, _628
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d4.l),%a1	| *_630, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L332		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
.L219:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _373, _645
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d5	| z
	jlt .L220		|
	move.w %a5,%d3	| ci_idx, ci_idx
.L215:
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	cmp.l 44(%sp),%a2	| %sfp, pChunky
	jcc .L225		|
	move.l 78(%sp),%d0	| %sfp, _1998
	sub.l %a2,%d0	| ivtmp.473, _1998
	moveq #-8,%d1	|,
	and.l %d1,%d0	|, _2003
	lea 8(%a2,%d0.l),%a0	|, _2006
.L224:
| voxel.c:858: 				*state.pixel = 15 << 2;
	move.w #60,(%a2)	|, MEM[(short unsigned int *)_1971]
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	addq.l #8,%a2	|, ivtmp.473
	cmp.l %a2,%a0	| ivtmp.473, _2006
	jne .L224		|
.L225:
	addq.w #1,%d3	|, _2004
	and.w #3,%d3	|, ci_idx
| voxel.c:862: 			if (ci_idx == 0) {
	jeq .L333		|
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	move.l 66(%sp),%d1	| %sfp,
	add.l %d1,52(%sp)	|, %sfp
	addq.l #2,%d6	|, ivtmp.567
	cmp.l #320,%d6	|, ivtmp.567
	jeq .L226		|
.L334:
| voxel.c:828: 			short height = fixp_int(pos.z);
	move.w _pos+4,%a5	| pos.z, pretmp_2302
	jra .L227		|
.L321:
| voxel.c:637: 		print("Error reading colors.tga\r\n");
	pea .LC4		|
	jsr _print		|
	addq.l #4,%sp	|,
| voxel.c:746: 		print("Failed to load voxel data.\r\n");
	pea .LC15		|
	jsr _print		|
| voxel.c:747: 		goto error;
	addq.l #4,%sp	|,
	jra .L153		|
.L323:
| voxel.c:672: 		print("Error reading height.tga\r\n");
	pea .LC9		|
	jsr _print		|
| voxel.c:673: 		goto error1;
	addq.l #4,%sp	|,
| voxel.c:699: 	Fclose(file1);
#APP
| 699 "voxel.c" 1
	movw	%d4,%sp@-	| _438
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L140		|
.L151:
| voxel.c:697: 	Fclose(file2);
#APP
| 697 "voxel.c" 1
	movw	%d3,%sp@-	| _471
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:699: 	Fclose(file1);
| 699 "voxel.c" 1
	movw	%d4,%sp@-	| _438
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L140		|
.L333:
| voxel.c:864: 				unsigned long t0 = *_hz_200;
	move.w #1210,%a2	|, tmp1848
	move.l (%a2),%d2	| MEM[(volatile long unsigned int *)1210B], t0
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w 58(%sp),%d4	| %sfp,
	moveq #0,%d5	|,
	not.b %d5	|
	and.l %d5,%d4	|,
	move.l %d4,-(%sp)	|,
	pea -160.w		|
| voxel.c:865: 				short column_height = view_max[x >> 3] + 1 - view_min[x >> 3];
	move.w 66(%sp),%d1	| %sfp, _1014
	addq.w #1,%d1	|, _1014
	sub.w %a4,%d1	| _80, _92
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %d1,%d0	| _92, tmp1853
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, tmp1853
	add.w %d1,%d0	| _92, tmp1854
	asr.w #1,%d0	|, _96
	move.w %d0,-(%sp)	| _96,
	clr.w -(%sp)	|
	pea 220(%sp)		|
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d6,%d0	|, _382
	asr.w #4,%d0	|, _382
	ext.l %d0	| _383
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _383, tmp1860
	add.l %d0,%d0	| tmp1860, _384
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 74(%sp),%d4	| %sfp,
	muls.w #80,%d4	|, _381
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d4	| _384, _385
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d4	| _385, _387
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%d0	| ivtmp.567, _389
	lsr.l #3,%d0	|, _389
	moveq #1,%d5	|,
	and.l %d0,%d5	| _389,
	move.l %d5,%a0	|, _390
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _387, _391
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.l 106(%sp),%a1	| %sfp,
	pea (%a1,%a0.l)		|
	jsr _c2p_w4_2x2_vertical		|
| voxel.c:869: 				unsigned long t1 = *_hz_200;
	move.l (%a2),%d0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:870: 				t_c2p += t1-t0;
	sub.l %d2,%d0	| t0, _99
| voxel.c:870: 				t_c2p += t1-t0;
	add.l %d0,102(%sp)	| _99, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+8,80(%sp)	| pos.diry, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+6,84(%sp)	| pos.dirx, %sfp
	lea (20,%sp),%sp	|,
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	move.l 66(%sp),%d1	| %sfp,
	add.l %d1,52(%sp)	|, %sfp
	addq.l #2,%d6	|, ivtmp.567
	cmp.l #320,%d6	|, ivtmp.567
	jne .L334		|
.L226:
| voxel.c:875: 		unsigned long t_render_1 = *_hz_200;
	move.w 64(%sp),%a4	| %sfp, prephitmp_2461
	move.l 1210.w,%a5	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	move.l %a5,%d0	| t_render_1, _100
	sub.l 122(%sp),%d0	| %sfp, _100
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	add.l %d0,102(%sp)	| _100, %sfp
| voxel.c:879: 		draw_map((unsigned char *)screen, &pos, frames & 1);
	moveq #1,%d4	|, _101
	and.l 96(%sp),%d4	| %sfp, _101
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 60(%sp),%d0	| %sfp, _1047
	lsl.w #8,%d0	|, _1047
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w %a4,%d1	| prephitmp_2461, tmp1881
	add.w %a4,%d1	| prephitmp_2461, tmp1881
	add.w %a4,%d1	| prephitmp_2461, _1048
	lsl.w #6,%d1	|, tmp1883
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	add.w %d1,%d0	| tmp1883, _1049
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, _1050
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d0,%d2	|, _1052
	swap %d2	| _1052
	clr.w %d2	| _1052
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 60(%sp),%d0	| %sfp, tmp1891
	add.w %d0,%d0	|, tmp1891
	add.w 60(%sp),%d0	| %sfp, _1039
	lsl.w #6,%d0	|, tmp1893
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	add.w _pos+2,%d0	| pos.y, _1040
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w %a4,%d1	| prephitmp_2461, _1043
	lsl.w #8,%d1	|, _1043
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	sub.w %d1,%d0	| _1043, _1044
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d2	| _1044, _1054
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d3	| _1054, sample_uv
	and.l #-65538,%d3	|, sample_uv
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w %a4,%d0	| prephitmp_2461, tmp1900
	lsl.w #4,%d0	|, tmp1900
	move.w %d0,%d2	| tmp1900, _1057
	neg.w %d2	| _1057
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 60(%sp),%d1	| %sfp, tmp1902
	lsl.w #4,%d1	|, tmp1902
	neg.w %d1	| _1056
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #65535,%d1	|, _1060
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| _1059
	clr.w %d2	| _1059
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d6	| _1059, _1061
	or.l %d1,%d6	| _1060, _1061
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d1	| _1063
	clr.w %d1	| _1063
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d1,%d2	| _1063, _1065
	or.w %d0,%d2	| tmp1900, _1065
	move.l 90(%sp),%a2	| %sfp, ivtmp.465
	lea (384,%a2),%a2	|, ivtmp.465
	moveq #0,%d5	| ivtmp.459
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	lea _c2p_x2,%a4	|, tmp2159
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,%d7	| _101, _518
	eor.w #1,%d7	|, _518
	move.l 126(%sp),%a6	| %sfp, tmp2174
.L230:
| voxel.c:507: 		if ((odd ^ y) & 1) {
	move.l %d5,%d0	| ivtmp.459, _1071
	eor.l %d4,%d0	| _101, _1071
| voxel.c:507: 		if ((odd ^ y) & 1) {
	btst #0,%d0	|, _1071
	jeq .L261		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| _1061, _1074
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.459
	lea (320,%a2),%a2	|, ivtmp.465
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| ivtmp.459,
	jne .L230		|
.L338:
| voxel.c:880: 		unsigned long t_render_2 = *_hz_200;
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_2
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	sub.l %a5,%d0	| t_render_1, _102
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	add.l %d0,106(%sp)	| _102, %sfp
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 86(%sp),%d1	| %sfp, _277
	add.l #65408,%d1	|, _277
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _270
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _1090
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _954
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _2284
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2285
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _2615
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2509
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d0	| pos.z, pos.z
	lsr.w #7,%d0	|, _394
| voxel.c:435: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, _1003
	sub.w %d0,%a0	| _394, _1003
| voxel.c:437: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| _1003, _1003
	add.l %a0,%a0	| _1003, _1006
	move.l %a0,%a1	| _1006, _2511
	add.l #_y_table+4096,%a1	|, _2511
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	moveq #127,%d5	|, delta_uv
	not.w %d5	| delta_uv
| voxel.c:442: 	short min_y = 0x7fff;
	move.w #32767,%d2	|, min_y
| voxel.c:440: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d4	|, index_mask
| voxel.c:443: 	unsigned short z = 0;
	moveq #4,%d3	|, z
.L233:
| voxel.c:452: 		z++;
	addq.w #1,%d3	|, z
	move.l %d1,%d0	| _2509, uv
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d1	| delta_uv, _2510
	add.l %d0,%d1	| uv, _2510
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2509
| voxel.c:319: 	asm (
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d4,%d0	| index_mask, index_2507
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d0	| *_2506, sample
| voxel.c:447: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, _2502
| voxel.c:448: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_2501, *_2501
	lea (1024,%a1),%a1	|, _2511
	cmp.w %d2,%d0	| min_y, *_2501
	jge .L231		|
	move.w %d0,%d2	| *_2501, min_y
.L231:
| voxel.c:456: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d3,%d0	| z, _2498
	and.w #15,%d0	|, _2498
	jne .L232		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _2497
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_uv
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d4,%d4	| index_mask, _2495
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d4	|, index_mask
.L232:
| voxel.c:444: 	while(z < STEPS_MAX) {
	cmp.w #64,%d3	|, z
	jne .L233		|
| voxel.c:888: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d2	|, min_y
	jlt .L262		|
	move.w #128,%a0	|, _2529
| voxel.c:890: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d2	|, min_y
	jge .L234		|
| voxel.c:893: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d2	|, _106
	add.w %d2,%d2	| _106, tmp1953
	add.w %d2,%d2	| tmp1953, sunlight_261
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d2,%a0	| sunlight_261, _2529
.L234:
	move.l %a0,-(%sp)	| _2529,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _109
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _110,
	muls.w %d1,%d2	| _109, _400
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _401
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| _401, pos.x
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _116
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _116,
	muls.w %d1,%d3	| _109, _396
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _396
	move.l %d3,%a0	| _396, _397
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%a0	| pos.y, _121
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, _124
	sub.l 116(%sp),%d3	| %sfp, _124
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, _125
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| _125, _127
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _127, _129
	asr.w #3,%d3	|, _129
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _127, _131
	asr.w #4,%d4	|, _131
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| _131, _133
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _134
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d1	| _127
	jle .L235		|
.L340:
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _134, _136
.L236:
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _121, pos.y
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _136, pos.speed
| voxel.c:905: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 116(%sp),%d1	| %sfp, rot
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _116, _145
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, _146
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| _146, _149
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _149, _152
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, _153
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| _153, _156
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _149,
	muls.w %d0,%d1	| _149, _420
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _421
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _156,
	muls.w %d2,%d3	| _156, _417
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _418
| voxel.c:910: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| _418, _159
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d1	| _410
	moveq #-128,%d5	|,
	add.l %d5,%d1	|, _411
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, _412
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _415
	sub.w %d1,%d3	| _412, _415
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _415, _407
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _408
| voxel.c:911: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| _1889
	clr.w %d0	| _1889
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d1	| _415,
	muls.w %d2,%d1	| _156, _403
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _404
| voxel.c:911: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| _404, _1889
	move.l %d0,_pos+6	| _1889, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:914: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:914: 		if (pressed_keys.up) {
	jpl .L237		|
| voxel.c:915: 			if (desired_height < FIXP(0, 0)) {
	tst.w 94(%sp)	| %sfp
	jlt .L264		|
| voxel.c:918: 			desired_height += FIXP(1, 0);
	move.w 94(%sp),%d0	| %sfp, _2531
.L238:
	add.w #128,%d0	|, _2531
	move.w %d0,94(%sp)	| _2531, %sfp
| voxel.c:919: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L237		|
	move.w #32512,94(%sp)	|, %sfp
.L237:
| voxel.c:923: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:923: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L240		|
| voxel.c:924: 			if (desired_height < FIXP(0, 0)) {
	tst.w 94(%sp)	| %sfp
	jlt .L241		|
| voxel.c:927: 			desired_height -= FIXP(1, 0);
	move.w 94(%sp),100(%sp)	| %sfp, %sfp
.L241:
| voxel.c:932: 		if (key == 0x23) {
	cmp.b #35,111(%sp)	|, %sfp
	jeq .L265		|
| voxel.c:927: 			desired_height -= FIXP(1, 0);
	move.w 100(%sp),%d3	| %sfp,
	add.w #-128,%d3	|,
	move.w %d3,94(%sp)	|, %sfp
| voxel.c:928: 			if (desired_height < FIXP(0, 0)) {
	jmi .L335		|
.L242:
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, _2088
	moveq #13,%d5	|,
	lsl.w %d5,%d0	|, _2365
| voxel.c:182: 	data &= mask;
	move.l 90(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2528
	and.l #-536879105,%d2	|, _2528
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1867
	swap %d1	| _1867
	clr.w %d1	| _1867
	move.w %d0,%d1	| _2365, _1867
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1867, _2528
	move.l %d2,(%a5)	| _2528, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1143
	or.w #8192,%d1	|, data_1143
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1852
	clr.w %d1	| _1852
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1150
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1150, _1852
	move.l %d1,4(%a5)	| _1852, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2203
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2573
	and.l #-536879105,%d2	|, _2573
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1835
	swap %d1	| _1835
	clr.w %d1	| _1835
	move.w %d0,%d1	| _2203, _1835
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1835, _2573
	move.l %d2,640(%a5)	| _2573, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1189
	or.w #8192,%d1	|, data_1189
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1814
	clr.w %d1	| _1814
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1196
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1196, _1814
	move.l %d1,644(%a5)	| _1814, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2039
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d4,%d3	|, _2122
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2127
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1242
	and.w #30719,%d0	|, data_1242
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2122, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 94(%sp),%d1	| %sfp, tmp2048
	not.w %d1	| tmp2048
	lsr.w %d4,%d1	|, _1849
	lsl.w %d5,%d1	|, _2159
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1803
	swap %d4	| _1803
	clr.w %d4	| _1803
	move.w %d3,%d4	| _2122, _1803
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _361
	and.l #2013231103,%d3	|, _361
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1803, _203
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1782
	swap %d4	| _1782
	clr.w %d4	| _1782
	move.w %d2,%d4	| _2127, _1782
	or.l %d4,%d3	| _1782, _1098
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _817
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _1126
	swap %d4	| _1126
	clr.w %d4	| _1126
	move.w %d1,%d4	| _2159, _1126
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _1126, _817
	move.l %d3,320(%a5)	| _817, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2127, data_1288
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1327
	or.w #-22528,%d2	|, data_1327
| voxel.c:192: 	*out++ = data;
	swap %d2	| _719
	clr.w %d2	| _719
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2159, data_1334
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1334, _719
	move.l %d2,324(%a5)	| _719, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
.L337:
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1684
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1684
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2206
	jne .L336		|
.L253:
	clr.b 111(%sp)	| %sfp
| voxel.c:787: 		frames++;
	addq.l #1,96(%sp)	|, %sfp
| voxel.c:131: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_358
	move.w (%a0),%d0	| *hw_palette.49_358, _359
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a6	|,
	move.l (%a6),%d2	| MEM <unsigned int> [(short int *)&pos], _363
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _25
	move.w %d3,%a5	| _25, pretmp_2302
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a3	|, tmp2138
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, _357
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, _19
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a6),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, _355
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, _21
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1699
	add.l %d1,%d0	| _21, tmp1700
	add.l %d0,%d0	| tmp1700, tmp1701
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a3,%d0.l),%d0	| combined[_19][_21].D.2792.height, combined[_19][_21].D.2792.height
	lsr.b #1,%d0	|, _23
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _431
	lsl.w #7,%d0	|, terrain_height.1_26
	move.w %d3,%d5	| _25,
	sub.w %d0,%d5	| terrain_height.1_26,
	move.w %d5,100(%sp)	|, %sfp
| voxel.c:793: 		if (desired_height >= 0) {
	tst.w 94(%sp)	| %sfp
	jge .L309		|
.L325:
	move.l #___divsi3,70(%sp)	|, %sfp
| voxel.c:801: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_37
	move.w -602(%a0),116(%sp)	| MEM[(short int *)__aline.3_37 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _363
	move.l %d2,86(%sp)	| _363, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,122(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_37 + 4294966696B],
	move.l %a0,112(%sp)	|, %sfp
	moveq #-100,%d0	|, _39
	add.l %a0,%d0	|, _39
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _39
	move.l %d0,74(%sp)	| _39, %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 116(%sp),%a0	| %sfp, _41
	move.l %a0,%d0	| _41, _42
	add.l #-160,%d0	|, _42
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _43
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,60(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,%a4	| pos.dirx, prephitmp_2461
	move.l %d0,%d1	| _43,
	add.l %d0,%d1	| _43,
	move.l %d1,66(%sp)	|, %sfp
	add.l %d1,%d1	|, tmp1730
	move.l %d1,%d5	| tmp1730, tmp1731
	add.l %d0,%d5	| _43, tmp1731
	lsl.l #5,%d5	|, tmp1732
	neg.l %d5	| tmp1732
	move.l %d5,52(%sp)	| tmp1732, %sfp
	moveq #0,%d6	| ivtmp.567
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d3	| ci_idx
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %a4,64(%sp)	| prephitmp_2461, %sfp
	jra .L227		|
.L332:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L260		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1833, chunky
	lsl.w #2,%d4	|, chunky
.L218:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_635]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L219		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_635]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L218		|
	jra .L219		|
.L327:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L255		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1786, chunky
	lsl.w #2,%d4	|, chunky
.L183:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_917]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L184		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_917]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L183		|
	jra .L184		|
.L326:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d7,%d1	| y_min, sample_y
	jle .L254		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d4	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	lsl.w #2,%d5	|, chunky
.L177:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_973]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d1	| y, sample_y
	jgt .L178		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_973]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d1	| y, sample_y
	jle .L177		|
	jra .L178		|
.L331:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L259		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1824, chunky
	lsl.w #2,%d4	|, chunky
.L211:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_692]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L212		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_692]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L211		|
	jra .L212		|
.L330:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L258		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1814, chunky
	lsl.w #2,%d4	|, chunky
.L204:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_749]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L205		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_749]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L204		|
	jra .L205		|
.L329:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L257		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1805, chunky
	lsl.w #2,%d4	|, chunky
.L197:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_805]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L198		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_805]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L197		|
	jra .L198		|
.L328:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a1,%d7	| sample_y, y_min
	jge .L256		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1795, chunky
	lsl.w #2,%d4	|, chunky
.L190:
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_861]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jlt .L191		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %d4,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_861]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, pChunky
	subq.w #1,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %a1,%d2	| sample_y, y
	jge .L190		|
	jra .L191		|
.L256:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1795, chunky
	lsl.w #2,%d4	|, chunky
	jra .L190		|
.L255:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1786, chunky
	lsl.w #2,%d4	|, chunky
	jra .L183		|
.L260:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1833, chunky
	lsl.w #2,%d4	|, chunky
	jra .L218		|
.L257:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1805, chunky
	lsl.w #2,%d4	|, chunky
	jra .L197		|
.L258:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1814, chunky
	lsl.w #2,%d4	|, chunky
	jra .L204		|
.L259:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%a1	| y_min, sample_y
	moveq #1,%d5	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	move.w %d3,%d4	| tmp1824, chunky
	lsl.w #2,%d4	|, chunky
	jra .L211		|
.L254:
| voxel.c:397: 				sample_y = y_min;
	move.w %d7,%d1	| y_min, sample_y
	moveq #1,%d4	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 2;
	lsl.w #2,%d5	|, chunky
	jra .L177		|
.L335:
| voxel.c:928: 			if (desired_height < FIXP(0, 0)) {
	clr.w 94(%sp)	| %sfp
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, _2088
	moveq #13,%d5	|,
	lsl.w %d5,%d0	|, _2365
| voxel.c:182: 	data &= mask;
	move.l 90(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2528
	and.l #-536879105,%d2	|, _2528
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1867
	swap %d1	| _1867
	clr.w %d1	| _1867
	move.w %d0,%d1	| _2365, _1867
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1867, _2528
	move.l %d2,(%a5)	| _2528, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1143
	or.w #8192,%d1	|, data_1143
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1852
	clr.w %d1	| _1852
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1150
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1150, _1852
	move.l %d1,4(%a5)	| _1852, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2203
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2573
	and.l #-536879105,%d2	|, _2573
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1835
	swap %d1	| _1835
	clr.w %d1	| _1835
	move.w %d0,%d1	| _2203, _1835
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1835, _2573
	move.l %d2,640(%a5)	| _2573, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1189
	or.w #8192,%d1	|, data_1189
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1814
	clr.w %d1	| _1814
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1196
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1196, _1814
	move.l %d1,644(%a5)	| _1814, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2039
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d4,%d3	|, _2122
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2127
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1242
	and.w #30719,%d0	|, data_1242
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2122, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 94(%sp),%d1	| %sfp, tmp2048
	not.w %d1	| tmp2048
	lsr.w %d4,%d1	|, _1849
	lsl.w %d5,%d1	|, _2159
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1803
	swap %d4	| _1803
	clr.w %d4	| _1803
	move.w %d3,%d4	| _2122, _1803
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _361
	and.l #2013231103,%d3	|, _361
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1803, _203
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1782
	swap %d4	| _1782
	clr.w %d4	| _1782
	move.w %d2,%d4	| _2127, _1782
	or.l %d4,%d3	| _1782, _1098
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _817
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _1126
	swap %d4	| _1126
	clr.w %d4	| _1126
	move.w %d1,%d4	| _2159, _1126
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _1126, _817
	move.l %d3,320(%a5)	| _817, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2127, data_1288
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1327
	or.w #-22528,%d2	|, data_1327
| voxel.c:192: 	*out++ = data;
	swap %d2	| _719
	clr.w %d2	| _719
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2159, data_1334
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1334, _719
	move.l %d2,324(%a5)	| _719, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L337		|
.L261:
	move.l %d3,%d1	| sample_uv, sample_uv
	lea (176,%sp),%a0	|,, out
.L228:
| voxel.c:319: 	asm (
	move.l %d1,%d0	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d0	|, index_1080
| voxel.c:486: 		*out++ = sample.color;
	move.b (%a3,%d0.l),(%a0)+	| _1081->D.2792.color, MEM[(unsigned char *)out_1084 + 4294967295B]
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _1065, _1085
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:484: 	for (; samples > 0; --samples) {
	cmp.l %a0,%a6	| out, tmp2174
	jne .L228		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| _1061, _1091
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,-(%sp)	| _101,
	pea 64.w		|
	pea 184(%sp)		|
	pea -320(%a2)		|
	jsr (%a4)		| tmp2159
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %d7,-(%sp)	| _518,
	pea 64.w		|
	pea 200(%sp)		|
	pea -160(%a2)		|
	jsr (%a4)		| tmp2159
	lea (32,%sp),%sp	|,
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.459
	lea (320,%a2),%a2	|, ivtmp.465
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| ivtmp.459,
	jne .L230		|
	jra .L338		|
.L171:
| voxel.c:795: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #256,%d0	|, altitude_delta_244
	jle .L172		|
	move.w #256,%d0	|, altitude_delta_244
| voxel.c:797: 			pos.z += altitude_delta;
	move.w %d0,%a5	| altitude_delta_244, pretmp_2302
	add.w %d3,%a5	| _25, pretmp_2302
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,%d0	|,
	cmp.w %a5,%d0	| pretmp_2302,
	jge .L339		|
.L173:
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	move.w #32640,%a5	|, pretmp_2302
| voxel.c:801: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_37
	move.w -602(%a0),116(%sp)	| MEM[(short int *)__aline.3_37 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _363
	move.l %d2,86(%sp)	| _363, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,122(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_37 + 4294966696B],
	move.l %a0,112(%sp)	|, %sfp
	moveq #-100,%d0	|, _39
	add.l %a0,%d0	|, _39
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _39
	move.l %d0,74(%sp)	| _39, %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 116(%sp),%a0	| %sfp, _41
	move.l %a0,%d0	| _41, _42
	add.l #-160,%d0	|, _42
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _43
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,60(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,%a4	| pos.dirx, prephitmp_2461
	move.l %d0,%d1	| _43,
	add.l %d0,%d1	| _43,
	move.l %d1,66(%sp)	|, %sfp
	add.l %d1,%d1	|, tmp1730
	move.l %d1,%d5	| tmp1730, tmp1731
	add.l %d0,%d5	| _43, tmp1731
	lsl.l #5,%d5	|, tmp1732
	neg.l %d5	| tmp1732
	move.l %d5,52(%sp)	| tmp1732, %sfp
	moveq #0,%d6	| ivtmp.567
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d3	| ci_idx
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %a4,64(%sp)	| prephitmp_2461, %sfp
	jra .L227		|
.L240:
| voxel.c:932: 		if (key == 0x23) {
	cmp.b #35,111(%sp)	|, %sfp
	jne .L242		|
| voxel.c:934: 			if (desired_height < 0) {
	tst.w 94(%sp)	| %sfp
	jge .L265		|
| voxel.c:935: 				desired_height = player_height;
	move.w 100(%sp),94(%sp)	| %sfp, %sfp
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, _2088
	moveq #13,%d5	|,
	lsl.w %d5,%d0	|, _2365
| voxel.c:182: 	data &= mask;
	move.l 90(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2528
	and.l #-536879105,%d2	|, _2528
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1867
	swap %d1	| _1867
	clr.w %d1	| _1867
	move.w %d0,%d1	| _2365, _1867
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1867, _2528
	move.l %d2,(%a5)	| _2528, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1143
	or.w #8192,%d1	|, data_1143
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1852
	clr.w %d1	| _1852
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1150
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1150, _1852
	move.l %d1,4(%a5)	| _1852, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2203
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2573
	and.l #-536879105,%d2	|, _2573
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1835
	swap %d1	| _1835
	clr.w %d1	| _1835
	move.w %d0,%d1	| _2203, _1835
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1835, _2573
	move.l %d2,640(%a5)	| _2573, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1189
	or.w #8192,%d1	|, data_1189
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1814
	clr.w %d1	| _1814
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1196
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1196, _1814
	move.l %d1,644(%a5)	| _1814, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2039
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d4,%d3	|, _2122
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2127
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1242
	and.w #30719,%d0	|, data_1242
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2122, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 94(%sp),%d1	| %sfp, tmp2048
	not.w %d1	| tmp2048
	lsr.w %d4,%d1	|, _1849
	lsl.w %d5,%d1	|, _2159
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1803
	swap %d4	| _1803
	clr.w %d4	| _1803
	move.w %d3,%d4	| _2122, _1803
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _361
	and.l #2013231103,%d3	|, _361
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1803, _203
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1782
	swap %d4	| _1782
	clr.w %d4	| _1782
	move.w %d2,%d4	| _2127, _1782
	or.l %d4,%d3	| _1782, _1098
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _817
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _1126
	swap %d4	| _1126
	clr.w %d4	| _1126
	move.w %d1,%d4	| _2159, _1126
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _1126, _817
	move.l %d3,320(%a5)	| _817, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2127, data_1288
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1327
	or.w #-22528,%d2	|, data_1327
| voxel.c:192: 	*out++ = data;
	swap %d2	| _719
	clr.w %d2	| _719
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2159, data_1334
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1334, _719
	move.l %d2,324(%a5)	| _719, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L337		|
.L262:
	sub.l %a0,%a0	| _2529
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2529,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _109
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _110,
	muls.w %d1,%d2	| _109, _400
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _401
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| _401, pos.x
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _116
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _116,
	muls.w %d1,%d3	| _109, _396
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, _396
	move.l %d3,%a0	| _396, _397
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%a0	| pos.y, _121
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, _124
	sub.l 116(%sp),%d3	| %sfp, _124
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, _125
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| _125, _127
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _127, _129
	asr.w #3,%d3	|, _129
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _127, _131
	asr.w #4,%d4	|, _131
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| _131, _133
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _134
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d1	| _127
	jgt .L340		|
.L235:
| voxel.c:904: 		else pos.speed += drag;
	add.w %d3,%d1	| _134, _136
	jra .L236		|
.L264:
	move.w 100(%sp),%d0	| %sfp, _2531
	jra .L238		|
.L265:
| voxel.c:937: 				desired_height = -1;
	move.w #-1,94(%sp)	|, %sfp
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, _2088
	moveq #13,%d5	|,
	lsl.w %d5,%d0	|, _2365
| voxel.c:182: 	data &= mask;
	move.l 90(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2528
	and.l #-536879105,%d2	|, _2528
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1867
	swap %d1	| _1867
	clr.w %d1	| _1867
	move.w %d0,%d1	| _2365, _1867
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1867, _2528
	move.l %d2,(%a5)	| _2528, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1143
	or.w #8192,%d1	|, data_1143
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1852
	clr.w %d1	| _1852
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1150
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1150, _1852
	move.l %d1,4(%a5)	| _1852, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2203
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2573
	and.l #-536879105,%d2	|, _2573
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1835
	swap %d1	| _1835
	clr.w %d1	| _1835
	move.w %d0,%d1	| _2203, _1835
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1835, _2573
	move.l %d2,640(%a5)	| _2573, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1189
	or.w #8192,%d1	|, data_1189
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1814
	clr.w %d1	| _1814
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1196
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1196, _1814
	move.l %d1,644(%a5)	| _1814, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2039
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d4,%d3	|, _2122
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2127
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1242
	and.w #30719,%d0	|, data_1242
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2122, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 94(%sp),%d1	| %sfp, tmp2048
	not.w %d1	| tmp2048
	lsr.w %d4,%d1	|, _1849
	lsl.w %d5,%d1	|, _2159
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1803
	swap %d4	| _1803
	clr.w %d4	| _1803
	move.w %d3,%d4	| _2122, _1803
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _361
	and.l #2013231103,%d3	|, _361
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1803, _203
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1782
	swap %d4	| _1782
	clr.w %d4	| _1782
	move.w %d2,%d4	| _2127, _1782
	or.l %d4,%d3	| _1782, _1098
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _817
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _1126
	swap %d4	| _1126
	clr.w %d4	| _1126
	move.w %d1,%d4	| _2159, _1126
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _1126, _817
	move.l %d3,320(%a5)	| _817, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2127, data_1288
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1327
	or.w #-22528,%d2	|, data_1327
| voxel.c:192: 	*out++ = data;
	swap %d2	| _719
	clr.w %d2	| _719
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2159, data_1334
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1334, _719
	move.l %d2,324(%a5)	| _719, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L337		|
.L324:
| voxel.c:956: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 118(%sp),%a0	| %sfp, _171
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| _171, tmp2081
	add.l %a0,%d0	| _171, tmp2081
	add.l %d0,%d0	| tmp2081, tmp2082
| voxel.c:958: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp2086
	move.l 96(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2086
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp2212, millis_per_frame_312
| voxel.c:959: 	print("Total time per frame: ");
	pea .LC16		|
	jsr _print		|
| voxel.c:960: 	printnum(millis_per_frame);
	move.l %d2,-(%sp)	| millis_per_frame_312,
	jsr _printnum		|
| voxel.c:961: 	print("\r\nTime spent rendering terrain: ");
	pea .LC17		|
	jsr _print		|
| voxel.c:962: 	printnum(t_render * 5 / frames);
	move.l 114(%sp),%d0	| %sfp, tmp2092
	add.l %d0,%d0	|, tmp2092
	add.l %d0,%d0	| tmp2092, tmp2093
| voxel.c:962: 	printnum(t_render * 5 / frames);
	move.l 108(%sp),-(%sp)	| %sfp,
	move.l 118(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2086
| voxel.c:962: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2213,
	jsr _printnum		|
| voxel.c:963: 	print("\r\nTime spent rendering map: ");
	pea .LC18		|
	jsr _print		|
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 126(%sp),%d0	| %sfp, tmp2103
	add.l %d0,%d0	|, tmp2103
	add.l %d0,%d0	| tmp2103, tmp2104
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 116(%sp),-(%sp)	| %sfp,
	move.l 130(%sp),%a1	| %sfp,
	pea (%a1,%d0.l)		|
	jsr (%a2)		| tmp2086
| voxel.c:964: 	printnum(t_map * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2214,
	jsr _printnum		|
| voxel.c:965: 	print("\r\nTime spent on C2P conversion: ");
	pea .LC19		|
	jsr _print		|
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 110(%sp),%d0	| %sfp, tmp2114
	add.l %d0,%d0	|, tmp2114
	add.l %d0,%d0	| tmp2114, tmp2115
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 124(%sp),-(%sp)	| %sfp,
	move.l 114(%sp),%a5	| %sfp,
	pea (%a5,%d0.l)		|
	jsr (%a2)		| tmp2086
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2215,
	jsr _printnum		|
| voxel.c:967: 	print("\r\n");
	lea (28,%sp),%sp	|,
	move.l #.LC5,(%sp)	|,
	jsr _print		|
| voxel.c:968: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:969: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #4,%sp	|,
| voxel.c:972: 	print("Press any key to exit to TOS.\r\n");
	pea .LC20		|
	jsr _print		|
| voxel.c:709: 	while (Bconstat(_CON))
	moveq #2,%d0	|, tmp2127
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2127
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2129
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2216
	jne .L247		|
	jra .L249		|
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
