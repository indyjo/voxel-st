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
	lea _fog_table+2,%a5	|, ivtmp.310
	move.l #_y_table+1024,%d6	|, ivtmp.311
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
	move.l %d6,%a3	| ivtmp.311, ivtmp.300
	move.w #-8960,%a2	|, ivtmp.297
.L22:
| voxel.c:217: 			y_table[z][h] = 45 - 35 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.297,
	jsr (%a4)		| tmp384
	addq.l #8,%sp	|,
| voxel.c:219: 			y_table[z][h] += 35 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _59,
	sub.w %d0,%d1	| tmp436,
	move.w %d1,(%a3)+	|, MEM[(short int *)_74]
| voxel.c:216: 		for (int h=0; h<256+256; h++) {
	lea (35,%a2),%a2	|, ivtmp.297
	cmp.w #8960,%a2	|, ivtmp.297
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
	add.l #1024,%d6	|, ivtmp.311
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
	move.l %d6,%a3	| ivtmp.311, ivtmp.300
	move.w #-8960,%a2	|, ivtmp.297
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
	add.l #1024,%d6	|, ivtmp.311
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
	add.l #1024,%d6	|, ivtmp.311
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
.L105:
	lea _combined+1025,%a1	|, ivtmp.288
	clr.b %d2	| max_height_lsm_flag.198
	clr.b %d1	| max_height_lsm.197
.L27:
	lea (-1024,%a1),%a0	|, ivtmp.288, ivtmp.281
.L29:
| voxel.c:236: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_206], _502
| voxel.c:236: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.197, _502
	jls .L28		|
| voxel.c:237: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _502, max_height_lsm.197
| voxel.c:236: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.198
.L28:
| voxel.c:235: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.281
	cmp.l %a1,%a0	| ivtmp.288, ivtmp.281
	jne .L29		|
| voxel.c:234: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a1),%a1	|, ivtmp.288
	cmp.l #_combined+525313,%a1	|, ivtmp.288
	jne .L27		|
	tst.b %d2	| max_height_lsm_flag.198
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
	and.l #255,%d4	|, iftmp.28_198
	btst #0,%d6	|, _350
	jeq .L42		|
	move.l 104(%sp),%d0	| %sfp, _431
	or.l 86(%sp),%d0	| %sfp, _431
	move.l 62(%sp),%a0	| %sfp, ivtmp.251
	move.l 66(%sp),%d2	| %sfp, ivtmp.250
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
	move.l %d4,50(%sp)	| iftmp.28_198, %sfp
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
	add.b %d2,%d1	| ivtmp.250, _215
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _215
	jeq .L73		|
	move.l 54(%sp),%d7	| %sfp, iftmp.25_443
.L34:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _215
	jeq .L74		|
	move.l 58(%sp),%d6	| %sfp, iftmp.26_447
.L35:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _215
	jeq .L75		|
	move.l 70(%sp),%d4	| %sfp, iftmp.27_451
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
	or.l %d7,%d0	| iftmp.25_443, _457
	or.l %d6,%d0	| iftmp.26_447, _458
	or.l %d4,%d0	| iftmp.27_451, _459
	or.b %d5,%d0	| _190, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _183
	and.l %d2,%d1	| ivtmp.250, _183
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
	addq.l #1,%d2	|, ivtmp.250
	lea (-3840,%a0),%a0	|, ivtmp.251
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.250,
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
	lea (152,%sp),%a0	|,, ivtmp.222
	lea _view_min+80,%a6	|, ivtmp.225
	lea _view_min,%a1	|, tmp385
	move.l %a1,%a5	| tmp385, ivtmp.227
	lea (192,%sp),%a4	|,, ivtmp.229
	lea _view_max+80,%a3	|, ivtmp.232
	lea _view_max,%a2	|, ivtmp.234
	moveq #40,%d1	|, _87
	add.l %a0,%d1	| ivtmp.222, _87
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
	cmp.l %d1,%a0	| _87, ivtmp.222
	jne .L68		|
	lea _horizon,%a0	|, ivtmp.215
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
	add.l #1024,%d6	|, ivtmp.311
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L21		|
	jra .L105		|
.L75:
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d4	| iftmp.27_451
	jra .L36		|
.L74:
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d6	| iftmp.26_447
	jra .L35		|
.L73:
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d7	| iftmp.25_443
	jra .L34		|
.L42:
| voxel.c:261: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 62(%sp),%a0	| %sfp, ivtmp.241
	move.l 66(%sp),%d2	| %sfp, ivtmp.240
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
	move.l %d4,%a2	| iftmp.28_198, iftmp.28_198
	move.w %d6,%a3	| _350, _350
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jeq .L77		|
.L106:
	move.l 46(%sp),%d0	| %sfp, prephitmp_25
	move.w %a3,%d1	| _350, _483
	add.b %d2,%d1	| ivtmp.240, _483
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _483
	jeq .L78		|
.L107:
	move.l 54(%sp),%d7	| %sfp, iftmp.25_355
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _483
	jeq .L79		|
.L108:
	move.l 50(%sp),%d6	| %sfp, iftmp.26_255
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _483
	jeq .L80		|
.L109:
	move.l 58(%sp),%d4	| %sfp, iftmp.27_265
.L47:
	move.b %d1,%d5	| _483, _72
	and.b #8,%d5	|, _72
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _483
	jeq .L48		|
	move.b 98(%sp),%d5	| %sfp, _72
.L48:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.28_198,
	or.l %d1,%d0	|, _71
	or.l %d7,%d0	| iftmp.25_355, _21
	or.l %d6,%d0	| iftmp.26_255, _22
	or.l %d4,%d0	| iftmp.27_265, _11
	or.b %d5,%d0	| _72, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _432
	and.l %d2,%d1	| ivtmp.240, _432
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
	addq.l #1,%d2	|, ivtmp.240
	lea (-3840,%a0),%a0	|, ivtmp.241
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.240,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jne .L106		|
.L77:
	move.l 86(%sp),%d0	| %sfp, prephitmp_25
	move.w %a3,%d1	| _350, _483
	add.b %d2,%d1	| ivtmp.240, _483
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _483
	jne .L107		|
.L78:
	moveq #0,%d7	| iftmp.25_355
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _483
	jne .L108		|
.L79:
	moveq #0,%d6	| iftmp.26_255
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _483
	jne .L109		|
.L80:
	moveq #0,%d4	| iftmp.27_265
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
	move.l %d4,%a2	| iftmp.28_198, iftmp.28_198
	move.w %d6,%a3	| _350, _350
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jeq .L82		|
.L110:
	move.l 94(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _350, _365
	add.b %d2,%d1	| ivtmp.245, _365
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _365
	jeq .L83		|
.L111:
	move.l 54(%sp),%d7	| %sfp, iftmp.25_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _365
	jeq .L84		|
.L112:
	move.l 46(%sp),%d6	| %sfp, iftmp.26_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _365
	jeq .L85		|
.L113:
	move.l 50(%sp),%d4	| %sfp, iftmp.27_399
.L54:
	move.b %d1,%d5	| _365, _49
	and.b #8,%d5	|, _49
| voxel.c:205: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, _365
	jeq .L55		|
	move.b 98(%sp),%d5	| %sfp, _49
.L55:
| voxel.c:263: 					unsigned int pdata = 0
	move.l %a2,%d1	| iftmp.28_198,
	or.l %d1,%d0	|, _404
	or.l %d7,%d0	| iftmp.25_391, _405
	or.l %d6,%d0	| iftmp.26_395, _406
	or.l %d4,%d0	| iftmp.27_399, _407
	or.b %d5,%d0	| _49, pdata
| voxel.c:267: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d1	|, _193
	and.l %d2,%d1	| ivtmp.245, _193
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
	addq.l #1,%d2	|, ivtmp.245
	lea (-3840,%a0),%a0	|, ivtmp.246
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.245,
	jeq .L50		|
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	move.w %a1,%d1	| _191,
	tst.b %d1	|
	jne .L110		|
.L82:
	move.l 90(%sp),%d0	| %sfp, _386
	move.w %a3,%d1	| _350, _365
	add.b %d2,%d1	| ivtmp.245, _365
| voxel.c:202: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, _365
	jne .L111		|
.L83:
	moveq #0,%d7	| iftmp.25_391
| voxel.c:203: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, _365
	jne .L112		|
.L84:
	moveq #0,%d6	| iftmp.26_395
| voxel.c:204: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, _365
	jne .L113		|
.L85:
	moveq #0,%d4	| iftmp.27_399
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
	lea _palette_vectors+6,%a1	|, ivtmp.339
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
	add.b %d1,%d1	| _243, iftmp.72_266
.L118:
| voxel.c:622: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.72_266, MEM[(unsigned char *)p_213]
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jlt .L124		|
.L135:
	cmp.w #128,%d2	|, _501
	jge .L125		|
	add.b %d2,%d2	| _501, iftmp.72_270
.L119:
| voxel.c:623: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.72_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jlt .L126		|
.L136:
	cmp.w #128,%d3	|, _422
	jge .L127		|
	add.b %d3,%d3	| _422, iftmp.72_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.72_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.339
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
	clr.b %d1	| iftmp.72_266
| voxel.c:622: 		*p++ = fixp2color(accum.c.z);
	move.b %d1,(%a0)	| iftmp.72_266, MEM[(unsigned char *)p_213]
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d2	| _501
	jge .L135		|
.L124:
	clr.b %d2	| iftmp.72_270
| voxel.c:623: 		*p++ = fixp2color(accum.c.y);
	move.b %d2,1(%a0)	| iftmp.72_270, MEM[(unsigned char *)p_213 + 1B]
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,%a0	|, p
| voxel.c:577: 	return val < 0 ? 0 : (
	tst.w %d3	| _422
	jge .L136		|
.L126:
	clr.b %d3	| iftmp.72_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.72_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.339
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
	st %d1		| iftmp.72_266
	jra .L118		|
.L127:
	st %d3		| iftmp.72_279
| voxel.c:624: 		*p++ = fixp2color(accum.c.x);
	move.b %d3,-1(%a0)	| iftmp.72_279, MEM[(unsigned char *)p_277 + 4294967295B]
| voxel.c:597: 	for (int i=1; i<15; i++) {
	addq.l #6,%a1	|, ivtmp.339
	cmp.l -82(%fp),%a0	| %sfp, p
	jne .L121		|
	jra .L137		|
.L125:
| voxel.c:577: 	return val < 0 ? 0 : (
	st %d2		| iftmp.72_270
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
	lea (-8332,%sp),%sp	|,
	movem.l %d2-%d7/%a2-%a6,-(%sp)	|
| voxel.c:727: 	print("\33H\33f");
	pea .LC1		|
	jsr _print		|
| voxel.c:730: 	Super(0L);
	moveq #0,%d0	| tmp1087
#APP
| 730 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1087
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
	pea 124(%sp)		|
	jsr _save_palette		|
| voxel.c:739: 	unsigned short *screen = Physbase();
#APP
| 739 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,82(%sp)	| tmp2009, %sfp
| voxel.c:741: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:743: 	init_c2p_table();
	jsr _init_c2p_table		|
| voxel.c:634: 	print("Loading colors.tga\r\n");
	pea .LC2		|
	jsr _print		|
| voxel.c:635: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC3,%d0	|, tmp1096
	clr.w %d3	| tmp1097
#APP
| 635 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1097
	movl	%d0,%sp@-	| tmp1096
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp2010, _318
| voxel.c:636: 	if (file1 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L299		|
| voxel.c:640: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _318,
	moveq #110,%d6	|, tmp1982
	add.l %sp,%d6	|, tmp1982
	move.l %d6,%a1	| tmp1982,
	lea _read_tga_header,%a4	|, tmp1977
	jsr (%a4)		| tmp1977
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d3,62(%sp)	| _318, %sfp
| voxel.c:641: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 106(%sp)	| MEM[(struct  *)_1571].width
	jne .L300		|
.L141:
| voxel.c:699: 	Fclose(file1);
#APP
| 699 "voxel.c" 1
	movw	%d3,%sp@-	| _318
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
	moveq #2,%d0	|, tmp1962
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp1962
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp1964
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2042
	jeq .L235		|
.L233:
| voxel.c:710: 		Bconin(_CON);
#APP
| 710 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1964
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:709: 	while (Bconstat(_CON))
| 709 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1964
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2043
	jne .L233		|
.L235:
| voxel.c:711: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp1967
.L234:
#APP
| 711 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1967
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:711: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2044
	jeq .L234		|
| voxel.c:713: 	Bconin(_CON);
#APP
| 713 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1967
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:974: 	install_palette(saved_palette);
#NO_APP
	pea 120(%sp)		|
	jsr _install_palette		|
| voxel.c:975: 	return 0;
	addq.l #4,%sp	|,
| voxel.c:976: }
	moveq #0,%d0	|
	movem.l (%sp)+,%d2-%d7/%a2-%a6	|
	lea (8332,%sp),%sp	|,
	rts	
.L299:
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
.L300:
| voxel.c:643: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 114(%sp),%a0	| MEM[(struct  *)_1571].colors, _320
| voxel.c:643: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_320 + 47B], sky_color[0]
| voxel.c:644: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_320 + 46B], sky_color[1]
| voxel.c:645: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_320 + 45B], sky_color[2]
| voxel.c:647: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _320,
	jsr _set_top_palette		|
| voxel.c:648: 	set_palette_immediately(texture.colors);
	move.l 118(%sp),-(%sp)	| MEM[(struct  *)_1571].colors,
	jsr _set_palette_immediately		|
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	lea (192,%sp),%a0	|,,
	move.l %a0,54(%sp)	|, %sfp
	move.w #8192,%a5	|,
	move.l %a0,%a6	|,
#APP
| 653 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%a5,%sp@-	|
	movw	%d3,%sp@-	| _318
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2011, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
	jeq .L150		|
	move.l 74(%sp),%a5	| %sfp, screen
| voxel.c:652: 	short lines_remaining = 200;
	move.w #200,%d4	|, lines_remaining
| voxel.c:651: 	unsigned char *p = &combined[0][0].color;
	lea _combined,%a3	|, p
| voxel.c:650: 	size_t n, remaining = 512*512;
	moveq #4,%d5	|, remaining
	swap %d5	| remaining
.L142:
| voxel.c:654: 		remaining -= n;
	sub.l %d2,%d5	| n, remaining
| voxel.c:655: 		print(".");
	pea .LC8		|
	jsr _print		|
	lea (188,%sp),%a6	|,, ivtmp.652
	moveq #67,%d0	|, _1442
	not.b %d0	| _1442
	add.l %sp,%d0	|, _1442
	add.l %d2,%d0	| n, _1442
	addq.l #4,%sp	|,
	move.l %a6,%a1	| ivtmp.652, ivtmp.659
	move.l %a3,%a0	| p, p
.L145:
| voxel.c:657: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_1452], MEM[(unsigned char *)p_1036]
| voxel.c:658: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:656: 		for (size_t i=0; i<n; i++) {
	cmp.l %d0,%a1	| _1442, ivtmp.659
	jne .L145		|
	subq.l #1,%d2	|, _914
	move.l %d2,%d0	| _914, _917
	add.l %d2,%d0	| _914, _917
	lea 2(%a3,%d0.l),%a3	|, p
	moveq #9,%d0	|,
	lsr.l %d0,%d2	|, _2111
	move.w %d4,%a2	| lines_remaining, _878
	subq.w #1,%a2	|, _878
	sub.w %d2,%a2	| _2111, _413
.L146:
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	tst.w %d4	| lines_remaining
	jeq .L147		|
| voxel.c:661: 			c2p((unsigned char*)screen, buf+i, 320, lines_remaining & 1);
	moveq #1,%d1	|,
	and.l %d4,%d1	| lines_remaining,
	move.l %d1,-(%sp)	|,
	pea 320.w		|
	move.l %a6,-(%sp)	| ivtmp.652,
	move.l %a5,-(%sp)	| screen,
	jsr _c2p		|
| voxel.c:662: 			screen += 80; // advance screen pointer one line
	lea (160,%a5),%a5	|, screen
	subq.w #1,%d4	|, lines_remaining
| voxel.c:660: 		for (size_t i=0; i<n && lines_remaining > 0; i+=512) {
	lea (512,%a6),%a6	|, ivtmp.652
	lea (16,%sp),%sp	|,
	cmp.w %a2,%d4	| _413, lines_remaining
	jne .L146		|
.L147:
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _346
	cmp.l #8192,%d5	|, remaining
	jls .L149		|
	move.l #8192,%d0	|, _346
.L149:
	move.w 58(%sp),%d7	| %sfp,
	move.l 46(%sp),%a6	| %sfp,
#APP
| 653 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%d0,%sp@-	| _346
	movw	%d7,%sp@-	|
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2013, n
| voxel.c:653: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L142		|
.L150:
| voxel.c:666: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:667: 	free_image(&texture);
	move.l %d6,-(%sp)	| tmp1982,
	lea _free_image,%a3	|, tmp1976
	jsr (%a3)		| tmp1976
| voxel.c:669: 	print("Loading height.tga\r\n");
	pea .LC6		|
	jsr _print		|
| voxel.c:670: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC7,%d0	|, tmp1111
	clr.w %d4	| tmp1112
#APP
| 670 "voxel.c" 1
	movw	%d4,%sp@-	| tmp1112
	movl	%d0,%sp@-	| tmp1111
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d4	| tmp2012, _351
| voxel.c:671: 	if (file2 < 0) {
	lea (12,%sp),%sp	|,
	jmi .L301		|
| voxel.c:675: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _351,
	lea (156,%sp),%a1	|,,
	jsr (%a4)		| tmp1977
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d4,%a5	| _351, _2416
| voxel.c:676: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 152(%sp)	| MEM[(struct  *)_1590].width
	jeq .L151		|
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w #8192,%a4	|, tmp1125
	move.l 46(%sp),%d5	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%d5,%sp@-	|
	movl	%a4,%sp@-	| tmp1125
	movw	%d4,%sp@-	| _351
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2014, n
| voxel.c:677: 	p = &combined[0][0].height;
	move.l #_combined+1,%d7	|, p
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
	lea (188,%sp),%a1	|,, ivtmp.641
	moveq #67,%d1	|, _2125
	not.b %d1	| _2125
	add.l %sp,%d1	|, _2125
	add.l %d2,%d1	| n, _2125
	addq.l #4,%sp	|,
	move.l %d7,%a0	| p, p
.L155:
| voxel.c:685: 			*p = buf[i]*2;
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_2129], _358
| voxel.c:685: 			*p = buf[i]*2;
	add.b %d0,%d0	| _358, _359
	move.b %d0,(%a0)	| _359, MEM[(unsigned char *)p_1012]
| voxel.c:686: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:682: 		for (size_t i=0; i<n; i++) {
	cmp.l %d1,%a1	| _2125, ivtmp.641
	jne .L155		|
	add.l %d2,%d2	| _932
	add.l %d2,%d7	| _932, p
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _364
	cmp.l #8192,%d5	|, remaining
	jls .L156		|
	move.l %a4,%d0	| tmp1125, _364
.L156:
	move.l 46(%sp),%a6	| %sfp,
#APP
| 679 "voxel.c" 1
	movl	%a6,%sp@-	|
	movl	%d0,%sp@-	| _364
	movw	%a5,%sp@-	| _2416
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2016, n
| voxel.c:679: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L152		|
.L157:
| voxel.c:689: 	print("\r\n");
	pea .LC5		|
	jsr _print		|
| voxel.c:690: 	free_image(&height);
	pea 156(%sp)		|
	jsr (%a3)		| tmp1976
| voxel.c:692: 	Fclose(file1);
#APP
| 692 "voxel.c" 1
	movw	%d3,%sp@-	| _318
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:693: 	Fclose(file2);
| 693 "voxel.c" 1
	movw	%d4,%sp@-	| _351
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
	move.l %d6,%a1	| tmp1982,
	jsr _read_tga		|
	move.l 126(%sp),%d6	| MEM[(struct  *)_1571].pixels, cockpit$pixels
| voxel.c:717: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1132
#APP
| 717 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1132
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d2	| tmp2015, _377
| voxel.c:718: 	print("TOS reports ");
	pea .LC12		|
	jsr _print		|
| voxel.c:719: 	printnum(size);
	move.l %d2,-(%sp)	| _377,
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
	tst.l %d6	| cockpit$pixels
	jeq .L153		|
| voxel.c:756: 	read_palette_vectors(cockpit.colors);
	move.l 114(%sp),%a4	| MEM[(struct  *)_1571].colors, colors
	lea _palette_vectors,%a3	|, ivtmp.634
	lea _palette_vectors+96,%a5	|, _2139
.L158:
| voxel.c:559: 		unsigned char b = *colors++;
	move.b (%a4),%d1	| MEM[(const unsigned char *)colors_739], b
| voxel.c:560: 		unsigned char g = *colors++;
	move.b 1(%a4),%d2	| MEM[(const unsigned char *)colors_739 + 1B], g
| voxel.c:561: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:540: 	signed char c = color - 128;
	move.b -1(%a4),%d3	| MEM[(const unsigned char *)colors_381 + 4294967295B], _383
	add.b #-128,%d3	|, _383
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d3	|, _385
| voxel.c:540: 	signed char c = color - 128;
	add.b #-128,%d2	|, _387
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d2	|, _389
| voxel.c:540: 	signed char c = color - 128;
	add.b #-128,%d1	|, _391
| voxel.c:541: 	return c >> 1;
	asr.b #1,%d1	|, _393
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _2021
	move.w %d1,%d0	| _2021,
	muls.w %d1,%d0	| _2021, _62
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _846
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _1082
	move.w %d2,%d4	| _1082,
	muls.w %d2,%d4	| _1082, _861
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _853
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _853, _437
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _1965
	move.w %d3,%d4	| _1965,
	muls.w %d3,%d4	| _1965, _1020
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _875
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _875, _799
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1057
	ext.l %d0	| _795
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _796
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _755
	sub.w %d0,%d5	| _796, _755
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d3	| _755, _732
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,%d4	| _732, _734
	asr.l #7,%d4	|, _734
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _755, _726
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,%d3	| _726, _695
	asr.l #7,%d3	|, _695
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d1	| _755, _680
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d1,%d2	| _680, _681
	asr.l #7,%d2	|, _681
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _695,
	move.l %d3,-(%sp)	| _695,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2017, _373
	asr.l #7,%d5	|, _373
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _734,
	move.l %d4,-(%sp)	| _734,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _499
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d5	| _499, _900
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _681,
	move.l %d2,-(%sp)	| _681,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _785
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| _900, _780
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1059
	ext.l %d0	| _877
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _827
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d7	|, _817
	sub.w %d0,%d7	| _827, _817
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d7	|, _696
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _734,
	move.l %d7,-(%sp)	| _696,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2020, _612
	asr.l #7,%d5	|, _612
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _696,
	move.l %d3,-(%sp)	| _695,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2021, _616
	asr.l #7,%d3	|, _616
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d7,-(%sp)	| _696,
	move.l %d2,-(%sp)	| _681,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2022, _554
	asr.l #7,%d4	|, _554
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _612,
	move.l %d5,-(%sp)	| _612,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2023, _312
	asr.l #7,%d2	|, _312
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _616,
	move.l %d3,-(%sp)	| _616,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _210
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _210, _214
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _554,
	move.l %d4,-(%sp)	| _554,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _153
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _214, _1459
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, _1060
	ext.l %d0	| _1466
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1467
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1469
	sub.w %d0,%a2	| _1467, _1469
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1469, _1474
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1474,
	move.l %d5,-(%sp)	| _612,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2026, _1476
	asr.l #7,%d5	|, _1476
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1474,
	move.l %d3,-(%sp)	| _616,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2027, _1480
	asr.l #7,%d3	|, _1480
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1474,
	move.l %d4,-(%sp)	| _554,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2028, _1484
	asr.l #7,%d4	|, _1484
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1476,
	move.l %d5,-(%sp)	| _1476,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2029, _1504
	asr.l #7,%d2	|, _1504
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1480,
	move.l %d3,-(%sp)	| _1480,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1509
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| _1509, _1511
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1484,
	move.l %d4,-(%sp)	| _1484,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1515
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| _1511, _1517
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1523
	moveq #-128,%d1	|,
	add.l %d1,%d0	|, _1524
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1525
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a2	|, _1527
	sub.w %d0,%a2	| _1525, _1527
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| _1527, _1532
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1532,
	move.l %d5,-(%sp)	| _1476,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2032, _1534
	asr.l #7,%d2	|, _1534
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1532,
	move.l %d3,-(%sp)	| _1480,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2033, _1538
	asr.l #7,%d3	|, _1538
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _1532,
	move.l %d4,-(%sp)	| _1484,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d1	| tmp2034, _1542
	asr.l #7,%d1	|, _1542
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| _1534, _1561
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1562
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| _1538, _1566
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1567
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1567, _1569
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d4	|,
	muls.w %d1,%d4	| _1542, _1572
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, _1573
| voxel.c:546: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| _1573, _1575
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| _1581
	moveq #-128,%d4	|,
	add.l %d4,%d0	|, _1582
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, _1583
| fixp.h:30: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1586
	sub.w %d0,%d4	| _1583, _1586
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d4,%d0	| _1586, _1591
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1592
| voxel.c:566: 		palette_vectors[i].c = v.c;
	swap %d0	| _1767
	clr.w %d0	| _1767
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	|,
	muls.w %d4,%d2	| _1586, _1595
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, _1596
| voxel.c:566: 		palette_vectors[i].c = v.c;
	move.w %d2,%d0	| _1596, _1767
	move.l %d0,(%a3)	| _1767, MEM <vector(2) short int> [(union  *)_2146]
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	|,
	muls.w %d4,%d0	| _1586, _1599
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _1600
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| _1600, MEM <fixp> [(union  *)_2146 + 4B]
| voxel.c:558: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.634
	cmp.l %a5,%a3	| _2139, ivtmp.634
	jne .L158		|
	move.l 74(%sp),%a5	| %sfp,
	lea (32000,%a5),%a5	|,
	move.l %a5,90(%sp)	|, %sfp
	move.l 74(%sp),%a0	| %sfp, ivtmp.624
.L159:
| voxel.c:165: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.392_1536]
	cmp.l 90(%sp),%a0	| %sfp, ivtmp.624
	jne .L159		|
| voxel.c:470: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table,%d5	| pdata_table[0][0][0], movep_data
	lea _view_min,%a0	|, ivtmp.616
	lea _view_max,%a2	|, ivtmp.619
	clr.w %d4	| ivtmp.617
.L164:
| voxel.c:760: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a0)+,%d0	| MEM[(short int *)_2223], _5
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d4,%d1	| ivtmp.617, _237
	asr.w #4,%d1	|, _237
	ext.l %d1	| _238
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d1	| _238, tmp1263
	add.l %d1,%d1	| tmp1263, _239
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%d3	|, _243
	lsr.l #3,%d3	|, _243
	moveq #1,%d2	|,
	and.l %d2,%d3	|, _244
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	moveq #0,%d2	| _239
	move.w %d1,%d2	| _239, _239
	add.l %d2,%d2	| _239, _241
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a1	| _241, _245
	add.l %d3,%a1	| _244, _245
	add.l 74(%sp),%a1	| %sfp, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d0	| _5
	jle .L160		|
	mulu.w #160,%d0	|, _2067
	add.l %a1,%d0	| pBlock, _2075
.L161:
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d5, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%d0	| pBlock, _2075
	jne .L161		|
.L160:
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%d0	| MEM[(short int *)_2172], _9
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d2	|, _11
	sub.w %d0,%d2	| _9, _11
| voxel.c:761: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%d0	|, _13
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, _190
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d1,%d0	| _239, _213
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _213, _209
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d3	| _209, _225
	move.l 74(%sp),%a1	| %sfp, pBlock
	add.l %d3,%a1	| _225, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d2	| _11
	jle .L162		|
	move.w %d2,%d0	| _11,
	mulu.w #160,%d0	|, _2044
	add.l %a1,%d0	| pBlock, _2045
.L163:
| voxel.c:310: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 310 "voxel.c" 1
	movep.l %d5, 0(%a1)	| movep_data, pBlock
| 0 "" 2
| voxel.c:473: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a1),%a1	|, pBlock
| voxel.c:471: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a1,%d0	| pBlock, _2045
	jne .L163		|
.L162:
| voxel.c:759: 	for (int i=0; i<40; i++) {
	addq.w #8,%d4	|, ivtmp.617
	cmp.l #_view_min+80,%a0	|, ivtmp.616
	jne .L164		|
| voxel.c:764: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:765: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:766: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:769: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	move.l 78(%sp),%d3	| %sfp,
	add.l #19200,%d3	|,
	move.l %d3,62(%sp)	|, %sfp
	move.w 110(%sp),%a0	| MEM[(struct  *)_1571].width,
	move.l %a0,98(%sp)	|, %sfp
	add.l #320,%d6	|, cockpit$pixels
	move.l %d6,90(%sp)	| cockpit$pixels, %sfp
	addq.l #4,%sp	|,
.L165:
	move.l 58(%sp),82(%sp)	| %sfp, %sfp
	move.l 86(%sp),%a4	| %sfp, ivtmp.583
	lea (-320,%a4),%a4	|, ivtmp.583
.L166:
| voxel.c:145: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a4),%d0	| MEM[(const unsigned char *)_1924],
	move.w %d0,%a2	|, px
	move.b 1(%a4),%d1	| MEM[(const unsigned char *)_1924 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a4),%d2	| MEM[(const unsigned char *)_1924 + 2B],
	move.w %d2,%a0	|, px
	move.b 3(%a4),%d7	| MEM[(const unsigned char *)_1924 + 3B], px
	move.b 4(%a4),%d6	| MEM[(const unsigned char *)_1924 + 4B], px
	move.b 5(%a4),%d5	| MEM[(const unsigned char *)_1924 + 5B], px
	move.b 6(%a4),%d4	| MEM[(const unsigned char *)_1924 + 6B], px
	move.b 7(%a4),%d3	| MEM[(const unsigned char *)_1924 + 7B], px
	move.b 8(%a4),%d2	| MEM[(const unsigned char *)_1924 + 8B], px
	move.b 9(%a4),103(%sp)	| MEM[(const unsigned char *)_1924 + 9B], %sfp
	move.b 10(%a4),99(%sp)	| MEM[(const unsigned char *)_1924 + 10B], %sfp
	move.b 11(%a4),79(%sp)	| MEM[(const unsigned char *)_1924 + 11B], %sfp
	move.b 12(%a4),71(%sp)	| MEM[(const unsigned char *)_1924 + 12B], %sfp
	move.b 13(%a4),67(%sp)	| MEM[(const unsigned char *)_1924 + 13B], %sfp
	move.b 14(%a4),63(%sp)	| MEM[(const unsigned char *)_1924 + 14B], %sfp
	move.b 15(%a4),57(%sp)	| MEM[(const unsigned char *)_1924 + 15B], %sfp
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
	move.w %d1,%a5	|, _2182
	add.w %d1,%a5	| _2182, _2074
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2074,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2070
	add.w %d0,%a5	| _2070, _2034
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _2034,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2031
	add.w %d0,%a5	| _2031, _1995
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1995,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1992
	add.w %d0,%a5	| _1992, _1956
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1956,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1953
	add.w %d0,%a5	| _1953, _1917
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1917,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1914
	add.w %d0,%a5	| _1914, _1878
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1878,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1875
	add.w %d0,%a5	| _1875, _1839
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1839,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1836
	add.w %d0,%a5	| _1836, _1800
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 103(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1800,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1797
	add.w %d0,%a5	| _1797, _1761
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 99(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1761,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1758
	add.w %d0,%a5	| _1758, _1722
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 79(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1722,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1719
	add.w %d0,%a5	| _1719, _1683
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 71(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1683,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1680
	add.w %d0,%a5	| _1680, _1644
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 67(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1644,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1641
	add.w %d0,%a5	| _1641, _1605
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 63(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| _1605,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1602
	add.w %d0,%a3	| _1602, _450
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1741
| voxel.c:149: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2127
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a6	|, _2192
| voxel.c:149: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2184
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2192,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2195
	add.w %d0,%a6	| _2195, _2066
| voxel.c:149: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_2068
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _2066,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _2063
	add.w %d1,%a6	| _2063, _2027
| voxel.c:149: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_2029
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _2027,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _2024
	add.w %d0,%a6	| _2024, _1988
| voxel.c:149: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1990
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1988,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1985
	add.w %d1,%a6	| _1985, _1949
| voxel.c:149: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1951
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1949,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1946
	add.w %d0,%a6	| _1946, _1910
| voxel.c:149: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1912
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1910,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1907
	add.w %d1,%a6	| _1907, _1871
| voxel.c:149: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1873
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1871,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1868
	add.w %d0,%a6	| _1868, _1832
| voxel.c:149: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1834
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1832,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1829
	add.w %d1,%a6	| _1829, _1793
| voxel.c:149: 				px >>= 1;
	move.b 103(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1795
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1793,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1790
	add.w %d0,%a6	| _1790, _1754
| voxel.c:149: 				px >>= 1;
	move.b 99(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1756
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1754,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1751
	add.w %d1,%a6	| _1751, _1715
| voxel.c:149: 				px >>= 1;
	move.b 79(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1717
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1715,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1712
	add.w %d0,%a6	| _1712, _1676
| voxel.c:149: 				px >>= 1;
	move.b 71(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1678
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1676,
	or.w %d0,%d1	|,
	move.w %d1,%a6	|, _1673
	add.w %d1,%a6	| _1673, _1637
| voxel.c:149: 				px >>= 1;
	move.b 67(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px_1639
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d1	| _1637,
	or.w %d1,%d0	|,
	move.w %d0,%a6	|, _1634
	add.w %d0,%a6	| _1634, _1579
| voxel.c:149: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px_1589
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a6,%d0	| _1579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1570
	add.w %d1,%a5	| _1570, _459
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d1	| _1741,
	move.w %a5,%d1	| _459,
	move.l %d1,%a3	|, _1741
	move.b 57(%sp),%d0	| %sfp,
	moveq #1,%d1	|,
	and.l %d1,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a6	|, _1734
| voxel.c:149: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
| voxel.c:150: 				plane1 = (plane1 << 1) | (px & 1);
	and.b #1,%d0	|,
	move.b %d0,%d1	|,
	and.w #255,%d1	|,
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a6,%d0	| _1734,
	move.w %d1,%d0	| _461,
| voxel.c:156: 			*out++ = plane0;
	move.l %a3,%d1	| _1741,
	or.l %d0,%d1	|,
	move.l 82(%sp),%a5	| %sfp,
	move.l %d1,(%a5)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_1967]
| voxel.c:151: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2134
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a5	|, _2205
| voxel.c:151: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2203
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _2205,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2214
	add.w %d1,%a5	| _2214, _2059
| voxel.c:151: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_2061
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _2059,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _2056
	add.w %d0,%a5	| _2056, _2020
| voxel.c:151: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_2022
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _2020,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _2017
	add.w %d1,%a5	| _2017, _1981
| voxel.c:151: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1983
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1981,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1978
	add.w %d0,%a5	| _1978, _1942
| voxel.c:151: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1944
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _1942,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1939
	add.w %d1,%a5	| _1939, _1903
| voxel.c:151: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1905
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1903,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1900
	add.w %d0,%a5	| _1900, _1864
| voxel.c:151: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1866
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _1864,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1861
	add.w %d1,%a5	| _1861, _1825
| voxel.c:151: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1827
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1825,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1822
	add.w %d0,%a5	| _1822, _1786
| voxel.c:151: 				px >>= 1;
	move.b 103(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1788
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _1786,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1783
	add.w %d1,%a5	| _1783, _1747
| voxel.c:151: 				px >>= 1;
	move.b 99(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1749
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1747,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1744
	add.w %d0,%a5	| _1744, _1708
| voxel.c:151: 				px >>= 1;
	move.b 79(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1710
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _1708,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1705
	add.w %d1,%a5	| _1705, _1669
| voxel.c:151: 				px >>= 1;
	move.b 71(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1671
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1669,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, _1666
	add.w %d0,%a5	| _1666, _1630
| voxel.c:151: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px_1632
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| _1630,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, _1627
	add.w %d1,%a5	| _1627, _1549
| voxel.c:151: 				px >>= 1;
	move.b 63(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px_1551
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:152: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| _1549,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, _1546
	add.w %d0,%a3	| _1546, _467
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d0	|,
	swap %d0	|
	clr.w %d0	|
	move.l %d0,%a3	|, _1748
| voxel.c:153: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px_2141
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, _2224
| voxel.c:153: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px_2222
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| _2224,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, _308
	add.w %d0,%a1	| _308, _2052
| voxel.c:153: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px_2054
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| _2052,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, _2049
	add.w %d1,%a0	| _2049, _2013
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d7	|, px_2015
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, _2011
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| _2013,
	or.w %d1,%d7	|, _2010
	add.w %d7,%d7	| _2010, _1974
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d6	|, px_1976
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, _1972
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| _1974, _1971
	add.w %d6,%d6	| _1971, _1935
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d5	|, px_1937
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, _1933
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| _1935, _1932
	add.w %d5,%d5	| _1932, _1896
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d4	|, px_1898
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, _1894
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| _1896, _1893
	add.w %d4,%d4	| _1893, _1857
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d3	|, px_1859
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, _1855
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| _1857, _1854
	add.w %d3,%d3	| _1854, _1818
| voxel.c:153: 				px >>= 1;
	lsr.b #3,%d2	|, px_1820
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, _1816
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| _1818, _1815
	add.w %d2,%d2	| _1815, _1779
| voxel.c:153: 				px >>= 1;
	move.b 103(%sp),%d1	| %sfp, px_1781
	lsr.b #3,%d1	|, px_1781
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, _1777
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| _1779, _1776
	add.w %d1,%d1	| _1776, _1740
| voxel.c:153: 				px >>= 1;
	move.b 99(%sp),%d0	| %sfp, px_1742
	lsr.b #3,%d0	|, px_1742
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1738
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1738, _1737
	add.w %d1,%d1	| _1737, _1701
| voxel.c:153: 				px >>= 1;
	move.b 79(%sp),%d0	| %sfp, px_1703
	lsr.b #3,%d0	|, px_1703
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1699
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1699, _1698
	add.w %d1,%d1	| _1698, _1662
| voxel.c:153: 				px >>= 1;
	move.b 71(%sp),%d0	| %sfp, px_1664
	lsr.b #3,%d0	|, px_1664
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1660
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1660, _1659
	add.w %d1,%d1	| _1659, _1623
| voxel.c:153: 				px >>= 1;
	move.b 67(%sp),%d0	| %sfp, px_1625
	lsr.b #3,%d0	|, px_1625
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1621
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| _1621, _1620
	add.w %d1,%d1	| _1620, _1520
| voxel.c:153: 				px >>= 1;
	move.b 63(%sp),%d0	| %sfp, px_1522
	lsr.b #3,%d0	|, px_1522
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, _1494
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| _1520, _1493
	add.w %d0,%d0	| _1493, _475
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.l %a3,%d2	| _1748,
	move.w %d0,%d2	| _475,
| voxel.c:151: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px_464
	lsr.b #2,%d0	|, px_464
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	moveq #1,%d3	|,
	and.l %d3,%d0	|, _469
	move.l %d0,%d1	| _469, _1735
	swap %d1	| _1735
	clr.w %d1	| _1735
| voxel.c:153: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px_472
	lsr.b #3,%d0	|, px_472
| voxel.c:154: 				plane3 = (plane3 << 1) | (px & 1);
	and.b #1,%d0	|, _476
	and.w #255,%d0	|, _477
| voxel.c:148: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d1	| _477, _1735
| voxel.c:156: 			*out++ = plane0;
	or.l %d1,%d2	| _1735,
	move.l 82(%sp),%a0	| %sfp,
	move.l %d2,4(%a0)	|, MEM <vector(2) short unsigned int> [(short unsigned int *)_1967 + 4B]
| voxel.c:142: 		for (int chunk=0; chunk<20; chunk++) {
	addq.l #8,82(%sp)	|, %sfp
	lea (16,%a4),%a4	|, ivtmp.583
	cmp.l 86(%sp),%a4	| %sfp, ivtmp.583
	jne .L166		|
	add.l #160,58(%sp)	|, %sfp
| voxel.c:141: 	for (int y=0; y<height; y++) {
	add.l 94(%sp),%a4	| %sfp, ivtmp.583
	move.l %a4,86(%sp)	| ivtmp.583, %sfp
	move.l 58(%sp),%a1	| %sfp,
	cmp.l 90(%sp),%a1	| %sfp,
	jne .L165		|
| voxel.c:773: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,90(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:778: 	int frames = 0;
	clr.l 78(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 66(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 86(%sp)	| %sfp
| voxel.c:774: 	unsigned long t_render = 0, t_map = 0, t_c2p = 0;
	clr.l 82(%sp)	| %sfp
	lea _combined,%a4	|, tmp1981
	lea (1784,%sp),%a5	|,,
	move.l %a5,50(%sp)	|, %sfp
	move.l 74(%sp),%a6	| %sfp,
	lea (384,%a6),%a6	|,
	move.l %a6,98(%sp)	|, %sfp
	move.l %a5,%d1	|,
	subq.l #1,%d1	|,
	move.l %d1,62(%sp)	|, %sfp
| voxel.c:484: 	for (; samples > 0; --samples) {
	lea (152,%sp),%a0	|,,
	lea (32,%a0),%a0	|,
	move.l %a0,102(%sp)	|, %sfp
.L232:
| voxel.c:787: 		frames++;
	addq.l #1,78(%sp)	|, %sfp
| voxel.c:131: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.43_258
	move.w (%a0),%d0	| *hw_palette.43_258, _259
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a1	|,
	move.l (%a1),%d2	| MEM <unsigned int> [(short int *)&pos], _263
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _25
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, _257
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, _19
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a1),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, _255
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, _21
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1611
	add.l %d1,%d0	| _21, tmp1612
	add.l %d0,%d0	| tmp1612, tmp1613
| voxel.c:791: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_19][_21].D.2792.height, combined[_19][_21].D.2792.height
	lsr.b #1,%d0	|, _23
| voxel.c:792: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, _311
	lsl.w #7,%d0	|, terrain_height.1_26
	move.w %d3,%d1	| _25, _27
	sub.w %d0,%d1	| terrain_height.1_26, _27
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w #2560,%a0	|, _29
	sub.w %d1,%a0	| _27, _29
| voxel.c:795: 			if (altitude_delta > FIXP(2, 0)) altitude_delta = FIXP(2, 0);
	cmp.w #1284,%a0	|, _29
	jle .L168		|
| voxel.c:797: 			pos.z += altitude_delta;
	add.w #256,%d3	|, pretmp_2109
	move.w %d3,%d0	| pretmp_2109, _1963
.L169:
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d0,_pos+4	| _1963, pos.z
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _263
	move.l %d2,70(%sp)	| _263, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+8,58(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+6,%d7	| pos.dirx, prephitmp_2298
	sub.l %a3,%a3	| ivtmp.568
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d6	| ci_idx
	move.l %a3,%d5	| ivtmp.568, ivtmp.568
	move.w %d7,%a3	| prephitmp_2298, prephitmp_2298
.L224:
| voxel.c:834: 				.pixel = &chunks[ci_idx],
	moveq #0,%d0	| _578
	move.w %d6,%d0	| ci_idx, _578
	add.l %d0,%d0	| _578, _181
	lea (184,%sp),%a2	|,, state$pixel
	add.l %d0,%a2	| _181, state$pixel
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	move.w %d5,%d0	|, _58
	lsr.w #3,%d0	|, _58
	and.l #65535,%d0	|, _59
| voxel.c:833: 				.y = view_max[x >> 3] - y_offset,
	add.l %d0,%d0	| _59, tmp1637
	lea _view_max,%a0	|,
	move.w (%a0,%d0.l),%d7	| view_max[_59], _60
| voxel.c:838: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a1	|,
	move.w (%a1,%d0.l),%d4	| view_min[_59], _61
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d7,%d4	| _60, _61
	jgt .L212		|
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.l %d5,%a6	| ivtmp.568, _38
	lea (-160,%a6),%a6	|, _38
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	move.l %a6,-(%sp)	| _38,
	move.w 62(%sp),%a5	| %sfp,
	move.l %a5,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	asr.l #7,%d0	|, _48
| voxel.c:821: 				pos.dirx - ((short)(x - 160) * pos.diry >> 7),
	move.w %a3,%d2	| prephitmp_2298, _50
	sub.w %d0,%d2	| _48, _50
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| _266
	clr.w %d2	| _266
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.l %a6,-(%sp)	| _38,
	move.w %a3,%a6	| prephitmp_2298,
	move.l %a6,-(%sp)	|,
	jsr ___mulsi3		|
	addq.l #8,%sp	|,
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	asr.l #7,%d0	|, _42
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	add.w 58(%sp),%d0	| %sfp, _44
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d2	| _44, _268
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _268
	move.l %d2,%a5	| _268, _269
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 70(%sp),%d1	| %sfp, _1228
	add.l %d2,%d1	| _269, _1228
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1204
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _269, _1230
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1207
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _269, _1200
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, _1201
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _269, _1197
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _279
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	and.l #65535,%d3	|, _52
	move.w #256,%a0	|, _53
	sub.l %d3,%a0	| _52, _53
	add.l %a0,%a0	| _53, _54
| voxel.c:830: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%a0	|, y_table_shifted
| voxel.c:379: 	short y = state.y;
	move.w %d7,%d0	| _60, y
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-12,%a1	|, z
	move.w %a1,%d3	| z, z
	move.l %d5,%a6	| ivtmp.568, ivtmp.568
.L176:
| voxel.c:319: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index_864
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_865, sample
| voxel.c:334: 		return sample;
	move.w %d2,%d5	| sample, tmp1668
	lsr.w #8,%d5	|, tmp1668
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d2	|, _868
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d2.l),%d2	| *_870, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jge .L302		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L175:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _269, _888
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L176		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a6,%d5	| ivtmp.568, ivtmp.568
.L177:
	move.l %a5,%d2	| _269, _276
	add.l %a5,%d2	| _269, _276
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _277
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.l %d2,%a1	| _277, _277
	move.w %a5,%d2	| z, z
.L182:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d3	|, index_804
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_805, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1676
	lsr.w #8,%d5	|, tmp1676
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _808
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_810, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jge .L303		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L181:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d1	| _277, _828
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L182		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.l %a6,%d5	| ivtmp.568, ivtmp.568
.L183:
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.w %a5,%d2	| z, z
.L189:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index_744
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_745, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1683
	lsr.w #8,%d5	|, tmp1683
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _748
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_750, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jge .L304		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L188:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d1	| _277, _768
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L189		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a1,%d2	| _277, _277
	move.l %a6,%d5	| ivtmp.568, ivtmp.568
.L190:
	add.l %a1,%d2	| _277, _274
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _275
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a5	|, z
	move.l %d2,%a1	| _275, _275
	move.w %a5,%d2	| z, z
.L196:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index_684
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_685, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1691
	lsr.w #8,%d5	|, tmp1691
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _688
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_690, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d0,%d3	| y, sample_y
	jle .L305		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L195:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a1,%d1	| _275, _708
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L196		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.l %a1,%d2	| _275, _275
	move.l %a6,%d5	| ivtmp.568, ivtmp.568
.L197:
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	lea _fog_table+80,%a1	|, fog_table_shifted
	move.l %d2,%a5	| _275, _275
	move.w %a6,%d2	| z, z
	move.l %d5,54(%sp)	| ivtmp.568, %sfp
.L203:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index_624
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_625, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1698
	lsr.w #8,%d5	|, tmp1698
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _628
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_630, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d0,%d3	| y, sample_y
	jle .L306		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L202:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a1	|, fog_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _275, _648
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L203		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %a5,%d2	| _275, _275
	move.l 54(%sp),%d5	| %sfp, ivtmp.568
.L204:
	add.l %a5,%d2	| _275, _272
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, _273
| voxel.c:384: 	if (y < y_min) goto finish;
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	move.l %d2,%a5	| _273, _273
	move.w %a6,%d2	| z, z
.L210:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d3	|, index_564
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_565, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1706
	lsr.w #8,%d5	|, tmp1706
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _568
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_570, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jge .L307		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L209:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a1	|, fog_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _273, _588
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L210		|
| voxel.c:384: 	if (y < y_min) goto finish;
	move.l 54(%sp),%d5	| %sfp, ivtmp.568
.L211:
	cmp.w %d4,%d0	| _61, y
	jlt .L212		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a6	|, z
	move.w %a6,%d2	| z, z
.L217:
| voxel.c:319: 	asm (
	move.l %d1,%d3	| sample_uv, uv
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d3	| uv
	swap %d3	| uv
	lsr.l #6, %d3	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d3	|, index_504
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d3.l),%d3	| *_505, sample
| voxel.c:334: 		return sample;
	move.w %d3,%d5	| sample, tmp1713
	lsr.w #8,%d5	|, tmp1713
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d3	|, _508
| voxel.c:392: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a0,%d3.l),%d3	| *_510, sample_y
| voxel.c:393: 		if (sample_y <= y) {
	cmp.w %d3,%d0	| sample_y, y
	jge .L308		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
.L216:
| voxel.c:413: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:414: 		if (fog) fog_table_shifted++;
	addq.l #2,%a1	|, fog_table_shifted
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _273, _528
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d2	| z
	jlt .L217		|
	move.l 54(%sp),%d5	| %sfp, ivtmp.568
.L212:
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	cmp.l 50(%sp),%a2	| %sfp, state$pixel
	jcc .L222		|
	move.l 62(%sp),%d0	| %sfp, _1811
	sub.l %a2,%d0	| ivtmp.466, _1811
	moveq #-8,%d1	|,
	and.l %d1,%d0	|, _1812
	lea 8(%a2,%d0.l),%a0	|, _1826
.L221:
| voxel.c:858: 				*state.pixel = 15 << 4;
	move.w #240,(%a2)	|, MEM[(short unsigned int *)_1807]
| voxel.c:857: 			while ((char *)state.pixel < (char *)chunks + sizeof(chunks)) {
	addq.l #8,%a2	|, ivtmp.466
	cmp.l %a2,%a0	| ivtmp.466, _1826
	jne .L221		|
.L222:
	addq.w #1,%d6	|, _1887
	and.w #3,%d6	|, ci_idx
| voxel.c:862: 			if (ci_idx == 0) {
	jeq .L309		|
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	addq.l #2,%d5	|, ivtmp.568
	cmp.l #320,%d5	|, ivtmp.568
	jeq .L223		|
.L310:
| voxel.c:828: 			short height = fixp_int(pos.z);
	move.w _pos+4,%d3	| pos.z, pretmp_2109
	jra .L224		|
.L301:
| voxel.c:672: 		print("Error reading height.tga\r\n");
	pea .LC9		|
	jsr _print		|
| voxel.c:673: 		goto error1;
	addq.l #4,%sp	|,
| voxel.c:699: 	Fclose(file1);
#APP
| 699 "voxel.c" 1
	movw	%d3,%sp@-	| _318
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
	movw	%d4,%sp@-	| _351
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:699: 	Fclose(file1);
| 699 "voxel.c" 1
	movw	%d3,%sp@-	| _318
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L140		|
.L309:
| voxel.c:864: 				unsigned long t0 = *_hz_200;
	move.w #1210,%a2	|, tmp1726
	move.l (%a2),%d2	| MEM[(volatile long unsigned int *)1210B], t0
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	moveq #0,%d3	|,
	not.b %d3	|
	and.l %d7,%d3	| _60,
	move.l %d3,-(%sp)	|,
	pea -160.w		|
| voxel.c:865: 				short column_height = view_max[x >> 3] + 1 - view_min[x >> 3];
	move.w %d7,%d1	| _60, _1043
	addq.w #1,%d1	|, _1043
	sub.w %d4,%d1	| _61, _71
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.w %d1,%d0	| _71, tmp1731
	moveq #15,%d4	|,
	lsr.w %d4,%d0	|, tmp1731
	add.w %d1,%d0	| _71, tmp1732
	asr.w #1,%d0	|, _75
	move.w %d0,-(%sp)	| _75,
	clr.w -(%sp)	|
	pea 196(%sp)		|
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d5,%d0	|, _283
	asr.w #4,%d0	|, _283
	ext.l %d0	| _284
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| _284, tmp1738
	add.l %d0,%d0	| tmp1738, _285
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d7	|, _282
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d7	| _285, _286
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%d7	| _286, _288
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d5,%d0	| ivtmp.568, _290
	lsr.l #3,%d0	|, _290
	moveq #1,%d1	|,
	and.l %d0,%d1	| _290,
	move.l %d1,%a0	|, _291
| voxel.c:305: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d7,%a0	| _288, _292
| voxel.c:867: 				c2p_w4_2x2_vertical(pOut, chunks, column_height/2, -160, view_max[x >> 3]);
	move.l 90(%sp),%a1	| %sfp,
	pea (%a1,%a0.l)		|
	jsr _c2p_w4_2x2_vertical		|
| voxel.c:869: 				unsigned long t1 = *_hz_200;
	move.l (%a2),%d0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:870: 				t_c2p += t1-t0;
	sub.l %d2,%d0	| t0, _78
| voxel.c:870: 				t_c2p += t1-t0;
	add.l %d0,86(%sp)	| _78, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+8,78(%sp)	| pos.diry, %sfp
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w _pos+6,%a3	| pos.dirx, prephitmp_2298
	lea (20,%sp),%sp	|,
| voxel.c:812: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 2) {
	addq.l #2,%d5	|, ivtmp.568
	cmp.l #320,%d5	|, ivtmp.568
	jne .L310		|
.L223:
| voxel.c:875: 		unsigned long t_render_1 = *_hz_200;
	move.l 1210.w,%a5	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	move.l %a5,%d0	| t_render_1, _79
	sub.l 94(%sp),%d0	| %sfp, _79
| voxel.c:876: 		t_render += t_render_1 - t_render_0;
	add.l %d0,82(%sp)	| _79, %sfp
| voxel.c:879: 		draw_map((unsigned char *)screen, &pos, frames & 1);
	moveq #1,%d4	|, _80
	and.l 78(%sp),%d4	| %sfp, _80
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w 58(%sp),%d0	| %sfp, _952
	lsl.w #8,%d0	|, _952
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	move.w %a3,%d1	| prephitmp_2298, tmp1759
	add.w %a3,%d1	| prephitmp_2298, tmp1759
	add.w %a3,%d1	| prephitmp_2298, _953
	lsl.w #6,%d1	|, tmp1761
| voxel.c:497: 		pos->x + 12 * MAP_SCALE * pos->dirx + 16 * MAP_SCALE * pos->diry,
	add.w %d1,%d0	| tmp1761, _954
	lea _pos,%a6	|,
	add.w (%a6),%d0	| pos.x, _955
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| _957
	clr.w %d0	| _957
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w 58(%sp),%d1	| %sfp, tmp1769
	add.w %d1,%d1	|, tmp1769
	add.w 58(%sp),%d1	| %sfp, _944
	lsl.w #6,%d1	|, tmp1771
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	add.w _pos+2,%d1	| pos.y, _945
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	move.w %a3,%d2	| prephitmp_2298, _948
	lsl.w #8,%d2	|, _948
| voxel.c:498: 		pos->y + 12 * MAP_SCALE * pos->diry - 16 * MAP_SCALE * pos->dirx);
	sub.w %d2,%d1	| _948, _949
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d0	| _949, _959
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d0,%d3	| _959, sample_uv
	and.l #-65538,%d3	|, sample_uv
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w %a3,%d5	| prephitmp_2298, tmp1778
	lsl.w #4,%d5	|, tmp1778
	move.w %d5,%d1	| tmp1778, _962
	neg.w %d1	| _962
| voxel.c:499: 	fixp_2in1 back = make_2in1(-MAP_SCALE * pos->dirx, -MAP_SCALE * pos->diry);
	move.w 58(%sp),%d0	| %sfp, tmp1780
	lsl.w #4,%d0	|, tmp1780
	neg.w %d0	| _961
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #65535,%d0	|, _965
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d1	| _964
	clr.w %d1	| _964
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d1,%d6	| _964, _966
	or.l %d0,%d6	| _965, _966
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| _968
	clr.w %d0	| _968
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	move.l %d0,%d2	| _968, _970
	or.w %d5,%d2	| tmp1778, _970
	move.l 98(%sp),%a3	| %sfp, ivtmp.458
	moveq #0,%d5	| ivtmp.452
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	lea _c2p_x2,%a2	|, tmp1990
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,%d7	| _80, _1064
	eor.w #1,%d7	|, _1064
	move.l 102(%sp),%a6	| %sfp, tmp2003
.L227:
| voxel.c:507: 		if ((odd ^ y) & 1) {
	move.l %d5,%d0	| ivtmp.452, _976
	eor.l %d4,%d0	| _80, _976
| voxel.c:507: 		if ((odd ^ y) & 1) {
	btst #0,%d0	|, _976
	jeq .L247		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| _966, _979
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.452
	lea (320,%a3),%a3	|, ivtmp.458
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| ivtmp.452,
	jne .L227		|
.L311:
| voxel.c:880: 		unsigned long t_render_2 = *_hz_200;
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_2
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	sub.l %a5,%d0	| t_render_1, _81
| voxel.c:881: 		t_map += t_render_2 - t_render_1;
	add.l %d0,86(%sp)	| _81, %sfp
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l 70(%sp),%d0	| %sfp, _199
	add.l #65408,%d0	|, _199
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _195
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _995
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _1512
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _2088
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2089
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l #65408,%d0	|, _2414
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2319
| fixp.h:14: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+4,%d1	| pos.z, pos.z
	lsr.w #7,%d1	|, _295
| voxel.c:435: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, _908
	sub.w %d1,%a0	| _295, _908
| voxel.c:437: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| _908, _908
	add.l %a0,%a0	| _908, _911
	add.l #_y_table+4096,%a0	|, _2321
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	moveq #127,%d5	|, delta_uv
	not.w %d5	| delta_uv
| voxel.c:442: 	short min_y = 0x7fff;
	move.w #32767,%d2	|, min_y
| voxel.c:440: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d4	|, index_mask
| voxel.c:443: 	unsigned short z = 0;
	moveq #4,%d3	|, z
.L230:
| voxel.c:452: 		z++;
	addq.w #1,%d3	|, z
	move.l %d0,%d1	| _2319, uv
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d0	| delta_uv, _2320
	add.l %d1,%d0	| uv, _2320
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d0	|, _2319
| voxel.c:319: 	asm (
#APP
| 319 "voxel.c" 1
	lsr.w #7, %d1	| uv
	swap %d1	| uv
	lsr.l #6, %d1	| uv
| 0 "" 2
| voxel.c:332: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d4,%d1	| index_mask, index_2317
| voxel.c:333: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d1.l),%d1	| *_2316, sample
| voxel.c:447: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d1	|, _2312
| voxel.c:448: 			if (sample_y < min_y) {
	move.w (%a0,%d1.l),%d1	| *_2311, *_2311
	lea (1024,%a0),%a0	|, _2321
	cmp.w %d2,%d1	| min_y, *_2311
	jge .L228		|
	move.w %d1,%d2	| *_2311, min_y
.L228:
| voxel.c:456: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d3,%d1	| z, _2308
	and.w #15,%d1	|, _2308
	jne .L229		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| _2307
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_uv
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d4,%d4	| index_mask, _2305
| voxel.c:341: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d4	|, index_mask
.L229:
| voxel.c:444: 	while(z < STEPS_MAX) {
	cmp.w #64,%d3	|, z
	jne .L230		|
| voxel.c:888: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d2	|, min_y
	jlt .L248		|
	move.w #128,%a0	|, _2349
| voxel.c:890: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d2	|, min_y
	jge .L231		|
| voxel.c:893: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d2	|, _85
	add.w %d2,%d2	| _85, tmp1831
	add.w %d2,%d2	| tmp1831, sunlight_193
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d2,%a0	| sunlight_193, _2349
.L231:
	move.l %a0,-(%sp)	| _2349,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d0	| pos.speed, _88
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _88,
	muls.w _pos+6,%d1	| pos.dirx, _302
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _303
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d1,(%a0)	| _303, pos.x
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d0	| pos.diry, _297
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _298
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w %d0,_pos+2	| _298, pos.y
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _1926
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _1929
| voxel.c:182: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l (%a0),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147], _2338
	and.l #-536879105,%d2	|, _2338
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1694
	swap %d1	| _1694
	clr.w %d1	| _1694
	move.w %d0,%d1	| _1929, _1694
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1694, _2338
	move.l %d2,(%a0)	| _2338, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147]
| voxel.c:194: 	data &= mask;
	move.w 6(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a0),%d1	| MEM[(short unsigned int *)screen_147 + 4B], data_1048
	or.w #8192,%d1	|, data_1048
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1690
	clr.w %d1	| _1690
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1055
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1055, _1690
	move.l %d1,4(%a0)	| _1690, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _1943
| voxel.c:182: 	data &= mask;
	move.l 640(%a0),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 640B], _2345
	and.l #-536879105,%d2	|, _2345
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1656
	swap %d1	| _1656
	clr.w %d1	| _1656
	move.w %d0,%d1	| _1943, _1656
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1656, _2345
	move.l %d2,640(%a0)	| _2345, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a0),%d1	| MEM[(short unsigned int *)screen_147 + 644B], data_1094
	or.w #8192,%d1	|, data_1094
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1652
	clr.w %d1	| _1652
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1101
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1101, _1652
	move.l %d1,644(%a0)	| _1652, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp1882
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _1645
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _104
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _182
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 326B], data_1147
	and.w #30719,%d2	|, data_1147
| voxel.c:194: 	data &= mask;
	or.w %d1,%d2	| _1645, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	moveq #0,%d3	| MEM[(short unsigned int *)screen_147 + 324B]
	move.w 324(%a0),%d3	| MEM[(short unsigned int *)screen_147 + 324B], MEM[(short unsigned int *)screen_147 + 324B]
	swap %d3	| _1606
	clr.w %d3	| _1606
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d0,%d2	| _182, data_1238
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w %d2,%d3	| data_1238, _1606
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d2	|, _1618
	swap %d2	| _1618
	clr.w %d2	| _1618
	move.w %d1,%d2	| _1645, _1618
	move.l 320(%a0),%d1	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 320B], _2390
	and.l #2013231103,%d1	|, _2390
| voxel.c:182: 	data &= mask;
	or.l %d2,%d1	| _1618, _1158
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1615
	swap %d2	| _1615
	clr.w %d2	| _1615
	move.w %d0,%d2	| _182, _1615
	or.l %d2,%d1	| _1615, _428
| voxel.c:184: 	*out++ = data;
	or.l #536879104,%d1	|, _428
	move.l %d1,320(%a0)	| _428, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 320B]
| voxel.c:192: 	*out++ = data;
	or.l #-1476386816,%d3	|, _1606
	move.l %d3,324(%a0)	| _1606, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 324B]
| voxel.c:785: 	for(int i=0; i<FRAMES; i++) {
	addq.l #4,%sp	|,
	cmp.l #800,78(%sp)	|, %sfp
	jne .L232		|
.L312:
| voxel.c:956: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%d2	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:959: 	print("Total time per frame: ");
	pea .LC16		|
	jsr _print		|
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	move.l %d2,%a0	| t1, _105
	sub.l 94(%sp),%a0	| %sfp, _105
| voxel.c:957: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| _105, tmp1916
	add.l %a0,%d0	| _105, tmp1916
	add.l %d0,%d0	| tmp1916, tmp1917
| voxel.c:958: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a2	|, tmp1922
	move.l 82(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp1922
| voxel.c:960: 	printnum(millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2038,
	jsr _printnum		|
| voxel.c:961: 	print("\r\nTime spent rendering terrain: ");
	pea .LC17		|
	jsr _print		|
| voxel.c:962: 	printnum(t_render * 5 / frames);
	move.l 94(%sp),%d0	| %sfp, tmp1927
	add.l %d0,%d0	|, tmp1927
	add.l %d0,%d0	| tmp1927, tmp1928
| voxel.c:962: 	printnum(t_render * 5 / frames);
	move.l 90(%sp),-(%sp)	| %sfp,
	move.l 98(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a2)		| tmp1922
| voxel.c:962: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2039,
	jsr _printnum		|
| voxel.c:963: 	print("\r\nTime spent rendering map: ");
	pea .LC18		|
	jsr _print		|
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 106(%sp),%d0	| %sfp, tmp1938
	add.l %d0,%d0	|, tmp1938
	add.l %d0,%d0	| tmp1938, tmp1939
| voxel.c:964: 	printnum(t_map * 5 / frames);
	move.l 98(%sp),-(%sp)	| %sfp,
	move.l 110(%sp),%a1	| %sfp,
	pea (%a1,%d0.l)		|
	jsr (%a2)		| tmp1922
| voxel.c:964: 	printnum(t_map * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2040,
	jsr _printnum		|
| voxel.c:965: 	print("\r\nTime spent on C2P conversion: ");
	pea .LC19		|
	jsr _print		|
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 94(%sp),%d0	| %sfp, tmp1949
	add.l %d0,%d0	|, tmp1949
	add.l %d0,%d0	| tmp1949, tmp1950
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	move.l 106(%sp),-(%sp)	| %sfp,
	move.l 98(%sp),%a5	| %sfp,
	pea (%a5,%d0.l)		|
	jsr (%a2)		| tmp1922
| voxel.c:966: 	printnum(t_c2p * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2041,
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
	moveq #2,%d0	|, tmp1962
#APP
| 709 "voxel.c" 1
	movw	%d0,%sp@-	| tmp1962
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	addq.l #4,%sp	|,
| voxel.c:710: 		Bconin(_CON);
	moveq #2,%d3	|, tmp1964
| voxel.c:709: 	while (Bconstat(_CON))
	tst.w %d0	| tmp2042
	jne .L233		|
	jra .L235		|
.L308:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L246		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1713
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_767], tmp1713
	move.w %d5,%a6	| tmp1713, chunky
.L215:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_519]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L216		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_519]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L215		|
	jra .L216		|
.L307:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L245		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1706
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_617], tmp1706
	move.w %d5,%a6	| tmp1706, chunky
.L208:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_579]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L209		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_579]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L208		|
	jra .L209		|
.L306:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L244		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1698
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_444], tmp1698
	move.w %d5,%a6	| tmp1698, chunky
.L201:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_639]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L202		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a6,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_639]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L201		|
	jra .L202		|
.L303:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L241		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1676
	move.w %d5,%a5	| tmp1676, chunky
.L180:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_819]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L181		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_819]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L180		|
	jra .L181		|
.L302:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d2	| _61, sample_y
	jle .L240		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1668
	move.w %d5,%a1	| tmp1668, chunky
.L174:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a1,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_879]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jgt .L175		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a1,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_879]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L174		|
	jra .L175		|
.L305:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L243		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1691
	move.w %d5,%a5	| tmp1691, chunky
.L194:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_699]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L195		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_699]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L194		|
	jra .L195		|
.L304:
| voxel.c:395: 			if (sample_y <= y_min) {
	cmp.w %d4,%d3	| _61, sample_y
	jle .L242		|
| voxel.c:390: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1683
	move.w %d5,%a5	| tmp1683, chunky
.L187:
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_759]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jgt .L188		|
| voxel.c:406: 				*pChunky = chunky;
	move.w %a5,(%a2)	| chunky, MEM[(short unsigned int *)pChunky_759]
| voxel.c:407: 				pChunky += CHUNKS_INTERLEAVED * LINES_SKIP;
	addq.l #8,%a2	|, state$pixel
	subq.w #2,%d0	|, y
| voxel.c:409: 			} while (sample_y <= y);
	cmp.w %d0,%d3	| y, sample_y
	jle .L187		|
	jra .L188		|
.L242:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1683
	move.w %d5,%a5	| tmp1683, chunky
	jra .L187		|
.L243:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1691
	move.w %d5,%a5	| tmp1691, chunky
	jra .L194		|
.L240:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d2	| _61, sample_y
	moveq #1,%d3	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1668
	move.w %d5,%a1	| tmp1668, chunky
	jra .L174		|
.L241:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1676
	move.w %d5,%a5	| tmp1676, chunky
	jra .L180		|
.L244:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1698
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_444], tmp1698
	move.w %d5,%a6	| tmp1698, chunky
	jra .L201		|
.L245:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1706
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_617], tmp1706
	move.w %d5,%a6	| tmp1706, chunky
	jra .L208		|
.L246:
| voxel.c:397: 				sample_y = y_min;
	move.w %d4,%d3	| _61, sample_y
	moveq #1,%d2	|, z
| voxel.c:401: 			unsigned short chunky = sample.color << 4;
	lsl.w #4,%d5	|, tmp1713
| voxel.c:403: 				chunky |= *fog_table_shifted;
	or.w (%a1),%d5	| MEM[(short unsigned int *)fog_table_shifted_767], tmp1713
	move.w %d5,%a6	| tmp1713, chunky
	jra .L215		|
.L247:
	move.l %d3,%d1	| sample_uv, sample_uv
	lea (152,%sp),%a0	|,, out
.L225:
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
	and.l #524286,%d0	|, index_985
| voxel.c:486: 		*out++ = sample.color;
	move.b (%a4,%d0.l),(%a0)+	| _986->D.2792.color, MEM[(unsigned char *)out_989 + 4294967295B]
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d1	| _970, _990
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:484: 	for (; samples > 0; --samples) {
	cmp.l %a0,%a6	| out, tmp2003
	jne .L225		|
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| _966, _996
| fixp.h:38: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_uv
| voxel.c:515: 		c2p_x2(out, buffer, 64, odd);
	move.l %d4,-(%sp)	| _80,
	pea 64.w		|
	pea 160(%sp)		|
	pea -320(%a3)		|
	jsr (%a2)		| tmp1990
| voxel.c:518: 		c2p_x2(out, buffer, 64, odd);
	move.l %d7,-(%sp)	| _1064,
	pea 64.w		|
	pea 176(%sp)		|
	pea -160(%a3)		|
	jsr (%a2)		| tmp1990
	lea (32,%sp),%sp	|,
| voxel.c:506: 	for (short y = 0; y < 16; y++) {
	addq.l #1,%d5	|, ivtmp.452
	lea (320,%a3),%a3	|, ivtmp.458
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| ivtmp.452,
	jne .L227		|
	jra .L311		|
.L248:
	sub.l %a0,%a0	| _2349
| voxel.c:896: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _2349,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d0	| pos.speed, _88
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _88,
	muls.w _pos+6,%d1	| pos.dirx, _302
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, _303
| voxel.c:898: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d1,(%a0)	| _303, pos.x
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w _pos+8,%d0	| pos.diry, _297
| fixp.h:22: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, _298
| voxel.c:899: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w %d0,_pos+2	| _298, pos.y
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:946: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	moveq #15,%d1	|,
	lsr.w %d1,%d0	|, _1926
	moveq #13,%d2	|,
	lsl.w %d2,%d0	|, _1929
| voxel.c:182: 	data &= mask;
	move.l 78(%sp),%a0	| %sfp,
	move.l (%a0),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147], _2338
	and.l #-536879105,%d2	|, _2338
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1694
	swap %d1	| _1694
	clr.w %d1	| _1694
	move.w %d0,%d1	| _1929, _1694
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1694, _2338
	move.l %d2,(%a0)	| _2338, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147]
| voxel.c:194: 	data &= mask;
	move.w 6(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 6B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 4(%a0),%d1	| MEM[(short unsigned int *)screen_147 + 4B], data_1048
	or.w #8192,%d1	|, data_1048
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1690
	clr.w %d1	| _1690
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1055
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1055, _1690
	move.l %d1,4(%a0)	| _1690, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 4B]
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:947: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	and.w #8192,%d0	|, _1943
| voxel.c:182: 	data &= mask;
	move.l 640(%a0),%d2	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 640B], _2345
	and.l #-536879105,%d2	|, _2345
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d1	|, _1656
	swap %d1	| _1656
	clr.w %d1	| _1656
	move.w %d0,%d1	| _1943, _1656
| voxel.c:184: 	*out++ = data;
	or.l %d1,%d2	| _1656, _2345
	move.l %d2,640(%a0)	| _2345, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 640B]
| voxel.c:194: 	data &= mask;
	move.w 646(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 646B], data
	and.w #-8193,%d2	|, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w 644(%a0),%d1	| MEM[(short unsigned int *)screen_147 + 644B], data_1094
	or.w #8192,%d1	|, data_1094
| voxel.c:192: 	*out++ = data;
	swap %d1	| _1652
	clr.w %d1	| _1652
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data_1101
| voxel.c:192: 	*out++ = data;
	move.w %d0,%d1	| data_1101, _1652
	move.l %d1,644(%a0)	| _1652, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 644B]
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d0	|,
	lsr.w %d0,%d1	|, tmp1882
| voxel.c:948: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	moveq #15,%d2	|,
	lsl.w %d2,%d1	|, _1645
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	lsr.w #1,%d0	|, _104
| voxel.c:949: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	and.w #2048,%d0	|, _182
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_147 + 326B], data_1147
	and.w #30719,%d2	|, data_1147
| voxel.c:194: 	data &= mask;
	or.w %d1,%d2	| _1645, data
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	moveq #0,%d3	| MEM[(short unsigned int *)screen_147 + 324B]
	move.w 324(%a0),%d3	| MEM[(short unsigned int *)screen_147 + 324B], MEM[(short unsigned int *)screen_147 + 324B]
	swap %d3	| _1606
	clr.w %d3	| _1606
| voxel.c:195: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d0,%d2	| _182, data_1238
| voxel.c:191: 	data |= ((color & 4) >> 2) << (15-x);
	move.w %d2,%d3	| data_1238, _1606
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d1,%d2	|, _1618
	swap %d2	| _1618
	clr.w %d2	| _1618
	move.w %d1,%d2	| _1645, _1618
	move.l 320(%a0),%d1	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 320B], _2390
	and.l #2013231103,%d1	|, _2390
| voxel.c:182: 	data &= mask;
	or.l %d2,%d1	| _1618, _1158
| voxel.c:183: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1615
	swap %d2	| _1615
	clr.w %d2	| _1615
	move.w %d0,%d2	| _182, _1615
	or.l %d2,%d1	| _1615, _428
| voxel.c:184: 	*out++ = data;
	or.l #536879104,%d1	|, _428
	move.l %d1,320(%a0)	| _428, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 320B]
| voxel.c:192: 	*out++ = data;
	or.l #-1476386816,%d3	|, _1606
	move.l %d3,324(%a0)	| _1606, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_147 + 324B]
| voxel.c:785: 	for(int i=0; i<FRAMES; i++) {
	addq.l #4,%sp	|,
	cmp.l #800,78(%sp)	|, %sfp
	jne .L232		|
	jra .L312		|
.L168:
| voxel.c:796: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-1284,%a0	|, _29
	jlt .L170		|
| voxel.c:794: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	pea 5.w		|
	move.l %a0,-(%sp)	| _29,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:797: 			pos.z += altitude_delta;
	add.w %d0,%d3	| tmp2035, pretmp_2109
	move.w %d3,%d0	| pretmp_2109, _1963
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d0,_pos+4	| _1963, pos.z
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _263
	move.l %d2,70(%sp)	| _263, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+8,58(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+6,%d7	| pos.dirx, prephitmp_2298
	sub.l %a3,%a3	| ivtmp.568
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d6	| ci_idx
	move.l %a3,%d5	| ivtmp.568, ivtmp.568
	move.w %d7,%a3	| prephitmp_2298, prephitmp_2298
	jra .L224		|
.L170:
| voxel.c:797: 			pos.z += altitude_delta;
	add.w #-256,%d3	|, pretmp_2109
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d3,%d0	| pretmp_2109, _1963
	cmp.w #32640,%d3	|, pretmp_2109
	jle .L169		|
	move.w #32640,%d0	|, _1963
	move.w %d0,%d3	| _1963, pretmp_2109
| voxel.c:798: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w %d0,_pos+4	| _1963, pos.z
| fixp.h:34: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _263
	move.l %d2,70(%sp)	| _263, %sfp
| voxel.c:804: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,94(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+8,58(%sp)	| pos.diry, %sfp
| voxel.c:822: 				pos.diry + ((short)(x - 160) * pos.dirx >> 7));
	move.w _pos+6,%d7	| pos.dirx, prephitmp_2298
	sub.l %a3,%a3	| ivtmp.568
| voxel.c:809: 		unsigned short ci_idx = 0;
	clr.w %d6	| ci_idx
	move.l %a3,%d5	| ivtmp.568, ivtmp.568
	move.w %d7,%a3	| prephitmp_2298, prephitmp_2298
	jra .L224		|
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
