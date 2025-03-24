| GNU C17 (MiNT 20240809) version 14.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
#APP
	move.l 4(%sp), _pb
	
#NO_APP
	.even
	.globl	_start
_start:
	movem.l %d2-%d4/%a2-%a3,-(%sp)	|
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	move.l _pb,%a3	| pb, pb.0_1
	move.l 12(%a3),%d3	| pb.0_1->p_tlen, _2
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	move.l 20(%a3),%d1	| pb.0_1->p_dlen, _4
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	move.l 28(%a3),%d0	| pb.0_1->p_blen, _7
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	add.l %d1,%d3	| _4, _6
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	add.l %d0,%d3	| _7, _9
| start.c:15:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 16384;
	move.l %d3,%d4	| _9, newsize_14
	add.l #16640,%d4	|, newsize_14
| start.c:17:     if (0 != Mshrink(pb, newsize)) {
	clr.w %d0	| tmp50
#APP
| 17 "start.c" 1
	movl	%d4,%sp@-	| newsize_14
	movl	%a3,%sp@-	| pb.0_1
	movw	%d0,%sp@-	| tmp50
	movw	#74,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
| start.c:17:     if (0 != Mshrink(pb, newsize)) {
#NO_APP
	tst.l %d0	| tmp56
	jeq .L2		|
| start.c:18:         Pterm(42);
	moveq #42,%d0	|, tmp52
#APP
| 18 "start.c" 1
	movw	%d0,%sp@-	| tmp52
	movw	#76,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L2:
| start.c:21:     char * newsp = (char *)pb + newsize - 128;
	add.l #16512,%d3	|, _11
| start.c:21:     char * newsp = (char *)pb + newsize - 128;
	add.l _pb,%d3	| pb, newsp_19
| start.c:22: 	__asm__ __volatile__(
#APP
| 22 "start.c" 1
		movel    %d3,%sp	| newsp_19

| 0 "" 2
| start.c:29: 	Pterm(mymain(0, 0));
#NO_APP
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _mymain		|
#APP
| 29 "start.c" 1
	movw	%d0,%sp@-	| tmp57
	movw	#76,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
	.globl	_pb
	.bss
	.even
_pb:
	.skip 4
