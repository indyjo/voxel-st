| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
_printnum:
	lea (-16,%sp),%sp	|,
	movem.l #14392,-(%sp)	|,
	move.l 44(%sp),%d4	| n, n
| voxel.c:73: 	if (neg) n = -n;
	move.l %d4,%d2	| n, n
	jmi .L15		|
.L2:
| voxel.c:76: 	*p=0;
	clr.b 39(%sp)	| MEM[(char *)&buf + 15B]
| voxel.c:75: 	char *p=buf+15;
	lea (39,%sp),%a3	|,, s
| voxel.c:77: 	while (n > 0) {
	tst.l %d4	| n
	jeq .L3		|
	lea ___modsi3,%a4	|, tmp73
	lea ___divsi3,%a2	|, tmp74
.L4:
	move.l %a3,%d3	| s, p
| voxel.c:78: 		*(--p)='0' + (n % 10);
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a4)		| tmp73
	addq.l #8,%sp	|,
| voxel.c:78: 		*(--p)='0' + (n % 10);
	add.b #48,%d0	|,
	move.b %d0,-(%a3)	|, MEM[(char *)p_18]
| voxel.c:79: 		n /= 10;
	pea 10.w		|
	move.l %d2,-(%sp)	| n,
	jsr (%a2)		| tmp74
	addq.l #8,%sp	|,
	move.l %d0,%d2	| tmp76, n
| voxel.c:77: 	while (n > 0) {
	jne .L4		|
| voxel.c:81: 	if (neg) *(--p)='-';
	tst.l %d4	| n
	jlt .L16		|
.L3:
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| *s_1, _21
	jeq .L1		|
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp70
.L6:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp70
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_25], _21
	jne .L6		|
.L1:
| voxel.c:83: }
	movem.l (%sp)+,#7196	|,
	lea (16,%sp),%sp	|,
	rts	
.L16:
| voxel.c:81: 	if (neg) *(--p)='-';
	move.b #45,-1(%a3)	|, MEM[(char *)p_18 + 4294967295B]
	move.l %d3,%a3	| p, s
	subq.l #2,%a3	|, s
	jra .L3		|
.L15:
| voxel.c:73: 	if (neg) n = -n;
	neg.l %d2	| n
	jra .L2		|
.LC1:
	.ascii "Loading colors.tga\15\12\0"
.LC2:
	.ascii "Error reading colors.tga\15\12\0"
.LC3:
	.ascii "\15\12\0"
.LC4:
	.ascii "Loading height.tga\15\12\0"
.LC5:
	.ascii "Error reading height.tga\15\12\0"
.LC6:
	.ascii "colors.tga\0"
.LC7:
	.ascii "height.tga\0"
	.even
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:697: static int load_voxel_data() {
	lea .LC1,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #76,%d0	|, _76
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp97
.L18:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp97
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_80], _76
	jne .L18		|
| voxel.c:700: 	long file1 = Fopen("colors.tga", S_READ);
	move.l #.LC6,%d0	|, tmp100
	clr.w %d3	| tmp101
#APP
| 700 "voxel.c" 1
	movw	%d3,%sp@-	| tmp101
	movl	%d0,%sp@-	| tmp100
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a6	| tmp152, _33
| voxel.c:701: 	if (file1 < 0) {
	tst.l %d0	| _33
	jlt .L57		|
| voxel.c:705: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| _33,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %a6,%d7	|, _222
| voxel.c:706: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L58		|
.L34:
| voxel.c:758: 	Fclose(file1);
#APP
| 758 "voxel.c" 1
	movw	%a6,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L38:
| voxel.c:760: 	return 0;
	moveq #0,%d0	| <retval>
| voxel.c:761: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L58:
| voxel.c:708: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:708: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:709: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:710: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:712: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:713: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	moveq #80,%d4	|, ivtmp.221
	add.l %sp,%d4	|, ivtmp.221
	move.w #8192,%a5	|, tmp112
	move.w %a6,%d3	|,
#APP
| 717 "voxel.c" 1
	movl	%d4,%sp@-	| ivtmp.221
	movl	%a5,%sp@-	| tmp112
	movw	%d3,%sp@-	|
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp153, n
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	addq.l #8,%sp	|,
| voxel.c:716: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d6	|, p
| voxel.c:715: 	size_t n, remaining = 512*512;
	moveq #4,%d5	|, remaining
	swap %d5	| remaining
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L27		|
| voxel.c:66: 		Bconout(_CON, *s);
	move.w #2,%a4	|, tmp113
	move.w #46,%a3	|, tmp114
.L23:
| voxel.c:718: 		remaining -= n;
	sub.l %d3,%d5	| n, remaining
| voxel.c:66: 		Bconout(_CON, *s);
#APP
| 66 "voxel.c" 1
	movw	%a3,%sp@-	| tmp114
	movw	%a4,%sp@-	| tmp113
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d4,%a1	| ivtmp.221, ivtmp.236
	move.l %d4,%d0	| ivtmp.221, _86
	add.l %d3,%d0	| n, _86
	move.l %d6,%a0	| p, p
.L25:
| voxel.c:721: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_42], MEM[(unsigned char *)p_179]
| voxel.c:722: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:720: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.236, _86
	jne .L25		|
	add.l %d3,%d3	| n, tmp115
	add.l %d3,%d6	| tmp115, p
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _b
	cmp.l #8192,%d5	|, remaining
	jls .L26		|
	move.l %a5,%d0	| tmp112, _b
.L26:
#APP
| 717 "voxel.c" 1
	movl	%d4,%sp@-	| ivtmp.221
	movl	%d0,%sp@-	| _b
	movw	%d7,%sp@-	| _222
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp154, n
| voxel.c:717: 	while (0 != (n = Fread(file1, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L23		|
.L27:
	lea .LC3,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #13,%d0	|, _96
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp117
.L24:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp117
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_100], _96
	jne .L24		|
| voxel.c:726: 	free_image(&texture);
	pea 44(%sp)		|
	jsr _free_image		|
	addq.l #4,%sp	|,
	lea .LC4,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #76,%d0	|, _91
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp122
.L28:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp122
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_95], _91
	jne .L28		|
| voxel.c:729: 	long file2 = Fopen("height.tga", S_READ);
	move.l #.LC7,%d0	|, tmp125
	clr.w %d3	| tmp126
#APP
| 729 "voxel.c" 1
	movw	%d3,%sp@-	| tmp126
	movl	%d0,%sp@-	| tmp125
	movw	#61,%sp@-	|
	trap	#1
	addql	#8,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d7	| tmp155, _49
| voxel.c:730: 	if (file2 < 0) {
	jmi .L59		|
| voxel.c:734: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| _49,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:738: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.w %d7,%a3	| _49, _132
| voxel.c:735: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L31		|
| voxel.c:738: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l #8192,%d3	|,
#APP
| 738 "voxel.c" 1
	movl	%d4,%sp@-	| ivtmp.221
	movl	%d3,%sp@-	|
	movw	%d7,%sp@-	| _49
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp156, n
| voxel.c:736: 	p = &combined[0][0].height;
	move.l #_combined+1,%d6	|, p
| voxel.c:737: 	remaining = 512*512;
	moveq #4,%d5	|, remaining
	swap %d5	| remaining
| voxel.c:738: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	tst.l %d0	| n
	jeq .L37		|
| voxel.c:66: 		Bconout(_CON, *s);
	move.w #2,%a5	|, tmp133
	move.w #46,%a4	|, tmp134
.L32:
| voxel.c:739: 		remaining -= n;
	sub.l %d3,%d5	| n, remaining
| voxel.c:66: 		Bconout(_CON, *s);
#APP
| 66 "voxel.c" 1
	movw	%a4,%sp@-	| tmp134
	movw	%a5,%sp@-	| tmp133
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d4,%a1	| ivtmp.221, ivtmp.221
	move.l %d3,%d1	| n, _142
	add.l %d4,%d1	| ivtmp.221, _142
	move.l %d6,%a0	| p, p
.L35:
| voxel.c:744: 			*p = buf[i]*2;
	move.b (%a1)+,%d0	| MEM[(unsigned char *)_71], _12
| voxel.c:744: 			*p = buf[i]*2;
	add.b %d0,%d0	| _12, tmp135
	move.b %d0,(%a0)	| tmp135, MEM[(unsigned char *)p_182]
| voxel.c:745: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:741: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d1	| ivtmp.221, _142
	jne .L35		|
	add.l %d3,%d3	| n, tmp136
	add.l %d3,%d6	| tmp136, p
| voxel.c:738: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	move.l %d5,%d0	| remaining, _b
	cmp.l #8192,%d5	|, remaining
	jls .L36		|
	move.l #8192,%d0	|, _b
.L36:
#APP
| 738 "voxel.c" 1
	movl	%d4,%sp@-	| ivtmp.221
	movl	%d0,%sp@-	| _b
	movw	%a3,%sp@-	| _132
	movw	#63,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp157, n
| voxel.c:738: 	while (0 != (n = Fread(file2, remaining > sizeof(buf) ? sizeof(buf) : remaining, buf))) {
	jne .L32		|
.L37:
	lea .LC3,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #13,%d0	|, _111
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp138
.L33:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp138
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_115], _111
	jne .L33		|
| voxel.c:749: 	free_image(&height);
	pea 58(%sp)		|
	jsr _free_image		|
| voxel.c:751: 	Fclose(file1);
#APP
| 751 "voxel.c" 1
	movw	%a6,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:752: 	Fclose(file2);
| 752 "voxel.c" 1
	movw	%d7,%sp@-	| _49
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:753: 	return 1; // success
#NO_APP
	addq.l #4,%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:761: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L57:
	lea .LC2,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #69,%d0	|, _81
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp102
.L20:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp102
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_85], _81
	jeq .L38		|
| voxel.c:66: 		Bconout(_CON, *s);
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp102
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_85], _81
	jne .L20		|
	jra .L38		|
.L59:
	lea .LC5,%a3	|, s
	moveq #69,%d0	|, _101
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp127
.L30:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp127
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_105], _101
	jeq .L34		|
| voxel.c:66: 		Bconout(_CON, *s);
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp127
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_105], _101
	jne .L30		|
	jra .L34		|
.L31:
| voxel.c:756: 	Fclose(file2);
#APP
| 756 "voxel.c" 1
	movw	%d7,%sp@-	| _49
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
| voxel.c:758: 	Fclose(file1);
| 758 "voxel.c" 1
	movw	%a6,%sp@-	|
	movw	#62,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	jra .L38		|
	.even
_compute_and_set_bottom_palette.isra.0:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 8(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:649: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:652: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:659: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:661: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:673: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp157
	sub.w %d2,%a0	|, tmp157
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp157,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp159
	sub.w -74(%fp),%d1	| %sfp, tmp159
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:654: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp161
	sub.w -72(%fp),%d0	| %sfp, tmp161
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.265
| voxel.c:661: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp229
.L67:
| voxel.c:664: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_214], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_214], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d2	| b$a$2,
	muls.w %d7,%d2	| _4, tmp163
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp164
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d0,%d3	| b$a$0, tmp165
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp166
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp166, result
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d2	|, tmp168
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp170
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d7,%d0	| _4, tmp171
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp172
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp173
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp174
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d0	| tmp174, result
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d0	|, tmp176
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp178
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp178, result
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp180
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp181
| voxel.c:671: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp162
	jlt .L77		|
| voxel.c:673: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:679: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jlt .L78		|
.L62:
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -64(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp187
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp189
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp190
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w %d0,%d3	|, _501
	add.w %d4,%d3	| tmp190, _501
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -60(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp193
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp195
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp196
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:683: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:684: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L79		|
.L63:
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jlt .L68		|
.L80:
	cmp.w #128,%d4	|, _250
	jge .L69		|
	add.b %d4,%d4	| _250, iftmp.77_273
.L64:
| voxel.c:687: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.77_273, MEM[(unsigned char *)p_220]
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jlt .L70		|
.L81:
	cmp.w #128,%d3	|, _501
	jge .L71		|
	add.b %d3,%d3	| _501, iftmp.77_277
.L65:
| voxel.c:688: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.77_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:689: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jlt .L72		|
.L82:
	cmp.w #128,%d2	|, _422
	jge .L73		|
	add.b %d2,%d2	| _422, iftmp.77_286
| voxel.c:689: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.77_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:662: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.265
	cmp.l %a0,%a4	|, tmp229
	jne .L67		|
.L83:
| voxel.c:691: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:692: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:694: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:695: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L79:
| voxel.c:684: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp208
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp209
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp210
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -68(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp213
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp213, _422
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d4	| _250
	jge .L80		|
.L68:
	clr.b %d4	| iftmp.77_273
| voxel.c:687: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.77_273, MEM[(unsigned char *)p_220]
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d3	| _501
	jge .L81		|
.L70:
	clr.b %d3	| iftmp.77_277
| voxel.c:688: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.77_277, MEM[(unsigned char *)p_220 + 1B]
| voxel.c:689: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:642: 	return val < 0 ? 0 : (
	tst.w %d2	| _422
	jge .L82		|
.L72:
	clr.b %d2	| iftmp.77_286
| voxel.c:689: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.77_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:662: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.265
	cmp.l %a0,%a4	|, tmp229
	jne .L67		|
	jra .L83		|
.L77:
| voxel.c:671: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp162
| voxel.c:673: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp162, c_sun
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _223
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _235
	lsl.l #7,%d5	|, _235
| voxel.c:679: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _531
	jge .L62		|
.L78:
	clr.w %d2	| _531
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -64(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp187
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp189
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp190
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w %d0,%d3	|, _501
	add.w %d4,%d3	| tmp190, _501
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l -60(%fp),-(%sp)	| %sfp,
	move.l %a2,-(%sp)	| _223,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp193
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _531, tmp195
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp196
| voxel.c:637: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp193, _250
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp198
	asr.l #7,%d5	|, tmp199
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:683: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:684: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L63		|
	jra .L79		|
.L69:
| voxel.c:642: 	return val < 0 ? 0 : (
	st %d4		| iftmp.77_273
	jra .L64		|
.L73:
	st %d2		| iftmp.77_286
| voxel.c:689: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.77_286, MEM[(unsigned char *)p_284 + 4294967295B]
| voxel.c:662: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.265
	cmp.l %a0,%a4	|, tmp229
	jne .L67		|
	jra .L83		|
.L71:
| voxel.c:642: 	return val < 0 ? 0 : (
	st %d3		| iftmp.77_277
	jra .L65		|
	.even
	.globl	_linea0
_linea0:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
| voxel.c:102: 	__asm__ volatile(
#APP
| 102 "voxel.c" 1
	.word	0xa000+0x0
| 0 "" 2
| voxel.c:109: 	__aline = __xaline;
#NO_APP
	move.l %a0,___aline	| tmp34, __aline
| voxel.c:110: 	__fonts = __xfonts;
	move.l %a1,___fonts	| tmp35, __fonts
| voxel.c:111: 	__funcs = __xfuncs;
	move.l %a2,___funcs	| tmp36, __funcs
| voxel.c:112: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%a2	|,
	rts	
	.even
	.globl	_lineaa
_lineaa:
	move.l %a2,-(%sp)	|,
	move.l %d2,-(%sp)	|,
| voxel.c:116: 	__asm__ volatile(
#APP
| 116 "voxel.c" 1
	.word	0xa000+0xa
| 0 "" 2
| voxel.c:122: }
#NO_APP
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%a2	|,
	rts	
.LC8:
	.ascii "Failed to load voxel data.\15\12\0"
.LC9:
	.ascii "Loading cockpit.tga\15\12\0"
.LC10:
	.ascii "TOS reports \0"
.LC11:
	.ascii " bytes free.\15\12\0"
.LC12:
	.ascii "Computing tables\15\12\0"
.LC13:
	.ascii "Total time per frame: \0"
.LC14:
	.ascii "\15\12Time spent rendering terrain: \0"
.LC15:
	.ascii "Press any key to exit to TOS.\15\12\0"
.LC16:
	.ascii "cockpit.tga\0"
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
	.globl	_main
_main:
	lea (-496,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:784: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:786: 	Bconout(_CON, '\33');
	moveq #2,%d3	|, tmp1272
	moveq #27,%d4	|, tmp1273
#APP
| 786 "voxel.c" 1
	movw	%d4,%sp@-	| tmp1273
	movw	%d3,%sp@-	| tmp1272
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:787: 	Bconout(_CON, 'H');
#NO_APP
	moveq #72,%d0	|, tmp1275
#APP
| 787 "voxel.c" 1
	movw	%d0,%sp@-	| tmp1275
	movw	%d3,%sp@-	| tmp1272
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:788: 	Bconout(_CON, '\33');
| 788 "voxel.c" 1
	movw	%d4,%sp@-	| tmp1273
	movw	%d3,%sp@-	| tmp1272
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:789: 	Bconout(_CON, 'f');
#NO_APP
	moveq #102,%d0	|, tmp1279
#APP
| 789 "voxel.c" 1
	movw	%d0,%sp@-	| tmp1279
	movw	%d3,%sp@-	| tmp1272
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:792: 	Super(0L);
#NO_APP
	moveq #0,%d0	| tmp1280
#APP
| 792 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1280
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:102: 	__asm__ volatile(
| 102 "voxel.c" 1
	.word	0xa000+0x0
| 0 "" 2
| voxel.c:109: 	__aline = __xaline;
#NO_APP
	move.l %a0,___aline	| tmp2281, __aline
| voxel.c:110: 	__fonts = __xfonts;
	move.l %a1,___fonts	| tmp2282, __fonts
| voxel.c:111: 	__funcs = __xfuncs;
	move.l %a2,___funcs	| tmp2283, __funcs
| voxel.c:116: 	__asm__ volatile(
#APP
| 116 "voxel.c" 1
	.word	0xa000+0xa
| 0 "" 2
| voxel.c:799: 	save_palette(saved_palette);
#NO_APP
	pea 172(%sp)		|
	jsr _save_palette		|
| voxel.c:801: 	unsigned short *screen = Physbase();
#APP
| 801 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,88(%sp)	| tmp2284, %sfp
| voxel.c:803: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:805: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:805: 	if (!load_voxel_data()) {
	addq.l #4,%sp	|,
	tst.l %d0	| tmp2285
	jeq .L352		|
	lea .LC9,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #76,%d0	|, _233
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp1289
.L89:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp1289
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_277], _233
	jne .L89		|
| voxel.c:811: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC16		|
	lea (162,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 166(%sp),128(%sp)	| cockpit.pixels, %sfp
| voxel.c:776: 	long size = Malloc(-1);
	moveq #-1,%d0	|, tmp1294
#APP
| 776 "voxel.c" 1
	movl	%d0,%sp@-	| tmp1294
	movw	#72,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%d3	| tmp2286, _451
	addq.l #4,%sp	|,
	lea .LC10,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #84,%d0	|, _452
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d4	|, tmp1295
.L92:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d4,%sp@-	| tmp1295
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_456], _452
	jne .L92		|
| voxel.c:778: 	printnum(size);
	move.l %d3,-(%sp)	| _451,
	jsr _printnum		|
	addq.l #4,%sp	|,
	lea .LC11,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #32,%d0	|, _457
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp1299
.L93:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp1299
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_461], _457
	jne .L93		|
	moveq #67,%d0	|, _241
	lea .LC12,%a3	|, s
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp1302
.L94:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp1302
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_234], _241
	jne .L94		|
	move.l #_y_table+1024,%d6	|, ivtmp.667
| voxel.c:310: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:311: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:309: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea _fog_table,%a2	|, tmp2211
.L95:
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _467
	lsr.w #7,%d0	|, _467
| voxel.c:313: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _468
	move.w %d0,%d3	| _467, _468
| voxel.c:315: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp1327
| voxel.c:315: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp1327,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _1144
	add.w #45,%d2	|, _1144
| voxel.c:315: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a4	| ivtmp.667, ivtmp.656
	move.w #-17920,%a3	|, ivtmp.653
.L96:
| voxel.c:313: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _468,
	move.l %a3,-(%sp)	| ivtmp.653,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:315: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _1144,
	sub.w %d0,%d1	| tmp2287,
	move.w %d1,(%a4)+	|, MEM[(short int *)_1631]
| voxel.c:312: 		for (int h=0; h<256+256; h++) {
	lea (70,%a3),%a3	|, ivtmp.653
	cmp.w #17920,%a3	|, ivtmp.653
	jne .L96		|
| voxel.c:318: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:320: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp1310
	and.l %d4,%d0	| z, tmp1310
| voxel.c:320: 		if (TRIGGERS_PROGRESSION(z))
	jne .L97		|
| voxel.c:127: 	return x + x;
	add.w %d7,%d7	| step, step
.L97:
| voxel.c:323: 		int rel_dist = z - FOG_START;
	moveq #-40,%d0	|, rel_dist
	add.l %d4,%d0	| z, rel_dist
| voxel.c:324: 		if (rel_dist < 0) rel_dist = 0;
	jmi .L353		|
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp1315
	lsl.l #8,%d1	|, tmp1315
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp1315
	move.l %d1,-(%sp)	| tmp1315,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a2,%d4.l)	|, MEM[(unsigned char *)&fog_table + _1626 * 1]
| voxel.c:311: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:311: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.667
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L95		|
.L99:
| voxel.c:329: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.644
	move.l #_combined+525313,%d3	|, _254
	clr.b %d2	| max_height_lsm_flag.334
	clr.b %d1	| max_height_lsm.333
.L102:
	lea (-1024,%a1),%a0	|, ivtmp.644, ivtmp.637
.L101:
| voxel.c:332: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_2801], _2795
| voxel.c:332: 			if (combined[y][x].height > max_height)
	cmp.b %d0,%d1	| _2795, max_height_lsm.333
	jcc .L100		|
| voxel.c:333: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _2795, max_height_lsm.333
| voxel.c:332: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.334
.L100:
| voxel.c:331: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.637
	cmp.l %a1,%a0	| ivtmp.644, ivtmp.637
	jne .L101		|
| voxel.c:330: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a1),%a1	|, ivtmp.644
	cmp.l %d3,%a1	| _254, ivtmp.644
	jne .L102		|
	tst.b %d2	| max_height_lsm_flag.334
	jeq .L103		|
	move.b %d1,_max_height	| max_height_lsm.333, max_height
.L103:
| voxel.c:337: 	max_height >>= 1;
	move.b _max_height,%d0	| max_height, tmp1339
	lsr.b #1,%d0	|, tmp1339
	move.b %d0,_max_height	| tmp1339, max_height
| voxel.c:339: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp1341
	add.l #284,%d2	|, tmp1341
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp1341,
	jsr _memcpy		|
	move.l %d2,92(%sp)	| tmp1341, %sfp
	lea _pdata_table,%a6	|, tmp2208
	move.l %a6,132(%sp)	| tmp2208, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:349: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L104:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 80(%sp),%a0	| %sfp,
	move.l (%a0),116(%sp)	| MEM[(int *)_2925], %sfp
	move.l 4(%a0),112(%sp)	| MEM[(int *)_2925 + 4B], %sfp
	move.l 8(%a0),108(%sp)	| MEM[(int *)_2925 + 8B], %sfp
	move.l 12(%a0),104(%sp)	| MEM[(int *)_2925 + 12B], %sfp
	move.l 16(%a0),100(%sp)	| MEM[(int *)_2925 + 16B], %sfp
	move.l 20(%a0),96(%sp)	| MEM[(int *)_2925 + 20B], %sfp
	move.l 24(%a0),92(%sp)	| MEM[(int *)_2925 + 24B], %sfp
	move.l 28(%a0),88(%sp)	| MEM[(int *)_2925 + 28B], %sfp
	move.l 120(%sp),76(%sp)	| %sfp, %sfp
	clr.l 60(%sp)	| %sfp
| voxel.c:350: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	sub.l %a4,%a4	| fog
.L127:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 116(%sp),%d4	| %sfp,
	cmp.l 60(%sp),%d4	| %sfp,
	sge %d0		| tmp1378
	neg.b %d0	| mask
	move.l 112(%sp),%d5	| %sfp,
	cmp.l 60(%sp),%d5	| %sfp,
	jlt .L119		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L119:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 108(%sp),%d7	| %sfp,
	cmp.l 60(%sp),%d7	| %sfp,
	jlt .L120		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L120:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 104(%sp),%a0	| %sfp,
	cmp.l 60(%sp),%a0	| %sfp,
	jlt .L121		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L121:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 100(%sp),%a1	| %sfp,
	cmp.l 60(%sp),%a1	| %sfp,
	jlt .L122		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L122:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 96(%sp),%a3	| %sfp,
	cmp.l 60(%sp),%a3	| %sfp,
	jlt .L123		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L123:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 92(%sp),%d1	| %sfp,
	cmp.l 60(%sp),%d1	| %sfp,
	jlt .L124		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L124:
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	move.l 88(%sp),%d2	| %sfp,
	cmp.l 60(%sp),%d2	| %sfp,
	jlt .L125		|
| voxel.c:355: 				if (bayer[y][x] >= fog * (64/FOG_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L125:
| voxel.c:360: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d3	| mask,
	and.b #-86,%d3	|,
	move.b %d3,59(%sp)	|, %sfp
| voxel.c:298: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _517
	move.b %d3,%d1	|, _517
| voxel.c:298: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d3,%d4	|,
	lsl.w #8,%d4	|,
	swap %d4	|
	clr.w %d4	|
	move.l %d4,64(%sp)	|, %sfp
| voxel.c:299: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d5	| _517,
	swap %d5	|
	clr.w %d5	|
	move.l %d5,68(%sp)	|, %sfp
| voxel.c:300: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _517
	move.l %d1,72(%sp)	| _517, %sfp
| voxel.c:298: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _538
	and.l %d0,%d7	| mask, _538
| voxel.c:298: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _538, iftmp.30_539
	lsl.w #8,%d6	|, iftmp.30_539
	swap %d6	| iftmp.30_539
	clr.w %d6	| iftmp.30_539
| voxel.c:299: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _538,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.31_542
| voxel.c:300: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _538,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.32_548
| voxel.c:362: 						| pdata_pattern(15, ~mask);
	not.b %d0	| tmp1381
	and.l #255,%d0	|, tmp1382
	move.l %d0,%d1	| tmp1382, tmp1384
	lsl.l #8,%d1	|, tmp1384
	add.l %d1,%d0	| tmp1384, tmp1385
	move.l %d0,%d1	| tmp1385, tmp1386
	swap %d1	| tmp1386
	clr.w %d1	| tmp1386
	add.l %d1,%d0	| tmp1386, tmp1385
	move.l %d0,52(%sp)	| tmp1385, %sfp
	move.l 76(%sp),%a3	| %sfp, ivtmp.617
| voxel.c:357: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L117:
	move.b %d3,%d5	| color1, _3084
	btst #1,%d3	|, color1
	jeq .L105		|
	move.l 68(%sp),%d0	| %sfp, iftmp.31_521
.L106:
	btst #0,%d3	|, color1
	jeq .L107		|
	move.l 64(%sp),%d1	| %sfp, iftmp.30_518
	or.l %d1,%d0	| iftmp.30_518, tmp1351
	or.l 52(%sp),%d0	| %sfp, tmp1352
	btst #2,%d5	|, _3084
	jeq .L109		|
.L360:
	move.l 72(%sp),%d4	| %sfp, iftmp.32_527
.L110:
	or.l %d0,%d4	| tmp1352, tmp1356
	btst #3,%d5	|, _3084
	jeq .L111		|
	move.b 59(%sp),%d0	| %sfp, _513
	or.b %d0,%d4	| _513, _2988
	move.l %d3,%d2	| color1, ivtmp.609
	neg.l %d2	| ivtmp.609
	move.l %a3,%a0	| ivtmp.617, ivtmp.610
	move.l %d7,130(%sp)	| _538, %sfp
.L116:
	move.b %d5,%d0	| _3084, _2712
	add.b %d2,%d0	| ivtmp.609, _2712
| voxel.c:298: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp1362
	and.l %d0,%d1	| _2712, tmp1362
	neg.l %d1	| tmp1363
	and.l %d6,%d1	| iftmp.30_539, tmp1364
	or.l %d4,%d1	| _2988, _2399
| voxel.c:299: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _2712
	jeq .L113		|
	move.l %a2,%d7	| iftmp.31_542,
	or.l %d7,%d1	|, _2399
.L113:
| voxel.c:300: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _2712
	jeq .L114		|
	move.l %a1,%d7	| iftmp.32_548,
	or.l %d7,%d1	|, _2399
.L114:
| voxel.c:301: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _2712
	jeq .L115		|
	or.l 130(%sp),%d1	| %sfp, _2399
.L115:
| voxel.c:363: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp1369
	and.l %d2,%d0	| ivtmp.609, tmp1369
| voxel.c:365: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	lsl.l #4,%d0	|, tmp1370
	add.l %d3,%d0	| color1, tmp1371
	lsl.l #3,%d0	|, tmp1372
	add.l %a4,%d0	| fog, tmp1373
	lsl.l #3,%d0	|, tmp1374
	add.l %a5,%d0	| y, tmp1375
	add.l %d0,%d0	| tmp1375, tmp1376
	add.l %d0,%d0	| tmp1376, tmp1377
	move.l %d1,(%a6,%d0.l)	| _2399, pdata_table[index1_2861][fog_652][y_611]
| voxel.c:365: 					pdata_table[index2][fog][y] = pdata_table[index1][fog][y] = pdata;
	move.l %d1,(%a0)	| _2399, MEM[(unsigned int *)_2711]
| voxel.c:358: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.609
	lea (-3840,%a0),%a0	|, ivtmp.610
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.609,
	jne .L116		|
| voxel.c:357: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 130(%sp),%d7	| %sfp, _538
	addq.l #1,%d3	|, color1
| voxel.c:357: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.617
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L117		|
| voxel.c:350: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #1,%a4	|, fog
| voxel.c:350: 		for (int fog = 0; fog < FOG_STEPS; fog++) {
	addq.l #8,60(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,76(%sp)	|, %sfp
	moveq #8,%d3	|,
	cmp.l %a4,%d3	| fog,
	jne .L127		|
| voxel.c:349: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:349: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d3	|,
	add.l %d3,80(%sp)	|, %sfp
	addq.l #4,120(%sp)	|, %sfp
	moveq #8,%d4	|,
	cmp.l %a5,%d4	| y,
	jne .L104		|
| voxel.c:374: 	short top_envelope[20] = {
	move.l #1048590,204(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope]
	move.l #786443,208(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 4B]
	move.l #655369,212(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 8B]
	move.l #589832,216(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 12B]
	move.l #524296,220(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 16B]
	move.l #524296,224(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 20B]
	move.l #524297,228(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 24B]
	move.l #655371,232(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 28B]
	move.l #786444,236(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 32B]
	move.l #786444,240(%sp)	|, MEM <vector(2) short int> [(short int *)&top_envelope + 36B]
| voxel.c:380: 	short bottom_envelope[20] = {
	move.l #458758,244(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope]
	move.l #327684,248(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 4B]
	move.l #196610,252(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 8B]
	move.l #65537,256(%sp)	|, MEM <vector(2) short int> [(short int *)&bottom_envelope + 12B]
	clr.l 260(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 16B]
	clr.l 264(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 20B]
	clr.l 268(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 24B]
	clr.l 272(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 28B]
	clr.l 276(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 32B]
	clr.l 280(%sp)	| MEM <vector(2) short int> [(short int *)&bottom_envelope + 36B]
	lea (204,%sp),%a0	|,, ivtmp.590
	move.l #_view_min+80,%d0	|, ivtmp.593
	lea _view_min,%a3	|, ivtmp.558
	move.l %sp,%d3	|, ivtmp.597
	add.l #244,%d3	|, ivtmp.597
	lea _view_max+80,%a4	|, ivtmp.600
	lea _view_max,%a5	|, ivtmp.561
	moveq #40,%d2	|, _2768
	add.l %a0,%d2	| ivtmp.590, _2768
	move.l %a5,%a2	| ivtmp.561, ivtmp.602
	move.l %a3,%a1	| ivtmp.558, ivtmp.595
	move.l %a3,%d4	| ivtmp.558, ivtmp.558
.L128:
| voxel.c:388: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d1	| MEM[(short int *)_2673], _580
| voxel.c:388: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.l %d0,%a3	| ivtmp.593,
	move.w %d1,-(%a3)	| _580, MEM[(short int *)_2674]
	move.l %a3,%d0	|, ivtmp.593
| voxel.c:388: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d1,(%a1)+	| _580, MEM[(short int *)_2675]
| voxel.c:389: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.l %d3,%a3	| ivtmp.597,
	moveq #118,%d1	|, _584
	sub.w (%a3)+,%d1	| MEM[(short int *)_2676], _584
	move.l %a3,%d3	|, ivtmp.597
| voxel.c:389: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d1,-(%a4)	| _584, MEM[(short int *)_2677]
| voxel.c:389: 		view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];
	move.w %d1,(%a2)+	| _584, MEM[(short int *)_2782]
| voxel.c:387: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d2	| ivtmp.590, _2768
	jne .L128		|
	move.l %d4,%a3	| ivtmp.558, ivtmp.558
	lea _horizon,%a0	|, ivtmp.583
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	moveq #0,%d1	| x
.L129:
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	move.l %d1,%d0	| x, tmp1389
	asr.l #3,%d0	|, tmp1389
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	add.l %d0,%d0	| tmp1389, tmp1390
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	lea _view_min,%a1	|,
	move.w (%a1,%d0.l),%d0	| view_min[_587],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_2597]
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	addq.l #1,%d1	|, x
| voxel.c:396: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8] - LINES_SKIP;
	cmp.l #320,%d1	|, x
	jne .L129		|
| voxel.c:815: 	if (!cockpit.pixels) goto error;
	tst.l 124(%sp)	| %sfp
	jeq .L233		|
| voxel.c:816: 	read_palette_vectors(cockpit.colors);
	move.l 166(%sp),%a1	| cockpit.colors, colors
	lea _palette_vectors,%a0	|, ivtmp.576
	lea ___mulsi3,%a2	|, tmp2221
	move.l %a1,%a4	| colors, colors
.L130:
| voxel.c:624: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_1245], b
| voxel.c:625: 		unsigned char g = *colors++;
	move.b 1(%a4),%d3	| MEM[(const unsigned char *)colors_1245 + 1B], g
| voxel.c:626: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:605: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_598 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:606: 	return c >> 1;
	asr.b #1,%d1	|, _602
| voxel.c:605: 	signed char c = color - 128;
	add.b #-128,%d3	|, c
| voxel.c:606: 	return c >> 1;
	asr.b #1,%d3	|, _606
| voxel.c:605: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:606: 	return c >> 1;
	asr.b #1,%d2	|, _610
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _610
	move.w %d2,%d0	| _610,
	muls.w %d2,%d0	| _610, tmp1396
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1397
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d3	| _606
	move.w %d3,%d4	| _606,
	muls.w %d3,%d4	| _606, tmp1400
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1401
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1401, tmp1402
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _602
	move.w %d1,%d4	| _602,
	muls.w %d1,%d4	| _602, tmp1405
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1406
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1406, result
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1408
	ext.l %d0	| tmp1409
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1410
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, tmp1411
	sub.w %d0,%d4	| tmp1410, tmp1411
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d4	|, _1163
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1163,
	move.w %d1,%a1	| _602,
	move.l %a1,-(%sp)	|,
	move.l %a0,56(%sp)	|,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2290, _1165
	asr.l #7,%d5	|, _1165
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1163,
	move.w %d3,%a1	| _606,
	move.l %a1,-(%sp)	|,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2291, _1106
	asr.l #7,%d3	|, _1106
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1163,
	move.w %d2,%a1	| _610,
	move.l %a1,-(%sp)	|,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2292, _1095
	asr.l #7,%d4	|, _1095
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1165,
	move.l %d5,-(%sp)	| _1165,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2293, tmp1426
	asr.l #7,%d2	|, tmp1426
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1106,
	move.l %d3,-(%sp)	| _1106,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1429
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1429, tmp1430
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1095,
	move.l %d4,-(%sp)	| _1095,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1433
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1430, result
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1435
	ext.l %d0	| tmp1436
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1437
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp1438
	sub.w %d0,%d2	| tmp1437, tmp1438
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _276
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1165,
	move.l %d2,-(%sp)	| _276,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp2296, _280
	asr.l #7,%d5	|, _280
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1106,
	move.l %d2,-(%sp)	| _276,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2297, _213
	asr.l #7,%d3	|, _213
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1095,
	move.l %d2,-(%sp)	| _276,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2298, _1780
	asr.l #7,%d4	|, _1780
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _280,
	move.l %d5,-(%sp)	| _280,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2299, tmp1447
	asr.l #7,%d2	|, tmp1447
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _213,
	move.l %d3,-(%sp)	| _213,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1450
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1450, tmp1451
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1780,
	move.l %d4,-(%sp)	| _1780,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1454
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1451, result
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp1456
	ext.l %d0	| tmp1457
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1458
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp1459
	sub.w %d0,%d2	| tmp1458, tmp1459
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d2	| _1828
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1828,
	move.l %d5,-(%sp)	| _280,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp2302, _1830
	asr.l #7,%d6	|, _1830
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1828,
	move.l %d3,-(%sp)	| _213,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2303, _1834
	asr.l #7,%d3	|, _1834
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _1828,
	move.l %d4,-(%sp)	| _1780,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp2304, _1838
	asr.l #7,%d4	|, _1838
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _1830,
	move.l %d6,-(%sp)	| _1830,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2305, tmp1468
	asr.l #7,%d2	|, tmp1468
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d3,-(%sp)	| _1834,
	move.l %d3,-(%sp)	| _1834,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1471
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp1471, tmp1472
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _1838,
	move.l %d4,-(%sp)	| _1838,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1475
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d2,%d0	| tmp1472, result
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| result
	moveq #-128,%d1	|,
	add.l %d1,%d0	|, tmp1478
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1479
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp1480
	sub.w %d0,%d5	| tmp1479, tmp1480
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.l %d5	| _1886
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1886,
	move.l %d6,-(%sp)	| _1830,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp2308, tmp1483
	asr.l #7,%d2	|, tmp1483
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1886,
	move.l %d3,-(%sp)	| _1834,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d3	| tmp2309, tmp1486
	asr.l #7,%d3	|, tmp1486
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _1886,
	move.l %d4,-(%sp)	| _1838,
	jsr (%a2)		| tmp2221
	addq.l #8,%sp	|,
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d1	| tmp2310, tmp1489
	asr.l #7,%d1	|, tmp1489
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d2,%d0	| tmp1483, tmp1490
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1491
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d4	|,
	muls.w %d3,%d4	| tmp1486, tmp1492
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1493
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1493, tmp1494
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d4	|,
	muls.w %d1,%d4	| tmp1489, tmp1495
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp1496
| voxel.c:611: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d4,%d0	| tmp1496, result
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d0	| result
	moveq #-128,%d4	|,
	add.l %d4,%d0	|, tmp1499
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp1500
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d4	|, _1940
	sub.w %d0,%d4	| tmp1500, _1940
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d0	|,
	muls.w %d4,%d0	| _1940, tmp1502
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1503
| voxel.c:631: 		palette_vectors[i].c = v.c;
	swap %d0	| tmp1501
	clr.w %d0	| tmp1501
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d2	|,
	muls.w %d4,%d2	| _1940, tmp1508
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp1509
| voxel.c:631: 		palette_vectors[i].c = v.c;
	move.w %d2,%d0	| tmp1509, tmp1501
	move.l 48(%sp),%a0	|,
	move.l %d0,(%a0)	| tmp1501, MEM <vector(2) short int> [(union  *)_2586]
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d1,%d0	|,
	muls.w %d4,%d0	| _1940, tmp1510
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp1511
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a0)	| tmp1511, MEM <fixp> [(union  *)_2586 + 4B]
| voxel.c:623: 	for (int i=0; i<16; i++) {
	addq.l #6,%a0	|, ivtmp.576
	cmp.l #_palette_vectors+96,%a0	|, ivtmp.576
	jne .L130		|
	move.l 84(%sp),%d0	| %sfp, _2559
	add.l #32000,%d0	|, _2559
| voxel.c:801: 	unsigned short *screen = Physbase();
	move.l 84(%sp),%a0	| %sfp, ivtmp.567
.L131:
| voxel.c:210: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.340_2788]
	cmp.l %a0,%d0	| ivtmp.567, _2559
	jne .L131		|
| voxel.c:576: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l (%a6),%d0	| pdata_table[0][0][0], movep_data
	clr.w %d3	| ivtmp.559
	move.l 84(%sp),%a1	| %sfp, _206
.L136:
| voxel.c:820: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a3)+,%d1	| MEM[(short int *)_2547], _5
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d4	| ivtmp.559, tmp1513
	asr.w #4,%d4	|, tmp1513
	ext.l %d4	| tmp1514
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%d4	| tmp1514, tmp1515
	add.l %d4,%d4	| tmp1515, _312
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d2	|, tmp1518
	lsr.l #3,%d2	|, tmp1518
	moveq #1,%d5	|,
	and.l %d5,%d2	|, _317
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d4,%a0	| _312, tmp1519
	add.l %d4,%a0	| _312, tmp1519
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| _317, tmp1520
	lea (%a1,%a0.l),%a0	| _206, tmp1520, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L132		|
	mulu.w #160,%d1	|, tmp1521
	add.l %a0,%d1	| pBlock, _2515
.L133:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:579: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2515
	jne .L133		|
.L132:
| voxel.c:821: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a5)+,%a0	| MEM[(short int *)_2554], _9
| voxel.c:821: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _11
	sub.w %a0,%d1	| _9, _11
| voxel.c:821: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp1523
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp1523,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp1524
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d4,%a0	| _312, tmp1526
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp1526, tmp1527
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d2	| tmp1527, tmp1528
	lea (%a1,%d2.l),%a0	| _206, tmp1528, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _11
	jle .L134		|
	mulu.w #160,%d1	|, tmp1529
	add.l %a0,%d1	| pBlock, _2487
.L135:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:579: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _2487
	jne .L135		|
.L134:
| voxel.c:819: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.559
	cmp.l #_view_min+80,%a3	|, ivtmp.558
	jne .L136		|
| voxel.c:824: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:825: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:826: 	install_interrupts();
	jsr _install_interrupts		|
	move.l 88(%sp),%d0	| %sfp,
	add.l #19360,%d0	|,
	move.l %d0,80(%sp)	|, %sfp
	move.w 162(%sp),%a0	| cockpit.width,
	move.l %a0,92(%sp)	|, %sfp
	move.l 88(%sp),%d0	| %sfp,
	add.l #32160,%d0	|,
	move.l %d0,96(%sp)	|, %sfp
	addq.l #4,%sp	|,
| voxel.c:829: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l 80(%sp)	| %sfp
.L137:
	move.l 76(%sp),%a3	| %sfp, out
	lea (-160,%a3),%a3	|, out
	move.l 124(%sp),%a4	| %sfp, ivtmp.526
	add.l 80(%sp),%a4	| %sfp, ivtmp.526
.L138:
| voxel.c:190: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a4),%d1	| MEM[(const unsigned char *)_2384],
	move.w %d1,%a1	|, px
	move.b 1(%a4),%d2	| MEM[(const unsigned char *)_2384 + 1B],
	move.w %d2,%a0	|, px
	move.b 2(%a4),%d7	| MEM[(const unsigned char *)_2384 + 2B], px
	move.b 3(%a4),%d6	| MEM[(const unsigned char *)_2384 + 3B], px
	move.b 4(%a4),%d5	| MEM[(const unsigned char *)_2384 + 4B], px
	move.b 5(%a4),%d4	| MEM[(const unsigned char *)_2384 + 5B], px
	move.b 6(%a4),%d3	| MEM[(const unsigned char *)_2384 + 6B], px
	move.b 7(%a4),%d2	| MEM[(const unsigned char *)_2384 + 7B], px
	move.b 8(%a4),101(%sp)	| MEM[(const unsigned char *)_2384 + 8B], %sfp
	move.b 9(%a4),97(%sp)	| MEM[(const unsigned char *)_2384 + 9B], %sfp
	move.b 10(%a4),73(%sp)	| MEM[(const unsigned char *)_2384 + 10B], %sfp
	move.b 11(%a4),69(%sp)	| MEM[(const unsigned char *)_2384 + 11B], %sfp
	move.b 12(%a4),65(%sp)	| MEM[(const unsigned char *)_2384 + 12B], %sfp
	move.b 13(%a4),61(%sp)	| MEM[(const unsigned char *)_2384 + 13B], %sfp
	move.b 14(%a4),57(%sp)	| MEM[(const unsigned char *)_2384 + 14B], %sfp
	move.b 15(%a4),53(%sp)	| MEM[(const unsigned char *)_2384 + 15B], %sfp
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1539
	add.w %d1,%a5	| tmp1539, tmp1540
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1540,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1543
	add.w %d0,%a2	| tmp1543, tmp1544
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1544,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1547
	add.w %d0,%a5	| tmp1547, tmp1548
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1548,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1551
	add.w %d0,%a2	| tmp1551, tmp1552
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1552,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1555
	add.w %d0,%a5	| tmp1555, tmp1556
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1556,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1559
	add.w %d0,%a2	| tmp1559, tmp1560
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1560,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1563
	add.w %d0,%a5	| tmp1563, tmp1564
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 101(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1564,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1567
	add.w %d0,%a2	| tmp1567, tmp1568
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 97(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1568,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1571
	add.w %d0,%a5	| tmp1571, tmp1572
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 73(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1572,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1575
	add.w %d0,%a2	| tmp1575, tmp1576
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 69(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1576,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1579
	add.w %d0,%a5	| tmp1579, tmp1580
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 65(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1580,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1583
	add.w %d0,%a2	| tmp1583, tmp1584
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 61(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1587
	add.w %d0,%a5	| tmp1587, tmp1588
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1588,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1591
	add.w %d0,%a2	| tmp1591, tmp1592
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d0	| %sfp,
	and.w #1,%d0	|,
| voxel.c:193: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1592,
	or.w %d1,%d0	|,
	move.w %d0,(%a3)	|, MEM[(short unsigned int *)out_1090]
| voxel.c:194: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a2	|, tmp1598
| voxel.c:194: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1598,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1602
	add.w %d1,%a5	| tmp1602, tmp1603
| voxel.c:194: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1603,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1607
	add.w %d0,%a2	| tmp1607, tmp1608
| voxel.c:194: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1608,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1612
	add.w %d1,%a5	| tmp1612, tmp1613
| voxel.c:194: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1613,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1617
	add.w %d0,%a2	| tmp1617, tmp1618
| voxel.c:194: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1618,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1622
	add.w %d1,%a5	| tmp1622, tmp1623
| voxel.c:194: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1623,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1627
	add.w %d0,%a2	| tmp1627, tmp1628
| voxel.c:194: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1628,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1632
	add.w %d1,%a5	| tmp1632, tmp1633
| voxel.c:194: 				px >>= 1;
	move.b 101(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1633,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1637
	add.w %d0,%a2	| tmp1637, tmp1638
| voxel.c:194: 				px >>= 1;
	move.b 97(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1638,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1642
	add.w %d1,%a5	| tmp1642, tmp1643
| voxel.c:194: 				px >>= 1;
	move.b 73(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1643,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1647
	add.w %d0,%a2	| tmp1647, tmp1648
| voxel.c:194: 				px >>= 1;
	move.b 69(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1648,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1652
	add.w %d1,%a5	| tmp1652, tmp1653
| voxel.c:194: 				px >>= 1;
	move.b 65(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1653,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1657
	add.w %d0,%a2	| tmp1657, tmp1658
| voxel.c:194: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1658,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp1662
	add.w %d1,%a5	| tmp1662, tmp1663
| voxel.c:194: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	|,
	and.w #1,%d0	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp1663,
	or.w %d1,%d0	|,
	move.w %d0,%a2	|, tmp1667
	add.w %d0,%a2	| tmp1667, tmp1668
| voxel.c:194: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:195: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a2,%d0	| tmp1668,
	or.w %d0,%d1	|,
	move.w %d1,2(%a3)	|, MEM[(short unsigned int *)out_1090 + 2B]
| voxel.c:196: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp1675
| voxel.c:196: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1675,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1679
	add.w %d0,%a5	| tmp1679, tmp1680
| voxel.c:196: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1680,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1684
	add.w %d1,%a2	| tmp1684, tmp1685
| voxel.c:196: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1685,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1689
	add.w %d0,%a5	| tmp1689, tmp1690
| voxel.c:196: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1690,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1694
	add.w %d1,%a2	| tmp1694, tmp1695
| voxel.c:196: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1695,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1699
	add.w %d0,%a5	| tmp1699, tmp1700
| voxel.c:196: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1700,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1704
	add.w %d1,%a2	| tmp1704, tmp1705
| voxel.c:196: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1705,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1709
	add.w %d0,%a5	| tmp1709, tmp1710
| voxel.c:196: 				px >>= 1;
	move.b 101(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1710,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1714
	add.w %d1,%a2	| tmp1714, tmp1715
| voxel.c:196: 				px >>= 1;
	move.b 97(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1715,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1719
	add.w %d0,%a5	| tmp1719, tmp1720
| voxel.c:196: 				px >>= 1;
	move.b 73(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1720,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1724
	add.w %d1,%a2	| tmp1724, tmp1725
| voxel.c:196: 				px >>= 1;
	move.b 69(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1725,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1729
	add.w %d0,%a5	| tmp1729, tmp1730
| voxel.c:196: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1730,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1734
	add.w %d1,%a2	| tmp1734, tmp1735
| voxel.c:196: 				px >>= 1;
	move.b 61(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1735,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp1739
	add.w %d0,%a5	| tmp1739, tmp1740
| voxel.c:196: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a2	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp1740,
	or.w %d0,%d1	|,
	move.w %d1,%a2	|, tmp1744
	add.w %d1,%a2	| tmp1744, tmp1745
| voxel.c:196: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:197: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a2,%d1	| tmp1745,
	or.w %d1,%d0	|,
	move.w %d0,4(%a3)	|, MEM[(short unsigned int *)out_1090 + 4B]
| voxel.c:204: 			*out++ = plane3;
	addq.l #8,%a3	|, out
| voxel.c:198: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a1	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a1	|, tmp1752
| voxel.c:198: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp1752,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp1756
	add.w %d1,%a0	| tmp1756, tmp1757
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp1760
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp1757,
	or.w %d1,%d7	|, tmp1761
	add.w %d7,%d7	| tmp1761, tmp1762
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp1765
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp1762, tmp1766
	add.w %d6,%d6	| tmp1766, tmp1767
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp1770
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp1767, tmp1771
	add.w %d5,%d5	| tmp1771, tmp1772
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp1775
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp1772, tmp1776
	add.w %d4,%d4	| tmp1776, tmp1777
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp1780
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp1777, tmp1781
	add.w %d3,%d3	| tmp1781, tmp1782
| voxel.c:198: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp1785
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp1782, tmp1786
	add.w %d2,%d2	| tmp1786, tmp1787
| voxel.c:198: 				px >>= 1;
	move.b 101(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1790
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp1787, tmp1791
	add.w %d1,%d1	| tmp1791, tmp1792
| voxel.c:198: 				px >>= 1;
	move.b 97(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1795
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1795, tmp1796
	add.w %d1,%d1	| tmp1796, tmp1797
| voxel.c:198: 				px >>= 1;
	move.b 73(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1800
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1800, tmp1801
	add.w %d1,%d1	| tmp1801, tmp1802
| voxel.c:198: 				px >>= 1;
	move.b 69(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1805
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1805, tmp1806
	add.w %d1,%d1	| tmp1806, tmp1807
| voxel.c:198: 				px >>= 1;
	move.b 65(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1810
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1810, tmp1811
	add.w %d1,%d1	| tmp1811, tmp1812
| voxel.c:198: 				px >>= 1;
	move.b 61(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1815
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1815, tmp1816
	add.w %d1,%d1	| tmp1816, tmp1817
| voxel.c:198: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp1820
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp1817, tmp1821
	add.w %d0,%d0	| tmp1821, tmp1822
| voxel.c:198: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp1825
| voxel.c:199: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp1822, tmp1825
	move.w %d1,-2(%a3)	| tmp1825, MEM[(short unsigned int *)out_706 + 4294967294B]
| voxel.c:187: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a4),%a4	|, ivtmp.526
	cmp.l 76(%sp),%a3	| %sfp, out
	jne .L138		|
| voxel.c:186: 	for (int y=0; y<height; y++) {
	lea (160,%a3),%a3	|, out
	move.l %a3,76(%sp)	| out, %sfp
	move.l 88(%sp),%d2	| %sfp,
	add.l %d2,80(%sp)	|, %sfp
	cmp.l 92(%sp),%a3	| %sfp, out
	jne .L137		|
| voxel.c:833: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,148(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:838: 	int frames = 0;
	clr.l 134(%sp)	| %sfp
| voxel.c:836: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,124(%sp)	|, %sfp
| voxel.c:834: 	unsigned long t_render = 0;
	clr.l 130(%sp)	| %sfp
| voxel.c:831: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	moveq #1,%d6	|, fog_enabled
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	lea _combined,%a4	|, tmp2263
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1827
#APP
| 764 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1827
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2311
	jeq .L246		|
.L358:
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 764 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1827
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp1830
	ext.l %d0	| tmp1830
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,156(%sp)	| tmp1830, %sfp
| voxel.c:842: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L354		|
| voxel.c:847: 		frames++;
	addq.l #1,134(%sp)	|, %sfp
| voxel.c:176: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_336
	move.w (%a0),%d0	| *hw_palette.49_336, _337
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _341
| voxel.c:852: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _26
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp1835
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp1837
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp1839
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp1841
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1842
	add.l %d1,%d0	| tmp1841, tmp1843
	add.l %d0,%d0	| tmp1843, tmp1844
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_19][_22].D.2732.height, combined[_19][_22].D.2732.height
	lsr.b #1,%d0	|, tmp1847
| voxel.c:852: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp1849
	lsl.w #7,%d0	|, tmp1850
	move.w %d3,%d5	| _26,
	sub.w %d0,%d5	| tmp1850,
	move.w %d5,128(%sp)	|, %sfp
| voxel.c:853: 		if (desired_height >= 0) {
	tst.w 124(%sp)	| %sfp
	jlt .L355		|
.L142:
| voxel.c:854: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 124(%sp),%a0	| %sfp, desired_height
| voxel.c:854: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 124(%sp),%d0	| %sfp, tmp1861
	moveq #9,%d7	|,
	asr.w %d7,%d0	|, tmp1861
| voxel.c:854: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w %d0,%a1	| tmp1861,
	move.l %a1,-(%sp)	|,
	sub.w 132(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:856: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L144		|
	move.w #-256,%d0	|, altitude_delta
.L145:
| voxel.c:857: 			pos.z += altitude_delta;
	add.w %d3,%d0	| _26, _36
| voxel.c:858: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _36
	jgt .L146		|
.L371:
| voxel.c:857: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _36, pos.z
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _2829
| voxel.c:888: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d3	| _2829
	move.w %d0,%d3	| _2829, _2829
	move.l #256,%d1	|, tmp1870
	sub.l %d3,%d1	| _2829, tmp1870
	add.l %d1,%d1	| tmp1870, _2837
| voxel.c:541: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1872
	sub.w %d0,%a0	| _2829, tmp1872
| voxel.c:543: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1872, tmp1873
	add.l %a0,%a0	| tmp1873, tmp1873
	move.l %a0,138(%sp)	| tmp1873, %sfp
.L143:
| voxel.c:861: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.6_38
	move.w -602(%a0),146(%sp)	| MEM[(short int *)__aline.6_38 + 4294966694B], %sfp
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _341
	move.l %d2,112(%sp)	| _341, %sfp
| voxel.c:864: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,152(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.6_38 + 4294966696B],
	move.l %a0,142(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp1877
	add.l %a0,%d0	|, tmp1877
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp1877
	move.l %d0,88(%sp)	| tmp1877, %sfp
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 146(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp1879
	add.l #-160,%d0	|, tmp1879
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,104(%sp)	| pos.diry, %sfp
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,108(%sp)	| pos.dirx, %sfp
| voxel.c:888: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2837
	move.l %d1,120(%sp)	| _2837, %sfp
	move.b %d6,%d2	| fog_enabled,
	eor.b #1,%d2	|,
	move.b %d2,157(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jne .L147		|
.L359:
	move.l #_fog_table+48,116(%sp)	|, %sfp
| voxel.c:576: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d3	| _46,
	lsl.l #3,%d3	|,
	move.l %d3,92(%sp)	|, %sfp
	move.l %d0,%d1	| _46, tmp1887
	add.l %d0,%d1	| _46, tmp1887
	add.l %d1,%d1	| tmp1887, tmp1888
	add.l %d0,%d1	| _46, tmp1889
	lsl.l #3,%d1	|, tmp1890
	sub.l %d0,%d1	| _46, tmp1891
	add.l %d1,%d1	| tmp1891, tmp1892
	add.l %d1,%d1	| tmp1892, tmp1893
	add.l %d1,%d0	| tmp1893, tmp1894
	neg.l %d0	| tmp1894
	move.l %d0,64(%sp)	| tmp1894, %sfp
	lea _horizon+6,%a5	|, ivtmp.511
	move.w 108(%sp),%d1	| %sfp,
	ext.l %d1	| _56
	move.l %d1,%d4	| _56,
	lsl.l #3,%d4	|,
	move.l %d4,96(%sp)	|, %sfp
	move.l %d1,%d0	| _56, tmp1898
	add.l %d1,%d0	| _56, tmp1898
	add.l %d0,%d0	| tmp1898, tmp1899
	add.l %d1,%d0	| _56, tmp1900
	lsl.l #3,%d0	|, tmp1901
	sub.l %d1,%d0	| _56, tmp1902
	add.l %d0,%d0	| tmp1902, tmp1903
	add.l %d0,%d0	| tmp1903, tmp1904
	add.l %d1,%d0	| _56, tmp1905
	neg.l %d0	| tmp1905
	move.l %d0,68(%sp)	| tmp1905, %sfp
	move.w 104(%sp),%d1	| %sfp,
	ext.l %d1	| _51
	move.l %d1,%d5	| _51,
	lsl.l #3,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d1,%d0	| _51, tmp1909
	add.l %d1,%d0	| _51, tmp1909
	add.l %d0,%d0	| tmp1909, tmp1910
	add.l %d1,%d0	| _51, tmp1911
	lsl.l #3,%d0	|, tmp1912
	sub.l %d1,%d0	| _51, tmp1913
	add.l %d0,%d0	| tmp1913, tmp1914
	add.l %d0,%d0	| tmp1914, tmp1915
	add.l %d1,%d0	| _51, tmp1916
	neg.l %d0	| tmp1916
	move.l %d0,72(%sp)	| tmp1916, %sfp
| voxel.c:869: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.w #3,54(%sp)	|, %sfp
	move.l %a5,56(%sp)	| ivtmp.511, %sfp
.L213:
| voxel.c:892: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 54(%sp),%d4	| %sfp, tmp1917
	lsr.w #3,%d4	|, tmp1917
	and.l #65535,%d4	|, _74
| voxel.c:892: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _74, tmp1919
	lea _view_max,%a0	|,
	move.w (%a0,%d4.l),%d2	| view_max[_74], _3077
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d0	| %sfp, tmp1920
	asr.w #4,%d0	|, tmp1920
	ext.l %d0	| tmp1921
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp1921, tmp1922
	add.l %d0,%d0	| tmp1922, tmp1922
	move.l %d0,76(%sp)	| tmp1922, %sfp
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 54(%sp),%d0	| %sfp,
	lsr.l #3,%d0	|, tmp1925
	moveq #1,%d1	|,
	and.l %d0,%d1	| tmp1925,
	move.l %d1,80(%sp)	|, %sfp
| voxel.c:891: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d3	| _3077, _3074
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 68(%sp),-(%sp)	| %sfp,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	add.l 88(%sp),%d0	| %sfp, tmp2314
	move.l %d0,60(%sp)	| tmp2314, %sfp
| voxel.c:891: 				.y = view_max[x >> 3] - y_offset,
	move.w %d2,%d0	| _3077, y
	sub.w 62(%sp),%d0	| %sfp, y
| voxel.c:896: 			short y_min = view_min[x >> 3] - y_offset;
	lea _view_min,%a0	|,
	move.w (%a0,%d4.l),%d5	| view_min[_74], y_min
	sub.w 62(%sp),%d5	| %sfp, y_min
| voxel.c:479: 	if (y < y_min) goto finish;
	cmp.w %d0,%d5	| y, y_min
	jgt .L210		|
| voxel.c:879: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.l 72(%sp),%d1	| %sfp, tmp1934
	asr.l #8,%d1	|, tmp1934
| voxel.c:879: 				pos.dirx - ((short)(x - 160) * pos.diry >> 8),
	move.w 108(%sp),%d3	| %sfp, tmp1935
	sub.w %d1,%d3	| tmp1934, tmp1935
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d3	| tmp1937
	clr.w %d3	| tmp1937
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.l 68(%sp),%d1	| %sfp, tmp1938
	asr.l #8,%d1	|, tmp1938
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	add.w 104(%sp),%d1	| %sfp, tmp1939
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d3	| tmp1939, tmp1941
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp1941
	move.l %d3,%a2	| tmp1941, _347
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	move.l 112(%sp),%d1	| %sfp, tmp1942
	add.l %d3,%d1	| _347, tmp1942
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1943
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _347, tmp1944
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1945
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _347, tmp1946
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, tmp1947
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %d3,%d1	| _347, tmp1948
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d2	|, tmp1949
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 76(%sp),%d2	| %sfp, tmp1951
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%d2	| tmp1951, tmp1952
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d2,%a0	| tmp1952, tmp1953
	add.l 80(%sp),%a0	| %sfp, tmp1953
	add.l 84(%sp),%a0	| %sfp, pBlock
| voxel.c:475: 	short (*y_table_shifted)[HEIGHT_VALUES] = state.y_table_shifted;
	move.l 120(%sp),%a1	| %sfp, y_table_shifted
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	moveq #-12,%d3	|, z
.L154:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_1219, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.331
	move.b %d4,%d2	| sample, SR.331
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_1223, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L150		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L247		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1959
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1229, _1230
.L152:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1230, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L152		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _347, tmp1961
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L154		|
.L363:
.L155:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _347, tmp1962
	add.l %a2,%d3	| _347, tmp1962
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _355
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
| voxel.c:479: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _355, _355
	move.w %d2,%d3	| z, z
.L156:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #524286,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_1143, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.329
	move.b %d4,%d2	| sample, SR.329
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_1147, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L157		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L249		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1968
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1153, _1154
.L159:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1154, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L159		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _355, tmp1970
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L156		|
.L364:
| voxel.c:479: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _355, _355
.L161:
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _355, _355
	move.w %d2,%d3	| z, z
.L167:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_1067, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.327
	move.b %d4,%d2	| sample, SR.327
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_1071, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L163		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L250		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1976
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1077, _1078
.L165:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1078, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L165		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _355, tmp1978
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L167		|
.L362:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	move.l %a2,%d3	| _355, _355
.L168:
	add.l %a2,%d3	| _355, tmp1979
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _353
| voxel.c:479: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	move.w #-8,%a2	|, z
	move.w %a2,%d2	| z, z
	move.l %d3,%a2	| _353, _353
	move.w %d2,%d3	| z, z
.L174:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #523260,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d4	| *_991, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d2	| SR.325
	move.b %d4,%d2	| sample, SR.325
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d2.l),%d2	| *_995, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d2,%d0	| sample_y, y
	jlt .L170		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jle .L251		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1985
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1001, _1002
.L172:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d4, 0(%a0)	| _1002, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d2	| y, sample_y
	jle .L172		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _353, tmp1987
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L174		|
.L367:
| voxel.c:479: 	if (y < y_min) goto finish;
	move.l %a2,%d3	| _353, _353
.L175:
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
	move.l 116(%sp),%a2	| %sfp, fog_table_shifted
	move.w #-8,%a5	|, z
	move.w %a5,%d2	| z, z
	move.l %d3,%a5	| _353, _353
	move.w %d2,%d3	| z, z
.L185:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_915, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.323
	move.b %d2,%d4	| sample, SR.323
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_919, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L177		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L252		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L178:
| voxel.c:440: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:496: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L179		|
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _3193
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d2.l),%d2	| *_925, _926
.L180:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _926, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L180		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L184:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _353, tmp2004
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L185		|
.L366:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	move.l %a5,%d3	| _353, _353
.L186:
	add.l %a5,%d3	| _353, tmp2005
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, _351
| voxel.c:479: 	if (y < y_min) goto finish;
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
| voxel.c:482: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L188		|
| voxel.c:482: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L188:
	move.w #-8,%a5	|, z
	move.l %d3,%d2	| _351, _351
	move.w %a5,%d3	| z, z
	move.l %d2,%a5	| _351, _351
.L197:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_838, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.321
	move.b %d2,%d4	| sample, SR.321
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_842, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d0,%d4	| y, sample_y
	jgt .L189		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L253		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L190:
| voxel.c:440: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:496: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L191		|
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _3190
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d2.l),%d2	| *_848, _849
.L192:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _849, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L192		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L196:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _351, tmp2022
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L197		|
.L365:
| voxel.c:479: 	if (y < y_min) goto finish;
	move.l %a5,%d3	| _351, _351
.L198:
	cmp.w %d5,%d0	| y_min, y
	jlt .L199		|
| voxel.c:482: 	if (!fog) fog_table_shifted += z_end - z_begin;
	cmp.b #1,%d6	|, fog_enabled
	jeq .L200		|
| voxel.c:482: 	if (!fog) fog_table_shifted += z_end - z_begin;
	addq.l #8,%a2	|, fog_table_shifted
.L200:
	move.w #-8,%a5	|, z
	move.l %d3,%d2	| _351, _351
	move.w %a5,%d3	| z, z
	move.l %d2,%a5	| _351, _351
.L209:
| voxel.c:414: 	asm (
	move.l %d1,%d2	| sample_uv, uv
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d2	| uv
	swap %d2	| uv
	lsr.l #6, %d2	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d2.l),%d2	| *_761, sample
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	moveq #0,%d4	| SR.319
	move.b %d2,%d4	| sample, SR.319
| voxel.c:487: 		short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	move.w (%a1,%d4.l),%d4	| *_765, sample_y
| voxel.c:488: 		if (sample_y <= y) {
	cmp.w %d4,%d0	| sample_y, y
	jlt .L201		|
| voxel.c:490: 			if (sample_y <= y_min) {
	cmp.w %d5,%d4	| y_min, sample_y
	jle .L254		|
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
.L202:
| voxel.c:440: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d2	|, sample
	move.w %d2,46(%sp)	| sample, %sfp
| voxel.c:496: 			if (!fog) {
	cmp.b #1,%d6	|, fog_enabled
	jeq .L203		|
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d2	|, _3187
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d2.l),%d2	| *_771, _772
.L204:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| _772, pBlock
| 0 "" 2
| voxel.c:502: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:503: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:504: 				} while (sample_y <= y);
	cmp.w %d0,%d4	| y, sample_y
	jle .L204		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
.L208:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _351, tmp2039
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L209		|
.L199:
| voxel.c:915: 			state.y += y_offset;
	move.w %d0,%d3	| y, _3074
	add.w 62(%sp),%d3	| %sfp, _3074
	move.w %d3,%d2	| _3074, _3077
.L210:
| voxel.c:585: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	move.l 56(%sp),%a0	| %sfp,
	move.w (%a0),%d0	| MEM[(short int *)_2361], _717
| voxel.c:585: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	sub.w %d0,%d3	| _717, _718
| voxel.c:585: 	fill_column(out, x, horizon[x] + LINES_SKIP, y - horizon[x], 15);
	addq.w #1,%d0	|, tmp2040
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d0	|, tmp2041
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 76(%sp),%d0	| %sfp, tmp2043
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp2043, tmp2044
| voxel.c:401: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 80(%sp),%d0	| %sfp, tmp2045
	move.l 84(%sp),%a0	| %sfp, pBlock
	add.l %d0,%a0	| tmp2045, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d3	| _718
	jle .L211		|
	mulu.w #160,%d3	|, tmp2046
	add.l %a0,%d3	| pBlock, _2304
.L212:
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 406 "voxel.c" 1
	movep.l %d7, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:579: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:577: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d3	| pBlock, _2304
	jne .L212		|
.L211:
| voxel.c:586: 	horizon[x] = y;
	move.l 56(%sp),%a1	| %sfp,
	move.w %d2,(%a1)	| _3077, MEM[(short int *)_2361]
| voxel.c:869: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	addq.w #8,54(%sp)	|, %sfp
| voxel.c:869: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.l 92(%sp),%d1	| %sfp,
	add.l %d1,64(%sp)	|, %sfp
	moveq #16,%d2	|,
	add.l %d2,56(%sp)	|, %sfp
	move.l 96(%sp),%d3	| %sfp,
	add.l %d3,68(%sp)	|, %sfp
	move.l 100(%sp),%d4	| %sfp,
	add.l %d4,72(%sp)	|, %sfp
	cmp.w #323,54(%sp)	|, %sfp
	jne .L213		|
| voxel.c:919: 		unsigned long t_render_1 = *_hz_200;
	move.l 1210.w,%d0	| MEM[(volatile long unsigned int *)1210B], t_render_1
| voxel.c:920: 		t_render += t_render_1 - t_render_0;
	sub.l 152(%sp),%d0	| %sfp, tmp2049
| voxel.c:920: 		t_render += t_render_1 - t_render_0;
	add.l %d0,130(%sp)	| tmp2049, %sfp
| voxel.c:543: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.l 138(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table,%a0	|, y_table_shifted
	moveq #127,%d2	|, delta_uv
	not.w %d2	| delta_uv
| voxel.c:548: 	short min_y = 0x7fff;
	move.w #32767,%d5	|, min_y
| voxel.c:546: 	unsigned int index_mask = 0x7fffe;
	move.l #524286,%d3	|, index_mask
| voxel.c:549: 	unsigned short z = 0;
	clr.w %d1	| z
	move.l 112(%sp),%d4	| %sfp, sample_uv
.L216:
	move.l %d4,%d0	| sample_uv, uv
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d4	| delta_uv, tmp2050
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, sample_uv
	move.w %d1,%d7	| z, z
| voxel.c:558: 		z++;
	addq.w #1,%d1	|, z
	move.l %a0,%a1	| y_table_shifted, y_table_shifted
| voxel.c:559: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:551: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d7	|, z
	jls .L214		|
| voxel.c:414: 	asm (
#APP
| 414 "voxel.c" 1
	lsr.w #7, %d0	| uv
	swap %d0	| uv
	lsr.l #6, %d0	| uv
| 0 "" 2
| voxel.c:427: 		unsigned int index = to_offset(sample_uv) & index_mask;
#NO_APP
	and.l %d3,%d0	| index_mask, index
| voxel.c:428: 		sample_t sample = *(sample_t*)((char*)combined + index);
	move.w (%a4,%d0.l),%d0	| *_1289, sample
| voxel.c:553: 			short sample_y = *(short*)(((char*)y_table_shifted[0]) + sample.height);
	and.l #255,%d0	|, SR.332
| voxel.c:554: 			if (sample_y < min_y) {
	move.w (%a1,%d0.l),%d0	| *_1293, *_1293
	cmp.w %d5,%d0	| min_y, *_1293
	jge .L215		|
	move.w %d0,%d5	| *_1293, min_y
.L215:
| voxel.c:562: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d1,%d0	| z, tmp2056
	and.w #15,%d0	|, tmp2056
	jne .L214		|
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %d2,%d2	| delta_uv, tmp2057
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, delta_uv
| voxel.c:436: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d3,%d3	| index_mask, tmp2058
| voxel.c:436: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d3	|, index_mask
.L214:
| voxel.c:550: 	while(z < STEPS_MAX) {
	cmp.w #64,%d1	|, z
	jne .L216		|
| voxel.c:926: 		if (elev_to_sun < -40) {
	cmp.w #-40,%d5	|, min_y
	jlt .L255		|
	move.w #128,%a0	|, _3093
| voxel.c:928: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d5	|, min_y
	jge .L217		|
| voxel.c:931: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d5	|, tmp2059
	add.w %d5,%d5	| tmp2059, tmp2060
	add.w %d5,%d5	| tmp2060, sunlight
| voxel.c:934: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d5,%a0	| sunlight, _3093
.L217:
	move.l %a0,-(%sp)	| _3093,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _98
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _99
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _99,
	muls.w %d1,%d2	| _98, tmp2066
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp2067
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp2067, pos.x
| voxel.c:937: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _105
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _105,
	muls.w %d1,%d3	| _98, tmp2070
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp2070
	move.l %d3,%a0	| tmp2070, tmp2071
| voxel.c:937: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%a0	| pos.y, _110
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp2073
	sub.l 146(%sp),%d3	| %sfp, tmp2073
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp2074
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp2074, _116
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _116, tmp2075
	asr.w #3,%d3	|, tmp2075
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _116, tmp2076
	asr.w #4,%d4	|, tmp2076
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp2076, tmp2077
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:941: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d1	| _116
	jle .L218		|
.L372:
| voxel.c:941: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _123, _126
.L219:
| voxel.c:937: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _110, pos.y
| voxel.c:941: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _126, pos.speed
| voxel.c:943: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 146(%sp),%d1	| %sfp, rot
| voxel.c:944: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _105, tmp2080
| voxel.c:944: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp2081
| voxel.c:944: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| tmp2081, _138
| voxel.c:945: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _138, tmp2082
| voxel.c:945: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp2083
| voxel.c:945: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp2083, _145
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _138,
	muls.w %d0,%d1	| _138, tmp2084
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp2085
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _145,
	muls.w %d2,%d3	| _145, tmp2086
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp2087
| voxel.c:948: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp2087, tmp2088
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	ext.l %d1	| tmp2089
	moveq #-128,%d5	|,
	add.l %d5,%d1	|, tmp2090
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp2091
| voxel.c:234: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _393
	sub.w %d1,%d3	| tmp2091, _393
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _393, tmp2094
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp2095
| voxel.c:949: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp2093
	clr.w %d0	| tmp2093
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d3,%d1	| _393,
	muls.w %d2,%d1	| _145, tmp2100
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp2101
| voxel.c:949: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d1,%d0	| tmp2101, tmp2093
	move.l %d0,_pos+6	| tmp2093, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:952: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:952: 		if (pressed_keys.up) {
	jpl .L220		|
| voxel.c:953: 			if (desired_height < FIXP(0, 0)) {
	tst.w 124(%sp)	| %sfp
	jlt .L257		|
| voxel.c:956: 			desired_height += FIXP(1, 0);
	move.w 124(%sp),%d0	| %sfp, _3095
.L221:
	add.w #128,%d0	|, _3095
	move.w %d0,124(%sp)	| _3095, %sfp
| voxel.c:957: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L220		|
	move.w #32512,124(%sp)	|, %sfp
.L220:
| voxel.c:961: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:961: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L223		|
| voxel.c:962: 			if (desired_height < FIXP(0, 0)) {
	tst.w 124(%sp)	| %sfp
	jlt .L224		|
| voxel.c:965: 			desired_height -= FIXP(1, 0);
	move.w 124(%sp),128(%sp)	| %sfp, %sfp
.L224:
| voxel.c:970: 		if (key == 0x23) {
	cmp.b #35,156(%sp)	|, %sfp
	jeq .L258		|
| voxel.c:965: 			desired_height -= FIXP(1, 0);
	move.w 128(%sp),%d7	| %sfp,
	add.w #-128,%d7	|,
	move.w %d7,124(%sp)	|, %sfp
| voxel.c:966: 			if (desired_height < FIXP(0, 0)) {
	jmi .L356		|
.L227:
| voxel.c:977: 		} else if (key == 0x20) {
	cmp.b #32,156(%sp)	|, %sfp
	jeq .L357		|
.L225:
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp2113
	and.w #8192,%d0	|, _3173
| voxel.c:263: 	data &= mask;
	move.l 84(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp2114
	and.l #-536879105,%d3	|, tmp2114
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _3173
	move.w %d0,%d1	| _3173, _3173
| voxel.c:263: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp2119
	and.l #-536879105,%d4	|, tmp2119
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _3173
	swap %d2	| _3173
	clr.w %d2	| _3173
	move.w %d0,%d2	| _3173, _3173
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _3173, tmp2119
	move.l %d4,(%a3)	| tmp2119, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _3173, tmp2114
	move.l %d3,4(%a3)	| tmp2114, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp2127
	and.b #1,%d0	|, _157
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp2130
	ext.w %d0	| tmp2129
	neg.w %d0	| tmp2131
	lsl.w %d1,%d0	|, _2305
| voxel.c:263: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp2132
	and.l #-536879105,%d3	|, tmp2132
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2305
	move.w %d0,%d1	| _2305, _2305
| voxel.c:263: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp2137
	and.l #-536879105,%d4	|, tmp2137
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2305
	swap %d2	| _2305
	clr.w %d2	| _2305
	move.w %d0,%d2	| _2305, _2305
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _2305, tmp2137
	move.l %d4,640(%a3)	| tmp2137, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2305, tmp2132
	move.l %d3,644(%a3)	| tmp2132, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2145
	and.b #1,%d1	|, _158
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2148
	ext.w %d1	| tmp2147
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _2264
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2151
	and.b #1,%d0	|, _159
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2154
	ext.w %d0	| tmp2153
	neg.w %d0	| tmp2155
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _3125
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:263: 	data &= mask;
	or.w %d1,%d2	| _2264, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d4	|, data
| voxel.c:267: 	data &= mask;
	or.w %d1,%d4	| _2264, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d3	|, data
| voxel.c:275: 	data &= mask;
	or.w %d1,%d3	| _2264, data
| voxel.c:988: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp2160
	not.w %d1	| tmp2160
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp2159
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _2257
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _3125, data
| voxel.c:263: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d4,%d2	| data, data
	or.w %d0,%d2	| _3125, data
| voxel.c:267: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:272: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data
| voxel.c:275: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2257, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
.L361:
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp1827
#APP
| 764 "voxel.c" 1
	movw	%d3,%sp@-	| tmp1827
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:764: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp2311
	jne .L358		|
.L246:
	clr.b 156(%sp)	| %sfp
| voxel.c:847: 		frames++;
	addq.l #1,134(%sp)	|, %sfp
| voxel.c:176: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.49_336
	move.w (%a0),%d0	| *hw_palette.49_336, _337
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	lea _pos,%a0	|,
	move.l (%a0),%d2	| MEM <unsigned int> [(short int *)&pos], _341
| voxel.c:852: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d3	| pos.z, _26
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d0	| pos.y, pos.y
	lsr.w #7,%d0	|, tmp1835
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d0	|, tmp1837
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w (%a0),%d1	| pos.x, pos.x
	lsr.w #7,%d1	|, tmp1839
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	and.l #65535,%d1	|, tmp1841
	moveq #9,%d4	|,
	lsl.l %d4,%d0	|, tmp1842
	add.l %d1,%d0	| tmp1841, tmp1843
	add.l %d0,%d0	| tmp1843, tmp1844
| voxel.c:851: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height >> 1, 0);
	move.b 1(%a4,%d0.l),%d0	| combined[_19][_22].D.2732.height, combined[_19][_22].D.2732.height
	lsr.b #1,%d0	|, tmp1847
| voxel.c:852: 		fixp player_height = pos.z - terrain_height;
	and.w #255,%d0	|, tmp1849
	lsl.w #7,%d0	|, tmp1850
	move.w %d3,%d5	| _26,
	sub.w %d0,%d5	| tmp1850,
	move.w %d5,128(%sp)	|, %sfp
| voxel.c:853: 		if (desired_height >= 0) {
	tst.w 124(%sp)	| %sfp
	jge .L142		|
.L355:
| voxel.c:218: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d3	|, _2828
| voxel.c:888: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	moveq #0,%d0	| _2828
	move.w %d3,%d0	| _2828, _2828
	move.l #256,%d1	|, tmp1852
	sub.l %d0,%d1	| _2828, tmp1852
	add.l %d1,%d1	| tmp1852, _2837
| voxel.c:541: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, tmp1854
	sub.w %d3,%a0	| _2828, tmp1854
| voxel.c:543: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| tmp1854, tmp1855
	add.l %a0,%a0	| tmp1855, tmp1855
	move.l %a0,138(%sp)	| tmp1855, %sfp
| voxel.c:861: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.6_38
	move.w -602(%a0),146(%sp)	| MEM[(short int *)__aline.6_38 + 4294966694B], %sfp
| voxel.c:238: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, _341
	move.l %d2,112(%sp)	| _341, %sfp
| voxel.c:864: 		unsigned long t_render_0 = *_hz_200;
	move.l 1210.w,152(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.6_38 + 4294966696B],
	move.l %a0,142(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp1877
	add.l %a0,%d0	|, tmp1877
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp1877
	move.l %d0,88(%sp)	| tmp1877, %sfp
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 146(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp1879
	add.l #-160,%d0	|, tmp1879
| voxel.c:873: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _46
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+8,104(%sp)	| pos.diry, %sfp
| voxel.c:880: 				pos.diry + ((short)(x - 160) * pos.dirx >> 8));
	move.w _pos+6,108(%sp)	| pos.dirx, %sfp
| voxel.c:888: 				.y_table_shifted = (short (*)[HEIGHT_VALUES])(y_table[STEPS_MIN] + 256 - height),
	add.l #_y_table+4096,%d1	|, _2837
	move.l %d1,120(%sp)	| _2837, %sfp
	move.b %d6,%d2	| fog_enabled,
	eor.b #1,%d2	|,
	move.b %d2,157(%sp)	|, %sfp
	btst #0,%d6	|, fog_enabled
	jeq .L359		|
.L147:
	move.l #_fog_table+40,116(%sp)	|, %sfp
| voxel.c:576: 	unsigned int movep_data = pdata_table[color][0][0];
	move.l _pdata_table+3840,%d7	| pdata_table[15][0][0], movep_data
	move.l %d0,%d3	| _46,
	lsl.l #3,%d3	|,
	move.l %d3,92(%sp)	|, %sfp
	move.l %d0,%d1	| _46, tmp1887
	add.l %d0,%d1	| _46, tmp1887
	add.l %d1,%d1	| tmp1887, tmp1888
	add.l %d0,%d1	| _46, tmp1889
	lsl.l #3,%d1	|, tmp1890
	sub.l %d0,%d1	| _46, tmp1891
	add.l %d1,%d1	| tmp1891, tmp1892
	add.l %d1,%d1	| tmp1892, tmp1893
	add.l %d1,%d0	| tmp1893, tmp1894
	neg.l %d0	| tmp1894
	move.l %d0,64(%sp)	| tmp1894, %sfp
	lea _horizon+6,%a5	|, ivtmp.511
	move.w 108(%sp),%d1	| %sfp,
	ext.l %d1	| _56
	move.l %d1,%d4	| _56,
	lsl.l #3,%d4	|,
	move.l %d4,96(%sp)	|, %sfp
	move.l %d1,%d0	| _56, tmp1898
	add.l %d1,%d0	| _56, tmp1898
	add.l %d0,%d0	| tmp1898, tmp1899
	add.l %d1,%d0	| _56, tmp1900
	lsl.l #3,%d0	|, tmp1901
	sub.l %d1,%d0	| _56, tmp1902
	add.l %d0,%d0	| tmp1902, tmp1903
	add.l %d0,%d0	| tmp1903, tmp1904
	add.l %d1,%d0	| _56, tmp1905
	neg.l %d0	| tmp1905
	move.l %d0,68(%sp)	| tmp1905, %sfp
	move.w 104(%sp),%d1	| %sfp,
	ext.l %d1	| _51
	move.l %d1,%d5	| _51,
	lsl.l #3,%d5	|,
	move.l %d5,100(%sp)	|, %sfp
	move.l %d1,%d0	| _51, tmp1909
	add.l %d1,%d0	| _51, tmp1909
	add.l %d0,%d0	| tmp1909, tmp1910
	add.l %d1,%d0	| _51, tmp1911
	lsl.l #3,%d0	|, tmp1912
	sub.l %d1,%d0	| _51, tmp1913
	add.l %d0,%d0	| tmp1913, tmp1914
	add.l %d0,%d0	| tmp1914, tmp1915
	add.l %d1,%d0	| _51, tmp1916
	neg.l %d0	| tmp1916
	move.l %d0,72(%sp)	| tmp1916, %sfp
| voxel.c:869: 		for (unsigned short x = VIEWPORT_MIN + 3; x < VIEWPORT_MAX; x += 8) {
	move.w #3,54(%sp)	|, %sfp
	move.l %a5,56(%sp)	| ivtmp.511, %sfp
	jra .L213		|
.L353:
| voxel.c:324: 		if (rel_dist < 0) rel_dist = 0;
	moveq #0,%d0	| rel_dist
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	move.l %d0,%d1	| rel_dist, tmp1315
	lsl.l #8,%d1	|, tmp1315
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	pea 24.w		|
	sub.l %d0,%d1	| rel_dist, tmp1315
	move.l %d1,-(%sp)	| tmp1315,
	jsr ___divsi3		|
	addq.l #8,%sp	|,
| voxel.c:326: 		fog_table[z] = (255 * rel_dist / max_dist) & FOG_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a2,%d4.l)	|, MEM[(unsigned char *)&fog_table + _1626 * 1]
| voxel.c:311: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:311: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.667
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L95		|
	jra .L99		|
.L111:
	clr.b %d0	| _513
	or.b %d0,%d4	| _513, _2988
	move.l %d3,%d2	| color1, ivtmp.609
	neg.l %d2	| ivtmp.609
| voxel.c:357: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.617, ivtmp.610
	move.l %d7,130(%sp)	| _538, %sfp
	jra .L116		|
.L107:
	moveq #0,%d1	| iftmp.30_518
	or.l %d1,%d0	| iftmp.30_518, tmp1351
	or.l 52(%sp),%d0	| %sfp, tmp1352
	btst #2,%d5	|, _3084
	jne .L360		|
.L109:
	moveq #0,%d4	| iftmp.32_527
	jra .L110		|
.L105:
	moveq #0,%d0	| iftmp.31_521
	jra .L106		|
.L354:
| voxel.c:994: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:995: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 148(%sp),%a0	| %sfp, tmp2166
| voxel.c:995: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp2166, tmp2168
	add.l %a0,%d0	| tmp2166, tmp2168
	add.l %d0,%d0	| tmp2168, tmp2169
| voxel.c:996: 	unsigned long millis_per_frame = millis / frames;
	lea ___udivsi3,%a3	|, tmp2224
	move.l 134(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp2224
	addq.l #8,%sp	|,
	move.l %d0,%d3	| tmp2315, millis_per_frame
	lea .LC13,%a4	|, s
| voxel.c:65: 	while (*s) {
	moveq #84,%d0	|, _409
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d4	|, tmp2175
.L230:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d4,%sp@-	| tmp2175
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a4	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a4),%d0	| MEM[(const char *)s_413], _409
	jne .L230		|
| voxel.c:998: 	printnum(millis_per_frame);
	move.l %d3,-(%sp)	| millis_per_frame,
	jsr _printnum		|
	addq.l #4,%sp	|,
	lea .LC14,%a4	|, s
| voxel.c:65: 	while (*s) {
	moveq #13,%d0	|, _404
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp2179
.L231:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp2179
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a4	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a4),%d0	| MEM[(const char *)s_408], _404
	jne .L231		|
| voxel.c:1000: 	printnum(t_render * 5 / frames);
	move.l 130(%sp),%d0	| %sfp, tmp2183
	add.l %d0,%d0	|, tmp2183
	add.l %d0,%d0	| tmp2183, tmp2184
| voxel.c:1000: 	printnum(t_render * 5 / frames);
	move.l 134(%sp),-(%sp)	| %sfp,
	move.l 134(%sp),%a0	| %sfp,
	pea (%a0,%d0.l)		|
	jsr (%a3)		| tmp2224
| voxel.c:1000: 	printnum(t_render * 5 / frames);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp2316,
	jsr _printnum		|
	addq.l #4,%sp	|,
	lea .LC3,%a3	|, s
| voxel.c:65: 	while (*s) {
	moveq #13,%d0	|, _399
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp2192
.L232:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp2192
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_403], _399
	jne .L232		|
| voxel.c:1002: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:1003: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
.L233:
| voxel.c:65: 	while (*s) {
	lea .LC15,%a3	|, s
	moveq #80,%d0	|, _414
| voxel.c:66: 		Bconout(_CON, *s);
	moveq #2,%d3	|, tmp2197
.L234:
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp2197
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_418], _414
	jne .L234		|
| voxel.c:768: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp2200
.L235:
#APP
| 768 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2200
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp2317
	jne .L235		|
| voxel.c:770: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp2202
.L236:
#APP
| 770 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2202
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:770: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp2318
	jeq .L236		|
| voxel.c:772: 	Bconin(_CON);
#APP
| 772 "voxel.c" 1
	movw	%d3,%sp@-	| tmp2202
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:1008: 	install_palette(saved_palette);
#NO_APP
	pea 172(%sp)		|
	jsr _install_palette		|
| voxel.c:1010: }
	addq.l #4,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (496,%sp),%sp	|,
	rts	
.L357:
	move.b 157(%sp),%d6	| %sfp, fog_enabled
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp2113
	and.w #8192,%d0	|, _3173
| voxel.c:263: 	data &= mask;
	move.l 84(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp2114
	and.l #-536879105,%d3	|, tmp2114
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _3173
	move.w %d0,%d1	| _3173, _3173
| voxel.c:263: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp2119
	and.l #-536879105,%d4	|, tmp2119
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _3173
	swap %d2	| _3173
	clr.w %d2	| _3173
	move.w %d0,%d2	| _3173, _3173
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _3173, tmp2119
	move.l %d4,(%a3)	| tmp2119, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _3173, tmp2114
	move.l %d3,4(%a3)	| tmp2114, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp2127
	and.b #1,%d0	|, _157
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp2130
	ext.w %d0	| tmp2129
	neg.w %d0	| tmp2131
	lsl.w %d1,%d0	|, _2305
| voxel.c:263: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp2132
	and.l #-536879105,%d3	|, tmp2132
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2305
	move.w %d0,%d1	| _2305, _2305
| voxel.c:263: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp2137
	and.l #-536879105,%d4	|, tmp2137
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2305
	swap %d2	| _2305
	clr.w %d2	| _2305
	move.w %d0,%d2	| _2305, _2305
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _2305, tmp2137
	move.l %d4,640(%a3)	| tmp2137, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2305, tmp2132
	move.l %d3,644(%a3)	| tmp2132, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2145
	and.b #1,%d1	|, _158
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2148
	ext.w %d1	| tmp2147
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _2264
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2151
	and.b #1,%d0	|, _159
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2154
	ext.w %d0	| tmp2153
	neg.w %d0	| tmp2155
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _3125
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:263: 	data &= mask;
	or.w %d1,%d2	| _2264, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d4	|, data
| voxel.c:267: 	data &= mask;
	or.w %d1,%d4	| _2264, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d3	|, data
| voxel.c:275: 	data &= mask;
	or.w %d1,%d3	| _2264, data
| voxel.c:988: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp2160
	not.w %d1	| tmp2160
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp2159
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _2257
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _3125, data
| voxel.c:263: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d4,%d2	| data, data
	or.w %d0,%d2	| _3125, data
| voxel.c:267: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:272: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data
| voxel.c:275: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2257, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	jra .L361		|
.L356:
| voxel.c:966: 			if (desired_height < FIXP(0, 0)) {
	clr.w 124(%sp)	| %sfp
| voxel.c:977: 		} else if (key == 0x20) {
	cmp.b #32,156(%sp)	|, %sfp
	jne .L225		|
	jra .L357		|
.L201:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L208		|
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L370:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _351, tmp2039
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L209		|
	jra .L199		|
.L163:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _355, tmp1978
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L167		|
	jra .L362		|
.L150:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _347, tmp1961
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L154		|
	jra .L363		|
.L157:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _355, tmp1970
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L156		|
	jra .L364		|
.L189:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L196		|
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L368:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _351, tmp2022
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L197		|
	jra .L365		|
.L177:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	tst.b %d6	| fog_enabled
	jeq .L184		|
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
.L369:
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a5,%d1	| _353, tmp2004
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L185		|
	jra .L366		|
.L170:
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	addq.w #1,%d3	|, z
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	add.l %a2,%d1	| _353, tmp1987
| voxel.c:242: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d1	|, sample_uv
| voxel.c:485: 	for(short z = z_begin - z_end; z < 0; z++) {
	tst.w %d3	| z
	jlt .L174		|
	jra .L367		|
.L251:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1985
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1001, _1002
	jra .L172		|
.L191:
| voxel.c:445: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_282,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:446: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _863
	move.w %a3,%d2	| offset, _863
	move.l %d2,%a3	| _863, tmp2217
	add.l #_pdata_table,%a3	|, tmp2217
.L194:
| voxel.c:510: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp2015
	and.l %d0,%d2	| y, tmp2015
	add.l %d2,%d2	| tmp2015, tmp2016
	add.l %d2,%d2	| tmp2016, tmp2017
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_869, *_869
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_869, pBlock
| 0 "" 2
| voxel.c:512: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:514: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L194		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L368		|
.L253:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L190		|
.L179:
| voxel.c:445: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1792,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:446: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _940
	move.w %a3,%d2	| offset, _940
	move.l %d2,%a3	| _940, tmp2218
	add.l #_pdata_table,%a3	|, tmp2218
.L182:
| voxel.c:510: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp1997
	and.l %d0,%d2	| y, tmp1997
	add.l %d2,%d2	| tmp1997, tmp1998
	add.l %d2,%d2	| tmp1998, tmp1999
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_946, *_946
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_946, pBlock
| 0 "" 2
| voxel.c:512: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d0	|, y
| voxel.c:514: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L182		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L369		|
.L252:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L178		|
.L247:
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1959
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1229, _1230
	jra .L152		|
.L249:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1968
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1153, _1154
	jra .L159		|
.L250:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d2	| y_min, sample_y
	moveq #1,%d3	|, z
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65280,%d4	|, tmp1976
| voxel.c:441: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d4.l),%d4	| *_1077, _1078
	jra .L165		|
.L203:
| voxel.c:445: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d2	|
	move.b (%a2),%d2	| *fog_table_shifted_1011,
	move.w %d2,%a3	|, opacity_preshifted
	add.w 46(%sp),%a3	| %sfp, offset
| voxel.c:446: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| _786
	move.w %a3,%d2	| offset, _786
	move.l %d2,%a3	| _786, tmp2216
	add.l #_pdata_table,%a3	|, tmp2216
.L206:
| voxel.c:510: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d2	|, tmp2032
	and.l %d0,%d2	| y, tmp2032
	add.l %d2,%d2	| tmp2032, tmp2033
	add.l %d2,%d2	| tmp2033, tmp2034
| voxel.c:406: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%d2.l),%d2	| *_792, *_792
#APP
| 406 "voxel.c" 1
	movep.l %d2, 0(%a0)	| *_792, pBlock
| 0 "" 2
| voxel.c:512: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
| voxel.c:513: 					y -= LINES_SKIP;
	subq.w #1,%d0	|, y
| voxel.c:514: 				} while (sample_y <= y);
	cmp.w %d4,%d0	| sample_y, y
	jge .L206		|
| voxel.c:519: 		y_table_shifted++;
	lea (1024,%a1),%a1	|, y_table_shifted
| voxel.c:520: 		if (fog) fog_table_shifted++;
	addq.l #1,%a2	|, fog_table_shifted
	jra .L370		|
.L254:
| voxel.c:492: 				sample_y = y_min;
	move.w %d5,%d4	| y_min, sample_y
	moveq #1,%d3	|, z
	jra .L202		|
.L144:
| voxel.c:857: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L145		|
	move.w #256,%d0	|, altitude_delta
	add.w %d3,%d0	| _26, _36
| voxel.c:858: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _36
	jle .L371		|
.L146:
| voxel.c:858: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d1	|,
	move.l %d1,138(%sp)	|, %sfp
	jra .L143		|
.L223:
| voxel.c:970: 		if (key == 0x23) {
	cmp.b #35,156(%sp)	|, %sfp
	jne .L227		|
| voxel.c:972: 			if (desired_height < 0) {
	tst.w 124(%sp)	| %sfp
	jge .L258		|
| voxel.c:973: 				desired_height = player_height;
	move.w 128(%sp),124(%sp)	| %sfp, %sfp
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp2113
	and.w #8192,%d0	|, _3173
| voxel.c:263: 	data &= mask;
	move.l 84(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp2114
	and.l #-536879105,%d3	|, tmp2114
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _3173
	move.w %d0,%d1	| _3173, _3173
| voxel.c:263: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp2119
	and.l #-536879105,%d4	|, tmp2119
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _3173
	swap %d2	| _3173
	clr.w %d2	| _3173
	move.w %d0,%d2	| _3173, _3173
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _3173, tmp2119
	move.l %d4,(%a3)	| tmp2119, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _3173, tmp2114
	move.l %d3,4(%a3)	| tmp2114, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp2127
	and.b #1,%d0	|, _157
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp2130
	ext.w %d0	| tmp2129
	neg.w %d0	| tmp2131
	lsl.w %d1,%d0	|, _2305
| voxel.c:263: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp2132
	and.l #-536879105,%d3	|, tmp2132
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2305
	move.w %d0,%d1	| _2305, _2305
| voxel.c:263: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp2137
	and.l #-536879105,%d4	|, tmp2137
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2305
	swap %d2	| _2305
	clr.w %d2	| _2305
	move.w %d0,%d2	| _2305, _2305
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _2305, tmp2137
	move.l %d4,640(%a3)	| tmp2137, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2305, tmp2132
	move.l %d3,644(%a3)	| tmp2132, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2145
	and.b #1,%d1	|, _158
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2148
	ext.w %d1	| tmp2147
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _2264
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2151
	and.b #1,%d0	|, _159
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2154
	ext.w %d0	| tmp2153
	neg.w %d0	| tmp2155
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _3125
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:263: 	data &= mask;
	or.w %d1,%d2	| _2264, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d4	|, data
| voxel.c:267: 	data &= mask;
	or.w %d1,%d4	| _2264, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d3	|, data
| voxel.c:275: 	data &= mask;
	or.w %d1,%d3	| _2264, data
| voxel.c:988: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp2160
	not.w %d1	| tmp2160
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp2159
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _2257
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _3125, data
| voxel.c:263: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d4,%d2	| data, data
	or.w %d0,%d2	| _3125, data
| voxel.c:267: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:272: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data
| voxel.c:275: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2257, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	jra .L361		|
.L255:
	sub.l %a0,%a0	| _3093
| voxel.c:934: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _3093,
	jsr (_compute_and_set_bottom_palette.isra.0)		|
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _98
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _99
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _99,
	muls.w %d1,%d2	| _98, tmp2066
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp2067
| voxel.c:936: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp2067, pos.x
| voxel.c:937: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _105
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _105,
	muls.w %d1,%d3	| _98, tmp2070
| voxel.c:226: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp2070
	move.l %d3,%a0	| tmp2070, tmp2071
| voxel.c:937: 		pos.y += fixp_mul(pos.diry, pos.speed);
	add.w _pos+2,%a0	| pos.y, _110
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp2073
	sub.l 146(%sp),%d3	| %sfp, tmp2073
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp2074
| voxel.c:939: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp2074, _116
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _116, tmp2075
	asr.w #3,%d3	|, tmp2075
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _116, tmp2076
	asr.w #4,%d4	|, tmp2076
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp2076, tmp2077
| voxel.c:940: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _123
| voxel.c:941: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #4,%sp	|,
	tst.w %d1	| _116
	jgt .L372		|
.L218:
| voxel.c:942: 		else pos.speed += drag;
	add.w %d3,%d1	| _123, _126
	jra .L219		|
.L258:
| voxel.c:975: 				desired_height = -1;
	move.w #-1,124(%sp)	|, %sfp
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:984: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp2113
	and.w #8192,%d0	|, _3173
| voxel.c:263: 	data &= mask;
	move.l 84(%sp),%a3	| %sfp,
	move.l 4(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B], tmp2114
	and.l #-536879105,%d3	|, tmp2114
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _3173
	move.w %d0,%d1	| _3173, _3173
| voxel.c:263: 	data &= mask;
	move.l (%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207], tmp2119
	and.l #-536879105,%d4	|, tmp2119
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _3173
	swap %d2	| _3173
	clr.w %d2	| _3173
	move.w %d0,%d2	| _3173, _3173
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _3173, tmp2119
	move.l %d4,(%a3)	| tmp2119, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207]
	or.l %d1,%d3	| _3173, tmp2114
	move.l %d3,4(%a3)	| tmp2114, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 4B]
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp2127
	and.b #1,%d0	|, _157
| voxel.c:985: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp2130
	ext.w %d0	| tmp2129
	neg.w %d0	| tmp2131
	lsl.w %d1,%d0	|, _2305
| voxel.c:263: 	data &= mask;
	move.l 644(%a3),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B], tmp2132
	and.l #-536879105,%d3	|, tmp2132
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _2305
	move.w %d0,%d1	| _2305, _2305
| voxel.c:263: 	data &= mask;
	move.l 640(%a3),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B], tmp2137
	and.l #-536879105,%d4	|, tmp2137
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _2305
	swap %d2	| _2305
	clr.w %d2	| _2305
	move.w %d0,%d2	| _2305, _2305
| voxel.c:265: 	*out++ = data;
	or.l %d2,%d4	| _2305, tmp2137
	move.l %d4,640(%a3)	| tmp2137, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 640B]
	or.l %d1,%d3	| _2305, tmp2132
	move.l %d3,644(%a3)	| tmp2132, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_207 + 644B]
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp2145
	and.b #1,%d1	|, _158
| voxel.c:986: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp2148
	ext.w %d1	| tmp2147
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _2264
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp2151
	and.b #1,%d0	|, _159
| voxel.c:987: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp2154
	ext.w %d0	| tmp2153
	neg.w %d0	| tmp2155
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _3125
| voxel.c:264: 	data |= (color & 1) << (15-x);
	move.w 320(%a3),%d2	| MEM[(short unsigned int *)screen_207 + 320B], data
	and.w #30719,%d2	|, data
| voxel.c:263: 	data &= mask;
	or.w %d1,%d2	| _2264, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a3),%d4	| MEM[(short unsigned int *)screen_207 + 322B], data
	and.w #30719,%d4	|, data
| voxel.c:267: 	data &= mask;
	or.w %d1,%d4	| _2264, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a3),%d3	| MEM[(short unsigned int *)screen_207 + 326B], data
	and.w #30719,%d3	|, data
| voxel.c:275: 	data &= mask;
	or.w %d1,%d3	| _2264, data
| voxel.c:988: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 124(%sp),%d1	| %sfp, tmp2160
	not.w %d1	| tmp2160
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp2159
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _2257
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d0,%d2	| _3125, data
| voxel.c:263: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:264: 	data |= (color & 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,320(%a3)	| data, MEM[(short unsigned int *)screen_207 + 320B]
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	move.w %d4,%d2	| data, data
	or.w %d0,%d2	| _3125, data
| voxel.c:267: 	data &= mask;
	and.w #-8193,%d2	|, data
| voxel.c:268: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d2	| _2257, data
	move.w %d2,322(%a3)	| data, MEM[(short unsigned int *)screen_207 + 322B]
| voxel.c:272: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a3)	|, MEM[(short unsigned int *)screen_207 + 324B]
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d3,%d0	| data, data
| voxel.c:275: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:276: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _2257, data
	move.w %d0,326(%a3)	| data, MEM[(short unsigned int *)screen_207 + 326B]
	jra .L361		|
.L257:
	move.w 128(%sp),%d0	| %sfp, _3095
	jra .L221		|
.L352:
| voxel.c:65: 	while (*s) {
	moveq #70,%d0	|, _251
	lea .LC8,%a3	|, s
.L90:
| voxel.c:66: 		Bconout(_CON, *s);
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp1286
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_243], _251
	jeq .L233		|
| voxel.c:66: 		Bconout(_CON, *s);
	and.w #255,%d0	|, _b
#APP
| 66 "voxel.c" 1
	movw	%d0,%sp@-	| _b
	movw	%d3,%sp@-	| tmp1286
	movw	#3,%sp@-	|
	trap	#13
	addql	#6,%sp
| 0 "" 2
| voxel.c:67: 		s++;
#NO_APP
	addq.l #1,%a3	|, s
| voxel.c:65: 	while (*s) {
	move.b (%a3),%d0	| MEM[(const char *)s_243], _251
	jne .L90		|
	jra .L233		|
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
