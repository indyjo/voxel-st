| GNU C17 (MiNT 20230801) version 13.2.0 (m68k-atari-mint)
|	compiled by GNU C version 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2), GMP version 6.2.1, MPFR version 3.1.4, MPC version 1.0.3, isl version none
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed: -mcpu=68000 -O3
	.text
	.even
	.globl	_start
_start:
	movem.l #14384,-(%sp)	|,
	move.l 24(%sp),%a3	| pb, pb
| start.c:9:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 32768;
	move.l 12(%a3),%d3	| pb_12(D)->p_tlen, tmp48
	add.l 20(%a3),%d3	| pb_12(D)->p_dlen, tmp48
| start.c:9:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 32768;
	add.l 28(%a3),%d3	| pb_12(D)->p_blen, _8
| start.c:9:     unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 32768;
	move.l %d3,%d4	| _8, newsize
	add.l #33024,%d4	|, newsize
| start.c:11:     if (0 != Mshrink(pb, newsize)) {
	clr.w %d0	| tmp49
#APP
| 11 "start.c" 1
	movl	%d4,%sp@-	| newsize
	movl	%a3,%sp@-	| pb
	movw	%d0,%sp@-	| tmp49
	movw	#74,%sp@-	|
	trap	#1
	lea	%sp@(12),%sp
| 0 "" 2
| start.c:11:     if (0 != Mshrink(pb, newsize)) {
#NO_APP
	tst.l %d0	| tmp55
	jeq .L2		|
| start.c:12:         Pterm(42);
	moveq #42,%d0	|, tmp51
#APP
| 12 "start.c" 1
	movw	%d0,%sp@-	| tmp51
	movw	#76,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
.L2:
| start.c:15:     char * newsp = (char *)pb + newsize - 128;
	add.l #32896,%d3	|, tmp52
| start.c:15:     char * newsp = (char *)pb + newsize - 128;
	add.l %d3,%a3	| tmp52, newsp
| start.c:16: 	__asm__ __volatile__(
#APP
| 16 "start.c" 1
		movel    %a3,%sp	| newsp

| 0 "" 2
| start.c:23: 	Pterm(mymain(0, 0));
#NO_APP
	clr.l -(%sp)	|
	clr.l -(%sp)	|
	jsr _mymain		|
#APP
| 23 "start.c" 1
	movw	%d0,%sp@-	| tmp56
	movw	#76,%sp@-	|
	trap	#1
	addql	#4,%sp
| 0 "" 2
#NO_APP
