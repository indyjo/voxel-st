#NO_APP
	.text
	.even
	.globl	_get_color
_get_color:
	move.l _hw_palette,%a0
	move.w (%a0),%d0
	rts
	.even
	.globl	_set_color
_set_color:
	rts
	.even
	.globl	_draw_image2
_draw_image2:
	lea (-28,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 76(%sp),%d0
	add.l #160,%d0
	move.l %d0,60(%sp)
	move.l 80(%sp),64(%sp)
	move.l 76(%sp),%d1
	add.l #32160,%d1
	move.l %d1,68(%sp)
.L6:
	move.l 60(%sp),%a4
	lea (-160,%a4),%a4
	move.l 64(%sp),%a6
.L7:
	move.b (%a6),%d0
	move.w %d0,%a2
	move.b 1(%a6),%d1
	move.w %d1,%a1
	move.b 2(%a6),%d0
	move.w %d0,%a0
	move.b 3(%a6),%d7
	move.b 4(%a6),%d6
	move.b 5(%a6),%d5
	move.b 6(%a6),%d4
	move.b 7(%a6),%d3
	move.b 8(%a6),%d2
	move.b 9(%a6),49(%sp)
	move.b 10(%a6),47(%sp)
	move.b 11(%a6),53(%sp)
	move.b 12(%a6),55(%sp)
	move.b 13(%a6),57(%sp)
	move.b 14(%a6),59(%sp)
	move.b 15(%a6),51(%sp)
	move.w %a2,%d1
	lsl.w #1,%d1
	and.w #2,%d1
	move.w %a1,%d0
	and.w #1,%d0
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.w %a0,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.w %d7,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.w %d6,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.w %d5,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.w %d4,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.w %d3,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.w %d2,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.b 49(%sp),%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 47(%sp),%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.b 53(%sp),%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 55(%sp),%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.b 57(%sp),%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 59(%sp),%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a3
	add.w %d1,%a3
	move.b 51(%sp),%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,(%a4)
	move.w %a2,%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	lsl.w #1,%d0
	and.w #2,%d0
	move.w %d0,%a3
	move.w %a1,%d1
	lsr.b #1,%d1
	move.w %d1,%a5
	move.w %a5,%d0
	and.w #1,%d0
	move.w %a3,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.w %a0,%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d7,%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d6,%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d5,%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d4,%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d3,%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d2,%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 49(%sp),%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b 47(%sp),%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 53(%sp),%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b 55(%sp),%d0
	lsr.b #1,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 57(%sp),%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a3
	add.w %d0,%a3
	move.b 59(%sp),%d0
	lsr.b #1,%d0
	move.w %d0,%a5
	move.w %a5,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 51(%sp),%d1
	lsr.b #1,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,2(%a4)
	move.w %a2,%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	lsl.w #1,%d1
	and.w #2,%d1
	move.w %d1,%a3
	move.w %a1,%d0
	lsr.b #2,%d0
	move.w %d0,%a5
	move.w %a5,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.w %a0,%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d7,%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d6,%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d5,%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d4,%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b %d3,%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b %d2,%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b 49(%sp),%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 47(%sp),%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a5
	add.w %d0,%a5
	move.b 53(%sp),%d0
	lsr.b #2,%d0
	move.w %d0,%a3
	move.w %a3,%d1
	and.w #1,%d1
	move.w %a5,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 55(%sp),%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a3
	add.w %d0,%a3
	move.b 57(%sp),%d0
	lsr.b #2,%d0
	move.w %d0,%a5
	move.w %a5,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,%a5
	add.w %d1,%a5
	move.b 59(%sp),%d1
	lsr.b #2,%d1
	move.w %d1,%a3
	move.w %a3,%d0
	and.w #1,%d0
	move.w %a5,%d1
	or.w %d1,%d0
	move.w %d0,%a3
	add.w %d0,%a3
	move.b 51(%sp),%d0
	lsr.b #2,%d0
	move.w %d0,%a5
	move.w %a5,%d1
	and.w #1,%d1
	move.w %a3,%d0
	or.w %d0,%d1
	move.w %d1,4(%a4)
	addq.l #8,%a4
	move.w %a2,%d1
	lsr.b #3,%d1
	move.w %d1,%a2
	move.w %a2,%d0
	lsl.w #1,%d0
	and.w #2,%d0
	move.w %d0,%a2
	move.w %a1,%d1
	lsr.b #3,%d1
	move.w %d1,%a1
	move.w %a1,%d0
	and.w #1,%d0
	move.w %a2,%d1
	or.w %d1,%d0
	move.w %d0,%a1
	add.w %d0,%a1
	move.w %a0,%d0
	lsr.b #3,%d0
	move.w %d0,%a0
	move.w %a0,%d1
	and.w #1,%d1
	move.w %a1,%d0
	or.w %d0,%d1
	move.w %d1,%a0
	add.w %d1,%a0
	lsr.b #3,%d7
	and.w #1,%d7
	move.w %a0,%d1
	or.w %d1,%d7
	add.w %d7,%d7
	lsr.b #3,%d6
	and.w #1,%d6
	or.w %d7,%d6
	add.w %d6,%d6
	lsr.b #3,%d5
	and.w #1,%d5
	or.w %d6,%d5
	add.w %d5,%d5
	lsr.b #3,%d4
	and.w #1,%d4
	or.w %d5,%d4
	add.w %d4,%d4
	lsr.b #3,%d3
	and.w #1,%d3
	or.w %d4,%d3
	add.w %d3,%d3
	lsr.b #3,%d2
	and.w #1,%d2
	or.w %d3,%d2
	add.w %d2,%d2
	move.b 49(%sp),%d1
	lsr.b #3,%d1
	and.w #1,%d1
	or.w %d2,%d1
	add.w %d1,%d1
	move.b 47(%sp),%d0
	lsr.b #3,%d0
	and.w #1,%d0
	or.w %d0,%d1
	add.w %d1,%d1
	move.b 53(%sp),%d0
	lsr.b #3,%d0
	and.w #1,%d0
	or.w %d0,%d1
	add.w %d1,%d1
	move.b 55(%sp),%d0
	lsr.b #3,%d0
	and.w #1,%d0
	or.w %d0,%d1
	add.w %d1,%d1
	move.b 57(%sp),%d0
	lsr.b #3,%d0
	and.w #1,%d0
	or.w %d0,%d1
	add.w %d1,%d1
	move.b 59(%sp),%d0
	lsr.b #3,%d0
	and.w #1,%d0
	or.w %d1,%d0
	add.w %d0,%d0
	move.b 51(%sp),%d1
	lsr.b #3,%d1
	and.w #1,%d1
	or.w %d0,%d1
	move.w %d1,-2(%a4)
	lea (16,%a6),%a6
	cmp.l 60(%sp),%a4
	jne .L7
	lea (160,%a4),%a4
	move.l %a4,60(%sp)
	add.l #512,64(%sp)
	move.l 68(%sp),%d0
	cmp.l %d0,%a4
	jne .L6
	movem.l (%sp)+,#31996
	lea (28,%sp),%sp
	rts
	.even
	.globl	_clear_screen
_clear_screen:
	move.l 4(%sp),%a0
	move.l %a0,%d0
	add.l #32000,%d0
.L13:
	clr.l (%a0)+
	cmp.l %d0,%a0
	jne .L13
	rts
	.even
	.globl	_fixp_int
_fixp_int:
	move.l 4(%sp),%d0
	lsr.w #7,%d0
	rts
	.even
	.globl	_fixp_uint
_fixp_uint:
	move.l 4(%sp),%d0
	lsr.w #7,%d0
	rts
	.even
	.globl	_fixp_mul
_fixp_mul:
	move.w 6(%sp),%d0
	muls.w 10(%sp),%d0
	asr.l #7,%d0
	rts
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
	lea (-276,%sp),%sp
	movem.l #16190,-(%sp)
	move.l #_y_table+2,%d3
	move.w #-7000,%a3
	lea ___divsi3,%a4
.L24:
	move.l %d3,%a2
	move.w #128,%d2
.L25:
	move.w %d2,%d0
	lsr.w #7,%d0
	move.l %d0,%d1
	and.l #511,%d1
	move.l %d1,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	moveq #100,%d1
	sub.w %d0,%d1
	move.w %d1,(%a2)+
	add.w #128,%d2
	cmp.w #16384,%d2
	jne .L25
	add.l #256,%d3
	lea (70,%a3),%a3
	cmp.w #10920,%a3
	jne .L24
	move.l #_height,%d4
	move.l #_combined,%d3
	move.l #_colors+512,%d2
.L26:
	move.l %d2,%a0
	lea (-512,%a0),%a0
	move.l %d3,%a2
	move.l %d4,%a1
.L27:
	clr.w %d0
	move.b (%a0)+,%d0
	lsl.w #8,%d0
	clr.w %d1
	move.b (%a1)+,%d1
	or.w %d1,%d0
	move.w %d0,(%a2)+
	cmp.l %d2,%a0
	jne .L27
	add.l #512,%d4
	add.l #1024,%d3
	add.l #512,%d2
	cmp.l #_colors+262656,%d2
	jne .L26
	lea (64,%sp),%a3
	pea 256.w
	pea .LC0
	move.l %a3,-(%sp)
	jsr _memcpy
	move.l #_pdata_table,72(%sp)
	lea (12,%sp),%sp
	clr.l 56(%sp)
.L29:
	move.l (%a3),%a6
	move.l 4(%a3),%a5
	move.l 8(%a3),%a4
	move.l 12(%a3),%d7
	move.l 16(%a3),%d6
	move.l 20(%a3),44(%sp)
	move.l 24(%a3),48(%sp)
	move.l 28(%a3),52(%sp)
	move.l 60(%sp),%a2
	move.w #8,%a1
.L44:
	cmp.l %a1,%a6
	slt %d2
	ext.w %d2
	ext.l %d2
	neg.l %d2
	cmp.l %a1,%a5
	jge .L36
	moveq #2,%d1
	or.l %d1,%d2
.L36:
	cmp.l %a1,%a4
	jge .L37
	moveq #4,%d0
	or.l %d0,%d2
.L37:
	cmp.l %a1,%d7
	jge .L38
	moveq #8,%d1
	or.l %d1,%d2
.L38:
	cmp.l %a1,%d6
	jge .L39
	moveq #16,%d0
	or.l %d0,%d2
.L39:
	cmp.l 44(%sp),%a1
	jle .L40
	moveq #32,%d1
	or.l %d1,%d2
.L40:
	cmp.l 48(%sp),%a1
	jle .L41
	moveq #64,%d0
	or.l %d0,%d2
.L41:
	cmp.l 52(%sp),%a1
	jle .L42
	moveq #127,%d1
	not.b %d1
	or.l %d1,%d2
.L42:
	move.l %d2,%d5
	lsl.w #8,%d5
	swap %d5
	clr.w %d5
	move.l %d2,%d4
	swap %d4
	clr.w %d4
	move.l %d2,%d3
	lsl.l #8,%d3
	move.l %a2,%a0
	moveq #0,%d0
.L34:
	btst #0,%d0
	jeq .L45
	move.l %d5,%d1
.L30:
	btst #1,%d0
	jeq .L31
	or.l %d4,%d1
.L31:
	btst #2,%d0
	jeq .L32
	or.l %d3,%d1
.L32:
	btst #3,%d0
	jeq .L33
	or.l %d2,%d1
.L33:
	move.l %d1,(%a0)+
	addq.l #1,%d0
	moveq #16,%d1
	cmp.l %d0,%d1
	jne .L34
	addq.l #8,%a1
	lea (64,%a2),%a2
	moveq #72,%d0
	cmp.l %a1,%d0
	jne .L44
	lea (32,%a3),%a3
	addq.l #8,56(%sp)
	add.l #512,60(%sp)
	moveq #64,%d0
	cmp.l 56(%sp),%d0
	jne .L29
	moveq #-1,%d1
	move.l %d1,_horizon
	move.l %d1,_horizon+4
	move.l %d1,_horizon+8
	move.l %d1,_horizon+12
	move.l %d1,_horizon+16
	move.l %d1,_horizon+20
	move.l %d1,_horizon+24
	move.l %d1,_horizon+28
	move.l %d1,_horizon+32
	move.l %d1,_horizon+36
	move.l %d1,_horizon+40
	move.l %d1,_horizon+44
	move.l %d1,_horizon+48
	move.l %d1,_horizon+52
	move.l %d1,_horizon+56
	move.l %d1,_horizon+60
	movem.l (%sp)+,#31996
	lea (276,%sp),%sp
	rts
.L45:
	moveq #0,%d1
	jra .L30
	.even
	.globl	_render
_render:
	lea (-12,%sp),%sp
	movem.l #16190,-(%sp)
	move.l 68(%sp),%a6
	move.w 74(%sp),52(%sp)
	cmp.w #319,52(%sp)
	jhi .L61
	move.w 78(%sp),54(%sp)
	lea _y_table,%a5
.L77:
	move.l 60(%sp),%a0
	move.w 6(%a0),%d3
	moveq #0,%d4
	move.w 52(%sp),%d4
	move.l %d4,%d5
	add.l #-160,%d5
	move.w 8(%a0),%d2
	move.l %d5,-(%sp)
	move.w %d2,%a1
	move.l %a1,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	pea -320.w
	move.l %d0,-(%sp)
	jsr ___divsi3
	addq.l #8,%sp
	move.w %d3,%d6
	add.w %d0,%d6
	move.l %d5,-(%sp)
	move.w %d3,%a3
	move.l %a3,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	pea 320.w
	move.l %d0,-(%sp)
	jsr ___divsi3
	addq.l #8,%sp
	add.w %d2,%d0
	move.w %d6,%d2
	lsl.w #4,%d2
	sub.w %d6,%d2
	move.l 60(%sp),%a0
	add.w (%a0),%d2
	move.w %d0,%d1
	lsl.w #4,%d1
	sub.w %d0,%d1
	add.w 2(%a0),%d1
	move.w 52(%sp),%d3
	lsr.w #4,%d3
	and.l #65535,%d3
	move.l %d3,%a0
	add.l %d3,%a0
	add.l %a0,%a0
	lea (15920,%a0),%a0
	add.l %a0,%a0
	move.w 52(%sp),%d3
	lsr.l #3,%d3
	moveq #1,%d5
	and.l %d3,%d5
	lea (%a0,%d5.l),%a2
	add.l 64(%sp),%a2
	move.w #199,%d5
	clr.w 44(%sp)
	clr.w %d3
	moveq #15,%d7
	move.w #200,%a1
	add.l %d4,%d4
	move.l %d4,46(%sp)
	move.l %d7,%a0
	cmp.l #128,%d7
	jge .L64
.L99:
	cmp.w %a1,%d5
	jge .L76
.L65:
	move.w %d1,%d4
	lsr.w #7,%d4
	and.l #65535,%d4
	moveq #10,%d3
	lsl.l %d3,%d4
	move.w %d2,%d3
	lsr.w #7,%d3
	and.l #65535,%d3
	add.l %d3,%d3
	lea (%a6,%d3.l),%a1
	move.w (%a1,%d4.l),%d3
	moveq #0,%d4
	move.b %d3,%d4
	lsl.l #7,%d4
	lea (%a0,%d4.l),%a1
	add.l %a1,%a1
	move.w (%a5,%a1.l),%a1
	addq.l #1,%a0
	add.w %d6,%d2
	add.w %d0,%d1
	cmp.w #128,%a0
	jeq .L64
	cmp.w %a1,%d5
	jlt .L65
	lsr.w #8,%d3
.L76:
	tst.w %d3
	jeq .L79
	moveq #0,%d4
	move.w %d3,%d4
	move.l %d4,%a3
	moveq #63,%d4
	cmp.l %a0,%d4
	jge .L80
	lea (-64,%a0),%a4
	cmp.w #0,%a4
	jlt .L97
	move.l %a4,%d4
	asr.l #3,%d4
	move.w #7,%a4
	sub.l %d4,%a4
.L69:
	moveq #7,%d4
	and.l %d5,%d4
	lsl.l #3,%d4
	add.l %a4,%d4
	lsl.l #4,%d4
	add.l %a3,%d4
	add.l %d4,%d4
	add.l %d4,%d4
	lea _pdata_table,%a3
	move.l (%a3,%d4.l),%d4
#APP
| 313 "voxel.c" 1
	movep.l %d4, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d5,.L71
.L72:
	move.w 44(%sp),%d1
	subq.w #1,%d1
	lea _horizon,%a3
	move.l 46(%sp),%d0
	move.w %d1,(%a3,%d0.l)
	move.w 54(%sp),%d2
	add.w %d2,52(%sp)
	cmp.w #319,52(%sp)
	jls .L77
.L61:
	movem.l (%sp)+,#31996
	lea (12,%sp),%sp
	rts
.L71:
	cmp.l #128,%d7
	jge .L98
	move.l %a0,%d7
	move.l %d7,%a0
	cmp.l #128,%d7
	jlt .L99
.L64:
	cmp.w 44(%sp),%d5
	jle .L67
	move.w %d5,44(%sp)
.L67:
	lea _horizon,%a3
	move.l 46(%sp),%d3
	cmp.w (%a3,%d3.l),%d5
	jle .L72
	sub.l %a3,%a3
	clr.w %d3
	move.w #7,%a4
	moveq #7,%d4
	and.l %d5,%d4
	lsl.l #3,%d4
	add.l %a4,%d4
	lsl.l #4,%d4
	add.l %a3,%d4
	add.l %d4,%d4
	add.l %d4,%d4
	lea _pdata_table,%a3
	move.l (%a3,%d4.l),%d4
#APP
| 313 "voxel.c" 1
	movep.l %d4, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d5,.L71
	jra .L72
.L97:
	lea (-57,%a0),%a4
	move.l %a4,%d4
	asr.l #3,%d4
	move.w #7,%a4
	sub.l %d4,%a4
	jra .L69
.L79:
	sub.l %a3,%a3
	move.w #7,%a4
	moveq #7,%d4
	and.l %d5,%d4
	lsl.l #3,%d4
	add.l %a4,%d4
	lsl.l #4,%d4
	add.l %a3,%d4
	add.l %d4,%d4
	add.l %d4,%d4
	lea _pdata_table,%a3
	move.l (%a3,%d4.l),%d4
#APP
| 313 "voxel.c" 1
	movep.l %d4, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d5,.L71
	jra .L72
.L80:
	move.w #7,%a4
	moveq #7,%d4
	and.l %d5,%d4
	lsl.l #3,%d4
	add.l %a4,%d4
	lsl.l #4,%d4
	add.l %a3,%d4
	add.l %d4,%d4
	add.l %d4,%d4
	lea _pdata_table,%a3
	move.l (%a3,%d4.l),%d4
#APP
| 313 "voxel.c" 1
	movep.l %d4, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d5,.L71
	jra .L72
.L98:
	lea _horizon,%a0
	move.l 46(%sp),%a1
	move.w (%a0,%a1.l),%d1
	move.w 44(%sp),%a0
.L74:
	cmp.w %a0,%d5
	jle .L73
	move.w %d5,%a0
.L73:
	cmp.w %d1,%d5
	jle .L93
	moveq #7,%d0
	and.l %d5,%d0
	moveq #9,%d2
	lsl.l %d2,%d0
	add.l #_pdata_table+448,%d0
	move.l %d0,%a1
	move.l (%a1),%d0
#APP
| 313 "voxel.c" 1
	movep.l %d0, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d5,.L74
.L93:
	move.w %a0,44(%sp)
	move.w 44(%sp),%d1
	subq.w #1,%d1
	lea _horizon,%a3
	move.l 46(%sp),%d0
	move.w %d1,(%a3,%d0.l)
	move.w 54(%sp),%d2
	add.w %d2,52(%sp)
	cmp.w #319,52(%sp)
	jls .L77
	jra .L61
.LC1:
	.ascii "Tables computed.\0"
	.even
	.globl	_main
_main:
	lea (-40,%sp),%sp
	movem.l #16190,-(%sp)
	jsr ___main
	moveq #0,%d0
#APP
| 332 "voxel.c" 1
	movl	%d0,%sp@-
	movw	#32,%sp@-
	trap	#1
	addql	#6,%sp
| 0 "" 2
#NO_APP
	jsr _build_tables
	pea .LC1
	jsr _puts
	jsr _set_palette
#APP
| 336 "voxel.c" 1
	movw	#2,%sp@-
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	pea _colors
	move.l %d0,-(%sp)
	jsr _draw_image2
#APP
| 337 "voxel.c" 1
	movw	#2,%sp@-
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,%a0
	add.l #32000,%d0
	lea (12,%sp),%sp
.L101:
	clr.l (%a0)+
	cmp.l %d0,%a0
	jne .L101
	clr.l 80(%sp)
.L117:
	moveq #8,%d3
	and.l 80(%sp),%d3
	move.l %d3,%d4
	addq.l #4,%d4
#APP
| 341 "voxel.c" 1
	movw	#2,%sp@-
	trap	#14
	addql	#2,%sp
| 0 "" 2
#NO_APP
	move.l %d0,68(%sp)
	move.w %d4,50(%sp)
	move.w _pos+6,60(%sp)
	move.w _pos+8,62(%sp)
	lea _pos,%a0
	move.w (%a0),64(%sp)
	move.w _pos+2,66(%sp)
	move.w 62(%sp),%d0
	ext.l %d0
	move.l %d0,%d1
	lsl.l #4,%d1
	move.l %d1,76(%sp)
	add.l #-156,%d3
	move.l %d3,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	move.l %d0,56(%sp)
	move.w 60(%sp),%d0
	ext.l %d0
	move.l %d0,%d2
	lsl.l #4,%d2
	move.l %d2,72(%sp)
	move.l %d3,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	move.l %d0,52(%sp)
	add.l %d4,%d4
	move.l %d4,%a5
	add.l #_horizon,%a5
.L116:
	pea -320.w
	move.l 60(%sp),-(%sp)
	jsr ___divsi3
	addq.l #8,%sp
	move.w 60(%sp),%a6
	add.w %d0,%a6
	pea 320.w
	move.l 56(%sp),-(%sp)
	jsr ___divsi3
	addq.l #8,%sp
	move.w 62(%sp),%d3
	add.w %d0,%d3
	move.w %d3,46(%sp)
	move.w %a6,%d5
	lsl.w #4,%d5
	sub.w %a6,%d5
	add.w 64(%sp),%d5
	move.w %d3,%d4
	lsl.w #4,%d4
	sub.w %d3,%d4
	add.w 66(%sp),%d4
	move.w 50(%sp),%d0
	lsr.w #4,%d0
	and.l #65535,%d0
	add.l %d0,%d0
	add.l %d0,%d0
	add.l #15920,%d0
	add.l %d0,%d0
	move.w 50(%sp),%d1
	lsr.l #3,%d1
	moveq #1,%d2
	and.l %d2,%d1
	add.l %d0,%d1
	move.l 68(%sp),%a2
	add.l %d1,%a2
	clr.w %d3
	move.w #15,%a1
	move.w #200,%a3
	clr.w %d0
	move.w #199,%d2
	move.l %a1,%a0
	cmp.w #128,%a1
	jge .L103
.L142:
	cmp.w %a3,%d2
	jge .L115
.L104:
	move.w %d4,%d3
	lsr.w #7,%d3
	and.l #65535,%d3
	moveq #10,%d1
	lsl.l %d1,%d3
	move.w %d5,%d1
	lsr.w #7,%d1
	and.l #65535,%d1
	add.l %d1,%d1
	lea _combined,%a3
	add.l %d1,%a3
	move.w (%a3,%d3.l),%d3
	moveq #0,%d1
	move.b %d3,%d1
	lsl.l #7,%d1
	add.l %a0,%d1
	add.l %d1,%d1
	lea _y_table,%a4
	move.w (%a4,%d1.l),%a3
	addq.l #1,%a0
	add.w %a6,%d5
	add.w 46(%sp),%d4
	cmp.w #128,%a0
	jeq .L103
	cmp.w %a3,%d2
	jlt .L104
	lsr.w #8,%d3
.L115:
	moveq #0,%d6
	tst.w %d3
	jeq .L121
	move.w %d3,%d6
	moveq #63,%d1
	cmp.l %a0,%d1
	jge .L121
	moveq #-64,%d1
	add.l %a0,%d1
	jmi .L140
	asr.l #3,%d1
	moveq #7,%d7
	sub.l %d1,%d7
.L108:
	moveq #7,%d1
	and.l %d2,%d1
	lsl.l #3,%d1
	add.l %d7,%d1
	lsl.l #4,%d1
	add.l %d6,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	lea _pdata_table,%a4
	move.l (%a4,%d1.l),%d1
#APP
| 313 "voxel.c" 1
	movep.l %d1, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d2,.L110
.L111:
	subq.w #1,%d0
	move.w %d0,(%a5)
	add.w #16,50(%sp)
	move.l 76(%sp),%d1
	add.l %d1,56(%sp)
	move.l 72(%sp),%d2
	add.l %d2,52(%sp)
	lea (32,%a5),%a5
	cmp.w #319,50(%sp)
	jls .L116
.L143:
	move.w 60(%sp),%d0
	add.w 64(%sp),%d0
	swap %d0
	clr.w %d0
	move.w 62(%sp),%d1
	add.w 66(%sp),%d1
	move.w %d1,%d0
	lea _pos,%a0
	move.l %d0,(%a0)
	addq.l #8,80(%sp)
	cmp.l #6400,80(%sp)
	jne .L117
	move.l _stdin,%a0
	move.l 4(%a0),%d0
	cmp.l 8(%a0),%d0
	jcc .L118
	addq.l #1,%d0
	move.l %d0,4(%a0)
	moveq #0,%d0
	movem.l (%sp)+,#31996
	lea (40,%sp),%sp
	rts
.L110:
	cmp.w #128,%a1
	jge .L141
	move.l %a0,%a1
	move.l %a1,%a0
	cmp.w #128,%a1
	jlt .L142
.L103:
	cmp.w %d0,%d2
	jle .L106
	move.w %d2,%d0
.L106:
	cmp.w (%a5),%d2
	jle .L111
	moveq #0,%d6
	clr.w %d3
	moveq #7,%d7
	moveq #7,%d1
	and.l %d2,%d1
	lsl.l #3,%d1
	add.l %d7,%d1
	lsl.l #4,%d1
	add.l %d6,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	lea _pdata_table,%a4
	move.l (%a4,%d1.l),%d1
#APP
| 313 "voxel.c" 1
	movep.l %d1, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d2,.L110
	jra .L111
.L140:
	moveq #-57,%d1
	add.l %a0,%d1
	asr.l #3,%d1
	moveq #7,%d7
	sub.l %d1,%d7
	jra .L108
.L121:
	moveq #7,%d7
	moveq #7,%d1
	and.l %d2,%d1
	lsl.l #3,%d1
	add.l %d7,%d1
	lsl.l #4,%d1
	add.l %d6,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	lea _pdata_table,%a4
	move.l (%a4,%d1.l),%d1
#APP
| 313 "voxel.c" 1
	movep.l %d1, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d2,.L110
	jra .L111
.L141:
	move.w (%a5),%a0
.L113:
	cmp.w %d0,%d2
	jle .L112
	move.w %d2,%d0
.L112:
	cmp.w %a0,%d2
	jle .L111
	moveq #7,%d1
	and.l %d2,%d1
	moveq #9,%d3
	lsl.l %d3,%d1
	add.l #_pdata_table+448,%d1
	move.l %d1,%a1
	move.l (%a1),%d1
#APP
| 313 "voxel.c" 1
	movep.l %d1, 0(%a2)
| 0 "" 2
#NO_APP
	lea (-160,%a2),%a2
	dbra %d2,.L113
	subq.w #1,%d0
	move.w %d0,(%a5)
	add.w #16,50(%sp)
	move.l 76(%sp),%d1
	add.l %d1,56(%sp)
	move.l 72(%sp),%d2
	add.l %d2,52(%sp)
	lea (32,%a5),%a5
	cmp.w #319,50(%sp)
	jls .L116
	jra .L143
.L118:
	move.l %a0,-(%sp)
	jsr ___fillbf
	addq.l #4,%sp
	moveq #0,%d0
	movem.l (%sp)+,#31996
	lea (40,%sp),%sp
	rts
	.globl	_pos
	.data
	.even
_pos:
	.word	-7168
	.word	-5632
	.word	12800
	.word	-118
	.word	49
	.globl	_hw_palette
	.even
_hw_palette:
	.long	16745024
	.globl	_horizon
	.bss
	.even
_horizon:
	.skip 640
	.globl	_pdata_table
	.even
_pdata_table:
	.skip 4096
	.globl	_y_table
	.even
_y_table:
	.skip 65536
	.globl	_combined
	.even
_combined:
	.skip 524288
