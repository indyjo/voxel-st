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
	lea _fog_table+2,%a5	|, ivtmp.317
	move.l #_y_table+1024,%d6	|, ivtmp.318
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:214: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:213: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp384
.L21:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _153
	lsr.w #7,%d0	|, _153
| voxel.c:217: 			y_table[z][h] = 45 - 35 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _153, _3
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	muls.w #35,%d0	|, _7
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.318, ivtmp.307
	move.w #-8960,%a2	|, ivtmp.304
.L22:
| voxel.c:217: 			y_table[z][h] = 45 - 35 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.304,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _59,
	sub.w %d0,%d1	| tmp436,
	move.w %d1,(%a3)+	|, MEM[(short int *)_74]
| voxel.c:216: 		for (int h=0; h<256+256; h++) {
	lea (35,%a2),%a2	|, ivtmp.304
	cmp.w #8960,%a2	|, ivtmp.304
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
	move.w #-40,%a0	|, _19
	add.l %d4,%a0	| z, _19
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _19
	jlt .L102		|
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %a0,%d0	|,
	ext.l %d0	| _19
	lsl.l #3,%d0	|, _178
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	pea 24.w		|
	move.l %d0,-(%sp)	| _178,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	moveq #12,%d2	|,
	lsl.w %d2,%d0	|, _344
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %d0,(%a5)+	| _344, MEM[(short unsigned int *)_346]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
.L103:
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _153
	lsr.w #7,%d0	|, _153
| voxel.c:217: 			y_table[z][h] = 45 - 35 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _153, _3
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	muls.w #35,%d0	|, _7
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| _7,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _59
	add.w #45,%d2	|, _59
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.318, ivtmp.307
	move.w #-8960,%a2	|, ivtmp.304
	jra .L22		|
.L102:
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| _19
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %a0,%d0	|,
	ext.l %d0	| _19
	lsl.l #3,%d0	|, _178
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	pea 24.w		|
	move.l %d0,-(%sp)	| _178,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	moveq #12,%d2	|,
	lsl.w %d2,%d0	|, _344
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %d0,(%a5)+	| _344, MEM[(short unsigned int *)_346]
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:215: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.318
	jra .L103		|
.L23:
| voxel.c:227: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, _494
	add.l %d4,%a0	| z, _494
| voxel.c:228: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, _494
	jlt .L104		|
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %a0,%d0	|,
	ext.l %d0	| _494
	lsl.l #3,%d0	|, _15
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	pea 24.w		|
	move.l %d0,-(%sp)	| _15,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	moveq #12,%d1	|,
	lsl.w %d1,%d0	|, _18
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %d0,(%a5)+	| _18, MEM[(short unsigned int *)_260]
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
	lsr.b #1,%d1	|, prephitmp_325
	move.b %d1,_max_height	| prephitmp_325, max_height
| voxel.c:243: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp289
	add.l #232,%d2	|, tmp289
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp289,
	jsr _memcpy		|
	move.l %d2,124(%sp)	| tmp289, %sfp
	lea _pdata_table,%a6	|, tmp383
	move.l %a6,160(%sp)	| tmp383, %sfp
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
	sge %d1		| tmp371
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
	move.l %d0,%d2	| _133, tmp376
	lsl.l #8,%d2	|, tmp376
	add.l %d2,%d0	| tmp376, tmp377
	move.l %d0,%d2	| tmp377, tmp378
	swap %d2	| tmp378
	clr.w %d2	| tmp378
	add.l %d2,%d0	| tmp378, tmp377
	move.l %d0,86(%sp)	| tmp377, %sfp
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
	move.b %d3,%d6	| color1, _350
	move.b %d3,%d2	|,
	and.b #2,%d2	|,
	move.b %d2,46(%sp)	|, %sfp
	move.b %d3,%d7	|, _191
	and.b #4,%d7	|, _191
	btst #3,%d3	|, color1
	jeq .L40		|
	move.b 99(%sp),%d4	| %sfp, _197
.L41:
	and.l #255,%d4	|, iftmp.33_198
	btst #0,%d6	|, _350
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
	move.w %d7,%a1	| _191, _191
	move.l %d4,50(%sp)	| iftmp.33_198, %sfp
	move.w %d6,%a3	| _350, _350
	move.l %d0,%a2	| _431, _431
.L38:
	move.l %a2,%d0	| _431, prephitmp_435
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	tst.b 46(%sp)	| %sfp
	jeq .L32		|
	or.l 78(%sp),%d0	| %sfp, prephitmp_435
.L32:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jeq .L33		|
	or.l 74(%sp),%d0	| %sfp, prephitmp_435
.L33:
	move.w %a3,%d1	| _350, _215
	add.b %d2,%d1	| ivtmp.257, _215
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _215
	jeq .L73		|
	move.l 54(%sp),%d7	| %sfp, iftmp.30_443
.L34:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _215
	jeq .L74		|
	move.l 58(%sp),%d6	| %sfp, iftmp.31_447
.L35:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _215
	jeq .L75		|
	move.l 70(%sp),%d4	| %sfp, iftmp.32_451
.L36:
	move.b %d1,%d5	| _215, _190
	and.b #8,%d5	|, _190
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _215
	jeq .L37		|
	move.b 98(%sp),%d5	| %sfp, _190
.L37:
| voxel.c:263: 					unsigned int pdata = 0
	or.l 50(%sp),%d0	| %sfp, _456
	or.l %d7,%d0	| iftmp.30_443, _457
	or.l %d6,%d0	| iftmp.31_447, _458
	or.l %d4,%d0	| iftmp.32_451, _459
	or.b %d5,%d0	| _190, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _183
	and.l %d2,%d1	| ivtmp.257, _183
	lsl.l #4,%d1	|, _464
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp311
	lsl.l #3,%d1	|, tmp312
	add.l %a5,%d1	| fog, tmp313
	lsl.l #3,%d1	|, tmp314
	add.l %a4,%d1	| y, tmp315
	add.l %d1,%d1	| tmp315, tmp316
	add.l %d1,%d1	| tmp316, tmp317
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_465][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_269]
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
	add.l %d0,%d0	| _43, tmp382
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
	sub.l %a0,%a0	| _494
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %a0,%d0	|,
	ext.l %d0	| _494
	lsl.l #3,%d0	|, _15
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	pea 24.w		|
	move.l %d0,-(%sp)	| _15,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	moveq #12,%d1	|,
	lsl.w %d1,%d0	|, _18
| voxel.c:230: 		fog_table[z] = (FOG_STEPS * rel_dist / max_dist) << 12;
	move.w %d0,(%a5)+	| _18, MEM[(short unsigned int *)_260]
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
	move.w %d7,%a1	| _191, _191
	move.l %d4,%a2	| iftmp.33_198, iftmp.33_198
	move.w %d6,%a3	| _350, _350
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jeq .L77		|
.L106:
	move.l 46(%sp),%d0	| %sfp, prephitmp_25
	move.w %a3,%d1	| _350, _483
	add.b %d2,%d1	| ivtmp.247, _483
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _483
	jeq .L78		|
.L107:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_355
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _483
	jeq .L79		|
.L108:
	move.l 50(%sp),%d6	| %sfp, iftmp.31_255
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _483
	jeq .L80		|
.L109:
	move.l 58(%sp),%d4	| %sfp, iftmp.32_265
.L47:
	move.b %d1,%d5	| _483, _72
	and.b #8,%d5	|, _72
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _483
	jeq .L48		|
	move.b 98(%sp),%d5	| %sfp, _72
.L48:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_198,
	or.l %d1,%d0	|, _71
	or.l %d7,%d0	| iftmp.30_355, _21
	or.l %d6,%d0	| iftmp.31_255, _22
	or.l %d4,%d0	| iftmp.32_265, _11
	or.b %d5,%d0	| _72, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _432
	and.l %d2,%d1	| ivtmp.247, _432
	lsl.l #4,%d1	|, _247
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp340
	lsl.l #3,%d1	|, tmp341
	add.l %a5,%d1	| fog, tmp342
	lsl.l #3,%d1	|, tmp343
	add.l %a4,%d1	| y, tmp344
	add.l %d1,%d1	| tmp344, tmp345
	add.l %d1,%d1	| tmp345, tmp346
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_242][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_480]
| voxel.c:262: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.247
	lea (-3840,%a0),%a0	|, ivtmp.248
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.247,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jne .L106		|
.L77:
	move.l 86(%sp),%d0	| %sfp, prephitmp_25
	move.w %a3,%d1	| _350, _483
	add.b %d2,%d1	| ivtmp.247, _483
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _483
	jne .L107		|
.L78:
	moveq #0,%d7	| iftmp.30_355
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _483
	jne .L108		|
.L79:
	moveq #0,%d6	| iftmp.31_255
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _483
	jne .L109		|
.L80:
	moveq #0,%d4	| iftmp.32_265
	jra .L47		|
.L40:
	clr.b %d4	| _197
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
	move.w %d7,%a1	| _191, _191
	move.l %d4,%a2	| iftmp.33_198, iftmp.33_198
	move.w %d6,%a3	| _350, _350
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jeq .L82		|
.L110:
	move.l 94(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _350, _365
	add.b %d2,%d1	| ivtmp.252, _365
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _365
	jeq .L83		|
.L111:
	move.l 54(%sp),%d7	| %sfp, iftmp.30_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _365
	jeq .L84		|
.L112:
	move.l 46(%sp),%d6	| %sfp, iftmp.31_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _365
	jeq .L85		|
.L113:
	move.l 50(%sp),%d4	| %sfp, iftmp.32_399
.L54:
	move.b %d1,%d5	| _365, _49
	and.b #8,%d5	|, _49
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _365
	jeq .L55		|
	move.b 98(%sp),%d5	| %sfp, _49
.L55:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.33_198,
	or.l %d1,%d0	|, _404
	or.l %d7,%d0	| iftmp.30_391, _405
	or.l %d6,%d0	| iftmp.31_395, _406
	or.l %d4,%d0	| iftmp.32_399, _407
	or.b %d5,%d0	| _49, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _193
	and.l %d2,%d1	| ivtmp.252, _193
	lsl.l #4,%d1	|, _412
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	add.l %d3,%d1	| color1, tmp364
	lsl.l #3,%d1	|, tmp365
	add.l %a5,%d1	| fog, tmp366
	lsl.l #3,%d1	|, tmp367
	add.l %a4,%d1	| y, tmp368
	add.l %d1,%d1	| tmp368, tmp369
	add.l %d1,%d1	| tmp369, tmp370
	move.l %d0,(%a6,%d1.l)	| pdata, pdata_table[index1_413][fog_232][y_231]
| voxel.c:269: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d0,(%a0)	| pdata, MEM[(unsigned int *)_360]
| voxel.c:262: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.252
	lea (-3840,%a0),%a0	|, ivtmp.253
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.252,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jne .L110		|
.L82:
	move.l 90(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _350, _365
	add.b %d2,%d1	| ivtmp.252, _365
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _365
	jne .L111		|
.L83:
	moveq #0,%d7	| iftmp.30_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _365
	jne .L112		|
.L84:
	moveq #0,%d6	| iftmp.31_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _365
	jne .L113		|
.L85:
	moveq #0,%d4	| iftmp.32_399
	jra .L54		|
.L71:
| voxel.c:234: 	for (int y=0; y<HEIGHT; y++) {
	clr.b %d1	| prephitmp_325
| voxel.c:241: 	max_height >>= 1;
	move.b %d1,_max_height	| prephitmp_325, max_height
| voxel.c:243: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp289
	add.l #232,%d2	|, tmp289
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp289,
	jsr _memcpy		|
	move.l %d2,124(%sp)	| tmp289, %sfp
	lea _pdata_table,%a6	|, tmp383
	move.l %a6,160(%sp)	| tmp383, %sfp
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
	lea _palette_vectors+6,%a1	|, ivtmp.346
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
	addq.l #6,%a1	|, ivtmp.346
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
	addq.l #6,%a1	|, ivtmp.346
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
	addq.l #6,%a1	|, ivtmp.346
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
	lea (-8360,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
| voxel.c:727: 	print("\33H\33f");
	pea .LC1		|
	jsr _print		|
| voxel.c:730: 	Super(0L);
	moveq #0,%d0	| tmp1179
#APP
| 730 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1179
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
	pea 152(%sp)		|
	jsr _save_palette		|
| voxel.c:739: 	unsigned short *screen = Physbase();
#APP
| 739 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,102(%sp)	| tmp2178, %sfp
| voxel.c:741: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:743: 	init_c2p_table();
	jsr _init_c2p_table		|
| voxel.c:634: 	print("Loading colors.tga\r\n");
	pea .LC2		|
	jsr _print		|
| voxel.c:635: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC3,%d0	|, tmp1188
	clr.w %d3	| tmp1189
#APP
| 635 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1189
	movl	%d0,%sp@-	| tmp1188
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d4	| tmp2179, _438
| voxel.c:636: 	if (file1 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L358		|
| voxel.c:640: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _438,
	lea (138,%sp),%a1	|,,
	lea _read_tga_header,%a5	|, tmp2136
	jsr (%a5)		| tmp2136
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d4,60(%sp)	| _438, %sfp
| voxel.c:641: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 134(%sp)	| MEM[(struct  *)_1722].width
	jne .L359		|
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
	moveq #2,%d0	|, tmp2124
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2124
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2126
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2214
	jeq .L259		|
.L257:
| voxel.c:710: 		Bconin(_CON);
#APP
| 710 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2126
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: 	while (Bconstat(_CON))
| 709 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2126
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2215
	jne .L257		|
.L259:
| voxel.c:711: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp2129
.L258:
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2129
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2216
	jeq .L258		|
| voxel.c:713: 	Bconin(_CON);
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2129
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:974: 	install_palette(saved_palette);
#NO_APP
	pea 148(%sp)		|
	jsr _install_palette		|
| voxel.c:975: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:976: }
	moveq #0,%d0	|
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (8360,%sp),%sp	|,
	rts	
.L359:
| voxel.c:643: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 142(%sp),%a0	| MEM[(struct  *)_1722].colors, _440
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
	move.l 146(%sp),-(%sp)	| MEM[(struct  *)_1722].colors,
	jsr _set_palette_immediately		|
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	lea (220,%sp),%a0	|,,
	move.l %a0,58(%sp)	|, %sfp
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
	move.l %d0,%d2	| tmp2180, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
	jeq .L150		|
	move.l 94(%sp),%d5	| %sfp, screen
| voxel.c:652: 	short lines_remaining = 200;
	move.w #200,%d3	|, lines_remaining
| voxel.c:651: 	unsigned char *p = &combined[0][0].color;
	lea _combined,%a3	|, p
| voxel.c:650: 	size_t n, remaining = 512*512;
	moveq #4,%d6	|, remaining
	swap %d6	| remaining
| voxel.c:661: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	lea _c2p,%a4	|, tmp2175
.L142:
| voxel.c:654: 		remaining -= n;
	sub.l %d2,%d6	| n, remaining
| voxel.c:655: 		print(".");
	pea .LC8		|
	jsr _print		|
	lea (216,%sp),%a2	|,, ivtmp.649
	moveq #39,%d0	|, _1575
	not.b %d0	| _1575
	add.l %sp,%d0	|, _1575
	add.l %d2,%d0	| n, _1575
	addq.l #4,%sp	|,
	move.l %a2,%a1	| ivtmp.649, ivtmp.656
	move.l %a3,%a0	| p, p
.L145:
| voxel.c:657: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_1577], MEM[(unsigned char *)p_1570]
| voxel.c:658: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:656: 		for (size_t i=0; i<n; i++) {
	cmp.l %d0,%a1	| _1575, ivtmp.656
	jne .L145		|
	subq.l #1,%d2	|, _1037
	move.l %d2,%d0	| _1037, _1040
	add.l %d2,%d0	| _1037, _1040
	lea 2(%a3,%d0.l),%a3	|, p
	moveq #9,%d7	|,
	lsr.l %d7,%d2	|, _2374
	move.w %d3,%d7	| lines_remaining, _556
	subq.w #1,%d7	|, _556
	sub.w %d2,%d7	| _2374, _2368
.L146:
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	tst.w %d3	| lines_remaining
	jeq .L147		|
| voxel.c:661: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	moveq #1,%d0	|,
	and.l %d3,%d0	| lines_remaining,
	move.l %d0,-(%sp)	|,
	pea 320.w		|
	move.l %a2,-(%sp)	| ivtmp.649,
	move.l %d5,-(%sp)	| screen,
	jsr (%a4)		| tmp2175
| voxel.c:662: 			screen += 80; // advance screen pointer one line
	add.l #160,%d5	|, screen
	subq.w #1,%d3	|, lines_remaining
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	lea (512,%a2),%a2	|, ivtmp.649
	lea (16,%sp),%sp	|,
	cmp.w %d3,%d7	| lines_remaining, _2368
	jne .L146		|
.L147:
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d6,%d0	| remaining, _466
	cmp.l #8192,%d6	|, remaining
	jls .L149		|
	move.l #8192,%d0	|, _466
.L149:
	move.w 56(%sp),%d7	| %sfp,
	move.l 50(%sp),%a6	| %sfp,
#APP
| 653 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%d0,%sp@-	| _466
	movw	%d7,%sp@-	|
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2182, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L142		|
.L150:
| voxel.c:666: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:667: 	free_image(&texture);
	pea 138(%sp)		|
	lea _free_image,%a3	|, tmp2146
	jsr (%a3)		| tmp2146
| voxel.c:669: 	print("Loading height.tga\r\n");
	pea .LC6		|
	jsr _print		|
| voxel.c:670: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC7,%d0	|, tmp1203
	clr.w %d3	| tmp1204
#APP
| 670 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1204
	movl	%d0,%sp@-	| tmp1203
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp2181, _471
| voxel.c:671: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L360		|
| voxel.c:675: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _471,
	lea (184,%sp),%a1	|,,
	jsr (%a5)		| tmp2136
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d3,%a5	| _471, _2689
| voxel.c:676: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 180(%sp)	| MEM[(struct  *)_1741].width
	jeq .L151		|
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a4	|, tmp1217
	move.l 50(%sp),%d5	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%d5,%sp@-	|
	movl	%a4,%sp@-	| tmp1217
	movw	%d3,%sp@-	| _471
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2183, n
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
	lea (216,%sp),%a1	|,, ivtmp.638
	moveq #39,%d1	|, _2408
	not.b %d1	| _2408
	add.l %sp,%d1	|, _2408
	add.l %d2,%d1	| n, _2408
	addq.l #4,%sp	|,
	move.l %d6,%a0	| p, p
.L155:
| voxel.c:685: 			*p = buf[i]*2;
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_2418], _478
| voxel.c:685: 			*p = buf[i]*2;
	add.b %d0,%d0	| _478, _479
	move.b %d0,(%a0)	| _479, MEM[(unsigned char *)p_1327]
| voxel.c:686: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:682: 		for (size_t i=0; i<n; i++) {
	cmp.l %d1,%a1	| _2408, ivtmp.638
	jne .L155		|
	add.l %d2,%d2	| _1055
	add.l %d2,%d6	| _1055, p
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _484
	cmp.l #8192,%d5	|, remaining
	jls .L156		|
	move.l %a4,%d0	| tmp1217, _484
.L156:
	move.l 50(%sp),%d7	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%d7,%sp@-	|
	movl	%d0,%sp@-	| _484
	movw	%a5,%sp@-	| _2689
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2185, n
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L152		|
.L157:
| voxel.c:689: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:690: 	free_image(&height);
	pea 184(%sp)		|
	jsr (%a3)		| tmp2146
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
	lea (150,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 154(%sp),%d7	| MEM[(struct  *)_1722].pixels, cockpit$pixels
| voxel.c:717: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1224
#APP
| 717 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1224
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2184, _497
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
	move.l 142(%sp),%a4	| MEM[(struct  *)_1722].colors, colors
	lea _palette_vectors,%a3	|, ivtmp.631
	lea _palette_vectors+96,%a5	|, _2446
.L158:
| voxel.c:559: 		unsigned char b = *colors++;
	move.b (%a4),%d1	| MEM[(const unsigned char *)colors_506], b
| voxel.c:560: 		unsigned char g = *colors++;
	move.b 1(%a4),%d2	| MEM[(const unsigned char *)colors_506 + 1B], g
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
	ext.w %d1	| _2210
	move.w %d1,%d0	| _2210,
	muls.w %d1,%d0	| _2210, _878
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _862
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _2171
	move.w %d2,%d4	| _2171,
	muls.w %d2,%d4	| _2171, _916
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _915
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _915, _251
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _140
	move.w %d3,%d4	| _140,
	muls.w %d3,%d4	| _140, _938
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _922
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _922, _863
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1457
	ext.l %d0	| _849
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _818
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _801
	sub.w %d0,%d5	| _818, _801
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d3	| _801, _798
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,%d4	| _798, _799
	asr.l #7,%d4	|, _799
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _801, _741
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,%d3	| _741, _743
	asr.l #7,%d3	|, _743
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d1	| _801, _735
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d1,%d2	| _735, _737
	asr.l #7,%d2	|, _737
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _799,
	move.l %d4,-(%sp)	| _799,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2186, _615
	asr.l #7,%d5	|, _615
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _743,
	move.l %d3,-(%sp)	| _743,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _260
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d5	| _260, _843
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _737,
	move.l %d2,-(%sp)	| _737,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1000
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| _843, _939
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1458
	ext.l %d0	| _820
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _565
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d6	|, _567
	sub.w %d0,%d6	| _565, _567
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d6	|, _435
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _799,
	move.l %d6,-(%sp)	| _435,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2189, _433
	asr.l #7,%d5	|, _433
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _743,
	move.l %d6,-(%sp)	| _435,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2190, _289
	asr.l #7,%d3	|, _289
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _737,
	move.l %d6,-(%sp)	| _435,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2191, _295
	asr.l #7,%d4	|, _295
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _433,
	move.l %d5,-(%sp)	| _433,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2192, _1597
	asr.l #7,%d2	|, _1597
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _289,
	move.l %d3,-(%sp)	| _289,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1602
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1602, _1604
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _295,
	move.l %d4,-(%sp)	| _295,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1608
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _1604, _1610
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _531
	ext.l %d0	| _1617
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1618
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1620
	sub.w %d0,%a2	| _1618, _1620
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1620, _1625
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1625,
	move.l %d5,-(%sp)	| _433,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2195, _1627
	asr.l #7,%d5	|, _1627
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1625,
	move.l %d3,-(%sp)	| _289,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2196, _1631
	asr.l #7,%d3	|, _1631
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1625,
	move.l %d4,-(%sp)	| _295,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2197, _1635
	asr.l #7,%d4	|, _1635
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1627,
	move.l %d5,-(%sp)	| _1627,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2198, _1655
	asr.l #7,%d2	|, _1655
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1631,
	move.l %d3,-(%sp)	| _1631,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1660
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1660, _1662
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1635,
	move.l %d4,-(%sp)	| _1635,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1666
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _1662, _1668
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1674
	moveq #-128,%d1	|,
	add.l %d1,%d0	|, _1675
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1676
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1678
	sub.w %d0,%a2	| _1676, _1678
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1678, _1683
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1683,
	move.l %d5,-(%sp)	| _1627,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2201, _1685
	asr.l #7,%d2	|, _1685
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1683,
	move.l %d3,-(%sp)	| _1631,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2202, _1689
	asr.l #7,%d3	|, _1689
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1683,
	move.l %d4,-(%sp)	| _1635,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d1	| tmp2203, _1693
	asr.l #7,%d1	|, _1693
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| _1685, _1712
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1713
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| _1689, _1717
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1718
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1718, _1720
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d4	|,
	muls.w %d1,%d4	| _1693, _1723
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1724
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1724, _1726
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1732
	moveq #-128,%d4	|,
	add.l %d4,%d0	|, _1733
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1734
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1737
	sub.w %d0,%d4	| _1734, _1737
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d4,%d0	| _1737, _1742
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1743
| voxel.c:566: 		palette_vectors[i].c = v.c;
	swap %d0	| _2000
	clr.w %d0	| _2000
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	|,
	muls.w %d4,%d2	| _1737, _1746
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _1747
| voxel.c:566: 		palette_vectors[i].c = v.c;
	move.w %d2,%d0	| _1747, _2000
	move.l %d0,(%a3)	| _2000, MEM <vector(2) short int> [(union  *)_2458]
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	|,
	muls.w %d4,%d0	| _1737, _1750
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1751
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| _1751, MEM <fixp> [(union  *)_2458 + 4B]
| voxel.c:558: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.631
	cmp.l %a5,%a3	| _2446, ivtmp.631
	jne .L158		|
	move.l 94(%sp),%a5	| %sfp,
	lea (32000,%a5),%a5	|,
	move.l %a5,78(%sp)	|, %sfp
	move.l 94(%sp),%a0	| %sfp, ivtmp.621
	move.l %a5,%d0	|, _2462
.L159:
| voxel.c:165: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.398_1637]
	cmp.l %d0,%a0	| _2462, ivtmp.621
	jne .L159		|
| voxel.c:470: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table,%d0	| pdata_table[0][0][0], movep_data
	lea _view_min,%a2	|, ivtmp.613
	lea _view_max,%a3	|, ivtmp.616
	clr.w %d3	| ivtmp.614
.L164:
| voxel.c:760: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a2)+,%d1	| MEM[(short int *)_2552], _5
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d2	| ivtmp.614,
	asr.w #4,%d2	|,
	move.w %d2,%a1	| _331, _332
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| _332, tmp1355
	add.l %a1,%a1	| tmp1355, _333
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
	add.l 94(%sp),%a0	| %sfp, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L160		|
	mulu.w #160,%d1	|, _2327
	add.l %a0,%d1	| pBlock, _2334
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
	cmp.l %a0,%d1	| pBlock, _2334
	jne .L161		|
.L160:
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a3)+,%a0	| MEM[(short int *)_2489], _9
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
	move.l 94(%sp),%a0	| %sfp, pBlock
	add.l %d2,%a0	| _293, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L162		|
	mulu.w #160,%d1	|, _2310
	add.l %a0,%d1	| pBlock, _2311
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
	cmp.l %a0,%d1	| pBlock, _2311
	jne .L163		|
.L162:
| voxel.c:759: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.614
	cmp.l #_view_min+80,%a2	|, ivtmp.613
	jne .L164		|
| voxel.c:764: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:765: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:766: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:769: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	move.l 98(%sp),%d0	| %sfp,
	add.l #19200,%d0	|,
	move.l %d0,78(%sp)	|, %sfp
	move.w 138(%sp),%a0	| MEM[(struct  *)_1722].width,
	move.l %a0,86(%sp)	|, %sfp
	add.l #320,%d7	|, cockpit$pixels
	move.l %d7,74(%sp)	| cockpit$pixels, %sfp
	addq.l #4,%sp	|,
.L165:
	move.l 74(%sp),66(%sp)	| %sfp, %sfp
	move.l 70(%sp),%a4	| %sfp, ivtmp.580
	lea (-320,%a4),%a4	|, ivtmp.580
.L166:
| voxel.c:145: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a4),%d0	| MEM[(const unsigned char *)_2190],
	move.w %d0,%a2	|, px
	move.b 1(%a4),%d1	| MEM[(const unsigned char *)_2190 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a4),%d2	| MEM[(const unsigned char *)_2190 + 2B],
	move.w %d2,%a0	|, px
	move.b 3(%a4),%d7	| MEM[(const unsigned char *)_2190 + 3B], px
	move.b 4(%a4),%d6	| MEM[(const unsigned char *)_2190 + 4B], px
	move.b 5(%a4),%d5	| MEM[(const unsigned char *)_2190 + 5B], px
	move.b 6(%a4),%d4	| MEM[(const unsigned char *)_2190 + 6B], px
	move.b 7(%a4),%d3	| MEM[(const unsigned char *)_2190 + 7B], px
	move.b 8(%a4),%d2	| MEM[(const unsigned char *)_2190 + 8B], px
	move.b 9(%a4),91(%sp)	| MEM[(const unsigned char *)_2190 + 9B], %sfp
	move.b 10(%a4),87(%sp)	| MEM[(const unsigned char *)_2190 + 10B], %sfp
	move.b 11(%a4),55(%sp)	| MEM[(const unsigned char *)_2190 + 11B], %sfp
	move.b 12(%a4),65(%sp)	| MEM[(const unsigned char *)_2190 + 12B], %sfp
	move.b 13(%a4),63(%sp)	| MEM[(const unsigned char *)_2190 + 13B], %sfp
	move.b 14(%a4),61(%sp)	| MEM[(const unsigned char *)_2190 + 14B], %sfp
	move.b 15(%a4),59(%sp)	| MEM[(const unsigned char *)_2190 + 15B], %sfp
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
	move.w %d1,%a5	|, _2486
	add.w %d1,%a5	| _2486, _2340
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2340,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2337
	add.w %d0,%a3	| _2337, _2301
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2301,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2298
	add.w %d0,%a5	| _2298, _2262
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2262,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2259
	add.w %d0,%a3	| _2259, _2223
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2223,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2220
	add.w %d0,%a5	| _2220, _2184
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2184,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2181
	add.w %d0,%a3	| _2181, _2145
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2145,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2142
	add.w %d0,%a5	| _2142, _2106
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2106,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2103
	add.w %d0,%a3	| _2103, _2067
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 91(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _2067,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2064
	add.w %d0,%a5	| _2064, _2028
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 87(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2028,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _2025
	add.w %d0,%a3	| _2025, _1989
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _1989,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1986
	add.w %d0,%a5	| _1986, _1950
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 65(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1950,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1947
	add.w %d0,%a3	| _1947, _1911
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 63(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d1	| _1911,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1908
	add.w %d0,%a5	| _1908, _1872
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 61(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1872,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1869
	add.w %d0,%a3	| _1869, _570
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1996
| voxel.c:149: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2407
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a6	|, _2490
| voxel.c:149: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2488
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2490,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2499
	add.w %d0,%a6	| _2499, _2333
| voxel.c:149: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2335
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2333,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2330
	add.w %d1,%a6	| _2330, _2294
| voxel.c:149: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2296
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2294,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2291
	add.w %d0,%a6	| _2291, _2255
| voxel.c:149: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2257
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2255,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2252
	add.w %d1,%a6	| _2252, _2216
| voxel.c:149: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2218
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2216,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2213
	add.w %d0,%a6	| _2213, _2177
| voxel.c:149: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2179
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2177,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2174
	add.w %d1,%a6	| _2174, _2138
| voxel.c:149: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2140
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2138,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2135
	add.w %d0,%a6	| _2135, _2099
| voxel.c:149: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2101
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2099,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2096
	add.w %d1,%a6	| _2096, _2060
| voxel.c:149: 				px >>= 1;
	move.b 91(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2062
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2060,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2057
	add.w %d0,%a6	| _2057, _2021
| voxel.c:149: 				px >>= 1;
	move.b 87(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2023
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2021,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2018
	add.w %d1,%a6	| _2018, _1982
| voxel.c:149: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1984
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1982,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1979
	add.w %d0,%a6	| _1979, _1943
| voxel.c:149: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1945
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1943,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1940
	add.w %d1,%a6	| _1940, _1904
| voxel.c:149: 				px >>= 1;
	move.b 63(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1906
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1904,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1901
	add.w %d0,%a6	| _1901, _1865
| voxel.c:149: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1867
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1865,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1862
	add.w %d1,%a5	| _1862, _579
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d1	| _1996,
	move.w %a5,%d1	| _579,
	move.l %d1,%a3	|, _1996
	move.b 59(%sp),%d0	| %sfp,
	moveq #1,%d1	|,
	and.l %d1,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a6	|, _1990
| voxel.c:149: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.b #1,%d0	|,
	move.b %d0,%d1	|,
	and.w #255,%d1	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a6,%d0	| _1990,
	move.w %d1,%d0	| _581,
| voxel.c:156: 			*out++ = plane0;
	move.l %a3,%d1	| _1996,
	or.l %d0,%d1	|,
	move.l 66(%sp),%a5	| %sfp,
	move.l %d1,(%a5)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2233]
| voxel.c:151: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2426
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a6	|, _2509
| voxel.c:151: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2507
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2509,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2518, _2326
	add.w %d1,%a5	| _2518, _2326
| voxel.c:151: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2328
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2326,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2323, _2287
	add.w %d0,%a6	| _2323, _2287
| voxel.c:151: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2289
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2287,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2284, _2248
	add.w %d1,%a5	| _2284, _2248
| voxel.c:151: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2250
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2248,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2245, _2209
	add.w %d0,%a6	| _2245, _2209
| voxel.c:151: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2211
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2209,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2206, _2170
	add.w %d1,%a5	| _2206, _2170
| voxel.c:151: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2172
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2170,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2167, _2131
	add.w %d0,%a6	| _2167, _2131
| voxel.c:151: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2133
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2131,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2128, _2092
	add.w %d1,%a5	| _2128, _2092
| voxel.c:151: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2094
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2092,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2089, _2053
	add.w %d0,%a6	| _2089, _2053
| voxel.c:151: 				px >>= 1;
	move.b 91(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2055
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _2053,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _2050, _2014
	add.w %d1,%a5	| _2050, _2014
| voxel.c:151: 				px >>= 1;
	move.b 87(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2016
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2014,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _2011, _1975
	add.w %d0,%a6	| _2011, _1975
| voxel.c:151: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1977
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _1975,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _1972, _1936
	add.w %d1,%a5	| _1972, _1936
| voxel.c:151: 				px >>= 1;
	move.b 65(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1938
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1936,
	or.w %d1,%d0	|,
	move.w %d0,%a6	| _1933, _1897
	add.w %d0,%a6	| _1933, _1897
| voxel.c:151: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1899
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a6,%d0	| _1897,
	or.w %d0,%d1	|,
	move.w %d1,%a5	| _1894, _1858
	add.w %d1,%a5	| _1894, _1858
| voxel.c:151: 				px >>= 1;
	move.b 61(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1860
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1858,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1855
	add.w %d0,%a3	| _1855, _587
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1997
| voxel.c:153: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px_2439
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, _2536
| voxel.c:153: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px_2520
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| _2536,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, _426
	add.w %d0,%a1	| _426, _2319
| voxel.c:153: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px_2321
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| _2319,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, _2316
	add.w %d1,%a0	| _2316, _2280
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d7	|, px_2282
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, _2278
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| _2280,
	or.w %d1,%d7	|, _2277
	add.w %d7,%d7	| _2277, _2241
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d6	|, px_2243
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, _2239
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| _2241, _2238
	add.w %d6,%d6	| _2238, _2202
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d5	|, px_2204
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, _2200
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| _2202, _2199
	add.w %d5,%d5	| _2199, _2163
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d4	|, px_2165
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, _2161
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| _2163, _2160
	add.w %d4,%d4	| _2160, _2124
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d3	|, px_2126
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, _2122
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| _2124, _2121
	add.w %d3,%d3	| _2121, _2085
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d2	|, px_2087
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, _2083
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| _2085, _2082
	add.w %d2,%d2	| _2082, _2046
| voxel.c:153: 				px >>= 1;
	move.b 91(%sp),%d1	| %sfp, px_2048
	lsr.b #3,%d1	|, px_2048
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, _2044
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| _2046, _2043
	add.w %d1,%d1	| _2043, _2007
| voxel.c:153: 				px >>= 1;
	move.b 87(%sp),%d0	| %sfp, px_2009
	lsr.b #3,%d0	|, px_2009
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _2005
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _2005, _2004
	add.w %d1,%d1	| _2004, _1968
| voxel.c:153: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px_1970
	lsr.b #3,%d0	|, px_1970
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1966
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1966, _1965
	add.w %d1,%d1	| _1965, _1929
| voxel.c:153: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp, px_1931
	lsr.b #3,%d0	|, px_1931
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1927
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1927, _1926
	add.w %d1,%d1	| _1926, _1890
| voxel.c:153: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp, px_1892
	lsr.b #3,%d0	|, px_1892
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1888
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1888, _1887
	add.w %d1,%d1	| _1887, _1851
| voxel.c:153: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp, px_1853
	lsr.b #3,%d0	|, px_1853
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1849
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| _1851, _1848
	add.w %d0,%d0	| _1848, _595
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d2	| _1997,
	move.w %d0,%d2	| _595,
| voxel.c:151: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp, px_584
	lsr.b #2,%d1	|, px_584
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	moveq #1,%d3	|,
	and.l %d3,%d1	|, _589
	swap %d1	| _1995
	clr.w %d1	| _1995
| voxel.c:153: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px_592
	lsr.b #3,%d0	|, px_592
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.b #1,%d0	|, _596
	and.w #255,%d0	|, _597
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d1	| _597, _1995
| voxel.c:156: 			*out++ = plane0;
	or.l %d1,%d2	| _1995,
	move.l 66(%sp),%a0	| %sfp,
	move.l %d2,4(%a0)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_2233 + 4B]
| voxel.c:142: 		for (int chunk=0; chunk<20; chunk++) {
	addq.l #8,66(%sp)	|, %sfp
	lea (16,%a4),%a4	|, ivtmp.580
	cmp.l 70(%sp),%a4	| %sfp, ivtmp.580
	jne .L166		|
	add.l #160,74(%sp)	|, %sfp
| voxel.c:141: 	for (int y=0; y<height; y++) {
	add.l 82(%sp),%a4	| %sfp, ivtmp.580
	move.l %a4,70(%sp)	| ivtmp.580, %sfp
	move.l 74(%sp),%a1	| %sfp,
	cmp.l 78(%sp),%a1	| %sfp,
	jne .L165		|
| voxel.c:773: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,120(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:778: 	int frames = 0;
	clr.l 100(%sp)	| %sfp
| voxel.c:776: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,98(%sp)	|, %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 82(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 110(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 106(%sp)	| %sfp
| voxel.c:771: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d6	|, fog_enabled
	lea (1812,%sp),%a5	|,,
	move.l %a5,46(%sp)	|, %sfp
	move.l %a5,%d3	|,
	subq.l #1,%d3	|,
	move.l %d3,78(%sp)	|, %sfp
| voxel.c:484: 	for (; samples > 0; --samples) {
	lea (180,%sp),%a5	|,,
	lea (32,%a5),%a5	|,
	move.l %a5,130(%sp)	|, %sfp
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1692
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1692
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2204
	jeq .L263		|
.L374:
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1692
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| _351
	ext.l %d0	| _351
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,128(%sp)	| _351, %sfp
| voxel.c:782: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L361		|
| voxel.c:787: 		frames++;
	addq.l #1,100(%sp)	|, %sfp
| voxel.c:131: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_358
	move.w (%a0),%d0	| *hw_palette.49_358, _359
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a6	|,
	move.l (%a6),%d2	| MEM <unsigned int> [(short int *)&pos], _363
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _25
	move.w %d4,%d3	| _25, pretmp_2363
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a3	|, tmp2147
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
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp1707
	add.l %d1,%d0	| _21, tmp1708
	add.l %d0,%d0	| tmp1708, tmp1709
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a3,%d0.l),%d0	| combined[_19][_21].D.2792.height, combined[_19][_21].D.2792.height
	lsr.b #1,%d0	|, _23
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _431
	lsl.w #7,%d0	|, terrain_height.1_26
	move.w %d4,%d7	| _25,
	sub.w %d0,%d7	| terrain_height.1_26,
	move.w %d7,104(%sp)	|, %sfp
| voxel.c:793: 		if (desired_height >= 0) {
	tst.w 98(%sp)	| %sfp
	jlt .L362		|
.L343:
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 98(%sp),%a0	| %sfp, _28
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,70(%sp)	|, %sfp
	move.w 98(%sp),%d0	| %sfp, _31
	moveq #9,%d1	|,
	asr.w %d1,%d0	|, _31
	move.w %d0,%a1	| _31,
	move.l %a1,-(%sp)	|,
	sub.w 108(%sp),%a0	| %sfp, _28
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
	move.w %d0,%d3	| altitude_delta_244, pretmp_2363
	add.w %d4,%d3	| _25, pretmp_2363
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d3	|, pretmp_2363
	jgt .L173		|
.L378:
| voxel.c:797: 			pos.z += altitude_delta;
	move.w %d3,_pos+4	| pretmp_2363, pos.z
.L170:
| voxel.c:801: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_37
	move.w -602(%a0),118(%sp)	| MEM[(short int *)__aline.3_37 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _363
	move.l %d2,86(%sp)	| _363, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,124(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_37 + 4294966696B],
	move.l %a0,114(%sp)	|, %sfp
	moveq #-100,%d0	|, _39
	add.l %a0,%d0	|, _39
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _39
	move.l %d0,74(%sp)	| _39, %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 118(%sp),%a0	| %sfp, _41
	move.l %a0,%d0	| _41, _42
	add.l #-160,%d0	|, _42
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _43
	move.b %d6,%d1	| fog_enabled,
	eor.b #1,%d1	|,
	move.b %d1,129(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jne .L174		|
.L375:
	move.l #_fog_table+96,90(%sp)	|, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+8,62(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+6,64(%sp)	| pos.dirx, %sfp
	move.l %d0,%d2	| _43,
	add.l %d0,%d2	| _43,
	move.l %d2,66(%sp)	|, %sfp
	move.l %d2,%d1	|, tmp1741
	add.l %d2,%d1	|, tmp1741
	add.l %d1,%d0	| tmp1741, tmp1742
	lsl.l #5,%d0	|, tmp1743
	neg.l %d0	| tmp1743
	move.l %d0,56(%sp)	| tmp1743, %sfp
	moveq #0,%d7	| ivtmp.568
| voxel.c:809: 		unsigned short ci_idx = 0;
	sub.l %a5,%a5	| ci_idx
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %a5,%d4	| ci_idx, ci_idx
.L237:
| voxel.c:834: 				.pixel = &chunks[ci_idx],
	moveq #0,%d0	| _881
	move.w %d4,%d0	| ci_idx, _881
	add.l %d0,%d0	| _881, _848
	lea (212,%sp),%a2	|,, state$pixel
	add.l %d0,%a2	| _848, state$pixel
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	move.w %d7,%d0	|, _72
	lsr.w #3,%d0	|, _72
	and.l #65535,%d0	|,
	move.l %d0,%a4	|, _73
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	add.l %d0,%a4	| _73, tmp1750
	lea _view_max,%a0	|,
	move.w (%a0,%a4.l),%d5	| view_max[_73], _74
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 60(%sp),-(%sp)	| %sfp,
	move.l 78(%sp),%a1	| %sfp,
	jsr (%a1)		|
	addq.l #8,%sp	|,
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 74(%sp),%d0	| %sfp, y_offset_280
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	move.w %d5,%d2	| _74, y
	sub.w %d0,%d2	| y_offset_280, y
| voxel.c:838: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a5	|,
	move.w (%a5,%a4.l),60(%sp)	| view_min[_73], %sfp
| voxel.c:838: 			short y_min = view_min[x >> 3] - y_offset;
	move.w 60(%sp),%a4	| %sfp, y_min
	sub.w %d0,%a4	| y_offset_280, y_min
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.l %d7,%a6	| ivtmp.568, _52
	lea (-160,%a6),%a6	|, _52
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	move.l %a6,-(%sp)	| _52,
	move.w 66(%sp),%a0	| %sfp,
	move.l %a0,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	asr.l #7,%d0	|, _62
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	move.w 64(%sp),%d1	| %sfp, _64
	sub.w %d0,%d1	| _62, _64
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d1,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a5	|, _366
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.l %a6,-(%sp)	| _52,
	move.w 68(%sp),%a0	| %sfp,
	move.l %a0,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	asr.l #7,%d0	|, _56
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	add.w 62(%sp),%d0	| %sfp, _58
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %a5,%d1	| _366, _368
	or.w %d0,%d1	| _58, _368
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d1	|, _368
	move.l %d1,%a1	| _368, _369
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 86(%sp),%d0	| %sfp, _1352
	add.l %d1,%d0	| _369, _1352
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1328
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1354
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1331
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1324
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1325
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d1,%d0	| _369, _1321
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _379
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	and.l #65535,%d3	|, _66
	move.w #256,%a0	|, _67
	sub.l %d3,%a0	| _66, _67
	add.l %a0,%a0	| _67, _68
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%a0	|, y_table_shifted
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-12,%a5	|, z
	move.w %d4,%a6	| ci_idx, ci_idx
	move.w %a5,%d3	| z, z
.L181:
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
	and.l #524286,%d1	|, index_987
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d1.l),%d1	| *_988, sample
| voxel.c:334: 		return sample;
	move.w %d1,%d4	| sample, tmp1787
	lsr.w #8,%d4	|, tmp1787
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, _991
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d1.l),%d1	| *_993, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d1,%d2	| sample_y, y
	jge .L363		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L180:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _369, _1011
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L181		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.w %a6,%d4	| ci_idx, ci_idx
.L182:
	move.l %a1,%d1	| _369, _376
	add.l %a1,%d1	| _369, _376
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _377
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.l %d1,%a1	| _377, _377
	move.w %a5,%d1	| z, z
.L187:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index_927
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_928, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1795
	lsr.w #8,%d4	|, tmp1795
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _931
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_933, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d2	| sample_y, y
	jge .L364		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L186:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _377, _951
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L187		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.w %a6,%d4	| ci_idx, ci_idx
.L188:
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.w %a5,%d1	| z, z
.L194:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index_867
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_868, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1802
	lsr.w #8,%d4	|, tmp1802
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _871
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_873, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d2	| sample_y, y
	jge .L365		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L193:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _377, _891
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L194		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a1,%d1	| _377, _377
	move.w %a6,%d4	| ci_idx, ci_idx
.L195:
	add.l %a1,%d1	| _377, _374
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _375
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.l %d1,%a1	| _375, _375
	move.w %a5,%d1	| z, z
.L201:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index_807
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_808, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1810
	lsr.w #8,%d4	|, tmp1810
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _811
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_813, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d2,%d3	| y, sample_y
	jle .L366		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L200:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _375, _831
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L201		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.w %a6,%d4	| ci_idx, ci_idx
.L202:
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
	move.l 90(%sp),%a5	| %sfp, fog_table_shifted
	move.w #-8,%a6	|, z
	move.w %a6,%d1	| z, z
	move.w %d4,54(%sp)	| ci_idx, %sfp
.L210:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index_747
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_748, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1817
	lsr.w #8,%d4	|, tmp1817
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _751
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_753, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d2	| sample_y, y
	jge .L367		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L208:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L209		|
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a5	|, fog_table_shifted
.L209:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _375, _771
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L210		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a1,%d1	| _375, _375
	move.w 54(%sp),%d4	| %sfp, ci_idx
.L211:
	add.l %a1,%d1	| _375, _372
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _373
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:387: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L213		|
| voxel.c:387: 	if (!fog) fog_table_shifted += z_end - z_begin;
	lea (16,%a5),%a5	|, fog_table_shifted
.L213:
	move.w #-8,%a6	|, z
	move.l %d1,%a1	| _373, _373
	move.w %a6,%d1	| z, z
	move.w %d4,54(%sp)	| ci_idx, %sfp
.L220:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index_686
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_687, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1825
	lsr.w #8,%d4	|, tmp1825
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _690
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_692, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d2,%d3	| y, sample_y
	jle .L368		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L218:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L219		|
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a5	|, fog_table_shifted
.L219:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _373, _710
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L220		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.l %a1,%d1	| _373, _373
	move.w 54(%sp),%d4	| %sfp, ci_idx
.L221:
	cmp.w %a4,%d2	| y_min, y
	jlt .L222		|
| voxel.c:387: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L223		|
| voxel.c:387: 	if (!fog) fog_table_shifted += z_end - z_begin;
	lea (16,%a5),%a5	|, fog_table_shifted
.L223:
	move.w #-8,%a6	|, z
	move.l %d1,%a1	| _373, _373
	move.w %a6,%d1	| z, z
	move.w %d4,54(%sp)	| ci_idx, %sfp
.L230:
| voxel.c:319: 	asm (
	move.l %d0,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d3	|, index_625
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d3.l),%d3	| *_626, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d4	| sample, tmp1832
	lsr.w #8,%d4	|, tmp1832
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _629
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_631, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d2	| sample_y, y
	jge .L369		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L228:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L229		|
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a5	|, fog_table_shifted
.L229:
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d0	| _373, _649
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d1	| z
	jlt .L230		|
	move.w 54(%sp),%d4	| %sfp, ci_idx
.L222:
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	cmp.l 46(%sp),%a2	| %sfp, state$pixel
	jcc .L235		|
	move.l 78(%sp),%d0	| %sfp, _2061
	sub.l %a2,%d0	| ivtmp.474, _2061
	moveq #-8,%d1	|,
	and.l %d1,%d0	|, _2068
	lea 8(%a2,%d0.l),%a0	|, _2075
.L234:
| voxel.c:858: 				*state.pixel = 15 << 4;
	move.w #240,(%a2)	|, MEM[(short unsigned int *)_2040]
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	addq.l #8,%a2	|, ivtmp.474
	cmp.l %a2,%a0	| ivtmp.474, _2075
	jne .L234		|
.L235:
	addq.w #1,%d4	|, _2001
	and.w #3,%d4	|, ci_idx
| voxel.c:862: 			if (ci_idx == 0) {
	jeq .L370		|
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	move.l 66(%sp),%d1	| %sfp,
	add.l %d1,56(%sp)	|, %sfp
	addq.l #2,%d7	|, ivtmp.568
	cmp.l #320,%d7	|, ivtmp.568
	jeq .L236		|
.L371:
| voxel.c:828: 			short height = fixp_int(pos.z);
	move.w _pos+4,%d3	| pos.z, pretmp_2363
	jra .L237		|
.L358:
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
.L360:
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
.L370:
| voxel.c:864: 				unsigned long t0 = *_hz_200;
	move.w #1210,%a2	|, tmp1845
	move.l (%a2),%d2	| MEM[(volatile long unsigned int *)1210B], t0
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	moveq #0,%d3	|,
	not.b %d3	|
	and.l %d5,%d3	| _74,
	move.l %d3,-(%sp)	|,
	pea -160.w		|
| voxel.c:865: 				short column_height = view_max[x >> 3] + 1 - view_min[x >> 3];
	move.w %d5,%d1	| _74, _782
	addq.w #1,%d1	|, _782
	sub.w 68(%sp),%d1	| %sfp, _92
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %d1,%d0	| _92, tmp1850
	moveq #15,%d3	|,
	lsr.w %d3,%d0	|, tmp1850
	add.w %d1,%d0	| _92, tmp1851
	asr.w #1,%d0	|, _96
	move.w %d0,-(%sp)	| _96,
	clr.w -(%sp)	|
	pea 224(%sp)		|
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d7,%d0	|, _382
	asr.w #4,%d0	|, _382
	ext.l %d0	| _383
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _383, tmp1857
	add.l %d0,%d0	| tmp1857, _384
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d5	|, _381
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d5	| _384, _385
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%d5	| _385, _387
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d7,%d0	| ivtmp.568, _389
	lsr.l #3,%d0	|, _389
	moveq #1,%d1	|,
	and.l %d0,%d1	| _389,
	move.l %d1,%a0	|, _390
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _387, _391
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.l 110(%sp),%a1	| %sfp,
	pea (%a1,%a0.l)		|
	jsr _c2p_w4_2x2_vertical		|
| voxel.c:869: 				unsigned long t1 = *_hz_200;
	move.l (%a2),%d0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:870: 				t_c2p += t1-t0;
	sub.l %d2,%d0	| t0, _99
| voxel.c:870: 				t_c2p += t1-t0;
	add.l %d0,102(%sp)	| _99, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+8,82(%sp)	| pos.diry, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+6,84(%sp)	| pos.dirx, %sfp
	lea (20,%sp),%sp	|,
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	move.l 66(%sp),%d1	| %sfp,
	add.l %d1,56(%sp)	|, %sfp
	addq.l #2,%d7	|, ivtmp.568
	cmp.l #320,%d7	|, ivtmp.568
	jne .L371		|
.L236:
| voxel.c:875: 		unsigned long t_render_1 = *_hz_200;
	move.l 1210.w,%a6	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	move.l %a6,%d0	| t_render_1, _100
	sub.l 124(%sp),%d0	| %sfp, _100
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	add.l %d0,106(%sp)	| _100, %sfp
| voxel.c:879: 		draw_map((unsigned char *)screen, &pos, frames & 1);
	moveq #1,%d4	|, _101
	and.l 100(%sp),%d4	| %sfp, _101
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 62(%sp),%d0	| %sfp, _1075
	lsl.w #8,%d0	|, _1075
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 64(%sp),%d1	| %sfp, tmp1878
	add.w %d1,%d1	|, tmp1878
	add.w 64(%sp),%d1	| %sfp, _1076
	lsl.w #6,%d1	|, tmp1880
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	add.w %d1,%d0	| tmp1880, _1077
	lea _pos,%a0	|,
	add.w (%a0),%d0	| pos.x, _1078
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d0,%d2	|, _1080
	swap %d2	| _1080
	clr.w %d2	| _1080
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 62(%sp),%d0	| %sfp, tmp1888
	add.w %d0,%d0	|, tmp1888
	add.w 62(%sp),%d0	| %sfp, _1067
	lsl.w #6,%d0	|, tmp1890
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	add.w _pos+2,%d0	| pos.y, _1068
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 64(%sp),%d1	| %sfp, _1071
	lsl.w #8,%d1	|, _1071
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	sub.w %d1,%d0	| _1071, _1072
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d2	| _1072, _1082
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d2,%d3	| _1082, sample_uv
	and.l #-65538,%d3	|, sample_uv
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 64(%sp),%d5	| %sfp, tmp1897
	lsl.w #4,%d5	|, tmp1897
	move.w %d5,%d1	| tmp1897, _1085
	neg.w %d1	| _1085
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 62(%sp),%d0	| %sfp, tmp1899
	lsl.w #4,%d0	|, tmp1899
	neg.w %d0	| _1084
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #65535,%d0	|, _1088
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d1	| _1087
	clr.w %d1	| _1087
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d1,%d7	| _1087, _1089
	or.l %d0,%d7	| _1088, _1089
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| _1091
	clr.w %d0	| _1091
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d0,%d2	| _1091, _1093
	or.w %d5,%d2	| tmp1897, _1093
	move.l 94(%sp),%a2	| %sfp, ivtmp.466
	lea (384,%a2),%a2	|, ivtmp.466
	moveq #0,%d5	| ivtmp.460
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	lea _c2p_x2,%a4	|, tmp2157
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,%d0	| _101,
	eor.w #1,%d0	|,
	move.l %d0,%a5	|, _518
	move.l %a6,56(%sp)	| t_render_1, %sfp
	move.l %d7,%a6	| _1089, _1089
	move.l %d4,%d7	| _101, _101
	move.l 130(%sp),%d4	| %sfp, tmp2172
.L240:
| voxel.c:507: 		if ((odd ^ y) & 1) {
	move.l %d5,%d0	| ivtmp.460, _1099
	eor.l %d7,%d0	| _101, _1099
| voxel.c:507: 		if ((odd ^ y) & 1) {
	btst #0,%d0	|, _1099
	jeq .L271		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d3	| _1089, _1102
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.460
	lea (320,%a2),%a2	|, ivtmp.466
	moveq #16,%d1	|,
	cmp.l %d5,%d1	| ivtmp.460,
	jne .L240		|
.L377:
| voxel.c:880: 		unsigned long t_render_2 = *_hz_200;
	move.l 56(%sp),%a6	| %sfp, t_render_1
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_2
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	sub.l %a6,%d0	| t_render_1, _102
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	add.l %d0,110(%sp)	| _102, %sfp
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 86(%sp),%d1	| %sfp, _277
	add.l #65408,%d1	|, _277
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _270
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _1118
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1629
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _2370
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2371
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d1	|, _2687
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2579
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d0	| pos.z, pos.z
	lsr.w #7,%d0	|, _394
| voxel.c:435: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, _1031
	sub.w %d0,%a0	| _394, _1031
| voxel.c:437: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| _1031, _1031
	add.l %a0,%a0	| _1031, _1034
	move.l %a0,%a1	| _1034, _2581
	add.l #_y_table+4096,%a1	|, _2581
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	moveq #127,%d5	|, delta_uv
	not.w %d5	| delta_uv
| voxel.c:442: 	short min_y = 0x7fff;
	move.w #32767,%d2	|, min_y
| voxel.c:440: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d4	|, index_mask
| voxel.c:443: 	unsigned short z = 0;
	moveq #4,%d3	|, z
.L243:
| voxel.c:452: 		z++;
	addq.w #1,%d3	|, z
	move.l %d1,%d0	| _2579, uv
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d1	| delta_uv, _2580
	add.l %d0,%d1	| uv, _2580
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _2579
| voxel.c:319: 	asm (
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d4,%d0	| index_mask, index_2577
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a3,%d0.l),%d0	| *_2576, sample
| voxel.c:447: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, _2572
| voxel.c:448: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_2571, *_2571
	lea (1024,%a1),%a1	|, _2581
	cmp.w %d2,%d0	| min_y, *_2571
	jge .L241		|
	move.w %d0,%d2	| *_2571, min_y
.L241:
| voxel.c:456: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d3,%d0	| z, _2568
	and.w #15,%d0	|, _2568
	jne .L242		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _2567
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_uv
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d4,%d4	| index_mask, _2565
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d4	|, index_mask
.L242:
| voxel.c:444: 	while(z < STEPS_MAX) {
	cmp.w #64,%d3	|, z
	jne .L243		|
| voxel.c:888: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d2	|, min_y
	jlt .L272		|
	move.w #128,%a0	|, _2601
| voxel.c:890: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d2	|, min_y
	jge .L244		|
| voxel.c:893: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d2	|, _106
	add.w %d2,%d2	| _106, tmp1950
	add.w %d2,%d2	| tmp1950, sunlight_261
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d2,%a0	| sunlight_261, _2601
.L244:
	move.l %a0,-(%sp)	| _2601,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d2	| pos.speed, _109
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d3	| pos.dirx, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _110,
	muls.w %d2,%d0	| _109, _400
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _401
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| _401, pos.x
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _116
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _116,
	muls.w %d2,%d0	| _109, _396
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _397
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _121
	add.w %d0,%a0	| _397, _121
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, _124
	sub.l 118(%sp),%d0	| %sfp, _124
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, _125
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d2,%d0	| _109, _127
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _127, _129
	asr.w #3,%d2	|, _129
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _127, _131
	asr.w #4,%d4	|, _131
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d2	| _131, _133
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, _134
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _127
	jle .L245		|
.L379:
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d2,%d0	| _134, _136
.L246:
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _121, pos.y
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d0,_pos+10	| _136, pos.speed
| voxel.c:905: 		fixp rot = 160 - mouse_x;
	move.w #160,%d2	|, rot
	sub.w 118(%sp),%d2	| %sfp, rot
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d2,%d0	| rot,
	muls.w %d1,%d0	| _116, _145
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d0	|, _146
| voxel.c:906: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| _110, _149
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d2	| _149, _152
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d2	|, _153
| voxel.c:907: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d2,%d1	| _153, _156
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _149,
	muls.w %d0,%d2	| _149, _420
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _420
	move.l %d2,%a0	| _420, _421
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d2	| _156,
	muls.w %d1,%d2	| _156, _417
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _418
| voxel.c:910: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d2,%a0	| _418, _159
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %a0,%a0	| _159, _410
	moveq #-128,%d3	|, _411
	add.l %a0,%d3	| _410, _411
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d3	|, _412
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, _415
	sub.w %d3,%d2	| _412, _415
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d0	| _415, _407
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _408
| voxel.c:911: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| _1958
	clr.w %d0	| _1958
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d1	| _415, _403
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _404
| voxel.c:911: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| _404, _1958
	move.l %d0,_pos+6	| _1958, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:914: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:914: 		if (pressed_keys.up) {
	jpl .L247		|
| voxel.c:915: 			if (desired_height < FIXP(0, 0)) {
	tst.w 98(%sp)	| %sfp
	jlt .L274		|
| voxel.c:918: 			desired_height += FIXP(1, 0);
	move.w 98(%sp),%d0	| %sfp, _2603
.L248:
	add.w #128,%d0	|, _2603
	move.w %d0,98(%sp)	| _2603, %sfp
| voxel.c:919: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L247		|
	move.w #32512,98(%sp)	|, %sfp
.L247:
| voxel.c:923: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:923: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L250		|
| voxel.c:924: 			if (desired_height < FIXP(0, 0)) {
	tst.w 98(%sp)	| %sfp
	jlt .L251		|
| voxel.c:927: 			desired_height -= FIXP(1, 0);
	move.w 98(%sp),104(%sp)	| %sfp, %sfp
.L251:
| voxel.c:932: 		if (key == 0x23) {
	cmp.b #35,128(%sp)	|, %sfp
	jeq .L275		|
| voxel.c:927: 			desired_height -= FIXP(1, 0);
	move.w 104(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,98(%sp)	|, %sfp
| voxel.c:928: 			if (desired_height < FIXP(0, 0)) {
	jmi .L372		|
.L254:
| voxel.c:939: 		} else if (key == 0x20) {
	cmp.b #32,128(%sp)	|, %sfp
	jeq .L373		|
.L252:
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d7	|,
	lsr.w %d7,%d0	|, _2235
	moveq #13,%d1	|,
	lsl.w %d1,%d0	|, _1648
| voxel.c:182: 	data &= mask;
	move.l 94(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2598
	and.l #-536879105,%d2	|, _2598
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1930
	swap %d1	| _1930
	clr.w %d1	| _1930
	move.w %d0,%d1	| _1648, _1930
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1930, _2598
	move.l %d2,(%a5)	| _2598, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1171
	or.w #8192,%d1	|, data_1171
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1921
	clr.w %d1	| _1921
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1178
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1178, _1921
	move.l %d1,4(%a5)	| _1921, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2157
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2633
	and.l #-536879105,%d2	|, _2633
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1898
	swap %d1	| _1898
	clr.w %d1	| _1898
	move.w %d0,%d1	| _2157, _1898
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1898, _2633
	move.l %d2,640(%a5)	| _2633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1217
	or.w #8192,%d1	|, data_1217
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1883
	clr.w %d1	| _1883
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1224
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1224, _1883
	move.l %d1,644(%a5)	| _1883, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2036
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d7,%d3	|, _2193
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2203
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1270
	and.w #30719,%d0	|, data_1270
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2193, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2045
	not.w %d1	| tmp2045
	lsr.w %d7,%d1	|, _1918
	moveq #13,%d4	|,
	lsl.w %d4,%d1	|, _2230
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1866
	swap %d4	| _1866
	clr.w %d4	| _1866
	move.w %d3,%d4	| _2193, _1866
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _266
	and.l #2013231103,%d3	|, _266
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1866, _360
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1846
	swap %d4	| _1846
	clr.w %d4	| _1846
	move.w %d2,%d4	| _2203, _1846
	or.l %d4,%d3	| _1846, _1131
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _210
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _977
	swap %d4	| _977
	clr.w %d4	| _977
	move.w %d1,%d4	| _2230, _977
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _977, _210
	move.l %d3,320(%a5)	| _210, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2203, data_1316
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1355
	or.w #-22528,%d2	|, data_1355
| voxel.c:192: 	*out++ = data;
	swap %d2	| _2558
	clr.w %d2	| _2558
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2230, data_1362
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1362, _2558
	move.l %d2,324(%a5)	| _2558, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
.L376:
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1692
#APP
| 705 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1692
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:705: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2204
	jne .L374		|
.L263:
	clr.b 128(%sp)	| %sfp
| voxel.c:787: 		frames++;
	addq.l #1,100(%sp)	|, %sfp
| voxel.c:131: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_358
	move.w (%a0),%d0	| *hw_palette.49_358, _359
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a6	|,
	move.l (%a6),%d2	| MEM <unsigned int> [(short int *)&pos], _363
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _25
	move.w %d4,%d3	| _25, pretmp_2363
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a3	|, tmp2147
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
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp1707
	add.l %d1,%d0	| _21, tmp1708
	add.l %d0,%d0	| tmp1708, tmp1709
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a3,%d0.l),%d0	| combined[_19][_21].D.2792.height, combined[_19][_21].D.2792.height
	lsr.b #1,%d0	|, _23
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _431
	lsl.w #7,%d0	|, terrain_height.1_26
	move.w %d4,%d7	| _25,
	sub.w %d0,%d7	| terrain_height.1_26,
	move.w %d7,104(%sp)	|, %sfp
| voxel.c:793: 		if (desired_height >= 0) {
	tst.w 98(%sp)	| %sfp
	jge .L343		|
.L362:
	move.l #___divsi3,70(%sp)	|, %sfp
| voxel.c:801: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.3_37
	move.w -602(%a0),118(%sp)	| MEM[(short int *)__aline.3_37 + 4294966694B], %sfp
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _363
	move.l %d2,86(%sp)	| _363, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,124(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.3_37 + 4294966696B],
	move.l %a0,114(%sp)	|, %sfp
	moveq #-100,%d0	|, _39
	add.l %a0,%d0	|, _39
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _39
	move.l %d0,74(%sp)	| _39, %sfp
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 118(%sp),%a0	| %sfp, _41
	move.l %a0,%d0	| _41, _42
	add.l #-160,%d0	|, _42
| voxel.c:815: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _43
	move.b %d6,%d1	| fog_enabled,
	eor.b #1,%d1	|,
	move.b %d1,129(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jeq .L375		|
.L174:
	move.l #_fog_table+80,90(%sp)	|, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+8,62(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+6,64(%sp)	| pos.dirx, %sfp
	move.l %d0,%d2	| _43,
	add.l %d0,%d2	| _43,
	move.l %d2,66(%sp)	|, %sfp
	move.l %d2,%d1	|, tmp1741
	add.l %d2,%d1	|, tmp1741
	add.l %d1,%d0	| tmp1741, tmp1742
	lsl.l #5,%d0	|, tmp1743
	neg.l %d0	| tmp1743
	move.l %d0,56(%sp)	| tmp1743, %sfp
	moveq #0,%d7	| ivtmp.568
| voxel.c:809: 		unsigned short ci_idx = 0;
	sub.l %a5,%a5	| ci_idx
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %a5,%d4	| ci_idx, ci_idx
	jra .L237		|
.L369:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L270		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L225:
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1832
	move.w %d4,%a6	| tmp1832, chunky
| voxel.c:402: 			if (fog) {
	tst.b %d6	| fog_enabled
	jeq .L227		|
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a5),%d4	| *fog_table_shifted_736, tmp1832
	move.w %d4,%a6	| tmp1832, chunky
.L227:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_640]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L228		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_640]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L227		|
	jra .L228		|
.L368:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L269		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L215:
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1825
	move.w %d4,%a6	| tmp1825, chunky
| voxel.c:402: 			if (fog) {
	tst.b %d6	| fog_enabled
	jeq .L217		|
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a5),%d4	| *fog_table_shifted_619, tmp1825
	move.w %d4,%a6	| tmp1825, chunky
.L217:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_701]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L218		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_701]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L217		|
	jra .L218		|
.L363:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d1	| y_min, sample_y
	jle .L264		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1787
	move.w %d4,%a5	| tmp1787, chunky
.L179:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_1002]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d1	| y, sample_y
	jgt .L180		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_1002]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d1	| y, sample_y
	jle .L179		|
	jra .L180		|
.L367:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L268		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
.L205:
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1817
	move.w %d4,%a6	| tmp1817, chunky
| voxel.c:402: 			if (fog) {
	tst.b %d6	| fog_enabled
	jeq .L207		|
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a5),%d4	| *fog_table_shifted_563, tmp1817
	move.w %d4,%a6	| tmp1817, chunky
.L207:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_762]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L208		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_762]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L207		|
	jra .L208		|
.L366:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L267		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1810
	move.w %d4,%a5	| tmp1810, chunky
.L199:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_822]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L200		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_822]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L199		|
	jra .L200		|
.L365:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L266		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1802
	move.w %d4,%a5	| tmp1802, chunky
.L192:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_882]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L193		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_882]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L192		|
	jra .L193		|
.L364:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %a4,%d3	| y_min, sample_y
	jle .L265		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1795
	move.w %d4,%a5	| tmp1795, chunky
.L185:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_942]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jgt .L186		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_942]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d2	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d2,%d3	| y, sample_y
	jle .L185		|
	jra .L186		|
.L265:
| voxel.c:397: 				sample_y = y_min;
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1795
	move.w %d4,%a5	| tmp1795, chunky
	jra .L185		|
.L266:
| voxel.c:397: 				sample_y = y_min;
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1802
	move.w %d4,%a5	| tmp1802, chunky
	jra .L192		|
.L270:
| voxel.c:397: 				sample_y = y_min;
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
	jra .L225		|
.L267:
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1810
	move.w %d4,%a5	| tmp1810, chunky
	jra .L199		|
.L268:
| voxel.c:397: 				sample_y = y_min;
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
	jra .L205		|
.L264:
	move.w %a4,%d1	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d4	|, tmp1787
	move.w %d4,%a5	| tmp1787, chunky
	jra .L179		|
.L269:
| voxel.c:397: 				sample_y = y_min;
	move.w %a4,%d3	| y_min, sample_y
	moveq #1,%d1	|, z
	jra .L215		|
.L373:
| voxel.c:941: 			fog_enabled = !fog_enabled;
	move.b 129(%sp),%d6	| %sfp, fog_enabled
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d7	|,
	lsr.w %d7,%d0	|, _2235
	moveq #13,%d1	|,
	lsl.w %d1,%d0	|, _1648
| voxel.c:182: 	data &= mask;
	move.l 94(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2598
	and.l #-536879105,%d2	|, _2598
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1930
	swap %d1	| _1930
	clr.w %d1	| _1930
	move.w %d0,%d1	| _1648, _1930
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1930, _2598
	move.l %d2,(%a5)	| _2598, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1171
	or.w #8192,%d1	|, data_1171
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1921
	clr.w %d1	| _1921
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1178
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1178, _1921
	move.l %d1,4(%a5)	| _1921, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2157
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2633
	and.l #-536879105,%d2	|, _2633
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1898
	swap %d1	| _1898
	clr.w %d1	| _1898
	move.w %d0,%d1	| _2157, _1898
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1898, _2633
	move.l %d2,640(%a5)	| _2633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1217
	or.w #8192,%d1	|, data_1217
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1883
	clr.w %d1	| _1883
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1224
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1224, _1883
	move.l %d1,644(%a5)	| _1883, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2036
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d7,%d3	|, _2193
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2203
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1270
	and.w #30719,%d0	|, data_1270
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2193, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2045
	not.w %d1	| tmp2045
	lsr.w %d7,%d1	|, _1918
	moveq #13,%d4	|,
	lsl.w %d4,%d1	|, _2230
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1866
	swap %d4	| _1866
	clr.w %d4	| _1866
	move.w %d3,%d4	| _2193, _1866
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _266
	and.l #2013231103,%d3	|, _266
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1866, _360
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1846
	swap %d4	| _1846
	clr.w %d4	| _1846
	move.w %d2,%d4	| _2203, _1846
	or.l %d4,%d3	| _1846, _1131
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _210
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _977
	swap %d4	| _977
	clr.w %d4	| _977
	move.w %d1,%d4	| _2230, _977
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _977, _210
	move.l %d3,320(%a5)	| _210, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2203, data_1316
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1355
	or.w #-22528,%d2	|, data_1355
| voxel.c:192: 	*out++ = data;
	swap %d2	| _2558
	clr.w %d2	| _2558
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2230, data_1362
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1362, _2558
	move.l %d2,324(%a5)	| _2558, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L376		|
.L372:
| voxel.c:928: 			if (desired_height < FIXP(0, 0)) {
	clr.w 98(%sp)	| %sfp
| voxel.c:939: 		} else if (key == 0x20) {
	cmp.b #32,128(%sp)	|, %sfp
	jne .L252		|
	jra .L373		|
.L271:
	move.l %d3,%d1	| sample_uv, sample_uv
	lea (180,%sp),%a0	|,, out
.L238:
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
	and.l #524286,%d0	|, index_1108
| voxel.c:486: 		*out++ = sample.color;
	move.b (%a3,%d0.l),(%a0)+	| _1109->D.2792.color, MEM[(unsigned char *)out_1112 + 4294967295B]
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _1093, _1113
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:484: 	for (; samples > 0; --samples) {
	cmp.l %a0,%d4	| out, tmp2172
	jne .L238		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a6,%d3	| _1089, _1119
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	move.l %d7,-(%sp)	| _101,
	pea 64.w		|
	pea 188(%sp)		|
	pea -320(%a2)		|
	jsr (%a4)		| tmp2157
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %a5,-(%sp)	| _518,
	pea 64.w		|
	pea 204(%sp)		|
	pea -160(%a2)		|
	jsr (%a4)		| tmp2157
	lea (32,%sp),%sp	|,
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.460
	lea (320,%a2),%a2	|, ivtmp.466
	moveq #16,%d1	|,
	cmp.l %d5,%d1	| ivtmp.460,
	jne .L240		|
	jra .L377		|
.L171:
| voxel.c:795: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #256,%d0	|, altitude_delta_244
	jle .L172		|
	move.w #256,%d0	|, altitude_delta_244
| voxel.c:797: 			pos.z += altitude_delta;
	move.w %d0,%d3	| altitude_delta_244, pretmp_2363
	add.w %d4,%d3	| _25, pretmp_2363
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d3	|, pretmp_2363
	jle .L378		|
.L173:
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	move.w #32640,%d3	|, pretmp_2363
	jra .L170		|
.L272:
	sub.l %a0,%a0	| _2601
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2601,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d2	| pos.speed, _109
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d3	| pos.dirx, _110
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d0	| _110,
	muls.w %d2,%d0	| _109, _400
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _401
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d0,(%a0)	| _401, pos.x
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d1	| pos.diry, _116
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	| _116,
	muls.w %d2,%d0	| _109, _396
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _397
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _121
	add.w %d0,%a0	| _397, _121
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d0	|, _124
	sub.l 118(%sp),%d0	| %sfp, _124
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d0	|, _125
| voxel.c:901: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d2,%d0	| _109, _127
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d2	| _127, _129
	asr.w #3,%d2	|, _129
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d0,%d4	| _127, _131
	asr.w #4,%d4	|, _131
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d2	| _131, _133
| voxel.c:902: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d2	|, _134
| voxel.c:903: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d0	| _127
	jgt .L379		|
.L245:
| voxel.c:904: 		else pos.speed += drag;
	add.w %d2,%d0	| _134, _136
	jra .L246		|
.L250:
| voxel.c:932: 		if (key == 0x23) {
	cmp.b #35,128(%sp)	|, %sfp
	jne .L254		|
| voxel.c:934: 			if (desired_height < 0) {
	tst.w 98(%sp)	| %sfp
	jge .L275		|
| voxel.c:935: 				desired_height = player_height;
	move.w 104(%sp),98(%sp)	| %sfp, %sfp
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d7	|,
	lsr.w %d7,%d0	|, _2235
	moveq #13,%d1	|,
	lsl.w %d1,%d0	|, _1648
| voxel.c:182: 	data &= mask;
	move.l 94(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2598
	and.l #-536879105,%d2	|, _2598
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1930
	swap %d1	| _1930
	clr.w %d1	| _1930
	move.w %d0,%d1	| _1648, _1930
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1930, _2598
	move.l %d2,(%a5)	| _2598, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1171
	or.w #8192,%d1	|, data_1171
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1921
	clr.w %d1	| _1921
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1178
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1178, _1921
	move.l %d1,4(%a5)	| _1921, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2157
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2633
	and.l #-536879105,%d2	|, _2633
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1898
	swap %d1	| _1898
	clr.w %d1	| _1898
	move.w %d0,%d1	| _2157, _1898
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1898, _2633
	move.l %d2,640(%a5)	| _2633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1217
	or.w #8192,%d1	|, data_1217
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1883
	clr.w %d1	| _1883
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1224
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1224, _1883
	move.l %d1,644(%a5)	| _1883, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2036
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d7,%d3	|, _2193
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2203
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1270
	and.w #30719,%d0	|, data_1270
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2193, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2045
	not.w %d1	| tmp2045
	lsr.w %d7,%d1	|, _1918
	moveq #13,%d4	|,
	lsl.w %d4,%d1	|, _2230
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1866
	swap %d4	| _1866
	clr.w %d4	| _1866
	move.w %d3,%d4	| _2193, _1866
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _266
	and.l #2013231103,%d3	|, _266
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1866, _360
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1846
	swap %d4	| _1846
	clr.w %d4	| _1846
	move.w %d2,%d4	| _2203, _1846
	or.l %d4,%d3	| _1846, _1131
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _210
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _977
	swap %d4	| _977
	clr.w %d4	| _977
	move.w %d1,%d4	| _2230, _977
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _977, _210
	move.l %d3,320(%a5)	| _210, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2203, data_1316
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1355
	or.w #-22528,%d2	|, data_1355
| voxel.c:192: 	*out++ = data;
	swap %d2	| _2558
	clr.w %d2	| _2558
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2230, data_1362
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1362, _2558
	move.l %d2,324(%a5)	| _2558, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L376		|
.L274:
	move.w 104(%sp),%d0	| %sfp, _2603
	jra .L248		|
.L275:
| voxel.c:937: 				desired_height = -1;
	move.w #-1,98(%sp)	|, %sfp
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d7	|,
	lsr.w %d7,%d0	|, _2235
	moveq #13,%d1	|,
	lsl.w %d1,%d0	|, _1648
| voxel.c:182: 	data &= mask;
	move.l 94(%sp),%a5	| %sfp,
	move.l (%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226], _2598
	and.l #-536879105,%d2	|, _2598
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1930
	swap %d1	| _1930
	clr.w %d1	| _1930
	move.w %d0,%d1	| _1648, _1930
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1930, _2598
	move.l %d2,(%a5)	| _2598, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226]
| voxel.c:194: 	data &= mask;
	move.w 6(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 4B], data_1171
	or.w #8192,%d1	|, data_1171
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1921
	clr.w %d1	| _1921
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1178
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1178, _1921
	move.l %d1,4(%a5)	| _1921, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _2157
| voxel.c:182: 	data &= mask;
	move.l 640(%a5),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B], _2633
	and.l #-536879105,%d2	|, _2633
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1898
	swap %d1	| _1898
	clr.w %d1	| _1898
	move.w %d0,%d1	| _2157, _1898
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1898, _2633
	move.l %d2,640(%a5)	| _2633, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a5),%d1	| MEM[(short unsigned int *)screen_226 + 644B], data_1217
	or.w #8192,%d1	|, data_1217
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1883
	clr.w %d1	| _1883
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1224
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1224, _1883
	move.l %d1,644(%a5)	| _1883, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d3	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d3	|, tmp2036
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	lsl.w %d7,%d3	|, _2193
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d2	| pressed_keys, pressed_keys
	lsr.w #1,%d2	|, _170
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d2	|, _2203
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a5),%d0	| MEM[(short unsigned int *)screen_226 + 326B], data_1270
	and.w #30719,%d0	|, data_1270
| voxel.c:194: 	data &= mask;
	or.w %d3,%d0	| _2193, data
| voxel.c:950: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 98(%sp),%d1	| %sfp, tmp2045
	not.w %d1	| tmp2045
	lsr.w %d7,%d1	|, _1918
	moveq #13,%d4	|,
	lsl.w %d4,%d1	|, _2230
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d3,%d4	|, _1866
	swap %d4	| _1866
	clr.w %d4	| _1866
	move.w %d3,%d4	| _2193, _1866
	move.l 320(%a5),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B], _266
	and.l #2013231103,%d3	|, _266
| voxel.c:182: 	data &= mask;
	or.l %d4,%d3	| _1866, _360
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d2,%d4	|, _1846
	swap %d4	| _1846
	clr.w %d4	| _1846
	move.w %d2,%d4	| _2203, _1846
	or.l %d4,%d3	| _1846, _1131
| voxel.c:182: 	data &= mask;
	and.l #-536879105,%d3	|, _210
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d4	|, _977
	swap %d4	| _977
	clr.w %d4	| _977
	move.w %d1,%d4	| _2230, _977
| voxel.c:184: 	*out++ = data;
	or.l %d4,%d3	| _977, _210
	move.l %d3,320(%a5)	| _210, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 320B]
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| _2203, data_1316
| voxel.c:194: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 324(%a5),%d2	| MEM[(short unsigned int *)screen_226 + 324B], data_1355
	or.w #-22528,%d2	|, data_1355
| voxel.c:192: 	*out++ = data;
	swap %d2	| _2558
	clr.w %d2	| _2558
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2230, data_1362
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d2	| data_1362, _2558
	move.l %d2,324(%a5)	| _2558, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_226 + 324B]
	jra .L376		|
.L361:
| voxel.c:956: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 120(%sp),%a0	| %sfp, _171
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| _171, tmp2078
	add.l %a0,%d0	| _171, tmp2078
	add.l %d0,%d0	| tmp2078, tmp2079
| voxel.c:958: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp2083
	move.l 100(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2083
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp2210, millis_per_frame_312
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
	move.l 118(%sp),%d0	| %sfp, tmp2089
	add.l %d0,%d0	|, tmp2089
	add.l %d0,%d0	| tmp2089, tmp2090
| voxel.c:962: 	printnum(t_render * 5 / frames);
	move.l 112(%sp),-(%sp)	| %sfp,
	move.l 122(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp2083
| voxel.c:962: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2211,
	jsr _printnum		|
| voxel.c:963: 	print("\r\nTime spent rendering map: ");
	pea .LC18		|
	jsr _print		|
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 130(%sp),%d0	| %sfp, tmp2100
	add.l %d0,%d0	|, tmp2100
	add.l %d0,%d0	| tmp2100, tmp2101
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 120(%sp),-(%sp)	| %sfp,
	move.l 134(%sp),%a1	| %sfp,
	pea (%a1,%d0.l)		|
	jsr (%a2)		| tmp2083
| voxel.c:964: 	printnum(t_map * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2212,
	jsr _printnum		|
| voxel.c:965: 	print("\r\nTime spent on C2P conversion: ");
	pea .LC19		|
	jsr _print		|
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 110(%sp),%d0	| %sfp, tmp2111
	add.l %d0,%d0	|, tmp2111
	add.l %d0,%d0	| tmp2111, tmp2112
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 128(%sp),-(%sp)	| %sfp,
	move.l 114(%sp),%a5	| %sfp,
	pea (%a5,%d0.l)		|
	jsr (%a2)		| tmp2083
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2213,
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
	moveq #2,%d0	|, tmp2124
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp2124
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp2126
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2214
	jne .L257		|
	jra .L259		|
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
	.even
_fog_table:
	.skip 128
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
