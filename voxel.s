| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
_render.constprop.0:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d6	| delta_vu, delta_vu
	move.w 74(%sp),%d5	| y_min, y_min
	move.b 79(%sp),47(%sp)	| fog, %sfp
| voxel.c:413: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:415: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:418: 	short ytable_offset = 256 - player_height;
	move.w #256,%a3	|, ytable_offset
	sub.w 70(%sp),%a3	| player_height, ytable_offset
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a3,%a3	| ytable_offset, ytable_offset
	add.l %a3,%a3	| ytable_offset, tmp88
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+57344,%a3	|, y_table_shifted
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d1,%d5	| y, y_min
	jgt .L2		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:422: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+56,%a5	|, opacity_table_shifted
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp114
.L11:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d2	| sample_vu, result
	swap %d2	| result
	and.w %d7, %d2	| tmp, result
	lsl.l #3, %d2	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d2	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #517104,%d2	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d2,%a0	| index, _23
	add.l #_combined,%a0	|, _23
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a0),%d7	| *_23, sample
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d2	| SR.187
	move.b %d7,%d2	| sample, SR.187
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d2,%d2	| SR.187, tmp93
	move.w (%a3,%d2.l),%d2	| (*y_table_shifted_92)[_25], sample_y
| voxel.c:428: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L3		|
| voxel.c:430: 			if (sample_y < y_min) {
	cmp.w %d2,%d5	| sample_y, y_min
	jgt .L4		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L6		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp108
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp109
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d7.l),%d7	| *_117, _118
.L8:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L8		|
.L9:
| voxel.c:459: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:460: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp107
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L2		|
	cmp.w %d5,%d1	| y_min, y
	jge .L11		|
.L2:
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L3:
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L9		|
.L13:
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
.L6:
| voxel.c:389: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	|
	move.b (%a5),%d0	| MEM[(unsigned char *)opacity_table_shifted_97],
	move.w %d0,%a4	|, opacity_preshifted
	add.w %d7,%a4	| _60, offset
| voxel.c:390: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _50
	move.w %a4,%d7	| offset, _50
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L9		|
	move.l %d7,%a4	| _50, tmp111
	add.l #_pdata_table,%a4	|, tmp111
.L10:
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L9		|
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L10		|
	jra .L9		|
.L4:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L13		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp94
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp95
	add.l #_pdata_table,%d7	|, _35
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L24		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d7,%a0	| _35,
	move.l (%a0),%d7	| *_35, _118
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L8		|
	jra .L9		|
.L24:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp96
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
_render.constprop.1:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d6	| delta_vu, delta_vu
	move.w 74(%sp),%d5	| y_min, y_min
	move.b 79(%sp),47(%sp)	| fog, %sfp
| voxel.c:413: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:415: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:418: 	short ytable_offset = 256 - player_height;
	move.w #256,%a3	|, ytable_offset
	sub.w 70(%sp),%a3	| player_height, ytable_offset
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a3,%a3	| ytable_offset, ytable_offset
	add.l %a3,%a3	| ytable_offset, tmp88
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+49152,%a3	|, y_table_shifted
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d1,%d5	| y, y_min
	jgt .L26		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:422: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+48,%a5	|, opacity_table_shifted
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp114
.L35:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d2	| sample_vu, result
	swap %d2	| result
	and.w %d7, %d2	| tmp, result
	lsl.l #3, %d2	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d2	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d2,%a0	| index, _23
	add.l #_combined,%a0	|, _23
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a0),%d7	| *_23, sample
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d2	| SR.217
	move.b %d7,%d2	| sample, SR.217
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d2,%d2	| SR.217, tmp93
	move.w (%a3,%d2.l),%d2	| (*y_table_shifted_92)[_25], sample_y
| voxel.c:428: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L27		|
| voxel.c:430: 			if (sample_y < y_min) {
	cmp.w %d2,%d5	| sample_y, y_min
	jgt .L28		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L30		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp108
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp109
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d7.l),%d7	| *_117, _118
.L32:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L32		|
.L33:
| voxel.c:459: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:460: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp107
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L26		|
	cmp.w %d5,%d1	| y_min, y
	jge .L35		|
.L26:
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L27:
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L33		|
.L37:
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
.L30:
| voxel.c:389: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	|
	move.b (%a5),%d0	| MEM[(unsigned char *)opacity_table_shifted_97],
	move.w %d0,%a4	|, opacity_preshifted
	add.w %d7,%a4	| _60, offset
| voxel.c:390: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _50
	move.w %a4,%d7	| offset, _50
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L33		|
	move.l %d7,%a4	| _50, tmp111
	add.l #_pdata_table,%a4	|, tmp111
.L34:
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L33		|
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L34		|
	jra .L33		|
.L28:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L37		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp94
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp95
	add.l #_pdata_table,%d7	|, _35
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L48		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d7,%a0	| _35,
	move.l (%a0),%d7	| *_35, _118
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L32		|
	jra .L33		|
.L48:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp96
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
_render.constprop.2:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d6	| delta_vu, delta_vu
	move.w 74(%sp),%d5	| y_min, y_min
	move.b 79(%sp),47(%sp)	| fog, %sfp
| voxel.c:413: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:415: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:418: 	short ytable_offset = 256 - player_height;
	move.w #256,%a3	|, ytable_offset
	sub.w 70(%sp),%a3	| player_height, ytable_offset
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a3,%a3	| ytable_offset, ytable_offset
	add.l %a3,%a3	| ytable_offset, tmp88
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+40960,%a3	|, y_table_shifted
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d1,%d5	| y, y_min
	jgt .L50		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d4	|, z
| voxel.c:422: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	lea _opacity_table+40,%a5	|, opacity_table_shifted
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp114
.L59:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d2	| sample_vu, result
	swap %d2	| result
	and.w %d7, %d2	| tmp, result
	lsl.l #3, %d2	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d2	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #521208,%d2	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d2,%a0	| index, _23
	add.l #_combined,%a0	|, _23
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a0),%d7	| *_23, sample
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d2	| SR.246
	move.b %d7,%d2	| sample, SR.246
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d2,%d2	| SR.246, tmp93
	move.w (%a3,%d2.l),%d2	| (*y_table_shifted_92)[_25], sample_y
| voxel.c:428: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L51		|
| voxel.c:430: 			if (sample_y < y_min) {
	cmp.w %d2,%d5	| sample_y, y_min
	jgt .L52		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L54		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp108
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp109
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d7.l),%d7	| *_117, _118
.L56:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L56		|
.L57:
| voxel.c:459: 		y_table_shifted++;
	lea (1024,%a3),%a3	|, y_table_shifted
| voxel.c:460: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp107
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L50		|
	cmp.w %d5,%d1	| y_min, y
	jge .L59		|
.L50:
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L51:
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L57		|
.L61:
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
.L54:
| voxel.c:389: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	|
	move.b (%a5),%d0	| MEM[(unsigned char *)opacity_table_shifted_97],
	move.w %d0,%a4	|, opacity_preshifted
	add.w %d7,%a4	| _60, offset
| voxel.c:390: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d7	| _50
	move.w %a4,%d7	| offset, _50
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L57		|
	move.l %d7,%a4	| _50, tmp111
	add.l #_pdata_table,%a4	|, tmp111
.L58:
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L57		|
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp100
	add.l %d0,%a0	| tmp100, tmp101
	add.l %a0,%a0	| tmp101, tmp102
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a4,%a0.l),%d7	| *_56, *_56
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| *_56, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L58		|
	jra .L57		|
.L52:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, _60
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L61		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d7	|, tmp94
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d7	|, tmp95
	add.l #_pdata_table,%d7	|, _35
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L72		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d7,%a0	| _35,
	move.l (%a0),%d7	| *_35, _118
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d7, 0(%a2)	| _118, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L56		|
	jra .L57		|
.L72:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d3	| delta_vu, tmp96
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp78,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
_render.constprop.3:
	movem.l #15928,-(%sp)	|,
	move.l 48(%sp),%d5	| delta_vu, delta_vu
	move.w 58(%sp),%d4	| y_min, y_min
| voxel.c:413: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 36(%sp),%d2	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 40(%sp),%a0	| state.pixel, pBlock
| voxel.c:415: 	short y = state.y;
	move.w 44(%sp),%d1	| state.y, y
| voxel.c:418: 	short ytable_offset = 256 - player_height;
	move.w #256,%a2	|, ytable_offset
	sub.w 54(%sp),%a2	| player_height, ytable_offset
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a2,%a2	| ytable_offset, ytable_offset
	add.l %a2,%a2	| ytable_offset, tmp75
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	add.l #_y_table+36864,%a2	|, y_table_shifted
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d1,%d4	| y, y_min
	jgt .L74		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-4,%d0	|, z
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|, tmp91
.L81:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d6	| tmp
	move.l %d2, %d3	| sample_vu, result
	swap %d3	| result
	and.w %d6, %d3	| tmp, result
	lsl.l #3, %d3	| result
	and.w %d2, %d6	| sample_vu, tmp
	lsr.w #6, %d6	| tmp
	or.w %d6,%d3	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d3	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d3	|, _23
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d3,%a4	| _23,
	move.w (%a4),%d3	| *_23, sample
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d6	| SR.274
	move.b %d3,%d6	| sample, SR.274
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d6,%d6	| SR.274, tmp80
	move.w (%a2,%d6.l),%d6	| (*y_table_shifted_54)[_25], sample_y
| voxel.c:428: 		if (sample_y <= y) {
	cmp.w %d6,%d1	| sample_y, y
	jlt .L75		|
| voxel.c:430: 			if (sample_y < y_min) {
	cmp.w %d6,%d4	| sample_y, y_min
	jgt .L76		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, tmp81
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d3	|, tmp82
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d3	|, tmp83
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a3,%d3.l),%d3	| *_75, _51
.L79:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _51, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d6,%d1	| sample_y, y
	jge .L79		|
.L80:
| voxel.c:459: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp89
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d0	| z
	jeq .L74		|
	cmp.w %d4,%d1	| y_min, y
	jge .L81		|
.L74:
| voxel.c:469: 	return result;
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp67,
	movem.l (%sp)+,#7292	|,
	rts	
.L75:
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d0	|, z
	jra .L80		|
.L76:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d3	|, tmp85
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d3	|, tmp86
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d3	|, tmp87
	add.l #_pdata_table,%d3	|, _34
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d4,%d1	| y_min, y
	jlt .L89		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d3,%a4	| _34,
	move.l (%a4),%d3	| *_34, _51
	move.w %d4,%d6	| y_min, sample_y
	clr.w %d0	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d3, 0(%a0)	| _51, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d6,%d1	| sample_y, y
	jge .L79		|
	jra .L80		|
.L89:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d2	| delta_vu, tmp88
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:469: 	return result;
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp67,
	movem.l (%sp)+,#7292	|,
	rts	
	.even
	.globl	_draw_image2
_draw_image2:
	lea (-28,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 76(%sp),%a1	| out, out
	move.b 95(%sp),%d0	| dither, dither
| voxel.c:121: 	for (int y=0; y<height; y++) {
	tst.l 88(%sp)	| height
	jle .L90		|
	tst.b %d0	| dither
	jne .L108		|
	lea (160,%a1),%a1	|, out
	move.l %a1,60(%sp)	| out, %sfp
	clr.l 68(%sp)	| %sfp
| voxel.c:121: 	for (int y=0; y<height; y++) {
	clr.l 64(%sp)	| %sfp
.L95:
	move.l 60(%sp),%a4	| %sfp, out
	lea (-160,%a4),%a4	|, out
	move.l 68(%sp),%a6	| %sfp, ivtmp.304
	add.l 80(%sp),%a6	| pixels, ivtmp.304
.L94:
| voxel.c:125: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a6),%d0	| MEM[(const unsigned char *)_74],
	move.w %d0,%a2	|, px
	move.b 1(%a6),%d1	| MEM[(const unsigned char *)_74 + 1B],
	move.w %d1,%a1	|, px
	move.b 2(%a6),%d0	| MEM[(const unsigned char *)_74 + 2B],
	move.w %d0,%a0	|, px
	move.b 3(%a6),%d7	| MEM[(const unsigned char *)_74 + 3B], px
	move.b 4(%a6),%d6	| MEM[(const unsigned char *)_74 + 4B], px
	move.b 5(%a6),%d5	| MEM[(const unsigned char *)_74 + 5B], px
	move.b 6(%a6),%d4	| MEM[(const unsigned char *)_74 + 6B], px
	move.b 7(%a6),%d3	| MEM[(const unsigned char *)_74 + 7B], px
	move.b 8(%a6),%d2	| MEM[(const unsigned char *)_74 + 8B], px
	move.b 9(%a6),49(%sp)	| MEM[(const unsigned char *)_74 + 9B], %sfp
	move.b 10(%a6),47(%sp)	| MEM[(const unsigned char *)_74 + 10B], %sfp
	move.b 11(%a6),53(%sp)	| MEM[(const unsigned char *)_74 + 11B], %sfp
	move.b 12(%a6),55(%sp)	| MEM[(const unsigned char *)_74 + 12B], %sfp
	move.b 13(%a6),57(%sp)	| MEM[(const unsigned char *)_74 + 13B], %sfp
	move.b 14(%a6),59(%sp)	| MEM[(const unsigned char *)_74 + 14B], %sfp
	move.b 15(%a6),51(%sp)	| MEM[(const unsigned char *)_74 + 15B], %sfp
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a2,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	and.w #2,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp413
	add.w %d0,%a5	| tmp413, tmp414
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp414,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp417
	add.w %d1,%a3	| tmp417, tmp418
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d7,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp418,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp421
	add.w %d1,%a5	| tmp421, tmp422
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d6,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp422,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp425
	add.w %d1,%a3	| tmp425, tmp426
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp426,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp429
	add.w %d1,%a5	| tmp429, tmp430
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d4,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp430,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp433
	add.w %d1,%a3	| tmp433, tmp434
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp434,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp437
	add.w %d1,%a5	| tmp437, tmp438
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d2,%d1	|,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp438,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp441
	add.w %d1,%a3	| tmp441, tmp442
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 49(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp442,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp445
	add.w %d1,%a5	| tmp445, tmp446
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 47(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp446,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp449
	add.w %d1,%a3	| tmp449, tmp450
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 53(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp450,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp453
	add.w %d1,%a5	| tmp453, tmp454
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 55(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp454,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp457
	add.w %d1,%a3	| tmp457, tmp458
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 57(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp458,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp461
	add.w %d1,%a5	| tmp461, tmp462
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 59(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a5,%d0	| tmp462,
	or.w %d0,%d1	|,
	move.w %d1,%a3	|, tmp465
	add.w %d1,%a3	| tmp465, tmp466
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.b 51(%sp),%d1	| %sfp,
	and.w #1,%d1	|,
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %a3,%d0	| tmp466,
	or.w %d0,%d1	|,
	move.w %d1,(%a4)	|, MEM[(short unsigned int *)out_152]
| voxel.c:129: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a3	|, tmp472
| voxel.c:129: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a5	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	| tmp472,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp476
	add.w %d0,%a5	| tmp476, tmp477
| voxel.c:129: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp477,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp481
	add.w %d1,%a5	| tmp481, tmp482
| voxel.c:129: 				px >>= 1;
	move.b %d7,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp482,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp486
	add.w %d0,%a5	| tmp486, tmp487
| voxel.c:129: 				px >>= 1;
	move.b %d6,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp487,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp491
	add.w %d1,%a5	| tmp491, tmp492
| voxel.c:129: 				px >>= 1;
	move.b %d5,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp492,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp496
	add.w %d0,%a5	| tmp496, tmp497
| voxel.c:129: 				px >>= 1;
	move.b %d4,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp497,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp501
	add.w %d1,%a5	| tmp501, tmp502
| voxel.c:129: 				px >>= 1;
	move.b %d3,%d1	| px,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp502,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp506
	add.w %d0,%a5	| tmp506, tmp507
| voxel.c:129: 				px >>= 1;
	move.b %d2,%d0	| px,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp507,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp511
	add.w %d1,%a5	| tmp511, tmp512
| voxel.c:129: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp512,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp516
	add.w %d0,%a5	| tmp516, tmp517
| voxel.c:129: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp517,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp521
	add.w %d1,%a5	| tmp521, tmp522
| voxel.c:129: 				px >>= 1;
	move.b 53(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp522,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp526
	add.w %d0,%a5	| tmp526, tmp527
| voxel.c:129: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d0	| tmp527,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp531
	add.w %d1,%a5	| tmp531, tmp532
| voxel.c:129: 				px >>= 1;
	move.b 57(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp532,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp536
	add.w %d0,%a3	| tmp536, tmp537
| voxel.c:129: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp,
	lsr.b #1,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	| tmp537,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp541
	add.w %d1,%a5	| tmp541, tmp542
| voxel.c:129: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp,
	lsr.b #1,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	move.w %a5,%d1	| tmp542,
	or.w %d1,%d0	|,
	move.w %d0,2(%a4)	|, MEM[(short unsigned int *)out_152 + 2B]
| voxel.c:131: 				px >>= 1;
	move.w %a2,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	lsl.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #2,%d1	|,
	move.w %d1,%a3	|, tmp549
| voxel.c:131: 				px >>= 1;
	move.w %a1,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp549,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp553
	add.w %d1,%a5	| tmp553, tmp554
| voxel.c:131: 				px >>= 1;
	move.w %a0,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp554,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp558
	add.w %d0,%a5	| tmp558, tmp559
| voxel.c:131: 				px >>= 1;
	move.b %d7,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp559,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp563
	add.w %d1,%a5	| tmp563, tmp564
| voxel.c:131: 				px >>= 1;
	move.b %d6,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp564,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp568
	add.w %d0,%a5	| tmp568, tmp569
| voxel.c:131: 				px >>= 1;
	move.b %d5,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp569,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp573
	add.w %d1,%a5	| tmp573, tmp574
| voxel.c:131: 				px >>= 1;
	move.b %d4,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp574,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp578
	add.w %d0,%a5	| tmp578, tmp579
| voxel.c:131: 				px >>= 1;
	move.b %d3,%d0	| px,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp579,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp583
	add.w %d1,%a5	| tmp583, tmp584
| voxel.c:131: 				px >>= 1;
	move.b %d2,%d1	| px,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp584,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp588
	add.w %d0,%a5	| tmp588, tmp589
| voxel.c:131: 				px >>= 1;
	move.b 49(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp589,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp593
	add.w %d1,%a5	| tmp593, tmp594
| voxel.c:131: 				px >>= 1;
	move.b 47(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp594,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp598
	add.w %d0,%a5	| tmp598, tmp599
| voxel.c:131: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp599,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp603
	add.w %d1,%a5	| tmp603, tmp604
| voxel.c:131: 				px >>= 1;
	move.b 55(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp604,
	or.w %d1,%d0	|,
	move.w %d0,%a3	|, tmp608
	add.w %d0,%a3	| tmp608, tmp609
| voxel.c:131: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a5	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	| tmp609,
	or.w %d0,%d1	|,
	move.w %d1,%a5	|, tmp613
	add.w %d1,%a5	| tmp613, tmp614
| voxel.c:131: 				px >>= 1;
	move.b 59(%sp),%d1	| %sfp,
	lsr.b #2,%d1	|,
	move.w %d1,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d0	|,
	and.w #1,%d0	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d1	| tmp614,
	or.w %d1,%d0	|,
	move.w %d0,%a5	|, tmp618
	add.w %d0,%a5	| tmp618, tmp619
| voxel.c:131: 				px >>= 1;
	move.b 51(%sp),%d0	| %sfp,
	lsr.b #2,%d0	|,
	move.w %d0,%a3	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a3,%d1	|,
	and.w #1,%d1	|,
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	move.w %a5,%d0	| tmp619,
	or.w %d0,%d1	|,
	move.w %d1,4(%a4)	|, MEM[(short unsigned int *)out_152 + 4B]
| voxel.c:139: 			*out++ = plane3;
	addq.l #8,%a4	|, out
| voxel.c:133: 				px >>= 1;
	move.w %a2,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a2	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d0	|,
	lsl.w #1,%d0	|,
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #2,%d0	|,
	move.w %d0,%a2	|, tmp626
| voxel.c:133: 				px >>= 1;
	move.w %a1,%d1	| px,
	lsr.b #3,%d1	|,
	move.w %d1,%a1	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	|,
	and.w #1,%d0	|,
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a2,%d1	| tmp626,
	or.w %d1,%d0	|,
	move.w %d0,%a1	|, tmp630
	add.w %d0,%a1	| tmp630, tmp631
| voxel.c:133: 				px >>= 1;
	move.w %a0,%d0	| px,
	lsr.b #3,%d0	|,
	move.w %d0,%a0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	|,
	and.w #1,%d1	|,
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a1,%d0	| tmp631,
	or.w %d0,%d1	|,
	move.w %d1,%a0	|, tmp635
	add.w %d1,%a0	| tmp635, tmp636
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d7	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d7	|, tmp639
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	move.w %a0,%d1	| tmp636,
	or.w %d1,%d7	|, tmp640
	add.w %d7,%d7	| tmp640, tmp641
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d6	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d6	|, tmp644
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d7,%d6	| tmp641, tmp645
	add.w %d6,%d6	| tmp645, tmp646
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d5	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d5	|, tmp649
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d6,%d5	| tmp646, tmp650
	add.w %d5,%d5	| tmp650, tmp651
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d4	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d4	|, tmp654
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d5,%d4	| tmp651, tmp655
	add.w %d4,%d4	| tmp655, tmp656
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d3	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d3	|, tmp659
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d4,%d3	| tmp656, tmp660
	add.w %d3,%d3	| tmp660, tmp661
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d2	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d2	|, tmp664
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d3,%d2	| tmp661, tmp665
	add.w %d2,%d2	| tmp665, tmp666
| voxel.c:133: 				px >>= 1;
	move.b 49(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp669
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d2,%d1	| tmp666, tmp670
	add.w %d1,%d1	| tmp670, tmp671
| voxel.c:133: 				px >>= 1;
	move.b 47(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp674
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp674, tmp675
	add.w %d1,%d1	| tmp675, tmp676
| voxel.c:133: 				px >>= 1;
	move.b 53(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp679
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp679, tmp680
	add.w %d1,%d1	| tmp680, tmp681
| voxel.c:133: 				px >>= 1;
	move.b 55(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp684
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp684, tmp685
	add.w %d1,%d1	| tmp685, tmp686
| voxel.c:133: 				px >>= 1;
	move.b 57(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp689
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp689, tmp690
	add.w %d1,%d1	| tmp690, tmp691
| voxel.c:133: 				px >>= 1;
	move.b 59(%sp),%d0	| %sfp, px
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp694
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d1,%d0	| tmp691, tmp695
	add.w %d0,%d0	| tmp695, tmp696
| voxel.c:133: 				px >>= 1;
	move.b 51(%sp),%d1	| %sfp, px
	lsr.b #3,%d1	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d1	|, tmp699
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	or.w %d0,%d1	| tmp696, tmp699
	move.w %d1,-2(%a4)	| tmp699, MEM[(short unsigned int *)out_97 + 4294967294B]
| voxel.c:122: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a6),%a6	|, ivtmp.304
	cmp.l 60(%sp),%a4	| %sfp, out
	jne .L94		|
| voxel.c:121: 	for (int y=0; y<height; y++) {
	addq.l #1,64(%sp)	|, %sfp
| voxel.c:121: 	for (int y=0; y<height; y++) {
	add.l #160,60(%sp)	|, %sfp
	move.l 84(%sp),%d0	| width,
	add.l %d0,68(%sp)	|, %sfp
	move.l 88(%sp),%d1	| height,
	cmp.l 64(%sp),%d1	| %sfp,
	jne .L95		|
.L90:
| voxel.c:142: }
	movem.l (%sp)+,#31996	|,
	lea (28,%sp),%sp	|,
	rts	
.L108:
| voxel.c:121: 	for (int y=0; y<height; y++) {
	sub.l %a2,%a2	| ivtmp.335
| voxel.c:121: 	for (int y=0; y<height; y++) {
	moveq #0,%d6	| y
	move.l 80(%sp),%a0	| pixels, ivtmp.328
	add.l %a2,%a0	| ivtmp.335, ivtmp.328
	lea (160,%a1),%a3	|, out, tmp719
.L98:
| voxel.c:124: 			for (int x=0; x<16; x++) {
	moveq #0,%d5	| x
| voxel.c:123: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d1	| plane3
| voxel.c:123: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d2	| plane2
| voxel.c:123: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d3	| plane1
| voxel.c:123: 			unsigned short register plane0 = 0, plane1 = 0, plane2 = 0, plane3 = 0;
	clr.w %d4	| plane0
.L97:
| voxel.c:125: 				unsigned char register px = pixels[y*width + 16*chunk + x];
	move.b (%a0,%d5.l),%d0	| MEM[(const unsigned char *)_62 + _75 * 1], px
| voxel.c:126: 				if (dither && ((x & 1) != (y & 1)))
	move.l %d6,%d7	| y, tmp700
	eor.l %d5,%d7	| x, tmp700
| voxel.c:126: 				if (dither && ((x & 1) != (y & 1)))
	btst #0,%d7	|, tmp700
	jeq .L96		|
| voxel.c:127: 					px = ((px & 15) + (px >> 4)) & 15;
	move.b %d0,%d7	| px, tmp702
	lsr.b #4,%d7	|, tmp702
	add.b %d7,%d0	| tmp702, _221
| voxel.c:127: 					px = ((px & 15) + (px >> 4)) & 15;
	and.b #15,%d0	|, px
.L96:
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	add.w %d4,%d4	| plane0, tmp703
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	move.w %d0,%d7	|, tmp705
	and.w #1,%d7	|, tmp705
| voxel.c:128: 				plane0 = (plane0 << 1) | (px & 1);
	or.w %d7,%d4	| tmp705, plane0
| voxel.c:129: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #1,%d7	|, px
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	and.w #1,%d7	|, tmp708
| voxel.c:130: 				plane1 = (plane1 << 1) | (px & 1);
	add.w %d3,%d3	| plane1, tmp709
	or.w %d7,%d3	| tmp708, plane1
| voxel.c:131: 				px >>= 1;
	move.b %d0,%d7	| px, px
	lsr.b #2,%d7	|, px
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	and.w #1,%d7	|, tmp712
| voxel.c:132: 				plane2 = (plane2 << 1) | (px & 1);
	add.w %d2,%d2	| plane2, tmp713
	or.w %d7,%d2	| tmp712, plane2
| voxel.c:133: 				px >>= 1;
	lsr.b #3,%d0	|, px
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	and.w #1,%d0	|, tmp716
| voxel.c:134: 				plane3 = (plane3 << 1) | (px & 1);
	add.w %d1,%d1	| plane3, tmp717
	or.w %d0,%d1	| tmp716, plane3
| voxel.c:124: 			for (int x=0; x<16; x++) {
	addq.l #1,%d5	|, x
| voxel.c:124: 			for (int x=0; x<16; x++) {
	moveq #16,%d0	|,
	cmp.l %d5,%d0	| x,
	jne .L97		|
| voxel.c:136: 			*out++ = plane0;
	move.w %d4,(%a1)	| plane0, MEM[(short unsigned int *)out_73]
| voxel.c:137: 			*out++ = plane1;
	move.w %d3,2(%a1)	| plane1, MEM[(short unsigned int *)out_73 + 2B]
| voxel.c:138: 			*out++ = plane2;
	move.w %d2,4(%a1)	| plane2, MEM[(short unsigned int *)out_73 + 4B]
| voxel.c:139: 			*out++ = plane3;
	addq.l #8,%a1	|, out
| voxel.c:139: 			*out++ = plane3;
	move.w %d1,-2(%a1)	| plane3, MEM[(short unsigned int *)out_202 + 4294967294B]
| voxel.c:122: 		for (int chunk=0; chunk<20; chunk++) {
	lea (16,%a0),%a0	|, ivtmp.328
	cmp.l %a1,%a3	| out, tmp719
	jne .L98		|
| voxel.c:121: 	for (int y=0; y<height; y++) {
	addq.l #1,%d6	|, y
| voxel.c:121: 	for (int y=0; y<height; y++) {
	add.l 84(%sp),%a2	| width, ivtmp.335
	cmp.l 88(%sp),%d6	| height, y
	jeq .L90		|
	move.l 80(%sp),%a0	| pixels, ivtmp.328
	add.l %a2,%a0	| ivtmp.335, ivtmp.328
	lea (160,%a1),%a3	|, out, tmp719
	jra .L98		|
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0	| out, out
	move.l %a0,%d0	| out, _3
	add.l #32000,%d0	|, _3
.L110:
| voxel.c:145: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp_out.341_11]
	cmp.l %d0,%a0	| _3, out
	jne .L110		|
| voxel.c:146: }
	rts	
	.even
	.globl	_fixp_int
_fixp_int:
| voxel.c:154: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_uint
_fixp_uint:
| voxel.c:158: }
	move.l 4(%sp),%d0	| val, val
	lsr.w #7,%d0	|,
	rts	
	.even
	.globl	_fixp_mul
_fixp_mul:
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 6(%sp),%d0	| a,
	muls.w 10(%sp),%d0	| b, tmp39
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp40
| voxel.c:162: }
	rts	
	.even
	.globl	_pdata_pattern
_pdata_pattern:
	move.l %d3,-(%sp)	|,
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d1	| color, color
	move.l 16(%sp),%d2	| pattern, pattern
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	btst #0,%d1	|, color
	jeq .L125		|
	move.l %d2,%d0	| pattern, iftmp.11_8
	lsl.w #8,%d0	|, iftmp.11_8
	swap %d0	| iftmp.11_8
	clr.w %d0	| iftmp.11_8
.L121:
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d1	|, color
	jeq .L122		|
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	swap %d3	| tmp51
	clr.w %d3	| tmp51
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	or.l %d3,%d0	| tmp51, iftmp.11_8
.L122:
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d1	|, color
	jeq .L123		|
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	moveq #0,%d3	| pattern
	move.b %d2,%d3	| pattern, pattern
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d3	|, tmp54
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	or.l %d3,%d0	| tmp54, iftmp.11_8
.L123:
| voxel.c:236: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d1	|, color
	jeq .L124		|
| voxel.c:236: 		| ((color&8) ? pattern <<  0 : 0);
	or.b %d2,%d0	| pattern, iftmp.11_8
.L124:
| voxel.c:237: }
	move.l (%sp)+,%d2	|,
	move.l (%sp)+,%d3	|,
	rts	
.L125:
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d0	| iftmp.11_8
	jra .L121		|
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
	.globl	_build_tables
_build_tables:
	lea (-408,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l #_y_table+1024,%d6	|, ivtmp.477
| voxel.c:246: 	for (int z=1; z<STEPS_MAX; z++) {
	moveq #1,%d4	|, z
| voxel.c:245: 	fixp step = FIXP(1,0);
	move.w #128,%d7	|, step
| voxel.c:244: 	fixp dist = FIXP(1,0);
	move.w %d7,%d5	| step, dist
	lea ___divsi3,%a4	|, tmp252
	lea _opacity_table,%a5	|, tmp253
.L138:
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d5,%d0	| dist, _156
	lsr.w #7,%d0	|, _156
| voxel.c:248: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	moveq #0,%d3	| _3
	move.w %d0,%d3	| _156, _3
| voxel.c:250: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	mulu.w #70,%d0	|, tmp189
| voxel.c:250: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	pea 400.w		|
	move.l %d0,-(%sp)	| tmp189,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
	move.w %d0,%d2	|, _205
	add.w #45,%d2	|, _205
| voxel.c:250: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.l %d6,%a3	| ivtmp.477, ivtmp.466
	move.w #-17920,%a2	|, ivtmp.463
.L139:
| voxel.c:248: 			y_table[z][h] = 45 - 70 * (h - 256) / fixp_int(dist);
	move.l %d3,-(%sp)	| _3,
	move.l %a2,-(%sp)	| ivtmp.463,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:250: 			y_table[z][h] += 70 * fixp_int(dist) / 400;
	move.w %d2,%d1	| _205,
	sub.w %d0,%d1	| tmp281,
	move.w %d1,(%a3)+	|, MEM[(short int *)_225]
| voxel.c:247: 		for (int h=0; h<256+256; h++) {
	lea (70,%a2),%a2	|, ivtmp.463
	cmp.w #17920,%a2	|, ivtmp.463
	jne .L139		|
| voxel.c:253: 		dist += step;
	add.w %d7,%d5	| step, dist
| voxel.c:255: 		if (TRIGGERS_PROGRESSION(z))
	moveq #15,%d0	|, tmp173
	and.l %d4,%d0	| z, tmp173
| voxel.c:255: 		if (TRIGGERS_PROGRESSION(z))
	jne .L140		|
| voxel.c:63: 	return x + x;
	add.w %d7,%d7	| step, step
.L140:
| voxel.c:258: 		int rel_dist = z - FOG_START;
	move.w #-40,%a0	|, rel_dist
	add.l %d4,%a0	| z, rel_dist
| voxel.c:259: 		if (rel_dist < 0) rel_dist = 0;
	cmp.w #0,%a0	|, rel_dist
	jlt .L195		|
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:246: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:246: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.477
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L138		|
.L142:
| voxel.c:264: 	max_height = 0;
	clr.b _max_height	| max_height
	lea _combined+1025,%a1	|, ivtmp.454
	clr.b %d2	| max_height_lsm_flag.376
	clr.b %d1	| max_height_lsm.375
.L145:
	lea (-1024,%a1),%a0	|, ivtmp.454, ivtmp.447
.L144:
| voxel.c:267: 			if (combined[y][x].height > max_height)
	move.b (%a0),%d0	| MEM <unsigned char> [(union  *)_354], _72
| voxel.c:267: 			if (combined[y][x].height > max_height)
	cmp.b %d1,%d0	| max_height_lsm.375, _72
	jls .L143		|
| voxel.c:268: 				max_height = combined[y][x].height;
	move.b %d0,%d1	| _72, max_height_lsm.375
| voxel.c:267: 			if (combined[y][x].height > max_height)
	moveq #1,%d2	|, max_height_lsm_flag.376
.L143:
| voxel.c:266: 		for (int x=0; x<WIDTH; x++) {
	addq.l #2,%a0	|, ivtmp.447
	cmp.l %a0,%a1	| ivtmp.447, ivtmp.454
	jne .L144		|
| voxel.c:265: 	for (int y=0; y<HEIGHT; y++) {
	lea (1024,%a0),%a1	|, ivtmp.447, ivtmp.454
	cmp.l #_combined+524289,%a0	|, ivtmp.447
	jne .L145		|
	tst.b %d2	| max_height_lsm_flag.376
	jeq .L146		|
	move.b %d1,_max_height	| max_height_lsm.375, max_height
.L146:
| voxel.c:272: 	int bayer[8][8] = {
	move.l %sp,%d2	|, tmp201
	add.l #196,%d2	|, tmp201
	pea 256.w		|
	pea .LC0		|
	move.l %d2,-(%sp)	| tmp201,
	jsr _memcpy		|
	move.l %d2,88(%sp)	| tmp201, %sfp
	lea _pdata_table,%a6	|, tmp254
	move.l %a6,124(%sp)	| tmp254, %sfp
	lea (12,%sp),%sp	|,
| voxel.c:282: 	for (int y = 0; y < 8; y++) {
	sub.l %a5,%a5	| y
.L147:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 76(%sp),%a0	| %sfp,
	move.l (%a0),80(%sp)	| MEM[(int *)_94], %sfp
	move.l 4(%a0),84(%sp)	| MEM[(int *)_94 + 4B], %sfp
	move.l 8(%a0),88(%sp)	| MEM[(int *)_94 + 8B], %sfp
	move.l 12(%a0),92(%sp)	| MEM[(int *)_94 + 12B], %sfp
	move.l 16(%a0),96(%sp)	| MEM[(int *)_94 + 16B], %sfp
	move.l 20(%a0),100(%sp)	| MEM[(int *)_94 + 20B], %sfp
	move.l 24(%a0),104(%sp)	| MEM[(int *)_94 + 24B], %sfp
	move.l 28(%a0),108(%sp)	| MEM[(int *)_94 + 28B], %sfp
	move.l 112(%sp),72(%sp)	| %sfp, %sfp
	moveq #8,%d0	|,
	move.l %d0,56(%sp)	|, %sfp
	sub.l %a4,%a4	| ivtmp.427
.L170:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 80(%sp),%a0	| %sfp,
	sgt %d0		| tmp238
	neg.b %d0	| mask
	cmp.l 84(%sp),%a0	| %sfp,
	jle .L162		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #2,%d0	|, mask
.L162:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 88(%sp),%d1	| %sfp,
	jle .L163		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #4,%d0	|, mask
.L163:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 92(%sp),%d2	| %sfp,
	jle .L164		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #8,%d0	|, mask
.L164:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d7	| %sfp,
	cmp.l 96(%sp),%d7	| %sfp,
	jle .L165		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #16,%d0	|, mask
.L165:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%a0	| %sfp,
	cmp.l 100(%sp),%a0	| %sfp,
	jle .L166		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #32,%d0	|, mask
.L166:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d1	| %sfp,
	cmp.l 104(%sp),%d1	| %sfp,
	jle .L167		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #64,%d0	|, mask
.L167:
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	move.l 56(%sp),%d2	| %sfp,
	cmp.l 108(%sp),%d2	| %sfp,
	jle .L168		|
| voxel.c:288: 				if (bayer[y][x] < (opacity+1) * (64/OPACITY_STEPS)) mask |= 1 << x;
	or.b #-128,%d0	|, mask
.L168:
| voxel.c:293: 						| pdata_pattern(color1, mask & evn)
	move.b %d0,%d7	| mask,
	and.b #-86,%d7	|,
	move.b %d7,55(%sp)	|, %sfp
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	moveq #0,%d1	| _184
	move.b %d7,%d1	|, _184
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	move.b %d7,%d2	|,
	lsl.w #8,%d2	|,
	swap %d2	|
	clr.w %d2	|
	move.l %d2,60(%sp)	|, %sfp
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d1,%d7	| _184,
	swap %d7	|
	clr.w %d7	|
	move.l %d7,64(%sp)	|, %sfp
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	lsl.l #8,%d1	|, _184
	move.l %d1,68(%sp)	| _184, %sfp
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	moveq #85,%d7	|, _166
	and.l %d0,%d7	| mask, _166
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	move.l %d7,%d6	| _166, iftmp.11_167
	lsl.w #8,%d6	|, iftmp.11_167
	swap %d6	| iftmp.11_167
	clr.w %d6	| iftmp.11_167
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	move.l %d7,%d1	| _166,
	swap %d1	|
	clr.w %d1	|
	move.l %d1,%a2	|, iftmp.12_170
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	move.l %d7,%d2	| _166,
	lsl.l #8,%d2	|,
	move.l %d2,%a1	|, iftmp.13_176
| voxel.c:295: 						| pdata_pattern(15, ~mask);
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
	move.l 72(%sp),%a3	| %sfp, ivtmp.426
| voxel.c:290: 			for (int color1 = 0; color1 < 16; color1++) {
	moveq #0,%d3	| color1
.L160:
	move.b %d3,%d5	| color1, _122
	btst #1,%d3	|, color1
	jeq .L148		|
	move.l 64(%sp),%d0	| %sfp, iftmp.12_188
.L149:
	btst #0,%d3	|, color1
	jeq .L150		|
	move.l 60(%sp),%d1	| %sfp, iftmp.11_185
.L151:
	or.l %d1,%d0	| iftmp.11_185, tmp211
	or.l 48(%sp),%d0	| %sfp, tmp212
	btst #2,%d5	|, _122
	jeq .L152		|
	move.l 68(%sp),%d4	| %sfp, iftmp.13_194
.L153:
	or.l %d0,%d4	| tmp212, tmp216
	btst #3,%d5	|, _122
	jeq .L154		|
	move.b 55(%sp),%d0	| %sfp, _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.418
	neg.l %d2	| ivtmp.418
	move.l %a3,%a0	| ivtmp.426, ivtmp.419
	move.l %d7,44(%sp)	| _166, %sfp
.L159:
	move.b %d5,%d0	| _122, _54
	add.b %d2,%d0	| ivtmp.418, _54
| voxel.c:233: 		| ((color&1) ? pattern << 24 : 0)
	moveq #1,%d1	|, tmp222
	and.l %d0,%d1	| _54, tmp222
	neg.l %d1	| tmp223
	and.l %d6,%d1	| iftmp.11_167, tmp224
	or.l %d4,%d1	| _330, _137
| voxel.c:234: 		| ((color&2) ? pattern << 16 : 0)
	btst #1,%d0	|, _54
	jeq .L156		|
	move.l %a2,%d7	| iftmp.12_170,
	or.l %d7,%d1	|, _137
.L156:
| voxel.c:235: 		| ((color&4) ? pattern <<  8 : 0)
	btst #2,%d0	|, _54
	jeq .L157		|
	move.l %a1,%d7	| iftmp.13_176,
	or.l %d7,%d1	|, _137
.L157:
| voxel.c:236: 		| ((color&8) ? pattern <<  0 : 0);
	btst #3,%d0	|, _54
	jeq .L158		|
	or.l 44(%sp),%d1	| %sfp, _137
.L158:
| voxel.c:296: 					int index1 = ((color2 - color1) & 15) * 16 + color1;
	moveq #15,%d0	|, tmp229
	and.l %d2,%d0	| ivtmp.418, tmp229
| voxel.c:298: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	lsl.l #4,%d0	|, tmp230
	add.l %d3,%d0	| color1, tmp231
	lsl.l #3,%d0	|, tmp232
	add.l %a4,%d0	| ivtmp.427, tmp233
	lsl.l #3,%d0	|, tmp234
	add.l %a5,%d0	| y, tmp235
	add.l %d0,%d0	| tmp235, tmp236
	add.l %d0,%d0	| tmp236, tmp237
	move.l %d1,(%a6,%d0.l)	| _137, pdata_table[index1_270][opacity_230][y_229]
| voxel.c:298: 					pdata_table[index2][opacity][y] = pdata_table[index1][opacity][y] = pdata;
	move.l %d1,(%a0)	| _137, MEM[(unsigned int *)_70]
| voxel.c:291: 				for (int color2 = 0; color2 <= color1; color2++) {
	addq.l #1,%d2	|, ivtmp.418
	lea (-3840,%a0),%a0	|, ivtmp.419
	moveq #1,%d0	|,
	cmp.l %d2,%d0	| ivtmp.418,
	jne .L159		|
| voxel.c:290: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l 44(%sp),%d7	| %sfp, _166
	addq.l #1,%d3	|, color1
| voxel.c:290: 			for (int color1 = 0; color1 < 16; color1++) {
	lea (4096,%a3),%a3	|, ivtmp.426
	moveq #16,%d1	|,
	cmp.l %d3,%d1	| color1,
	jne .L160		|
| voxel.c:283: 		for (int opacity = 0; opacity < OPACITY_STEPS; opacity++) {
	addq.l #1,%a4	|, ivtmp.427
	addq.l #8,56(%sp)	|, %sfp
	moveq #32,%d2	|,
	add.l %d2,72(%sp)	|, %sfp
	moveq #8,%d7	|,
	cmp.l %a4,%d7	| ivtmp.427,
	jne .L170		|
| voxel.c:282: 	for (int y = 0; y < 8; y++) {
	addq.l #1,%a5	|, y
| voxel.c:282: 	for (int y = 0; y < 8; y++) {
	moveq #32,%d7	|,
	add.l %d7,76(%sp)	|, %sfp
	addq.l #4,112(%sp)	|, %sfp
	moveq #8,%d0	|,
	cmp.l %a5,%d0	| y,
	jne .L147		|
| voxel.c:307: 	short top_envelope[20] = {
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
| voxel.c:313: 	short bottom_envelope[20] = {
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
	lea (116,%sp),%a0	|,, ivtmp.399
	lea _view_min+80,%a6	|, ivtmp.402
	lea _view_min,%a1	|, tmp251
	move.l %a1,%a5	| tmp251, ivtmp.404
	lea (156,%sp),%a4	|,, ivtmp.406
	lea _view_max+80,%a3	|, ivtmp.409
	lea _view_max,%a2	|, ivtmp.411
	moveq #40,%d1	|, _320
	add.l %a0,%d1	| ivtmp.399, _320
.L171:
| voxel.c:321: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w (%a0)+,%d0	| MEM[(short int *)_315], _40
| voxel.c:321: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,-(%a6)	| _40, MEM[(short int *)_294]
| voxel.c:321: 		view_min[i] = view_min[39-i] = top_envelope[i];
	move.w %d0,(%a5)+	| _40, MEM[(short int *)_316]
| voxel.c:322: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	moveq #118,%d0	|, _45
	sub.w (%a4)+,%d0	| MEM[(short int *)_317], _45
| voxel.c:322: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,-(%a3)	| _45, MEM[(short int *)_318]
| voxel.c:322: 	        view_max[i] = view_max[39-i] = 118 - bottom_envelope[i];	
	move.w %d0,(%a2)+	| _45, MEM[(short int *)_295]
| voxel.c:320: 	for (int i=0; i<20; i++) {
	cmp.l %a0,%d1	| ivtmp.399, _320
	jne .L171		|
	lea _horizon,%a0	|, ivtmp.392
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	moveq #0,%d1	| x
.L172:
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.l %d1,%d0	| x, tmp249
	asr.l #3,%d0	|, tmp249
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	add.l %d0,%d0	| tmp249, tmp250
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	move.w (%a1,%d0.l),%d0	| view_min[_46],
	subq.w #1,%d0	|,
	move.w %d0,(%a0)+	|, MEM[(short int *)_190]
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	addq.l #1,%d1	|, x
| voxel.c:324: 	for (int x=0; x<320; x++) horizon[x] = view_min[x/8]-1;
	cmp.l #320,%d1	|, x
	jne .L172		|
| voxel.c:325: }
	movem.l (%sp)+,#31996	|,
	lea (408,%sp),%sp	|,
	rts	
.L195:
| voxel.c:259: 		if (rel_dist < 0) rel_dist = 0;
	sub.l %a0,%a0	| rel_dist
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	moveq #23,%d0	|, tmp177
	sub.l %a0,%d0	| rel_dist, tmp177
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	lsl.l #8,%d0	|, tmp178
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	pea 24.w		|
	move.l %d0,-(%sp)	| tmp178,
	jsr (%a4)		| tmp252
	addq.l #8,%sp	|,
| voxel.c:261: 		opacity_table[z] = (256 * (max_dist - rel_dist - 1) / max_dist) & OPACITY_MASK;
	and.b #-32,%d0	|,
	move.b %d0,(%a5,%d4.l)	|, MEM[(unsigned char *)&opacity_table + _374 * 1]
| voxel.c:246: 	for (int z=1; z<STEPS_MAX; z++) {
	addq.l #1,%d4	|, z
| voxel.c:246: 	for (int z=1; z<STEPS_MAX; z++) {
	add.l #1024,%d6	|, ivtmp.477
	moveq #64,%d2	|,
	cmp.l %d4,%d2	| z,
	jne .L138		|
	jra .L142		|
.L154:
	clr.b %d0	| _27
	or.b %d0,%d4	| _27, _330
	move.l %d3,%d2	| color1, ivtmp.418
	neg.l %d2	| ivtmp.418
| voxel.c:290: 			for (int color1 = 0; color1 < 16; color1++) {
	move.l %a3,%a0	| ivtmp.426, ivtmp.419
	move.l %d7,44(%sp)	| _166, %sfp
	jra .L159		|
.L152:
	moveq #0,%d4	| iftmp.13_194
	jra .L153		|
.L150:
	moveq #0,%d1	| iftmp.11_185
	jra .L151		|
.L148:
	moveq #0,%d0	| iftmp.12_188
	jra .L149		|
	.even
	.globl	_render
_render:
	subq.l #4,%sp	|,
	movem.l #16190,-(%sp)	|,
	move.l 64(%sp),%d4	| z_begin, z_begin
	move.l 72(%sp),%d7	| delta_vu, delta_vu
	move.l 84(%sp),%d6	| index_mask, index_mask
	move.w 82(%sp),%d5	| y_min, y_min
	move.b 91(%sp),47(%sp)	| fog, %sfp
| voxel.c:413: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 52(%sp),%d3	| state.sample_vu, sample_vu
| voxel.c:414: 	unsigned char * pBlock = state.pixel;
	move.l 56(%sp),%a2	| state.pixel, pBlock
| voxel.c:415: 	short y = state.y;
	move.w 60(%sp),%d1	| state.y, y
| voxel.c:418: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 78(%sp),%a0	| player_height, ytable_offset
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp99
| voxel.c:419: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d4,%a5	| z_begin, z_begin
	move.l %a5,%d0	| z_begin,
	moveq #10,%d2	|,
	lsl.l %d2,%d0	|,
	lea (%a0,%d0.l),%a4	| tmp99, tmp101, tmp102
	add.l #_y_table,%a4	|, y_table_shifted
| voxel.c:422: 	unsigned char *opacity_table_shifted = opacity_table + z_begin;
	add.l #_opacity_table,%a5	|, opacity_table_shifted
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	sub.w 70(%sp),%d4	| z_end, z
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	jpl .L197		|
	cmp.w %d1,%d5	| y, y_min
	jgt .L197		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|, tmp129
.L206:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d0	| tmp
	move.l %d3, %d2	| sample_vu, result
	swap %d2	| result
	and.w %d0, %d2	| tmp, result
	lsl.l #3, %d2	| result
	and.w %d3, %d0	| sample_vu, tmp
	lsr.w #6, %d0	| tmp
	or.w %d0,%d2	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d2	| index_mask, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d2,%a0	| index, _77
	add.l #_combined,%a0	|, _77
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.w (%a0),%d0	| *_77, sample
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d2	| SR.486
	move.b %d0,%d2	| sample, SR.486
| voxel.c:427: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d2,%d2	| SR.486, tmp108
	move.w (%a4,%d2.l),%d2	| (*y_table_shifted_119)[_12], sample_y
| voxel.c:428: 		if (sample_y <= y) {
	cmp.w %d2,%d1	| sample_y, y
	jlt .L198		|
| voxel.c:430: 			if (sample_y < y_min) {
	cmp.w %d5,%d2	| y_min, sample_y
	jlt .L199		|
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, sample
	move.w %d0,%a0	| sample, _19
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L201		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	lea (224,%a0),%a0	|, tmp123
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| tmp124
	move.w %a0,%d0	| tmp123, tmp124
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a6,%d0.l),%d0	| *_132, _35
.L203:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L203		|
.L204:
| voxel.c:459: 		y_table_shifted++;
	lea (1024,%a4),%a4	|, y_table_shifted
| voxel.c:460: 		opacity_table_shifted++;
	addq.l #1,%a5	|, opacity_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp122
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L197		|
	cmp.w %d1,%d5	| y, y_min
	jle .L206		|
.L197:
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
.L198:
| voxel.c:425: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
	jra .L204		|
.L208:
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
.L201:
| voxel.c:389: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted;
	clr.w %d0	| opacity_preshifted
	move.b (%a5),%d0	| MEM[(unsigned char *)opacity_table_shifted_120], opacity_preshifted
	move.w %d0,%a3	| opacity_preshifted, offset
	add.w %a0,%a3	| _19, offset
| voxel.c:390: 	return (unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d0	| _91
	move.w %a3,%d0	| offset, _91
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L204		|
	move.l %d0,%a3	| _91, tmp126
	add.l #_pdata_table,%a3	|, tmp126
.L205:
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp115
	add.l %d0,%a0	| tmp115, tmp116
	add.l %a0,%a0	| tmp116, tmp117
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a0.l),%d0	| *_18, *_18
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jgt .L204		|
| voxel.c:450: 					unsigned int movep_data = pdata_entry[y&7];
	moveq #7,%d0	|,
	and.l %d1,%d0	| y,
	move.l %d0,%a0	|, tmp115
	add.l %d0,%a0	| tmp115, tmp116
	add.l %a0,%a0	| tmp116, tmp117
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
	move.l (%a3,%a0.l),%d0	| *_18, *_18
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a2)	| *_18, pBlock
| 0 "" 2
| voxel.c:452: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:449: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L205		|
	jra .L204		|
.L199:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, sample
	move.w %d0,%a0	| sample, _19
| voxel.c:436: 			if (!fog) {
	tst.b 47(%sp)	| %sfp
	jne .L208		|
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	lea (224,%a0),%a0	|, tmp109
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	moveq #0,%d2	| tmp110
	move.w %a0,%d2	| tmp109, tmp110
	add.l #_pdata_table,%d2	|, _85
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L219		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d2,%a0	| _85,
	move.l (%a0),%d0	| *_85, _35
	move.w %d5,%d2	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a2)	| _35, pBlock
| 0 "" 2
| voxel.c:442: 					pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:440: 				while (y >= sample_y) {
	cmp.w %d1,%d2	| y, sample_y
	jle .L203		|
	jra .L204		|
.L219:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d7,%d3	| delta_vu, tmp111
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:469: 	return result;
	move.l %d3,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a2,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:470: }
	move.l %a1,%d0	| tmp84,
	movem.l (%sp)+,#31996	|,
	addq.l #4,%sp	|,
	rts	
	.even
	.globl	_render16
_render16:
	movem.l #16184,-(%sp)	|,
	move.l 52(%sp),%d4	| z_begin, z_begin
	move.l 60(%sp),%d6	| delta_vu, delta_vu
	move.l 72(%sp),%d7	| index_mask, index_mask
	move.w 70(%sp),%d5	| y_min, y_min
| voxel.c:474: 	fixp_2in1 sample_vu = state.sample_vu;
	move.l 40(%sp),%d2	| state.sample_vu, sample_vu
| voxel.c:475: 	unsigned char * pBlock = state.pixel;
	move.l 44(%sp),%a0	| state.pixel, pBlock
| voxel.c:476: 	short y = state.y;
	move.w 48(%sp),%d1	| state.y, y
| voxel.c:477: 	short ytable_offset = 256 - player_height;
	move.w #256,%a2	|, ytable_offset
	sub.w 66(%sp),%a2	| player_height, ytable_offset
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a2,%a2	| ytable_offset, ytable_offset
	add.l %a2,%a2	| ytable_offset, tmp85
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %d4,%d0	|,
	ext.l %d0	| z_begin
	moveq #10,%d3	|,
	lsl.l %d3,%d0	|, tmp87
	add.l %d0,%a2	| tmp87, tmp88
	add.l #_y_table,%a2	|, y_table_shifted
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	sub.w 58(%sp),%d4	| z_end, z
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	jpl .L221		|
	cmp.w %d1,%d5	| y, y_min
	jgt .L221		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a3	|, tmp103
.L228:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d0	| tmp
	move.l %d2, %d3	| sample_vu, result
	swap %d3	| result
	and.w %d0, %d3	| tmp, result
	lsl.l #3, %d3	| result
	and.w %d2, %d0	| sample_vu, tmp
	lsr.w #6, %d0	| tmp
	or.w %d0,%d3	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d7,%d3	| index_mask, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d3	|, _58
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d3,%a4	| _58,
	move.w (%a4),%d0	| *_58, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d3	| SR.513
	move.b %d0,%d3	| sample, SR.513
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d3,%d3	| SR.513, tmp93
	move.w (%a2,%d3.l),%d3	| (*y_table_shifted_88)[_11], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %d3,%d1	| sample_y, y
	jge .L237		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
.L227:
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a2),%a2	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d2	| delta_vu, tmp102
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d4	| z
	jeq .L221		|
	cmp.w %d1,%d5	| y, y_min
	jle .L228		|
.L221:
| voxel.c:505: 	return result;
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:506: }
	move.l %a1,%d0	| tmp72,
	movem.l (%sp)+,#7420	|,
	rts	
.L237:
| voxel.c:483: 			if (sample_y < y_min) {
	cmp.w %d5,%d3	| y_min, sample_y
	jlt .L223		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d4	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, tmp94
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp95
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp96
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l (%a3,%d0.l),%d0	| *_25, _12
.L226:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d0, 1(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d3,%d1	| sample_y, y
	jlt .L227		|
.L236:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d0, 1(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d3,%d1	| sample_y, y
	jge .L226		|
	jra .L227		|
.L223:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d0	|, tmp98
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d0	|, tmp99
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d0	|, tmp100
	add.l #_pdata_table,%d0	|, _64
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d5,%d1	| y_min, y
	jlt .L238		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d0,%a4	| _64,
	move.l (%a4),%d0	| *_64, _12
	move.w %d5,%d3	| y_min, sample_y
	clr.w %d4	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d0, 1(%a0)	| _12, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a0),%a0	|, pBlock
	subq.w #1,%d1	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d3,%d1	| sample_y, y
	jge .L236		|
	jra .L227		|
.L238:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d6,%d2	| delta_vu, tmp101
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d2	|, sample_vu
| voxel.c:505: 	return result;
	move.l %d2,(%a1)	| sample_vu, <retval>.sample_vu
	move.l %a0,4(%a1)	| pBlock, <retval>.pixel
	move.w %d1,8(%a1)	| y, <retval>.y
| voxel.c:506: }
	move.l %a1,%d0	| tmp72,
	movem.l (%sp)+,#7420	|,
	rts	
	.even
	.globl	_ray_elevation
_ray_elevation:
	movem.l #16160,-(%sp)	|,
	move.l 32(%sp),%d3	| sample_vu, sample_vu
	move.l 36(%sp),%d5	| delta_vu, delta_vu
| voxel.c:514: 	short ytable_offset = 256 - start_height;
	move.w #256,%a0	|, ytable_offset
	sub.w 42(%sp),%a0	| start_height, ytable_offset
| voxel.c:516: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	move.w %a0,%a0	| ytable_offset, ytable_offset
	add.l %a0,%a0	| ytable_offset, tmp60
| voxel.c:516: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[0] + ytable_offset);
	add.l #_y_table,%a0	|, _50
| voxel.c:522: 	unsigned short z = 0;
	clr.w %d2	| z
| voxel.c:521: 	short min_y = 0x7fff;
	move.w #32767,%d0	|, <retval>
| voxel.c:519: 	unsigned int index_mask = 0x7ffff;
	move.l #524287,%d6	|, index_mask
.L242:
	move.w %d2,%d1	| z, z
| voxel.c:532: 		z++;
	addq.w #1,%d2	|, z
	move.l %a0,%a1	| _50, y_table_shifted
| voxel.c:533: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, _50
	move.l %d3,%d4	| sample_vu, sample_vu
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d3	| delta_vu, tmp61
	add.l %d4,%d3	| sample_vu, tmp61
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:524: 		if (z >= STEPS_MIN) {
	cmp.w #3,%d1	|, z
	jls .L240		|
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d4, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d4, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l %d6,%d1	| index_mask, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _37
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a2	| _37,
	move.w (%a2),%d1	| *_37, sample
| voxel.c:527: 			short sample_y = y_table_shifted[0][sample.height];
	and.l #255,%d1	|, SR.529
| voxel.c:527: 			short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.529, tmp66
| voxel.c:528: 			if (sample_y < min_y) {
	move.w (%a1,%d1.l),%d1	| (*y_table_shifted_3)[_5], (*y_table_shifted_3)[_5]
	cmp.w %d0,%d1	| <retval>, (*y_table_shifted_3)[_5]
	jge .L241		|
	move.w %d1,%d0	| (*y_table_shifted_3)[_5], <retval>
.L241:
| voxel.c:536: 		if (TRIGGERS_PROGRESSION(z)) {
	move.w %d2,%d1	| z, tmp68
	and.w #15,%d1	|, tmp68
	jne .L240		|
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d5	| delta_vu, tmp69
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, delta_vu
| voxel.c:380: 	return (index_mask << 1) & 0x7fbfd;
	add.l %d6,%d6	| index_mask, tmp70
| voxel.c:380: 	return (index_mask << 1) & 0x7fbfd;
	and.l #523261,%d6	|, index_mask
.L240:
| voxel.c:523: 	while(z < STEPS_MAX) {
	cmp.w #64,%d2	|, z
	jne .L242		|
| voxel.c:546: }
	movem.l (%sp)+,#1276	|,
	rts	
	.even
	.globl	_fill_column
_fill_column:
	move.l %d2,-(%sp)	|,
	move.l 12(%sp),%d0	| x, x
	move.l 20(%sp),%d1	| height, height
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d2	|, tmp57
	asr.w #4,%d2	|, tmp57
	move.w %d2,%a0	| tmp57, tmp58
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp58, tmp59
	add.l %a0,%a0	| tmp59, tmp60
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 18(%sp),%d2	| y,
	muls.w #80,%d2	|, tmp61
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d2,%a0	| tmp61, tmp63
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp63, tmp63, tmp64
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp66
	moveq #1,%d2	|,
	and.l %d2,%d0	|, tmp67
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp64, tmp67, tmp68
	add.l 8(%sp),%a0	| out, pBlock
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	moveq #0,%d0	| color
	move.b 27(%sp),%d0	| color, color
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	lsl.l #8,%d0	|, tmp71
	add.l #_pdata_table+224,%d0	|, tmp73
	move.l %d0,%a1	| tmp73,
	move.l (%a1),%d2	| pdata_table[_1][7][0], movep_data
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| height
	jle .L246		|
	move.w %d1,%d0	|,
	mulu.w #160,%d0	|, tmp74
	add.l %a0,%d0	| pBlock, _31
.L248:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d2, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _31
	jne .L248		|
.L246:
| voxel.c:555: }
	move.l (%sp)+,%d2	|,
	rts	
	.even
	.globl	_patch_sky
_patch_sky:
	movem.l #14368,-(%sp)	|,
	move.l 24(%sp),%d0	| x, x
	move.l 28(%sp),%d3	| y, y
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d0,%d2	|,
	ext.l %d2	| _2
	lea _horizon,%a2	|, tmp80
	add.l %d2,%d2	| _2, tmp81
	move.w (%a2,%d2.l),%a0	| horizon[_2], _4
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d3,%d1	|, _5
	sub.w %a0,%d1	| _4, _5
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp62
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d4	| tmp62,
	muls.w #80,%d4	|,
	move.l %d4,%a0	|, tmp63
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d0,%d4	|, tmp65
	asr.w #4,%d4	|, tmp65
	move.w %d4,%a1	| tmp65, tmp66
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a1	| tmp66, tmp67
	add.l %a1,%a1	| tmp67, tmp68
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a1,%a0	| tmp68, tmp69
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a0,%a0.l),%a1	| tmp69, tmp69, tmp70
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lsr.l #3,%d0	|, tmp72
	moveq #1,%d4	|,
	and.l %d4,%d0	|, tmp73
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	lea (%a1,%d0.l),%a0	| tmp70, tmp73, tmp74
	add.l 20(%sp),%a0	| out, pBlock
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%d4	| pdata_table[15][7][0], movep_data
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _5
	jle .L253		|
	move.w %d1,%d0	| _5,
	mulu.w #160,%d0	|, tmp76
	add.l %a0,%d0	| pBlock, _35
.L254:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d4, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _35
	jne .L254		|
.L253:
| voxel.c:560: 	horizon[x] = y;
	move.w %d3,(%a2,%d2.l)	| y, horizon[_2]
| voxel.c:561: }
	movem.l (%sp)+,#1052	|,
	rts	
	.even
	.globl	_col2fixp
_col2fixp:
| voxel.c:579: 	signed char c = color - 128;
	move.b 7(%sp),%d0	| color, c
	add.b #-128,%d0	|, c
| voxel.c:580: 	return c >> 1;
	asr.b #1,%d0	|, tmp39
| voxel.c:581: }
	ext.w %d0	|
	rts	
	.even
	.globl	_vec3_dot
_vec3_dot:
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 12(%sp),%d0	| b.a[0],
	muls.w 4(%sp),%d0	| a.a[0], tmp50
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp51
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 14(%sp),%d1	| b.a[1],
	muls.w 6(%sp),%d1	| a.a[1], tmp52
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp53
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d1,%d0	| tmp53, tmp54
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w 8(%sp),%d1	| a.a[2],
	muls.w 16(%sp),%d1	| b.a[2], tmp55
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp56
| voxel.c:587: }
	add.w %d1,%d0	| tmp56,
	rts	
	.even
	.globl	_read_palette_vectors
_read_palette_vectors:
	movem.l #15932,-(%sp)	|,
	move.l 40(%sp),%a4	| colors, colors
	lea _palette_vectors,%a3	|, ivtmp.586
	move.l #_palette_vectors+96,%d3	|, _445
	lea ___mulsi3,%a2	|, tmp306
.L263:
| voxel.c:598: 		unsigned char b = *colors++;
	move.b (%a4),%d2	| MEM[(const unsigned char *)colors_277], b
| voxel.c:599: 		unsigned char g = *colors++;
	move.b 1(%a4),%d4	| MEM[(const unsigned char *)colors_277 + 1B], g
| voxel.c:600: 		unsigned char r = *colors++;
	addq.l #3,%a4	|, colors
| voxel.c:579: 	signed char c = color - 128;
	move.b -1(%a4),%d1	| MEM[(const unsigned char *)colors_20 + 4294967295B], c
	add.b #-128,%d1	|, c
| voxel.c:580: 	return c >> 1;
	asr.b #1,%d1	|, _39
| voxel.c:579: 	signed char c = color - 128;
	add.b #-128,%d4	|, c
| voxel.c:580: 	return c >> 1;
	asr.b #1,%d4	|, _35
| voxel.c:579: 	signed char c = color - 128;
	add.b #-128,%d2	|, c
| voxel.c:580: 	return c >> 1;
	asr.b #1,%d2	|, _23
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d4	| _35
	move.w %d4,%d0	| _35,
	muls.w %d4,%d0	| _35, tmp190
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d2	| _23
	move.w %d2,%d5	| _23,
	muls.w %d2,%d5	| _23, tmp194
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp195
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp195, tmp196
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	ext.w %d1	| _39
	move.w %d1,%d5	| _39,
	muls.w %d1,%d5	| _39, tmp199
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp200
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d0	| tmp200, result
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d0	|, tmp202
	ext.l %d0	| tmp203
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d0	|, tmp204
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, tmp205
	sub.w %d0,%d5	| tmp204, tmp205
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d5	|, _191
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d1,%a0	| _39,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp307, _193
	asr.l #7,%d6	|, _193
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d4,%a0	| _35,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp308, _197
	asr.l #7,%d4	|, _197
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _191,
	move.w %d2,%a0	| _23,
	move.l %a0,-(%sp)	|,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp309, _201
	asr.l #7,%d5	|, _201
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _193,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp310, tmp220
	asr.l #7,%d2	|, tmp220
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _197,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp223
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp223, tmp224
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _201,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp227
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp227, result
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp229
	move.w %d2,%d1	| tmp229,
	ext.l %d1	| tmp230
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp231
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d2	|, tmp232
	sub.w %d1,%d2	| tmp231, tmp232
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d2	|, _249
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d6,-(%sp)	| _193,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp313, _251
	asr.l #7,%d6	|, _251
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d4,-(%sp)	| _197,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp314, _255
	asr.l #7,%d4	|, _255
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d2,-(%sp)	| _249,
	move.l %d5,-(%sp)	| _201,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp315, _259
	asr.l #7,%d5	|, _259
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _251,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp316, tmp241
	asr.l #7,%d2	|, tmp241
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _255,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp244
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp244, tmp245
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _259,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp248
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp248, result
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	add.w #-128,%d2	|, tmp250
	move.w %d2,%d1	| tmp250,
	ext.l %d1	| tmp251
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp252
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp253
	sub.w %d1,%a5	| tmp252, tmp253
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp253, _307
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d6,-(%sp)	| _251,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d6	| tmp319, _309
	asr.l #7,%d6	|, _309
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d4,-(%sp)	| _255,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp320, _313
	asr.l #7,%d4	|, _313
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _307,
	move.l %d5,-(%sp)	| _259,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d5	| tmp321, _317
	asr.l #7,%d5	|, _317
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d6,-(%sp)	| _309,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp322, tmp262
	asr.l #7,%d2	|, tmp262
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d4,-(%sp)	| _313,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp265
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp265, tmp266
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d5,-(%sp)	| _317,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp269
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d2	| tmp269, result
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d2,%a0	| result, result
	moveq #-128,%d1	|, tmp272
	add.l %a0,%d1	| result, tmp272
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp273
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%a5	|, tmp274
	sub.w %d1,%a5	| tmp273, tmp274
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a5,%a5	| tmp274, _365
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d6,-(%sp)	| _309,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d2	| tmp325, tmp277
	asr.l #7,%d2	|, tmp277
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d4,-(%sp)	| _313,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %d0,%d4	| tmp326, tmp280
	asr.l #7,%d4	|, tmp280
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a5,-(%sp)	| _365,
	move.l %d5,-(%sp)	| _317,
	jsr (%a2)		| tmp306
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp283
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d1	|,
	muls.w %d2,%d1	| tmp277, tmp284
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp285
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d4,%d5	|,
	muls.w %d4,%d5	| tmp280, tmp286
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp287
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp287, tmp288
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d5	|,
	muls.w %d0,%d5	| tmp283, tmp289
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d5	|, tmp290
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d5,%d1	| tmp290, result
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| result, result
	moveq #-128,%d1	|, tmp293
	add.l %a0,%d1	| result, tmp293
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp294
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d5	|, _419
	sub.w %d1,%d5	| tmp294, _419
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d2	| _419, tmp296
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp297
| voxel.c:605: 		palette_vectors[i].c = v.c;
	swap %d2	| tmp295
	clr.w %d2	| tmp295
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d4	| _419, tmp302
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp303
| voxel.c:605: 		palette_vectors[i].c = v.c;
	move.w %d4,%d2	| tmp303, tmp295
	move.l %d2,(%a3)	| tmp295, MEM <vector(2) short int> [(union  *)_448]
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d5,%d0	| _419, tmp304
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp305
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,4(%a3)	| tmp305, MEM <fixp> [(union  *)_448 + 4B]
| voxel.c:597: 	for (int i=0; i<16; i++) {
	addq.l #6,%a3	|, ivtmp.586
	cmp.l %d3,%a3	| _445, ivtmp.586
	jne .L263		|
| voxel.c:607: }
	movem.l (%sp)+,#15484	|,
	rts	
	.even
	.globl	_vec3_add
_vec3_add:
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 12(%sp),%d0	| b.a[0], tmp51
	add.w 4(%sp),%d0	| a.a[0], tmp51
	swap %d0	| vect__18.592
	clr.w %d0	| vect__18.592
	move.w 6(%sp),%d1	| a.a[1], tmp56
	add.w 14(%sp),%d1	| b.a[1], tmp56
	move.w %d1,%d0	| tmp56, vect__18.592
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.l %d0,(%a1)	| vect__18.592, MEM <vector(2) short int> [(union  *)&<retval>]
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	move.w 8(%sp),%d0	| a.a[2],
	add.w 16(%sp),%d0	| b.a[2],
	move.w %d0,4(%a1)	|, <retval>.a[2]
| voxel.c:613: }
	move.l %a1,%d0	| tmp49,
	rts	
	.even
	.globl	_fixp2color
_fixp2color:
	move.l 4(%sp),%d0	| val, val
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d0	| val
	jlt .L271		|
	cmp.w #128,%d0	|, val
	jge .L272		|
	add.b %d0,%d0	| val, <retval>
| voxel.c:618: }
	rts	
.L272:
| voxel.c:616: 	return val < 0 ? 0 : (
	st %d0		| <retval>
| voxel.c:618: }
	rts	
.L271:
| voxel.c:616: 	return val < 0 ? 0 : (
	clr.b %d0	| <retval>
| voxel.c:618: }
	rts	
	.even
	.globl	_compute_and_set_bottom_palette
_compute_and_set_bottom_palette:
	link.w %fp,#-84	|,
	movem.l #16188,-(%sp)	|,
	move.l 12(%fp),%d3	| sunlight_factor, sunlight_factor
	move.w %d3,-56(%fp)	| sunlight_factor, %sfp
| voxel.c:623: 	vec3_t view_z = { .c = { -pos.dirx, 0, -pos.diry }};
	move.w _pos+6,%d7	| pos.dirx, _4
	neg.w %d7	| _4
	move.w _pos+8,%d2	| pos.diry,
	neg.w %d2	|
	move.w %d2,-78(%fp)	|, %sfp
| voxel.c:626: 	vec3_t blue = { sky_color[0] >> 2, sky_color[1] >> 2, sky_color[2] >> 2 };
	move.b _sky_color,%d2	| sky_color[0], _10
	lsr.b #2,%d2	|, _10
	move.b _sky_color+1,%d1	| sky_color[1], _13
	lsr.b #2,%d1	|, _13
	move.b _sky_color+2,%d0	| sky_color[2], _16
	lsr.b #2,%d0	|, _16
| voxel.c:633: 	*p++ = 0;
	clr.w -48(%fp)	| MEM <vector(2) unsigned char> [(unsigned char *)&dst]
| voxel.c:635: 	*p++ = 0;
	clr.b -46(%fp)	| MEM[(unsigned char *)&dst + 2B]
| voxel.c:647: 		c_sun += sunlight_factor >> 3;
	asr.w #3,%d3	|,
	move.w %d3,-70(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d2	|,
	move.w %d2,-76(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%a0	|, tmp158
	sub.w %d2,%a0	|, tmp158
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	moveq #0,%d2	|
	move.w %a0,%d2	| tmp158,
	move.l %d2,-68(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d1	|,
	move.w %d1,-74(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d1	|, tmp160
	sub.w -74(%fp),%d1	| %sfp, tmp160
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d1	|,
	move.l %d1,-64(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	and.w #255,%d0	|,
	move.w %d0,-72(%fp)	|, %sfp
| voxel.c:628: 	vec3_t sun_color = { full - blue.a[0], full - blue.a[1],  full - blue.a[2]};
	move.w #128,%d0	|, tmp162
	sub.w -72(%fp),%d0	| %sfp, tmp162
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	and.l #65535,%d0	|,
	move.l %d0,-60(%fp)	|, %sfp
	lea _palette_vectors+6,%a5	|, ivtmp.622
| voxel.c:635: 	*p++ = 0;
	lea (-45,%fp),%a0	|,,
	move.l %a0,-82(%fp)	|, %sfp
	lea ___mulsi3,%a3	|, tmp227
	lea (-3,%fp),%a4	|,, tmp230
.L282:
| voxel.c:638: 		vec3_t normal_lcs = palette_vectors[i];
	move.l (%a5),-54(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w 4(%a5),-50(%fp)	| MEM[(union  *)_238], normal_lcs
	move.w -54(%fp),%d0	| normal_lcs.a[0], b$a$0
	move.w -50(%fp),%d6	| normal_lcs.a[2], b$a$2
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| b$a$0,
	muls.w %d7,%d2	| _4, tmp164
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp165
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -78(%fp),%d3	| %sfp,
	muls.w %d6,%d3	| b$a$2, tmp166
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp167
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp167, result
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #35,%d2	|, tmp169
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp171
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d6,%d3	| b$a$2,
	muls.w %d7,%d3	| _4, tmp172
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp173
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -78(%fp),%d0	| %sfp, tmp174
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp175
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d0,%d3	| tmp175, result
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w #-122,%d3	|, tmp177
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp179
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d3,%d2	| tmp179, result
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -56(%fp),%d2	| %sfp, tmp181
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp182
| voxel.c:645: 		if (c_sun < 0) c_sun = 0;
	tst.w %d2	| tmp163
	jlt .L292		|
| voxel.c:647: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:653: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jlt .L293		|
.L277:
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:657: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:658: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jlt .L294		|
.L278:
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jlt .L283		|
.L295:
	cmp.w #128,%d4	|, _504
	jge .L284		|
	add.b %d4,%d4	| _504, iftmp.42_290
.L279:
| voxel.c:661: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.42_290, MEM[(unsigned char *)p_252]
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jlt .L285		|
.L296:
	cmp.w #128,%d3	|, _75
	jge .L286		|
	add.b %d3,%d3	| _75, iftmp.43_360
.L280:
| voxel.c:662: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.43_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:663: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jlt .L287		|
.L297:
	cmp.w #128,%d2	|, _404
	jge .L288		|
	add.b %d2,%d2	| _404, iftmp.43_295
| voxel.c:663: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.43_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:636: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.622
	cmp.l %a0,%a4	|, tmp230
	jne .L282		|
.L298:
| voxel.c:665: 	*p++ = 255;
	st -3(%fp)		| MEM[(unsigned char *)&dst + 45B]
| voxel.c:666: 	*p++ = 255;
	move.w #-1,-2(%fp)	|, MEM <unsigned short> [(unsigned char *)&dst + 46B]
| voxel.c:668: 	set_bottom_palette(dst);
	pea -48(%fp)		|
	jsr _set_bottom_palette		|
| voxel.c:669: }
	addq.l #4,%sp	|,
	movem.l -124(%fp),#15612	|,
	unlk %fp		|
	rts	
.L294:
| voxel.c:658: 		if (c_cabinlight < 0) c_cabinlight = 0;
	clr.w %d0	| c_cabinlight
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w -76(%fp),%d2	| %sfp, tmp209
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp210
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| c_cabinlight, tmp211
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -68(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp214
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d2	| tmp214, _404
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d4	| _504
	jge .L295		|
.L283:
	clr.b %d4	| iftmp.42_290
| voxel.c:661: 		*p++ = fixp2color(accum.c.z);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d4,(%a0)	| iftmp.42_290, MEM[(unsigned char *)p_252]
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d3	| _75
	jge .L296		|
.L285:
	clr.b %d3	| iftmp.43_360
| voxel.c:662: 		*p++ = fixp2color(accum.c.y);
	move.b %d3,1(%a0)	| iftmp.43_360, MEM[(unsigned char *)p_252 + 1B]
| voxel.c:663: 		*p++ = fixp2color(accum.c.x);
	addq.l #3,-82(%fp)	|, %sfp
| voxel.c:616: 	return val < 0 ? 0 : (
	tst.w %d2	| _404
	jge .L297		|
.L287:
	clr.b %d2	| iftmp.43_295
| voxel.c:663: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.43_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:636: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.622
	cmp.l %a0,%a4	|, tmp230
	jne .L282		|
	jra .L298		|
.L292:
| voxel.c:645: 		if (c_sun < 0) c_sun = 0;
	clr.w %d2	| tmp163
| voxel.c:647: 		c_sun += sunlight_factor >> 3;
	move.w -70(%fp),%a2	| %sfp, c_sun
	add.w %d2,%a2	| tmp163, c_sun
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %a2,%a2	| c_sun, _665
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -52(%fp),%d2	| normal_lcs.a[1],
	ext.l %d2	| normal_lcs.a[1]
	move.l %d2,%d5	| normal_lcs.a[1], _70
	lsl.l #7,%d5	|, _70
| voxel.c:653: 		if (c_sky < 0) c_sky = 0;
	tst.w %d2	| _184
	jge .L277		|
.L293:
	clr.w %d2	| _184
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -74(%fp),%d3	| %sfp,
	muls.w %d2,%d3	| _184, tmp187
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp188
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -64(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp191
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d3	| tmp191, _75
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.l %a2,-(%sp)	| _665,
	move.l -60(%fp),-(%sp)	| %sfp,
	jsr (%a3)		| tmp227
	addq.l #8,%sp	|,
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp194
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w -72(%fp),%d4	| %sfp,
	muls.w %d2,%d4	| _184, tmp196
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d4	|, tmp197
| voxel.c:611: 	for (int i=0; i<3; i++) result.a[i] = a.a[i] + b.a[i];
	add.w %d0,%d4	| tmp194, _504
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	neg.l %d5	| tmp199
	asr.l #7,%d5	|, tmp200
| voxel.c:585: 	for (int i=0; i<3; i++) result += fixp_mul(a.a[i], b.a[i]);
	add.w %d6,%d5	| b$a$2, result
| voxel.c:657: 		fixp c_cabinlight = vec3_dot(cabinlight, normal_lcs) >> 2;
	move.w %d5,%d0	| result, c_cabinlight
	asr.w #2,%d0	|, c_cabinlight
| voxel.c:658: 		if (c_cabinlight < 0) c_cabinlight = 0;
	tst.w %d5	| result
	jge .L278		|
	jra .L294		|
.L284:
| voxel.c:616: 	return val < 0 ? 0 : (
	st %d4		| iftmp.42_290
	jra .L279		|
.L288:
	st %d2		| iftmp.43_295
| voxel.c:663: 		*p++ = fixp2color(accum.c.x);
	move.l -82(%fp),%a0	| %sfp,
	move.b %d2,-1(%a0)	| iftmp.43_295, MEM[(unsigned char *)p_293 + 4294967295B]
| voxel.c:636: 	for (int i=1; i<15; i++) {
	addq.l #6,%a5	|, ivtmp.622
	cmp.l %a0,%a4	|, tmp230
	jne .L282		|
	jra .L298		|
.L286:
| voxel.c:616: 	return val < 0 ? 0 : (
	st %d3		| iftmp.43_360
	jra .L280		|
.LC1:
	.ascii "Loading colors.tga\0"
.LC2:
	.ascii "rb\0"
.LC3:
	.ascii "colors.tga\0"
.LC4:
	.ascii "Loading height.tga\0"
.LC5:
	.ascii "height.tga\0"
	.even
	.globl	_load_voxel_data
_load_voxel_data:
	lea (-8220,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:673: 	printf("Loading colors.tga\n");
	pea .LC1		|
	lea _puts,%a6	|, tmp109
	jsr (%a6)		| tmp109
| voxel.c:674: 	FILE *file1 = fopen("colors.tga", "rb");
	pea .LC2		|
	pea .LC3		|
	lea _fopen,%a5	|, tmp105
	jsr (%a5)		| tmp105
	move.l %d0,%d5	| tmp115, file1
| voxel.c:675: 	if (!file1) {
	lea (12,%sp),%sp	|,
	jeq .L321		|
| voxel.c:679: 	image_t texture = read_tga_header(file1);
	move.l %d0,-(%sp)	| file1,
	lea (48,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:680: 	if (!texture.width) goto error1;
	addq.l #4,%sp	|,
	tst.w 44(%sp)	| texture.width
	jne .L317		|
	lea _fclose,%a2	|, tmp103
.L302:
| voxel.c:732: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
.L312:
| voxel.c:734: 	return 0;
	moveq #0,%d0	| <retval>
.L299:
| voxel.c:735: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L317:
| voxel.c:682: 	sky_color[0] = texture.colors[15*3 + 2];
	move.l 52(%sp),%a0	| texture.colors, _2
| voxel.c:682: 	sky_color[0] = texture.colors[15*3 + 2];
	move.b 47(%a0),_sky_color	| MEM[(unsigned char *)_2 + 47B], sky_color[0]
| voxel.c:683: 	sky_color[1] = texture.colors[15*3 + 1];
	move.b 46(%a0),_sky_color+1	| MEM[(unsigned char *)_2 + 46B], sky_color[1]
| voxel.c:684: 	sky_color[2] = texture.colors[15*3 + 0];
	move.b 45(%a0),_sky_color+2	| MEM[(unsigned char *)_2 + 45B], sky_color[2]
| voxel.c:686: 	set_top_palette(texture.colors);
	move.l %a0,-(%sp)	| _2,
	jsr _set_top_palette		|
| voxel.c:687: 	set_palette_immediately(texture.colors);
	move.l 56(%sp),-(%sp)	| texture.colors,
	jsr _set_palette_immediately		|
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	addq.l #8,%sp	|,
| voxel.c:690: 	unsigned char *p = &combined[0][0].color;
	move.l #_combined,%d4	|, p
| voxel.c:689: 	size_t n, remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
	lea _putchar,%a3	|, tmp108
	moveq #72,%d2	|, tmp110
	add.l %sp,%d2	|, tmp110
	lea _fread,%a2	|, tmp107
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l #8192,%d6	|, remaining
| voxel.c:694: 		fflush(stdout);
	lea _fflush,%a4	|, tmp114
.L303:
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d5,-(%sp)	| file1,
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L305		|
	move.l %d6,%d0	| remaining, remaining
.L305:
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%d7	| tmp116, n
| voxel.c:691: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file1))) {
	lea (16,%sp),%sp	|,
	jeq .L322		|
| voxel.c:692: 		remaining -= n;
	sub.l %d7,%d3	| n, remaining
| voxel.c:693: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:694: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a4)		| tmp114
	move.l %d2,%a1	| tmp110, ivtmp.644
	move.l %d2,%d0	| tmp110, _92
	add.l %d7,%d0	| n, _92
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L304:
| voxel.c:696: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_90], MEM[(unsigned char *)p_78]
| voxel.c:697: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:695: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.644, _92
	jne .L304		|
	move.l %d7,%d1	| n, tmp75
	add.l %d7,%d1	| n, tmp75
	add.l %d1,%d4	| tmp75, p
	jra .L303		|
.L322:
| voxel.c:700: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:701: 	free_image(&texture);
	pea 48(%sp)		|
	lea _free_image,%a4	|, tmp102
	jsr (%a4)		| tmp102
| voxel.c:703: 	printf("Loading height.tga\n");
	pea .LC4		|
	jsr (%a6)		| tmp109
| voxel.c:704: 	FILE *file2 = fopen("height.tga", "rb");
	pea .LC2		|
	pea .LC5		|
	jsr (%a5)		| tmp105
	move.l %d0,%d6	| tmp117, file2
| voxel.c:705: 	if (!file2) {
	lea (20,%sp),%sp	|,
	jeq .L323		|
| voxel.c:709: 	image_t height = read_tga_header(file2);
	move.l %d0,-(%sp)	| file2,
	lea (62,%sp),%a1	|,,
	jsr _read_tga_header		|
| voxel.c:710: 	if (!height.width) goto error2;
	addq.l #4,%sp	|,
	tst.w 58(%sp)	| height.width
	jeq .L324		|
| voxel.c:711: 	p = &combined[0][0].height;
	move.l #_combined+1,%d4	|, p
| voxel.c:712: 	remaining = 512*512;
	moveq #4,%d3	|, remaining
	swap %d3	| remaining
| voxel.c:713: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l #8192,%d7	|, remaining
| voxel.c:716: 		fflush(stdout);
	lea _fflush,%a5	|, tmp112
.L308:
| voxel.c:713: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d6,-(%sp)	| file2,
| voxel.c:713: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d3,%d0	| remaining, remaining
	cmp.l #8192,%d3	|, remaining
	jls .L310		|
	move.l %d7,%d0	| remaining, remaining
.L310:
| voxel.c:713: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	move.l %d0,-(%sp)	| remaining,
	pea 1.w		|
	move.l %d2,-(%sp)	| tmp110,
	jsr (%a2)		| tmp107
	move.l %d0,%a6	| tmp118, n
| voxel.c:713: 	while (0 != (n = fread(buf, 1, remaining > sizeof(buf) ? sizeof(buf) : remaining, file2))) {
	lea (16,%sp),%sp	|,
	tst.l %d0	| n
	jeq .L325		|
| voxel.c:714: 		remaining -= n;
	sub.l %a6,%d3	| n, remaining
| voxel.c:715: 		printf(".");
	pea 46.w		|
	jsr (%a3)		| tmp108
| voxel.c:716: 		fflush(stdout);
	move.l _stdout,-(%sp)	| stdout,
	jsr (%a5)		| tmp112
	move.l %d2,%a1	| tmp110, ivtmp.637
	move.l %d2,%d0	| tmp110, _73
	add.l %a6,%d0	| n, _73
	addq.l #8,%sp	|,
	move.l %d4,%a0	| p, p
.L309:
| voxel.c:718: 			*p = buf[i];
	move.b (%a1)+,(%a0)	| MEM[(unsigned char *)_75], MEM[(unsigned char *)p_80]
| voxel.c:719: 			p += 2;
	addq.l #2,%a0	|, p
| voxel.c:717: 		for (size_t i=0; i<n; i++) {
	cmp.l %a1,%d0	| ivtmp.637, _73
	jne .L309		|
	add.l %a6,%a6	| n, tmp90
	add.l %a6,%d4	| tmp90, p
	jra .L308		|
.L325:
| voxel.c:722: 	printf("\n");
	pea 10.w		|
	jsr (%a3)		| tmp108
| voxel.c:723: 	free_image(&height);
	pea 62(%sp)		|
	jsr (%a4)		| tmp102
| voxel.c:725: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	lea _fclose,%a2	|, tmp97
	jsr (%a2)		| tmp97
| voxel.c:726: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	jsr (%a2)		| tmp97
| voxel.c:727: 	return 1; // success
	lea (16,%sp),%sp	|,
	moveq #1,%d0	|, <retval>
| voxel.c:735: }
	movem.l (%sp)+,#31996	|,
	lea (8220,%sp),%sp	|,
	rts	
.L321:
| voxel.c:676: 		perror("colors.tga");
	pea .LC3		|
	jsr _perror		|
| voxel.c:677: 		goto error0;
	addq.l #4,%sp	|,
| voxel.c:734: 	return 0;
	moveq #0,%d0	| <retval>
	jra .L299		|
.L323:
| voxel.c:706: 		perror("height.tga");
	pea .LC5		|
	jsr _perror		|
| voxel.c:707: 		goto error1;
	addq.l #4,%sp	|,
	lea _fclose,%a2	|, tmp103
	jra .L302		|
.L324:
| voxel.c:730: 	fclose(file2);
	move.l %d6,-(%sp)	| file2,
	lea _fclose,%a2	|, tmp103
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
| voxel.c:732: 	fclose(file1);
	move.l %d5,-(%sp)	| file1,
	jsr (%a2)		| tmp103
	addq.l #4,%sp	|,
	jra .L312		|
	.even
	.globl	_get_key
_get_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp36
#APP
| 738 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp41
	jeq .L328		|
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 738 "voxel.c" 1
	movw	%d3,%sp@-	| tmp36
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp39
	ext.l %d0	| tmp39
| voxel.c:739: }
	movem.l (%sp)+,#1036	|,
	rts	
.L328:
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	clr.b %d0	| <retval>
| voxel.c:739: }
	movem.l (%sp)+,#1036	|,
	rts	
	.even
	.globl	_wait_for_key
_wait_for_key:
	movem.l #12320,-(%sp)	|,
| voxel.c:742: 	while (Bconstat(_CON))
	moveq #2,%d3	|, tmp35
.L332:
#APP
| 742 "voxel.c" 1
	movw	%d3,%sp@-	| tmp35
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
#NO_APP
	tst.w %d0	| tmp40
	jne .L332		|
| voxel.c:744: 	while (!Bconstat(_CON))
	moveq #2,%d3	|, tmp37
.L333:
#APP
| 744 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:744: 	while (!Bconstat(_CON))
#NO_APP
	tst.w %d0	| tmp41
	jeq .L333		|
| voxel.c:746: 	Bconin(_CON);
#APP
| 746 "voxel.c" 1
	movw	%d3,%sp@-	| tmp37
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:747: }
#NO_APP
	movem.l (%sp)+,#1036	|,
	rts	
.LC6:
	.ascii "\33H\33f\12\0"
.LC7:
	.ascii "Failed to load voxel data.\0"
.LC8:
	.ascii "Computing tables\0"
.LC9:
	.ascii "Loading cockpit.tga\0"
.LC10:
	.ascii "cockpit.tga\0"
.LC11:
	.ascii "Rendering took %dms per frame.\12\0"
.LC12:
	.ascii "Press any key to exit to TOS.\0"
	.even
	.globl	_main
_main:
	lea (-184,%sp),%sp	|,
	movem.l #16190,-(%sp)	|,
| voxel.c:751: int main(int argc, char **argv) {
	jsr ___main		|
| voxel.c:753: 	printf("\33H\33f\n\n");
	pea .LC6		|
	jsr _puts		|
| voxel.c:756: 	Super(0L);
	moveq #0,%d0	| tmp570
#APP
| 756 "voxel.c" 1
	movl	%d0,%sp@-	| tmp570
	movw	#32,%sp@-	|
	trap	#1
	addql	#6,%sp
| 0 "" 2
| voxel.c:758: 	linea0();
#NO_APP
	jsr _linea0		|
| voxel.c:760: 	lineaa();
	jsr _lineaa		|
| voxel.c:763: 	save_palette(saved_palette);
	pea 200(%sp)		|
	jsr _save_palette		|
| voxel.c:765: 	unsigned short *screen = Physbase();
#APP
| 765 "voxel.c" 1
	movw	#2,%sp@-	|
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,70(%sp)	| tmp1010, %sfp
| voxel.c:767: 	*conterm &= ~1;
	and.b #-2,1156.w	|, MEM[(char *)1156B]
| voxel.c:769: 	if (!load_voxel_data()) {
	jsr _load_voxel_data		|
| voxel.c:769: 	if (!load_voxel_data()) {
	addq.l #8,%sp	|,
	tst.l %d0	| tmp1011
	jeq .L463		|
| voxel.c:774: 	printf("Computing tables\n");
	pea .LC8		|
	jsr _puts		|
| voxel.c:775: 	build_tables();
	jsr _build_tables		|
| voxel.c:776: 	printf("Loading cockpit.tga\n");
	pea .LC9		|
	jsr _puts		|
| voxel.c:777: 	image_t cockpit = read_tga("cockpit.tga");
	pea .LC10		|
	lea (194,%sp),%a1	|,,
	jsr _read_tga		|
	move.l 198(%sp),%d2	| cockpit.pixels, cockpit$pixels
| voxel.c:778: 	if (!cockpit.pixels) goto error;
	lea (12,%sp),%sp	|,
	jeq .L341		|
| voxel.c:779: 	read_palette_vectors(cockpit.colors);
	move.l 190(%sp),-(%sp)	| cockpit.colors,
	jsr _read_palette_vectors		|
	move.l 66(%sp),%a0	| %sfp, ivtmp.804
	move.l %a0,%d0	| ivtmp.804, _1354
	add.l #32000,%d0	|, _1354
	addq.l #4,%sp	|,
.L342:
| voxel.c:145: 	for (int i=0; i<16000; i++) *out++ = 0;
	clr.l (%a0)+	| MEM <vector(2) short unsigned int> [(short unsigned int *)vectp.679_1560]
	cmp.l %d0,%a0	| _1354, ivtmp.804
	jne .L342		|
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+224,%d0	| pdata_table[0][7][0], movep_data
	lea _view_min,%a1	|, ivtmp.795
	lea _view_max,%a2	|, ivtmp.798
	clr.w %d3	| ivtmp.796
	move.l 62(%sp),%d4	| %sfp, _221
.L347:
| voxel.c:783: 		fill_column(screen, i*8, 0, view_min[i], 0);
	move.w (%a1)+,%d1	| MEM[(short int *)_1362], _7
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d3,%d6	| ivtmp.796, tmp586
	asr.w #4,%d6	|, tmp586
	ext.l %d6	| tmp587
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%d6	| tmp587, tmp588
	add.l %d6,%d6	| tmp588, _237
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d3,%d5	|, tmp591
	lsr.l #3,%d5	|, tmp591
	moveq #1,%d7	|,
	and.l %d7,%d5	|, _325
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d6,%a0	| _237, tmp592
	add.l %d6,%a0	| _237, tmp592
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d5,%a0	| _325, tmp593
	add.l %d4,%a0	| _221, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _7
	jle .L343		|
	mulu.w #160,%d1	|, tmp594
	add.l %a0,%d1	| pBlock, _1006
.L344:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1006
	jne .L344		|
.L343:
| voxel.c:784: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w (%a2)+,%a0	| MEM[(short int *)_1359], _11
| voxel.c:784: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	move.w #199,%d1	|, _13
	sub.w %a0,%d1	| _11, _13
| voxel.c:784: 		fill_column(screen, i*8, view_max[i]+1, 199 - view_max[i], 0);
	addq.w #1,%a0	|, tmp596
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d7	| tmp596,
	muls.w #80,%d7	|,
	move.l %d7,%a0	|, tmp597
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d6,%a0	| _237, tmp599
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp599, tmp600
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d5	| tmp600, tmp601
	move.l %d4,%a0	| _221, pBlock
	add.l %d5,%a0	| tmp601, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	tst.w %d1	| _13
	jle .L345		|
	mulu.w #160,%d1	|, tmp602
	add.l %a0,%d1	| pBlock, _1562
.L346:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d0, 0(%a0)	| movep_data, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d1	| pBlock, _1562
	jne .L346		|
.L345:
| voxel.c:782: 	for (int i=0; i<40; i++) {
	addq.w #8,%d3	|, ivtmp.796
	cmp.l #_view_min+80,%a1	|, ivtmp.795
	jne .L347		|
| voxel.c:787: 	compute_and_set_bottom_palette(0, 0);
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _compute_and_set_bottom_palette		|
| voxel.c:788: 	install_joystick_handler();
	jsr _install_joystick_handler		|
| voxel.c:789: 	install_interrupts();
	jsr _install_interrupts		|
| voxel.c:792: 	draw_image2(screen + cockpit_y*80, cockpit.pixels, cockpit.width, 200 - cockpit_y, 0);
	clr.l -(%sp)	|
	pea 80.w		|
	move.w 198(%sp),%a0	| cockpit.width,
	move.l %a0,-(%sp)	|,
	move.l %d2,-(%sp)	| cockpit$pixels,
	move.l 86(%sp),%a1	| %sfp,
	pea 19200(%a1)		|
	jsr _draw_image2		|
| voxel.c:796: 	unsigned long t0 = *_hz_200;
	move.l 1210.w,186(%sp)	| MEM[(volatile long unsigned int *)1210B], %sfp
	lea (28,%sp),%sp	|,
| voxel.c:800: 	int frames = 0;
	clr.l 140(%sp)	| %sfp
| voxel.c:798: 	fixp desired_height = FIXP(20, 0);
	move.w #2560,138(%sp)	|, %sfp
| voxel.c:794: 	char fog_enabled = FOG_ENABLED_INITIALLY;
	move.b #1,153(%sp)	|, %sfp
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp611
#APP
| 738 "voxel.c" 1
	movw	%d3,%sp@-	| tmp611
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1012
	jeq .L409		|
.L469:
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#APP
| 738 "voxel.c" 1
	movw	%d3,%sp@-	| tmp611
	movw	#2,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	swap %d0	| tmp614
	ext.l %d0	| tmp614
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	move.b %d0,152(%sp)	| tmp614, %sfp
| voxel.c:804: 		if (key == 1)
	cmp.b #1,%d0	|,
	jeq .L464		|
| voxel.c:809: 		frames++;
	move.l 140(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,154(%sp)	|, %sfp
| voxel.c:111: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.79_342
	move.w (%a0),%d0	| *hw_palette.79_342, _343
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_340
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_338
| voxel.c:814: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_340, tmp619
	lsr.w #7,%d0	|, tmp619
| voxel.c:813: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp620
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_338, tmp621
	lsr.w #7,%d1	|, tmp621
| voxel.c:813: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp622
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp623
	add.l %d1,%d0	| tmp622, tmp624
	add.l %d0,%d0	| tmp624, tmp625
	move.l %d0,%a0	| tmp625, tmp627
	add.l #_combined+1,%a0	|, tmp627
| voxel.c:814: 		fixp player_height = pos.z - terrain_height;
	clr.w %d0	| combined[_21][_24].D.2699.height
	move.b (%a0),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp629
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp629,
	move.w %d7,144(%sp)	|, %sfp
| voxel.c:815: 		if (desired_height >= 0) {
	tst.w 138(%sp)	| %sfp
	jlt .L465		|
.L350:
| voxel.c:816: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.w 138(%sp),%a0	| %sfp, desired_height
| voxel.c:816: 			fixp altitude_delta = (desired_height - player_height) / (desired_height >> 9);
	move.l #___divsi3,106(%sp)	|, %sfp
	move.w 138(%sp),%d0	| %sfp, tmp637
	moveq #9,%d5	|,
	asr.w %d5,%d0	|, tmp637
	move.w %d0,%a1	| tmp637,
	move.l %a1,-(%sp)	|,
	sub.w 148(%sp),%a0	| %sfp, desired_height
	move.l %a0,-(%sp)	| desired_height,
	move.l 114(%sp),%a6	| %sfp,
	jsr (%a6)		|
	addq.l #8,%sp	|,
| voxel.c:818: 			if (altitude_delta < -FIXP(2, 0)) altitude_delta = -FIXP(2, 0);
	cmp.w #-256,%d0	|, altitude_delta
	jge .L352		|
	move.w #-256,%d0	|, altitude_delta
.L353:
| voxel.c:819: 			pos.z += altitude_delta;
	add.w %d4,%d0	| _27, _37
| voxel.c:820: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jgt .L354		|
.L480:
| voxel.c:819: 			pos.z += altitude_delta;
	move.w %d0,_pos+4	| _37, pos.z
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d0	|, _1408
| voxel.c:853: 			state = render16(state, STEPS_MIN, 16, delta_vu, height, y_min, index_mask);
	moveq #0,%d1	|
	move.w %d0,%d1	| _1408,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:477: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp645
	sub.w %d0,%a0	| _1408, tmp645
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp645, tmp646
	add.l %a0,%a0	| tmp646, tmp646
	move.l %a0,82(%sp)	| tmp646, %sfp
| voxel.c:823: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.63_39
	move.w -602(%a0),150(%sp)	| MEM[(short int *)__aline.63_39 + 4294966694B], %sfp
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp650
	clr.w %d2	| tmp650
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_338, tmp652
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp652
	move.l %d2,102(%sp)	| tmp652, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+8,100(%sp)	| pos.diry, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+6,98(%sp)	| pos.dirx, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 98(%sp),%d0	| %sfp, tmp655
	add.w %d0,%d0	|, tmp655
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp657
	clr.w %d0	| tmp657
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 100(%sp),%d1	| %sfp, tmp659
	add.w %d1,%d1	|, tmp659
	neg.w %d1	| tmp660
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d0	| tmp660, tmp657
	move.l %d0,118(%sp)	| tmp657, %sfp
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 100(%sp),%d1	| %sfp,
	ext.l %d1	| _40
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.l %d1,%d2	| _40, tmp663
	neg.l %d2	| tmp663
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	asr.l #3,%d2	|, tmp664
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 98(%sp),%d0	| %sfp, tmp666
	asr.w #3,%d0	|, tmp666
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp668
	clr.w %d0	| tmp668
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d0	| tmp664, tmp669
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp669
	move.l %d0,114(%sp)	| tmp669, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.63_39 + 4294966696B],
	move.l %a0,146(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp670
	add.l %a0,%d0	|, tmp670
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp670
	move.l %d0,110(%sp)	| tmp670, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 150(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp672
	add.l #-160,%d0	|, tmp672
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _55
| voxel.c:870: 			state8 = render(state8, FOG_START, 48, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.b 153(%sp),%d2	| %sfp,
	ext.w %d2	| fog_enabled
	move.w %d2,%a0	| fog_enabled,
	move.l %a0,52(%sp)	|, %sfp
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%a3	| pdata_table[15][7][0], pretmp_1427
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%d2	| %sfp,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,134(%sp)	|, %sfp
	move.l %d0,%d3	| _55,
	lsl.l #4,%d3	|,
	move.l %d3,122(%sp)	|, %sfp
	move.l %d0,%a0	| _55, tmp676
	add.l %d0,%a0	| _55, tmp676
	add.l %a0,%a0	| tmp676, tmp677
	add.l %a0,%d0	| tmp677, tmp678
	lsl.l #5,%d0	|, tmp679
	neg.l %d0	| tmp679
	move.l %d0,66(%sp)	| tmp679, %sfp
	lsl.l #4,%d1	|, _40
	move.l %d1,126(%sp)	| _40, %sfp
	move.w 100(%sp),%d4	| %sfp,
	muls.w #-152,%d4	|,
	move.l %d4,70(%sp)	|, %sfp
	move.w 98(%sp),%d0	| %sfp,
	ext.l %d0	| _43
	lsl.l #4,%d0	|, _43
	move.l %d0,130(%sp)	| _43, %sfp
	move.w 98(%sp),%d5	| %sfp,
	muls.w #-152,%d5	|,
	move.l %d5,74(%sp)	|, %sfp
	move.l #_horizon,%d1	|, ivtmp.769
	moveq #8,%d7	|,
	move.l %d7,56(%sp)	|, %sfp
	lea (178,%sp),%a0	|,,
	move.l %a0,94(%sp)	|, %sfp
	lea (176,%sp),%a0	|,,
	move.l %a0,90(%sp)	|, %sfp
	lea (166,%sp),%a0	|,,
	move.l %a0,86(%sp)	|, %sfp
| voxel.c:872: 			state8 = render(state8, 48, 56, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l %a3,%d6	| pretmp_1427, pretmp_1427
	move.l %d1,%a3	| ivtmp.769, ivtmp.769
.L395:
| voxel.c:838: 				pos.diry + ((short)(x + 8 - 160) * pos.dirx >> 8),
	move.l 74(%sp),%d5	| %sfp, tmp684
	asr.l #8,%d5	|, tmp684
| voxel.c:838: 				pos.diry + ((short)(x + 8 - 160) * pos.dirx >> 8),
	add.w 100(%sp),%d5	| %sfp, tmp685
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d5	| tmp687
	clr.w %d5	| tmp687
| voxel.c:839: 				pos.dirx - ((short)(x + 8 - 160) * pos.diry >> 8));
	move.l 70(%sp),%d1	| %sfp, tmp688
	asr.l #8,%d1	|, tmp688
| voxel.c:839: 				pos.dirx - ((short)(x + 8 - 160) * pos.diry >> 8));
	move.w 98(%sp),%d0	| %sfp, tmp689
	sub.w %d1,%d0	| tmp688, tmp689
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d0,%d5	| tmp689, tmp691
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d5	|, _367
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	move.l 102(%sp),%d3	| %sfp, tmp692
	add.l %d5,%d3	| _367, tmp692
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp693
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _367, tmp694
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp695
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _367, tmp696
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp697
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _367, tmp698
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:848: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	move.w 58(%sp),%d0	| %sfp, x
	subq.w #8,%d0	|, x
	move.w %d0,%d4	| x, tmp699
	lsr.w #3,%d4	|, tmp699
	and.l #65535,%d4	|, _78
| voxel.c:848: 				.pixel = pixel_block_address(screen, x, view_max[x >> 3]),
	add.l %d4,%d4	| _78, tmp701
	lea _view_max,%a1	|,
	move.w (%a1,%d4.l),%d2	| view_max[_78], _79
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	asr.w #4,%d0	|, tmp702
	ext.l %d0	| tmp703
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp703, tmp704
	add.l %d0,%d0	| tmp704, tmp704
	move.l %d0,78(%sp)	| tmp704, %sfp
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %d2,%d0	| _79,
	muls.w #80,%d0	|, tmp706
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 78(%sp),%d0	| %sfp, tmp708
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %d0,%d0	| tmp708, tmp709
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 62(%sp),%a2	| %sfp, pBlock
	add.l %d0,%a2	| tmp709, pBlock
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	pea -160.w		|
	move.l 70(%sp),-(%sp)	| %sfp,
	move.l 114(%sp),%a6	| %sfp,
	jsr (%a6)		|
	addq.l #8,%sp	|,
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.l %d0,%a5	| tmp1015, y_offset
	add.l 110(%sp),%a5	| %sfp, y_offset
| voxel.c:847: 				.y = view_max[x >> 3] - y_offset,
	sub.w %a5,%d2	| y_offset, y
| voxel.c:851: 			short y_min = MAX(view_min[x >> 3], view_min[(x+8) >> 3]) - y_offset;
	move.l 56(%sp),%d0	| %sfp, tmp717
	asr.l #3,%d0	|, tmp717
	add.l %d0,%d0	| tmp717, tmp718
	lea _view_min,%a0	|,
	move.w (%a0,%d0.l),%a4	| view_min[_86], _87
	move.w (%a0,%d4.l),60(%sp)	| view_min[_78], %sfp
	move.w %a4,%d0	| _87, _87
	move.w 60(%sp),%d1	| %sfp,
	cmp.w %a4,%d1	| _87,
	jle .L355		|
	move.w %d1,%d0	|, _87
.L355:
| voxel.c:851: 			short y_min = MAX(view_min[x >> 3], view_min[(x+8) >> 3]) - y_offset;
	sub.w %a5,%d0	| y_offset, y_min
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	move.l %d5,%d4	| _367, tmp722
	add.l %d5,%d4	| _367, tmp722
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, _1593
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d2,%d0	| y, y_min
	jgt .L448		|
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 134(%sp),%a0	| %sfp, y_table_shifted
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	move.w #-12,%a1	|, z
	move.w %a1,%d7	| z, z
	move.l %d4,44(%sp)	| _1593, %sfp
.L364:
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d4	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d4, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d4	| sample_vu, tmp
	lsr.w #6, %d4	| tmp
	or.w %d4,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _688
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _688,
	move.w (%a1),%d4	| *_688, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.677
	move.b %d4,%d1	| sample, SR.677
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.677, tmp727
	move.w (%a0,%d1.l),%a6	| (*y_table_shifted_667)[_690], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a6,%d2	| sample_y, y
	jge .L466		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _367, tmp736
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jeq .L451		|
.L471:
	cmp.w %d0,%d2	| y_min, y
	jge .L364		|
	move.l 44(%sp),%d4	| %sfp, _1593
.L448:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| _1593, tmp970
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, _379
.L383:
| voxel.c:861: 			y_min = view_min[x >> 3] - y_offset;
	move.w 60(%sp),%a6	| %sfp, y_min
	sub.w %a5,%a6	| y_offset, y_min
| voxel.c:868: 			state8 = render(state8, 36, FOG_START, delta_vu8, height, y_min, index_mask8, 0);
	move.w %a6,%a6	| y_min, _97
	move.l %d3,172(%sp)	| sample_vu, state8.sample_vu
	move.l %a2,176(%sp)	| pBlock, state8.pixel
	move.w %d2,180(%sp)	| y, state8.y
	move.l %a6,-(%sp)	| _97,
	move.l 52(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _379,
	subq.l #2,%sp	|,
	move.l 108(%sp),%a0	| %sfp,
	move.l (%a0),-(%sp)	| state8,
	move.l 192(%sp),-(%sp)	| state8,
	move.w 194(%sp),-(%sp)	| state8,
	lea (196,%sp),%a1	|,,
	jsr (_render.constprop.3)		|
| voxel.c:870: 			state8 = render(state8, FOG_START, 48, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l 76(%sp),-(%sp)	| %sfp,
	move.l %a6,-(%sp)	| _97,
	move.l 80(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _379,
	subq.l #2,%sp	|,
	move.l 220(%sp),-(%sp)	| state8,
	move.l 220(%sp),-(%sp)	| state8,
	move.w 222(%sp),-(%sp)	| state8,
	lea (214,%sp),%a1	|,,
	jsr (_render.constprop.2)		|
	move.l 214(%sp),224(%sp)	|, state8
	move.l 142(%sp),%a1	| %sfp,
	move.l 138(%sp),%a0	| %sfp,
	move.l (%a0),(%a1)	|, state8
	move.w 222(%sp),232(%sp)	|, state8
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	move.l %d4,%d5	| _379, tmp789
	add.l %d4,%d5	| _379, tmp789
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d5	|, _377
| voxel.c:872: 			state8 = render(state8, 48, 56, delta_vu8, height, y_min, index_mask8, fog_enabled);
	lea (52,%sp),%sp	|,
	move.l 52(%sp),-(%sp)	| %sfp,
	move.l %a6,-(%sp)	| _97,
	move.l 56(%sp),-(%sp)	| %sfp,
	move.l %d5,-(%sp)	| _377,
	subq.l #2,%sp	|,
	move.l 196(%sp),-(%sp)	| state8,
	move.l 196(%sp),-(%sp)	| state8,
	move.w 198(%sp),-(%sp)	| state8,
	lea (190,%sp),%a1	|,,
	jsr (_render.constprop.1)		|
	move.l 190(%sp),200(%sp)	|, state8
	move.l 194(%sp),204(%sp)	|, state8
	move.w 198(%sp),208(%sp)	|, state8
| voxel.c:874: 			state8 = render(state8, 56, STEPS_MAX, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l 80(%sp),-(%sp)	| %sfp,
	move.l %a6,-(%sp)	| _97,
	move.l 84(%sp),-(%sp)	| %sfp,
	move.l %d5,-(%sp)	| _377,
	subq.l #2,%sp	|,
	move.l 224(%sp),-(%sp)	| state8,
	move.l 224(%sp),-(%sp)	| state8,
	move.w 226(%sp),-(%sp)	| state8,
	lea (218,%sp),%a1	|,,
	jsr (_render.constprop.0)		|
	move.w 226(%sp),236(%sp)	|, state8
| voxel.c:875: 			state8.y += y_offset;
	move.w 236(%sp),%d1	| state8.y, _101
	add.w %a5,%d1	| y_offset, _101
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w (%a3),%a0	| MEM[(short int *)_1511], _477
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %d1,%d0	| _101, _478
	sub.w %a0,%d0	| _477, _478
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%a0	|, tmp800
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w %a0,%d5	| tmp800,
	muls.w #80,%d5	|,
	move.l %d5,%a0	|, tmp801
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 134(%sp),%a0	| %sfp, tmp803
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp803, tmp804
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l 118(%sp),%a0	| %sfp, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	lea (56,%sp),%sp	|,
	tst.w %d0	| _478
	jle .L391		|
	mulu.w #160,%d0	|, tmp805
	add.l %a0,%d0	| pBlock, _1402
.L392:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d6, 0(%a0)	| pretmp_1427, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _1402
	jne .L392		|
.L391:
| voxel.c:560: 	horizon[x] = y;
	move.w %d1,(%a3)	| _101, MEM[(short int *)_1511]
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l 114(%sp),%d4	| %sfp, tmp807
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, _373
| voxel.c:878: 			y_min = view_min[(x + 8) >> 3] - y_offset;
	sub.w %a5,%a4	| y_offset, y_min
| voxel.c:886: 			state8 = render(state8, 36, FOG_START, delta_vu8, height, y_min, index_mask8, 0);
	move.w %a4,%a4	| y_min, _108
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l 118(%sp),%d3	| %sfp, tmp809
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, tmp809
	move.l %d3,172(%sp)	| tmp809, state8.sample_vu
| voxel.c:881: 			state8.pixel++;
	addq.l #1,%a2	|, pBlock
	move.l %a2,176(%sp)	| pBlock, state8.pixel
| voxel.c:886: 			state8 = render(state8, 36, FOG_START, delta_vu8, height, y_min, index_mask8, 0);
	move.w %d2,180(%sp)	| y, state8.y
	move.l %a4,-(%sp)	| _108,
	move.l 52(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _373,
	subq.l #2,%sp	|,
	move.l 192(%sp),-(%sp)	| state8,
	move.l 192(%sp),-(%sp)	| state8,
	move.w 194(%sp),-(%sp)	| state8,
	lea (186,%sp),%a1	|,,
	jsr (_render.constprop.3)		|
	move.l 186(%sp),196(%sp)	|, state8
	move.l 190(%sp),200(%sp)	|, state8
	move.w 194(%sp),204(%sp)	|, state8
| voxel.c:888: 			state8 = render(state8, FOG_START, 48, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l 76(%sp),-(%sp)	| %sfp,
	move.l %a4,-(%sp)	| _108,
	move.l 80(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _373,
	subq.l #2,%sp	|,
	move.l 220(%sp),-(%sp)	| state8,
	move.l 220(%sp),-(%sp)	| state8,
	move.w 222(%sp),-(%sp)	| state8,
	lea (214,%sp),%a1	|,,
	jsr (_render.constprop.2)		|
	move.l 214(%sp),224(%sp)	|, state8
	lea (228,%sp),%a0	|,,
	move.l %a0,142(%sp)	|, %sfp
	lea (218,%sp),%a1	|,,
	move.l %a1,138(%sp)	|, %sfp
	move.l 218(%sp),228(%sp)	|, state8
	move.w 222(%sp),232(%sp)	|, state8
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| _373, tmp820
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, _371
| voxel.c:890: 			state8 = render(state8, 48, 56, delta_vu8, height, y_min, index_mask8, fog_enabled);
	lea (52,%sp),%sp	|,
	move.l 52(%sp),-(%sp)	| %sfp,
	move.l %a4,-(%sp)	| _108,
	move.l 56(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _371,
	subq.l #2,%sp	|,
	move.l 196(%sp),-(%sp)	| state8,
	move.l 196(%sp),-(%sp)	| state8,
	move.w 198(%sp),-(%sp)	| state8,
	lea (190,%sp),%a1	|,,
	jsr (_render.constprop.1)		|
	move.l 190(%sp),200(%sp)	|, state8
	move.l 194(%sp),204(%sp)	|, state8
	move.w 198(%sp),208(%sp)	|, state8
| voxel.c:892: 			state8 = render(state8, 56, STEPS_MAX, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l 80(%sp),-(%sp)	| %sfp,
	move.l %a4,-(%sp)	| _108,
	move.l 84(%sp),-(%sp)	| %sfp,
	move.l %d4,-(%sp)	| _371,
	subq.l #2,%sp	|,
	lea (224,%sp),%a6	|,,
	move.l %a6,140(%sp)	|, %sfp
	move.l 224(%sp),-(%sp)	| state8,
	move.l 224(%sp),-(%sp)	| state8,
	move.w 226(%sp),-(%sp)	| state8,
	lea (218,%sp),%a1	|,,
	jsr (_render.constprop.0)		|
	move.l 218(%sp),228(%sp)	|, state8
	move.l 222(%sp),232(%sp)	|, state8
	move.w 226(%sp),236(%sp)	|, state8
| voxel.c:893: 			state8.y += y_offset;
	add.w 236(%sp),%a5	| state8.y, _111
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w 16(%a3),%d1	| MEM[(short int *)_1511 + 16B], _447
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	move.w %a5,%d0	| _111, _448
	sub.w %d1,%d0	| _447, _448
| voxel.c:559: 	fill_column(out, x, horizon[x]+1, y - horizon[x], 15);
	addq.w #1,%d1	|, tmp831
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	muls.w #80,%d1	|, tmp832
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.w 114(%sp),%d2	| %sfp, tmp834
	asr.w #4,%d2	|, tmp834
	move.w %d2,%a0	| tmp834, tmp835
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%a0	| tmp835, tmp836
	add.l %a0,%a0	| tmp836, tmp837
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	add.l %a0,%d1	| tmp837, tmp838
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l %d1,%a0	| tmp838, tmp839
	add.l %d1,%a0	| tmp838, tmp839
| voxel.c:329: 	return ((unsigned char *)&out[y*80 + ((x>>4)<<2)]) + ((x >> 3) & 1);
	move.l 118(%sp),%a1	| %sfp,
	lea 1(%a1,%a0.l),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	lea (56,%sp),%sp	|,
	tst.w %d0	| _448
	jle .L393		|
	mulu.w #160,%d0	|, tmp841
	add.l %a0,%d0	| pBlock, _1397
.L394:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d6, 0(%a0)	| pretmp_1427, pBlock
| 0 "" 2
| voxel.c:553: 		pBlock += 160*LINES_SKIP;
#NO_APP
	lea (160,%a0),%a0	|, pBlock
| voxel.c:551: 	for (short remaining = height; remaining > 0; remaining -= LINES_SKIP) {
	cmp.l %a0,%d0	| pBlock, _1397
	jne .L394		|
.L393:
| voxel.c:560: 	horizon[x] = y;
	move.w %a5,16(%a3)	| _111, MEM[(short int *)_1511 + 16B]
| voxel.c:830: 		for (unsigned short x = VIEWPORT_MIN; x < VIEWPORT_MAX; x += 16) {
	move.l 122(%sp),%d1	| %sfp,
	add.l %d1,66(%sp)	|, %sfp
	move.l 126(%sp),%d2	| %sfp,
	add.l %d2,70(%sp)	|, %sfp
	move.l 130(%sp),%d3	| %sfp,
	add.l %d3,74(%sp)	|, %sfp
	moveq #16,%d4	|,
	add.l %d4,56(%sp)	|, %sfp
	lea (32,%a3),%a3	|, ivtmp.769
	cmp.l #328,56(%sp)	|, %sfp
	jne .L395		|
| voxel.c:900: 		short elev_to_sun = ray_elevation(player_vu, make_2in1(0, -FIXP(1, 0)), fixp_int(pos.z));
	move.l 48(%sp),-(%sp)	| %sfp,
	move.l #65408,-(%sp)	|,
	move.l 110(%sp),-(%sp)	| %sfp,
	jsr _ray_elevation		|
| voxel.c:902: 		if (elev_to_sun < -40) {
	lea (12,%sp),%sp	|,
	cmp.w #-40,%d0	|, elev_to_sun
	jlt .L410		|
	move.w #128,%a0	|, _1513
| voxel.c:904: 		} else if (elev_to_sun >= -8) {
	cmp.w #-8,%d0	|, elev_to_sun
	jge .L396		|
| voxel.c:907: 			sunlight = (elev_to_sun + 40) << (FIXP_PRECISION - 5);
	add.w #40,%d0	|, tmp844
	add.w %d0,%d0	| tmp844, tmp845
	add.w %d0,%d0	| tmp845, sunlight
| voxel.c:910: 		compute_and_set_bottom_palette(i, sunlight);
	move.w %d0,%a0	| sunlight, _1513
.L396:
	move.l %a0,-(%sp)	| _1513,
	move.l 144(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _121
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _122
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _122,
	muls.w %d1,%d2	| _121, tmp851
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp852
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp852, pos.x
| voxel.c:913: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _128
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _128,
	muls.w %d1,%d3	| _121, tmp855
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp856
| voxel.c:913: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _133
	add.w %d3,%a0	| tmp856, _133
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp858
	sub.l 154(%sp),%d3	| %sfp, tmp858
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp859
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp859, _139
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _139, tmp860
	asr.w #3,%d3	|, tmp860
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _139, tmp861
	asr.w #4,%d4	|, tmp861
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp861, tmp862
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _146
| voxel.c:917: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _139
	jle .L397		|
.L481:
| voxel.c:917: 		if (pos.speed > 0) pos.speed -= drag;
	sub.w %d3,%d1	| _146, _149
.L398:
| voxel.c:913: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w %a0,_pos+2	| _133, pos.y
| voxel.c:917: 		if (pos.speed > 0) pos.speed -= drag;
	move.w %d1,_pos+10	| _149, pos.speed
| voxel.c:919: 		fixp rot = 160 - mouse_x;
	move.w #160,%d1	|, rot
	sub.w 150(%sp),%d1	| %sfp, rot
| voxel.c:920: 		pos.dirx += (rot * pos.diry) >> 11;
	move.w %d1,%d3	| rot,
	muls.w %d2,%d3	| _128, tmp865
| voxel.c:920: 		pos.dirx += (rot * pos.diry) >> 11;
	moveq #11,%d4	|,
	asr.l %d4,%d3	|, tmp866
| voxel.c:920: 		pos.dirx += (rot * pos.diry) >> 11;
	add.w %d3,%d0	| tmp866, _161
| voxel.c:921: 		pos.diry -= (rot * pos.dirx) >> 11;
	muls.w %d0,%d1	| _161, tmp867
| voxel.c:921: 		pos.diry -= (rot * pos.dirx) >> 11;
	asr.l %d4,%d1	|, tmp868
| voxel.c:921: 		pos.diry -= (rot * pos.dirx) >> 11;
	sub.w %d1,%d2	| tmp868, _168
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d1	| _161,
	muls.w %d0,%d1	| _161, tmp869
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d1	|, tmp870
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _168,
	muls.w %d2,%d3	| _168, tmp871
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp872
| voxel.c:924: 		fixp factor = fixp_sqrt_inv(fixp_mul(pos.dirx, pos.dirx) + fixp_mul(pos.diry, pos.diry));
	add.w %d3,%d1	| tmp872, tmp873
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w %d1,%a0	| tmp873, tmp874
	moveq #-128,%d1	|, tmp875
	add.l %a0,%d1	| tmp874, tmp875
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	asr.l #1,%d1	|, tmp876
| voxel.c:169: 	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
	move.w #128,%d3	|, _415
	sub.w %d1,%d3	| tmp876, _415
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d3,%d0	| _415, tmp879
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d0	|, tmp880
| voxel.c:925: 		pos.dirx = fixp_mul(factor, pos.dirx);
	swap %d0	| tmp878
	clr.w %d0	| tmp878
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	muls.w %d2,%d3	| _168, tmp885
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp886
| voxel.c:925: 		pos.dirx = fixp_mul(factor, pos.dirx);
	move.w %d3,%d0	| tmp886, tmp878
	move.l %d0,_pos+6	| tmp878, MEM <vector(2) short int> [(short int *)&pos + 6B]
| voxel.c:928: 		if (pressed_keys.up) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:928: 		if (pressed_keys.up) {
	jpl .L399		|
| voxel.c:929: 			if (desired_height < FIXP(0, 0)) {
	tst.w 138(%sp)	| %sfp
	jlt .L412		|
| voxel.c:932: 			desired_height += FIXP(1, 0);
	move.w 138(%sp),%d0	| %sfp, _1515
.L400:
	add.w #128,%d0	|, _1515
	move.w %d0,138(%sp)	| _1515, %sfp
| voxel.c:933: 			if (desired_height > FIXP(254, 0)) {
	cmp.w #32512,%d0	|,
	jle .L399		|
	move.w #32512,138(%sp)	|, %sfp
.L399:
| voxel.c:937: 		if (pressed_keys.down) {
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:937: 		if (pressed_keys.down) {
	btst #13,%d0	|, pressed_keys
	jeq .L402		|
| voxel.c:938: 			if (desired_height < FIXP(0, 0)) {
	tst.w 138(%sp)	| %sfp
	jlt .L403		|
| voxel.c:941: 			desired_height -= FIXP(1, 0);
	move.w 138(%sp),144(%sp)	| %sfp, %sfp
.L403:
| voxel.c:946: 		if (key == 0x23) {
	cmp.b #35,152(%sp)	|, %sfp
	jeq .L413		|
| voxel.c:941: 			desired_height -= FIXP(1, 0);
	move.w 144(%sp),%d5	| %sfp,
	add.w #-128,%d5	|,
	move.w %d5,138(%sp)	|, %sfp
| voxel.c:942: 			if (desired_height < FIXP(0, 0)) {
	jmi .L467		|
.L406:
| voxel.c:953: 		} else if (key == 0x20) {
	cmp.b #32,152(%sp)	|, %sfp
	jeq .L468		|
.L404:
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp898
	and.w #8192,%d0	|, _648
| voxel.c:198: 	data &= mask;
	move.l 62(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B], tmp899
	and.l #-536879105,%d3	|, tmp899
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _648
	move.w %d0,%d1	| _648, _648
| voxel.c:198: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222], tmp904
	and.l #-536879105,%d4	|, tmp904
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _648
	swap %d2	| _648
	clr.w %d2	| _648
	move.w %d0,%d2	| _648, _648
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _648, tmp904
	move.l %d4,(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222]
	or.l %d1,%d3	| _648, tmp899
	move.l %d3,4(%a0)	| tmp899, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B]
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp912
	and.b #1,%d0	|, _181
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp915
	ext.w %d0	| tmp914
	neg.w %d0	| tmp916
	lsl.w %d1,%d0	|, _1371
| voxel.c:198: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B], tmp917
	and.l #-536879105,%d3	|, tmp917
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1371
	move.w %d0,%d1	| _1371, _1371
| voxel.c:198: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B], tmp922
	and.l #-536879105,%d4	|, tmp922
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1371
	swap %d2	| _1371
	clr.w %d2	| _1371
	move.w %d0,%d2	| _1371, _1371
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _1371, tmp922
	move.l %d4,640(%a0)	| tmp922, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B]
	or.l %d1,%d3	| _1371, tmp917
	move.l %d3,644(%a0)	| tmp917, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B]
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp930
	and.b #1,%d1	|, _182
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp933
	ext.w %d1	| tmp932
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1559
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp936
	and.b #1,%d0	|, _183
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp939
	ext.w %d0	| tmp938
	neg.w %d0	| tmp940
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1312
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_222 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d4	| _1559, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_222 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:202: 	data &= mask;
	or.w %d1,%d3	| _1559, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_222 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:210: 	data &= mask;
	or.w %d1,%d2	| _1559, data
| voxel.c:964: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 138(%sp),%d1	| %sfp, tmp945
	not.w %d1	| tmp945
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp944
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1374
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1312, data
| voxel.c:198: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1374, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_222 + 320B]
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1312, data
| voxel.c:202: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1374, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_222 + 322B]
| voxel.c:207: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_222 + 324B]
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:210: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1374, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_222 + 326B]
| voxel.c:809: 		frames++;
	move.l 154(%sp),140(%sp)	| %sfp, %sfp
.L470:
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
	moveq #2,%d3	|, tmp611
#APP
| 738 "voxel.c" 1
	movw	%d3,%sp@-	| tmp611
	movw	#1,%sp@-	|
	trap	#13
	addql	#4,%sp
| 0 "" 2
| voxel.c:738: 	return Bconstat(_CON) ? (Bconin(_CON) & 0xff0000) >> 16 : 0;
#NO_APP
	tst.w %d0	| tmp1012
	jne .L469		|
.L409:
	clr.b 152(%sp)	| %sfp
| voxel.c:809: 		frames++;
	move.l 140(%sp),%d3	| %sfp,
	addq.l #1,%d3	|,
	move.l %d3,154(%sp)	|, %sfp
| voxel.c:111: 	return *hw_palette;
	move.l _hw_palette,%a0	| hw_palette, hw_palette.79_342
	move.w (%a0),%d0	| *hw_palette.79_342, _343
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w _pos+2,%d2	| pos.y, val.9_340
	lea _pos,%a0	|,
	move.w (%a0),%d3	| pos.x, val.9_338
| voxel.c:814: 		fixp player_height = pos.z - terrain_height;
	move.w _pos+4,%d4	| pos.z, _27
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d2,%d0	| val.9_340, tmp619
	lsr.w #7,%d0	|, tmp619
| voxel.c:813: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d0	|, tmp620
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	move.w %d3,%d1	| val.9_338, tmp621
	lsr.w #7,%d1	|, tmp621
| voxel.c:813: 		fixp terrain_height = FIXP(combined[fixp_int(pos.y)][fixp_int(pos.x)].height, 0);
	and.l #65535,%d1	|, tmp622
	moveq #9,%d5	|,
	lsl.l %d5,%d0	|, tmp623
	add.l %d1,%d0	| tmp622, tmp624
	add.l %d0,%d0	| tmp624, tmp625
	move.l %d0,%a0	| tmp625, tmp627
	add.l #_combined+1,%a0	|, tmp627
| voxel.c:814: 		fixp player_height = pos.z - terrain_height;
	clr.w %d0	| combined[_21][_24].D.2699.height
	move.b (%a0),%d0	| combined[_21][_24].D.2699.height, combined[_21][_24].D.2699.height
	lsl.w #7,%d0	|, tmp629
	move.w %d4,%d7	| _27,
	sub.w %d0,%d7	| tmp629,
	move.w %d7,144(%sp)	|, %sfp
| voxel.c:815: 		if (desired_height >= 0) {
	tst.w 138(%sp)	| %sfp
	jge .L350		|
.L465:
| voxel.c:153: 	return ((unsigned short)val) >> FIXP_PRECISION;
	lsr.w #7,%d4	|, _1407
| voxel.c:853: 			state = render16(state, STEPS_MIN, 16, delta_vu, height, y_min, index_mask);
	moveq #0,%d1	|
	move.w %d4,%d1	| _1407,
	move.l %d1,48(%sp)	|, %sfp
| voxel.c:477: 	short ytable_offset = 256 - player_height;
	move.w #256,%a0	|, tmp630
	sub.w %d4,%a0	| _1407, tmp630
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.w %a0,%a0	| tmp630, tmp631
	add.l %a0,%a0	| tmp631, tmp631
	move.l %a0,82(%sp)	| tmp631, %sfp
	move.l #___divsi3,106(%sp)	|, %sfp
| voxel.c:823: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.63_39
	move.w -602(%a0),150(%sp)	| MEM[(short int *)__aline.63_39 + 4294966694B], %sfp
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp650
	clr.w %d2	| tmp650
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_338, tmp652
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp652
	move.l %d2,102(%sp)	| tmp652, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+8,100(%sp)	| pos.diry, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+6,98(%sp)	| pos.dirx, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 98(%sp),%d0	| %sfp, tmp655
	add.w %d0,%d0	|, tmp655
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp657
	clr.w %d0	| tmp657
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 100(%sp),%d1	| %sfp, tmp659
	add.w %d1,%d1	|, tmp659
	neg.w %d1	| tmp660
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d0	| tmp660, tmp657
	move.l %d0,118(%sp)	| tmp657, %sfp
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 100(%sp),%d1	| %sfp,
	ext.l %d1	| _40
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.l %d1,%d2	| _40, tmp663
	neg.l %d2	| tmp663
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	asr.l #3,%d2	|, tmp664
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 98(%sp),%d0	| %sfp, tmp666
	asr.w #3,%d0	|, tmp666
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp668
	clr.w %d0	| tmp668
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d0	| tmp664, tmp669
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp669
	move.l %d0,114(%sp)	| tmp669, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.63_39 + 4294966696B],
	move.l %a0,146(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp670
	add.l %a0,%d0	|, tmp670
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp670
	move.l %d0,110(%sp)	| tmp670, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 150(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp672
	add.l #-160,%d0	|, tmp672
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _55
| voxel.c:870: 			state8 = render(state8, FOG_START, 48, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.b 153(%sp),%d2	| %sfp,
	ext.w %d2	| fog_enabled
	move.w %d2,%a0	| fog_enabled,
	move.l %a0,52(%sp)	|, %sfp
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%a3	| pdata_table[15][7][0], pretmp_1427
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%d2	| %sfp,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,134(%sp)	|, %sfp
	move.l %d0,%d3	| _55,
	lsl.l #4,%d3	|,
	move.l %d3,122(%sp)	|, %sfp
	move.l %d0,%a0	| _55, tmp676
	add.l %d0,%a0	| _55, tmp676
	add.l %a0,%a0	| tmp676, tmp677
	add.l %a0,%d0	| tmp677, tmp678
	lsl.l #5,%d0	|, tmp679
	neg.l %d0	| tmp679
	move.l %d0,66(%sp)	| tmp679, %sfp
	lsl.l #4,%d1	|, _40
	move.l %d1,126(%sp)	| _40, %sfp
	move.w 100(%sp),%d4	| %sfp,
	muls.w #-152,%d4	|,
	move.l %d4,70(%sp)	|, %sfp
	move.w 98(%sp),%d0	| %sfp,
	ext.l %d0	| _43
	lsl.l #4,%d0	|, _43
	move.l %d0,130(%sp)	| _43, %sfp
	move.w 98(%sp),%d5	| %sfp,
	muls.w #-152,%d5	|,
	move.l %d5,74(%sp)	|, %sfp
	move.l #_horizon,%d1	|, ivtmp.769
	moveq #8,%d7	|,
	move.l %d7,56(%sp)	|, %sfp
	lea (178,%sp),%a0	|,,
	move.l %a0,94(%sp)	|, %sfp
	lea (176,%sp),%a0	|,,
	move.l %a0,90(%sp)	|, %sfp
	lea (166,%sp),%a0	|,,
	move.l %a0,86(%sp)	|, %sfp
| voxel.c:872: 			state8 = render(state8, 48, 56, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l %a3,%d6	| pretmp_1427, pretmp_1427
	move.l %d1,%a3	| ivtmp.769, ivtmp.769
	jra .L395		|
.L464:
| voxel.c:970: 	unsigned long t1 = *_hz_200;
	move.l 1210.w,%a0	| MEM[(volatile long unsigned int *)1210B], t1
| voxel.c:971: 	unsigned long millis = (t1 - t0) * 5;
	sub.l 158(%sp),%a0	| %sfp, tmp951
| voxel.c:971: 	unsigned long millis = (t1 - t0) * 5;
	move.l %a0,%d0	| tmp951, tmp953
	add.l %a0,%d0	| tmp951, tmp953
	add.l %d0,%d0	| tmp953, tmp954
| voxel.c:972: 	unsigned long millis_per_frame = millis / frames;
	move.l 140(%sp),-(%sp)	| %sfp,
	pea (%a0,%d0.l)		|
	jsr ___udivsi3		|
| voxel.c:973: 	printf("Rendering took %dms per frame.\n", millis_per_frame);
	addq.l #4,%sp	|,
	move.l %d0,(%sp)	| tmp1017,
	pea .LC11		|
	jsr _printf		|
| voxel.c:974: 	uninstall_interrupts();
	jsr _uninstall_interrupts		|
| voxel.c:975: 	uninstall_joystick_handler();
	jsr _uninstall_joystick_handler		|
	addq.l #8,%sp	|,
.L341:
| voxel.c:978: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:979: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:980: 	install_palette(saved_palette);
	pea 200(%sp)		|
	jsr _install_palette		|
| voxel.c:982: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (184,%sp),%sp	|,
	rts	
.L468:
	eor.b #1,153(%sp)	|, %sfp
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp898
	and.w #8192,%d0	|, _648
| voxel.c:198: 	data &= mask;
	move.l 62(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B], tmp899
	and.l #-536879105,%d3	|, tmp899
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _648
	move.w %d0,%d1	| _648, _648
| voxel.c:198: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222], tmp904
	and.l #-536879105,%d4	|, tmp904
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _648
	swap %d2	| _648
	clr.w %d2	| _648
	move.w %d0,%d2	| _648, _648
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _648, tmp904
	move.l %d4,(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222]
	or.l %d1,%d3	| _648, tmp899
	move.l %d3,4(%a0)	| tmp899, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B]
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp912
	and.b #1,%d0	|, _181
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp915
	ext.w %d0	| tmp914
	neg.w %d0	| tmp916
	lsl.w %d1,%d0	|, _1371
| voxel.c:198: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B], tmp917
	and.l #-536879105,%d3	|, tmp917
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1371
	move.w %d0,%d1	| _1371, _1371
| voxel.c:198: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B], tmp922
	and.l #-536879105,%d4	|, tmp922
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1371
	swap %d2	| _1371
	clr.w %d2	| _1371
	move.w %d0,%d2	| _1371, _1371
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _1371, tmp922
	move.l %d4,640(%a0)	| tmp922, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B]
	or.l %d1,%d3	| _1371, tmp917
	move.l %d3,644(%a0)	| tmp917, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B]
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp930
	and.b #1,%d1	|, _182
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp933
	ext.w %d1	| tmp932
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1559
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp936
	and.b #1,%d0	|, _183
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp939
	ext.w %d0	| tmp938
	neg.w %d0	| tmp940
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1312
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_222 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d4	| _1559, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_222 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:202: 	data &= mask;
	or.w %d1,%d3	| _1559, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_222 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:210: 	data &= mask;
	or.w %d1,%d2	| _1559, data
| voxel.c:964: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 138(%sp),%d1	| %sfp, tmp945
	not.w %d1	| tmp945
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp944
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1374
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1312, data
| voxel.c:198: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1374, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_222 + 320B]
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1312, data
| voxel.c:202: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1374, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_222 + 322B]
| voxel.c:207: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_222 + 324B]
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:210: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1374, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_222 + 326B]
| voxel.c:809: 		frames++;
	move.l 154(%sp),140(%sp)	| %sfp, %sfp
	jra .L470		|
.L467:
| voxel.c:942: 			if (desired_height < FIXP(0, 0)) {
	clr.w 138(%sp)	| %sfp
| voxel.c:953: 		} else if (key == 0x20) {
	cmp.b #32,152(%sp)	|, %sfp
	jne .L404		|
	jra .L468		|
.L466:
| voxel.c:483: 			if (sample_y < y_min) {
	cmp.w %a6,%d0	| sample_y, y_min
	jgt .L358		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d7	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d4	|, tmp728
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d4,%d1	| tmp728, tmp729
	add.w #224,%d1	|, tmp729
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp730
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a1	|,
	move.l (%a1,%d1.l),%d1	| *_1381, _1380
	move.l 44(%sp),%a1	| %sfp, _1593
.L362:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1380, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1380, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a6,%d2	| sample_y, y
	jge .L362		|
.L474:
	move.l %a1,44(%sp)	| _1593, %sfp
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d5,%d3	| _367, tmp736
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d7	| z
	jne .L471		|
.L451:
	move.l 44(%sp),%d4	| %sfp, _1593
.L361:
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+16384,%a0	|, y_table_shifted
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L448		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _633
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _633,
	move.w (%a1),%d7	| *_633, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.675
	move.b %d7,%d1	| sample, SR.675
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.675, tmp741
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_1014)[_635], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L472		|
.L365:
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
.L371:
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _1593, tmp750
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L369		|
	cmp.w %d0,%d2	| y_min, y
	jlt .L448		|
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #524287,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _633
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a1	| _633,
	move.w (%a1),%d7	| *_633, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.675
	move.b %d7,%d1	| sample, SR.675
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.675, tmp741
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_1014)[_635], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L365		|
.L472:
| voxel.c:483: 			if (sample_y < y_min) {
	cmp.w %a1,%d0	| sample_y, y_min
	jgt .L366		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp742
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp742, tmp743
	add.w #224,%d1	|, tmp743
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp744
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|,
	move.l (%a6,%d1.l),%d1	| *_1530, _1532
.L370:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L371		|
.L458:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L370		|
	jra .L371		|
.L358:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d4,%d1	| sample, tmp732
	and.w #-256,%d1	|, tmp732
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	add.w #224,%d1	|, tmp733
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp734
	add.l #_pdata_table,%d1	|, _698
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d2,%d0	| y, y_min
	jgt .L473		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a6	| _698,
	move.l (%a6),%d1	| *_698, _1380
	move.w %d0,%a6	| y_min, sample_y
	clr.w %d7	| z
	move.l 44(%sp),%a1	| %sfp, _1593
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1380, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1380, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a6,%d2	| sample_y, y
	jge .L362		|
	jra .L474		|
.L473:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	move.l 44(%sp),%d4	| %sfp, _1593
	add.l %d5,%d3	| _367, tmp735
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
	jra .L361		|
.L366:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp746
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp746, tmp747
	add.w #224,%d1	|, tmp747
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp748
	add.l #_pdata_table,%d1	|, _643
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L475		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a1	| _643,
	move.l (%a1),%d1	| *_643, _1532
	move.w %d0,%a1	| y_min, sample_y
	clr.w %d5	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1532, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L458		|
	jra .L371		|
.L475:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _1593, tmp749
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
.L369:
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+24576,%a0	|, y_table_shifted
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L448		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-8,%d5	|, z
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _578
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a6	| _578,
	move.w (%a6),%d7	| *_578, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.673
	move.b %d7,%d1	| sample, SR.673
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.673, tmp755
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_870)[_580], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L476		|
.L374:
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
.L380:
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _1593, tmp764
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L378		|
	cmp.w %d0,%d2	| y_min, y
	jlt .L448		|
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _578
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a6	| _578,
	move.w (%a6),%d7	| *_578, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.673
	move.b %d7,%d1	| sample, SR.673
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.673, tmp755
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_870)[_580], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L374		|
.L476:
| voxel.c:483: 			if (sample_y < y_min) {
	cmp.w %a1,%d0	| sample_y, y_min
	jgt .L375		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp756
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp756, tmp757
	add.w #224,%d1	|, tmp757
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp758
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|,
	move.l (%a6,%d1.l),%d1	| *_190, _655
.L379:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L380		|
.L460:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L379		|
	jra .L380		|
.L375:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp760
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp760, tmp761
	add.w #224,%d1	|, tmp761
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp762
	add.l #_pdata_table,%d1	|, _588
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L477		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a1	| _588,
	move.l (%a1),%d1	| *_588, _655
	move.w %d0,%a1	| y_min, sample_y
	clr.w %d5	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _655, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L460		|
	jra .L380		|
.L477:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _1593, tmp763
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
.L378:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d4	| _1593, tmp765
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d4	|, _379
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%a0	| %sfp, y_table_shifted
	add.l #_y_table+32768,%a0	|, y_table_shifted
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L383		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	moveq #-4,%d5	|, z
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _523
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a6	| _523,
	move.w (%a6),%d7	| *_523, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.671
	move.b %d7,%d1	| sample, SR.671
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.671, tmp770
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_434)[_525], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L478		|
.L384:
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
.L389:
| voxel.c:496: 		y_table_shifted++;
	lea (1024,%a0),%a0	|, y_table_shifted
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _379, tmp779
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	tst.w %d5	| z
	jeq .L383		|
	cmp.w %d0,%d2	| y_min, y
	jlt .L383		|
| voxel.c:346: 	asm (
#APP
| 346 "voxel.c" 1
	moveq #0xffffff80, %d7	| tmp
	move.l %d3, %d1	| sample_vu, result
	swap %d1	| result
	and.w %d7, %d1	| tmp, result
	lsl.l #3, %d1	| result
	and.w %d3, %d7	| sample_vu, tmp
	lsr.w #6, %d7	| tmp
	or.w %d7,%d1	| tmp, result
| 0 "" 2
| voxel.c:371: 		unsigned int index = to_offset(sample_vu) & index_mask;
#NO_APP
	and.l #523260,%d1	|, index
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	add.l #_combined,%d1	|, _523
| voxel.c:372: 		sample_t sample = *(volatile sample_t*)((char*)combined + index);
	move.l %d1,%a6	| _523,
	move.w (%a6),%d7	| *_523, sample
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	moveq #0,%d1	| SR.671
	move.b %d7,%d1	| sample, SR.671
| voxel.c:481: 		short sample_y = y_table_shifted[0][sample.height];
	add.l %d1,%d1	| SR.671, tmp770
	move.w (%a0,%d1.l),%a1	| (*y_table_shifted_434)[_525], sample_y
| voxel.c:482: 		if (sample_y <= y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L384		|
.L478:
| voxel.c:483: 			if (sample_y < y_min) {
	cmp.w %a1,%d0	| sample_y, y_min
	jgt .L385		|
| voxel.c:479: 	for(short z = z_begin - z_end; z < 0 && y >= y_min; z++) {
	addq.w #1,%d5	|, z
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp771
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp771, tmp772
	add.w #224,%d1	|, tmp772
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp773
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	lea _pdata_table,%a6	|,
	move.l (%a6,%d1.l),%d1	| *_1561, _1355
.L388:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jlt .L389		|
.L462:
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L388		|
	jra .L389		|
.L385:
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	and.w #-256,%d7	|, tmp775
| voxel.c:384: 	unsigned short offset = (sample.both & 0xff00) + opacity_preshifted + ((y&7) << 2);
	move.w %d7,%d1	| tmp775, tmp776
	add.w #224,%d1	|, tmp776
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	and.l #65535,%d1	|, tmp777
	add.l #_pdata_table,%d1	|, _533
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %d0,%d2	| y_min, y
	jlt .L479		|
| voxel.c:385: 	return *(unsigned int *)((char*)pdata_table + offset);
	move.l %d1,%a1	| _533,
	move.l (%a1),%d1	| *_533, _1355
	move.w %d0,%a1	| y_min, sample_y
	clr.w %d5	| z
| voxel.c:334: 	asm ("movep.l %0, 0(%1)" : : "d" (data), "a" (p));
#APP
| 334 "voxel.c" 1
	movep.l %d1, 0(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:338: 	asm ("movep.l %0, 1(%1)" : : "d" (data), "a" (p));
| 338 "voxel.c" 1
	movep.l %d1, 1(%a2)	| _1355, pBlock
| 0 "" 2
| voxel.c:491: 				pBlock -= 160*LINES_SKIP;
#NO_APP
	lea (-160,%a2),%a2	|, pBlock
	subq.w #1,%d2	|, y
| voxel.c:488: 			while (y >= sample_y) {
	cmp.w %a1,%d2	| sample_y, y
	jge .L462		|
	jra .L389		|
.L479:
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	add.l %d4,%d3	| _379, tmp778
| voxel.c:177: 	return (a + b) & 0xfffefffe;
	and.l #-65538,%d3	|, sample_vu
	jra .L383		|
.L352:
| voxel.c:819: 			pos.z += altitude_delta;
	cmp.w #256,%d0	|, altitude_delta
	jle .L353		|
	move.w #256,%d0	|, altitude_delta
	add.w %d4,%d0	| _27, _37
| voxel.c:820: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	cmp.w #32640,%d0	|, _37
	jle .L480		|
.L354:
| voxel.c:820: 			if (pos.z > FIXP(255, 0)) pos.z = FIXP(255, 0);
	move.w #32640,_pos+4	|, pos.z
	moveq #2,%d4	|,
	move.l %d4,82(%sp)	|, %sfp
	move.l #255,48(%sp)	|, %sfp
| voxel.c:823: 		short mouse_x = GCURX, mouse_y = GCURY;
	move.l ___aline,%a0	| __aline, __aline.63_39
	move.w -602(%a0),150(%sp)	| MEM[(short int *)__aline.63_39 + 4294966694B], %sfp
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d2	| tmp650
	clr.w %d2	| tmp650
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d3,%d2	| val.9_338, tmp652
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d2	|, tmp652
	move.l %d2,102(%sp)	| tmp652, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+8,100(%sp)	| pos.diry, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w _pos+6,98(%sp)	| pos.dirx, %sfp
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 98(%sp),%d0	| %sfp, tmp655
	add.w %d0,%d0	|, tmp655
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp657
	clr.w %d0	| tmp657
| voxel.c:828: 		fixp_2in1 sample_vu_8px_right = make_2in1(2 * pos.dirx, -2 * pos.diry);
	move.w 100(%sp),%d1	| %sfp, tmp659
	add.w %d1,%d1	|, tmp659
	neg.w %d1	| tmp660
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d1,%d0	| tmp660, tmp657
	move.l %d0,118(%sp)	| tmp657, %sfp
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 100(%sp),%d1	| %sfp,
	ext.l %d1	| _40
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.l %d1,%d2	| _40, tmp663
	neg.l %d2	| tmp663
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	asr.l #3,%d2	|, tmp664
| voxel.c:829: 		fixp_2in1 delta_vu_8px_right = make_2in1(pos.dirx >> 3, (-pos.diry) >> 3);
	move.w 98(%sp),%d0	| %sfp, tmp666
	asr.w #3,%d0	|, tmp666
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	swap %d0	| tmp668
	clr.w %d0	| tmp668
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	or.w %d2,%d0	| tmp664, tmp669
| voxel.c:173: 	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
	and.l #-65538,%d0	|, tmp669
	move.l %d0,114(%sp)	| tmp669, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w -600(%a0),%a0	| MEM[(short int *)__aline.63_39 + 4294966696B],
	move.l %a0,146(%sp)	|, %sfp
	moveq #-100,%d0	|, tmp670
	add.l %a0,%d0	|, tmp670
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, tmp670
	move.l %d0,110(%sp)	| tmp670, %sfp
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	move.w 150(%sp),%a0	| %sfp, mouse_x
	move.l %a0,%d0	| mouse_x, tmp672
	add.l #-160,%d0	|, tmp672
| voxel.c:833: 			int y_offset = ((mouse_y - 100) >> 2) - ((mouse_x - 160) >> 2) * (x-160) / 160;
	asr.l #2,%d0	|, _55
| voxel.c:870: 			state8 = render(state8, FOG_START, 48, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.b 153(%sp),%d2	| %sfp,
	ext.w %d2	| fog_enabled
	move.w %d2,%a0	| fog_enabled,
	move.l %a0,52(%sp)	|, %sfp
| voxel.c:550: 	unsigned int movep_data = pdata_table[color][MAX_OPACITY][0];
	move.l _pdata_table+4064,%a3	| pdata_table[15][7][0], pretmp_1427
| voxel.c:478: 	short (*y_table_shifted)[HEIGHT_VALUES] = (short (*)[HEIGHT_VALUES])(y_table[z_begin] + ytable_offset);
	move.l 82(%sp),%d2	| %sfp,
	add.l #_y_table+4096,%d2	|,
	move.l %d2,134(%sp)	|, %sfp
	move.l %d0,%d3	| _55,
	lsl.l #4,%d3	|,
	move.l %d3,122(%sp)	|, %sfp
	move.l %d0,%a0	| _55, tmp676
	add.l %d0,%a0	| _55, tmp676
	add.l %a0,%a0	| tmp676, tmp677
	add.l %a0,%d0	| tmp677, tmp678
	lsl.l #5,%d0	|, tmp679
	neg.l %d0	| tmp679
	move.l %d0,66(%sp)	| tmp679, %sfp
	lsl.l #4,%d1	|, _40
	move.l %d1,126(%sp)	| _40, %sfp
	move.w 100(%sp),%d4	| %sfp,
	muls.w #-152,%d4	|,
	move.l %d4,70(%sp)	|, %sfp
	move.w 98(%sp),%d0	| %sfp,
	ext.l %d0	| _43
	lsl.l #4,%d0	|, _43
	move.l %d0,130(%sp)	| _43, %sfp
	move.w 98(%sp),%d5	| %sfp,
	muls.w #-152,%d5	|,
	move.l %d5,74(%sp)	|, %sfp
	move.l #_horizon,%d1	|, ivtmp.769
	moveq #8,%d7	|,
	move.l %d7,56(%sp)	|, %sfp
	lea (178,%sp),%a0	|,,
	move.l %a0,94(%sp)	|, %sfp
	lea (176,%sp),%a0	|,,
	move.l %a0,90(%sp)	|, %sfp
	lea (166,%sp),%a0	|,,
	move.l %a0,86(%sp)	|, %sfp
| voxel.c:872: 			state8 = render(state8, 48, 56, delta_vu8, height, y_min, index_mask8, fog_enabled);
	move.l %a3,%d6	| pretmp_1427, pretmp_1427
	move.l %d1,%a3	| ivtmp.769, ivtmp.769
	jra .L395		|
.L402:
| voxel.c:946: 		if (key == 0x23) {
	cmp.b #35,152(%sp)	|, %sfp
	jne .L406		|
| voxel.c:948: 			if (desired_height < 0) {
	tst.w 138(%sp)	| %sfp
	jge .L413		|
| voxel.c:949: 				desired_height = player_height;
	move.w 144(%sp),138(%sp)	| %sfp, %sfp
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp898
	and.w #8192,%d0	|, _648
| voxel.c:198: 	data &= mask;
	move.l 62(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B], tmp899
	and.l #-536879105,%d3	|, tmp899
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _648
	move.w %d0,%d1	| _648, _648
| voxel.c:198: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222], tmp904
	and.l #-536879105,%d4	|, tmp904
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _648
	swap %d2	| _648
	clr.w %d2	| _648
	move.w %d0,%d2	| _648, _648
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _648, tmp904
	move.l %d4,(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222]
	or.l %d1,%d3	| _648, tmp899
	move.l %d3,4(%a0)	| tmp899, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B]
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp912
	and.b #1,%d0	|, _181
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp915
	ext.w %d0	| tmp914
	neg.w %d0	| tmp916
	lsl.w %d1,%d0	|, _1371
| voxel.c:198: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B], tmp917
	and.l #-536879105,%d3	|, tmp917
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1371
	move.w %d0,%d1	| _1371, _1371
| voxel.c:198: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B], tmp922
	and.l #-536879105,%d4	|, tmp922
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1371
	swap %d2	| _1371
	clr.w %d2	| _1371
	move.w %d0,%d2	| _1371, _1371
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _1371, tmp922
	move.l %d4,640(%a0)	| tmp922, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B]
	or.l %d1,%d3	| _1371, tmp917
	move.l %d3,644(%a0)	| tmp917, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B]
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp930
	and.b #1,%d1	|, _182
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp933
	ext.w %d1	| tmp932
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1559
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp936
	and.b #1,%d0	|, _183
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp939
	ext.w %d0	| tmp938
	neg.w %d0	| tmp940
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1312
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_222 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d4	| _1559, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_222 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:202: 	data &= mask;
	or.w %d1,%d3	| _1559, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_222 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:210: 	data &= mask;
	or.w %d1,%d2	| _1559, data
| voxel.c:964: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 138(%sp),%d1	| %sfp, tmp945
	not.w %d1	| tmp945
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp944
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1374
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1312, data
| voxel.c:198: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1374, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_222 + 320B]
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1312, data
| voxel.c:202: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1374, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_222 + 322B]
| voxel.c:207: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_222 + 324B]
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:210: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1374, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_222 + 326B]
| voxel.c:809: 		frames++;
	move.l 154(%sp),140(%sp)	| %sfp, %sfp
	jra .L470		|
.L410:
	sub.l %a0,%a0	| _1513
| voxel.c:910: 		compute_and_set_bottom_palette(i, sunlight);
	move.l %a0,-(%sp)	| _1513,
	move.l 144(%sp),-(%sp)	| %sfp,
	jsr _compute_and_set_bottom_palette		|
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+10,%d1	| pos.speed, _121
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	move.w _pos+6,%d0	| pos.dirx, _122
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d0,%d2	| _122,
	muls.w %d1,%d2	| _121, tmp851
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d2	|, tmp852
| voxel.c:912: 		pos.x += fixp_mul(pos.dirx, pos.speed);
	lea _pos,%a0	|,
	add.w %d2,(%a0)	| tmp852, pos.x
| voxel.c:913: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+8,%d2	| pos.diry, _128
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	move.w %d2,%d3	| _128,
	muls.w %d1,%d3	| _121, tmp855
| voxel.c:161: 	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
	asr.l #7,%d3	|, tmp856
| voxel.c:913: 		pos.y += fixp_mul(pos.diry, pos.speed);
	move.w _pos+2,%a0	| pos.y, _133
	add.w %d3,%a0	| tmp856, _133
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	moveq #100,%d3	|, tmp858
	sub.l 154(%sp),%d3	| %sfp, tmp858
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	asr.l #2,%d3	|, tmp859
| voxel.c:915: 		pos.speed += (100 - mouse_y) >> 2;
	add.w %d3,%d1	| tmp859, _139
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d3	| _139, tmp860
	asr.w #3,%d3	|, tmp860
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	move.w %d1,%d4	| _139, tmp861
	asr.w #4,%d4	|, tmp861
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	muls.w %d4,%d3	| tmp861, tmp862
| voxel.c:916: 		fixp drag = (pos.speed >> (FIXP_PRECISION>>1)) * (pos.speed >> ((FIXP_PRECISION+1)>>1)) >> 4;
	asr.l #4,%d3	|, _146
| voxel.c:917: 		if (pos.speed > 0) pos.speed -= drag;
	addq.l #8,%sp	|,
	tst.w %d1	| _139
	jgt .L481		|
.L397:
| voxel.c:918: 		else pos.speed += drag;
	add.w %d3,%d1	| _146, _149
	jra .L398		|
.L413:
| voxel.c:951: 				desired_height = -1;
	move.w #-1,138(%sp)	|, %sfp
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
| voxel.c:960: 		put_pixel(screen, pressed_keys.up ? 15 : 4, 2, 0);
	lsr.w #2,%d0	|, tmp898
	and.w #8192,%d0	|, _648
| voxel.c:198: 	data &= mask;
	move.l 62(%sp),%a0	| %sfp,
	move.l 4(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B], tmp899
	and.l #-536879105,%d3	|, tmp899
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _648
	move.w %d0,%d1	| _648, _648
| voxel.c:198: 	data &= mask;
	move.l (%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222], tmp904
	and.l #-536879105,%d4	|, tmp904
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _648
	swap %d2	| _648
	clr.w %d2	| _648
	move.w %d0,%d2	| _648, _648
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _648, tmp904
	move.l %d4,(%a0)	| tmp904, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222]
	or.l %d1,%d3	| _648, tmp899
	move.l %d3,4(%a0)	| tmp899, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 4B]
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #13,%d1	|,
	lsr.w %d1,%d0	|, tmp912
	and.b #1,%d0	|, _181
| voxel.c:961: 		put_pixel(screen, pressed_keys.down ? 15 : 4, 2, 4);
	sne %d0		| tmp915
	ext.w %d0	| tmp914
	neg.w %d0	| tmp916
	lsl.w %d1,%d0	|, _1371
| voxel.c:198: 	data &= mask;
	move.l 644(%a0),%d3	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B], tmp917
	and.l #-536879105,%d3	|, tmp917
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l #536870912,%d1	|, _1371
	move.w %d0,%d1	| _1371, _1371
| voxel.c:198: 	data &= mask;
	move.l 640(%a0),%d4	| MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B], tmp922
	and.l #-536879105,%d4	|, tmp922
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.l %d0,%d2	|, _1371
	swap %d2	| _1371
	clr.w %d2	| _1371
	move.w %d0,%d2	| _1371, _1371
| voxel.c:200: 	*out++ = data;
	or.l %d2,%d4	| _1371, tmp922
	move.l %d4,640(%a0)	| tmp922, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 640B]
	or.l %d1,%d3	| _1371, tmp917
	move.l %d3,644(%a0)	| tmp917, MEM <vector(2) short unsigned int> [(short unsigned int *)screen_222 + 644B]
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	move.w _pressed_keys,%d1	| pressed_keys, pressed_keys
	moveq #14,%d2	|,
	lsr.w %d2,%d1	|, tmp930
	and.b #1,%d1	|, _182
| voxel.c:962: 		put_pixel(screen, pressed_keys.left ? 15 : 4, 0, 2);
	sne %d1		| tmp933
	ext.w %d1	| tmp932
	moveq #15,%d3	|,
	lsl.w %d3,%d1	|, _1559
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	move.w _pressed_keys,%d0	| pressed_keys, pressed_keys
	moveq #12,%d4	|,
	lsr.w %d4,%d0	|, tmp936
	and.b #1,%d0	|, _183
| voxel.c:963: 		put_pixel(screen, pressed_keys.right ? 15 : 4, 4, 2);
	sne %d0		| tmp939
	ext.w %d0	| tmp938
	neg.w %d0	| tmp940
	moveq #11,%d5	|,
	lsl.w %d5,%d0	|, _1312
| voxel.c:199: 	data |= (color & 1) << (15-x);
	move.w 320(%a0),%d4	| MEM[(short unsigned int *)screen_222 + 320B], data
	and.w #30719,%d4	|, data
| voxel.c:198: 	data &= mask;
	or.w %d1,%d4	| _1559, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	move.w 322(%a0),%d3	| MEM[(short unsigned int *)screen_222 + 322B], data
	and.w #30719,%d3	|, data
| voxel.c:202: 	data &= mask;
	or.w %d1,%d3	| _1559, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	move.w 326(%a0),%d2	| MEM[(short unsigned int *)screen_222 + 326B], data
	and.w #30719,%d2	|, data
| voxel.c:210: 	data &= mask;
	or.w %d1,%d2	| _1559, data
| voxel.c:964: 		put_pixel(screen, desired_height >= 0 ? 15 : 4, 2, 2);
	move.w 138(%sp),%d1	| %sfp, tmp945
	not.w %d1	| tmp945
	moveq #15,%d7	|,
	lsr.w %d7,%d1	|, tmp944
	moveq #13,%d5	|,
	lsl.w %d5,%d1	|, _1374
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d0,%d4	| _1312, data
| voxel.c:198: 	data &= mask;
	and.w #-8193,%d4	|, data
| voxel.c:199: 	data |= (color & 1) << (15-x);
	or.w %d1,%d4	| _1374, data
	move.w %d4,320(%a0)	| data, MEM[(short unsigned int *)screen_222 + 320B]
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d0,%d3	| _1312, data
| voxel.c:202: 	data &= mask;
	and.w #-8193,%d3	|, data
| voxel.c:203: 	data |= ((color & 2) >> 1) << (15-x);
	or.w %d1,%d3	| _1374, data
	move.w %d3,322(%a0)	| data, MEM[(short unsigned int *)screen_222 + 322B]
| voxel.c:207: 	data |= ((color & 4) >> 2) << (15-x);
	or.w #-22528,324(%a0)	|, MEM[(short unsigned int *)screen_222 + 324B]
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d2,%d0	| data, data
| voxel.c:210: 	data &= mask;
	and.w #-8193,%d0	|, data
| voxel.c:211: 	data |= ((color & 8) >> 3) << (15-x);
	or.w %d1,%d0	| _1374, data
	move.w %d0,326(%a0)	| data, MEM[(short unsigned int *)screen_222 + 326B]
| voxel.c:809: 		frames++;
	move.l 154(%sp),140(%sp)	| %sfp, %sfp
	jra .L470		|
.L412:
	move.w 144(%sp),%d0	| %sfp, _1515
	jra .L400		|
.L463:
| voxel.c:770: 		printf("Failed to load voxel data.\n");
	pea .LC7		|
	jsr _puts		|
| voxel.c:771: 		goto error;
	addq.l #4,%sp	|,
| voxel.c:978: 	printf("Press any key to exit to TOS.\n");
	pea .LC12		|
	jsr _puts		|
| voxel.c:979: 	wait_for_key();
	jsr _wait_for_key		|
| voxel.c:980: 	install_palette(saved_palette);
	pea 200(%sp)		|
	jsr _install_palette		|
| voxel.c:982: }
	addq.l #8,%sp	|,
	moveq #0,%d0	|
	movem.l (%sp)+,#31996	|,
	lea (184,%sp),%sp	|,
	rts	
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
	.globl	_opacity_table
_opacity_table:
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
