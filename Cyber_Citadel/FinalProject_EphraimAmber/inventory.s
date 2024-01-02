	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"inventory.c"
	.text
	.global	__aeabi_idivmod
	.align	2
	.global	updateCurrency
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCurrency, %function
updateCurrency:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L5
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	ldr	r1, [r4, #36]
	bne	.L2
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L5+4
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L2:
	ldr	r3, [r4]
	ldrb	r2, [r4, #52]	@ zero_extendqisi2
	ldr	r0, .L5+8
	ldr	ip, .L5+12
	lsl	r3, r3, #23
	ldrb	lr, [r4, #4]	@ zero_extendqisi2
	add	r1, r1, #160
	lsr	r3, r3, #23
	and	r1, r0, r1, lsl #1
	orr	r3, r3, #16384
	add	r0, ip, r2, lsl #3
	lsl	r2, r2, #3
	strh	lr, [ip, r2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	coin
	.word	__aeabi_idivmod
	.word	1022
	.word	shadowOAM
	.size	updateCurrency, .-updateCurrency
	.align	2
	.global	updateWeapon
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWeapon, %function
updateWeapon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L30
	ldr	r2, [r3, #60]
	ldr	r1, .L30+4
	cmp	r2, #0
	str	lr, [sp, #-4]!
	ldr	r2, [r1, #116]
	beq	.L8
	ldr	r0, [r3, #52]
	cmp	r2, r0
	ldrne	lr, .L30+8
	ldr	r0, .L30+12
	ldrne	ip, .L30+16
	ldreq	lr, .L30+20
	ldreq	ip, .L30+24
	str	lr, [r0, #296]
	str	ip, [r0, #360]
.L8:
	ldr	r0, [r3, #92]
	cmp	r0, #0
	beq	.L10
	ldr	r0, [r3, #84]
	cmp	r2, r0
	ldrne	lr, .L30+28
	ldr	r0, .L30+12
	ldrne	ip, .L30+32
	ldreq	lr, .L30+36
	ldreq	ip, .L30+40
	str	lr, [r0, #300]
	str	ip, [r0, #364]
.L10:
	ldr	r0, [r3, #124]
	cmp	r0, #0
	beq	.L12
	ldr	r3, [r3, #116]
	cmp	r2, r3
	ldrne	ip, .L30+44
	ldr	r3, .L30+12
	ldrne	r0, .L30+48
	ldreq	ip, .L30+52
	ldreq	r0, .L30+56
	str	ip, [r3, #304]
	str	r0, [r3, #368]
.L12:
	cmp	r2, #3
	beq	.L29
	cmp	r2, #0
	beq	.L7
	mov	r0, #80
	ldrh	r2, [r1, #120]
	ldr	r3, .L30+12
	add	r1, r2, #64
	add	r2, r2, #89
	strh	r1, [r3, #174]	@ movhi
	strh	r2, [r3, #238]	@ movhi
	strh	r0, [r3, #176]	@ movhi
	strh	r0, [r3, #240]	@ movhi
.L7:
	ldr	lr, [sp], #4
	bx	lr
.L29:
	mov	ip, #23
	mov	r0, #48
	mov	r1, #24
	mov	r2, #49
	ldr	r3, .L30+12
	ldr	lr, [sp], #4
	strh	ip, [r3, #174]	@ movhi
	strh	r0, [r3, #238]	@ movhi
	strh	r1, [r3, #176]	@ movhi
	strh	r2, [r3, #240]	@ movhi
	bx	lr
.L31:
	.align	2
.L30:
	.word	allWeapons
	.word	player
	.word	8257661
	.word	100720640
	.word	9896086
	.word	5701718
	.word	7340143
	.word	11534511
	.word	13172936
	.word	8978568
	.word	10616993
	.word	14811361
	.word	16449786
	.word	12255418
	.word	13893843
	.size	updateWeapon, .-updateWeapon
	.align	2
	.global	updateHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth, %function
updateHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L54
	ldr	r3, [r2, #80]
	ldr	r1, [r2, #84]
	cmp	r3, r1
	movgt	r3, r1
	strgt	r1, [r2, #80]
	cmp	r3, #3
	ble	.L35
	mov	r2, #233
	ldr	r1, .L54+4
	cmp	r3, #7
	strh	r2, [r1, #2]	@ movhi
	ble	.L37
	cmp	r3, #11
	strh	r2, [r1, #4]	@ movhi
	add	r1, r1, #4
	ble	.L37
	cmp	r3, #16
	strh	r2, [r1, #2]	@ movhi
	bne	.L37
	strh	r2, [r1, #4]	@ movhi
.L40:
	mov	r0, #6
	ldr	r1, .L54+8
	ldr	r2, .L54+12
	ldr	ip, .L54+16
	rsb	r3, r3, #240
	and	r3, r1, r3, lsl #1
	strh	r3, [r2, #52]	@ movhi
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #50]	@ movhi
	bx	lr
.L37:
	cmp	r3, #12
	bgt	.L39
.L35:
	mov	r2, #127
	ldr	r1, .L54+20
	cmp	r3, #8
	strh	r2, [r1]	@ movhi
	bgt	.L39
	strh	r2, [r1, #-2]	@ movhi
	cmp	r3, #4
	strhle	r2, [r1, #-4]	@ movhi
	sub	r1, r1, #4
.L39:
	sub	r2, r3, #1
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L40
.L42:
	.word	.L53
	.word	.L52
	.word	.L51
	.word	.L40
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L40
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L40
	.word	.L44
	.word	.L43
	.word	.L41
.L53:
	mov	r1, #230
	ldr	r2, .L54+4
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L52:
	mov	r1, #231
	ldr	r2, .L54+4
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L51:
	mov	r1, #232
	ldr	r2, .L54+4
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L50:
	mov	r1, #230
	ldr	r2, .L54+24
	strh	r1, [r2]	@ movhi
	b	.L40
.L49:
	mov	r1, #231
	ldr	r2, .L54+24
	strh	r1, [r2]	@ movhi
	b	.L40
.L48:
	mov	r1, #232
	ldr	r2, .L54+24
	strh	r1, [r2]	@ movhi
	b	.L40
.L47:
	mov	r1, #230
	ldr	r2, .L54+24
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L46:
	mov	r1, #231
	ldr	r2, .L54+24
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L45:
	mov	r1, #232
	ldr	r2, .L54+24
	strh	r1, [r2, #2]	@ movhi
	b	.L40
.L44:
	mov	r1, #230
	ldr	r2, .L54+20
	strh	r1, [r2]	@ movhi
	b	.L40
.L43:
	mov	r1, #231
	ldr	r2, .L54+20
	strh	r1, [r2]	@ movhi
	b	.L40
.L41:
	mov	r1, #232
	ldr	r2, .L54+20
	strh	r1, [r2]	@ movhi
	b	.L40
.L55:
	.align	2
.L54:
	.word	player
	.word	100721028
	.word	1022
	.word	shadowOAM
	.word	16432
	.word	100721036
	.word	100721032
	.size	updateHealth, .-updateHealth
	.align	2
	.global	initInventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInventory, %function
initInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #5
	ldr	r3, .L123
	ldr	r4, .L123+4
	ldr	ip, [r3, #8]
	smull	r3, r4, ip, r4
	ldr	r1, .L123+8
	mov	r5, #1
	ldr	r0, .L123+12
	smull	r2, lr, r1, ip
	smull	r2, r3, r0, ip
	mov	r7, #0
	mov	r10, #74
	mov	r9, #19
	mov	r8, #10
	asr	r0, ip, #31
	rsb	r4, r0, r4, asr #6
	smull	fp, r2, r1, r4
	rsb	lr, r0, lr, asr #2
	rsb	r0, r0, r3, asr r6
	smull	fp, r3, r1, lr
	smull	fp, r1, r0, r1
	asr	fp, r4, #31
	rsb	r2, fp, r2, asr #2
	add	r2, r2, r2, lsl #2
	sub	r2, r4, r2, lsl r5
	add	r4, lr, lr, lsl #2
	sub	ip, ip, r4, lsl r5
	asr	r4, lr, #31
	rsb	r3, r4, r3, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, lr, r3, lsl r5
	asr	lr, r0, #31
	rsb	r1, lr, r1, asr #2
	add	r1, r1, r1, lsl #2
	sub	r1, r0, r1, lsl r5
	ldr	r0, .L123+16
	cmp	r2, r7
	str	r10, [r0]
	str	r9, [r0, #4]
	str	r8, [r0, #24]
	str	r7, [r0, #36]
	str	r6, [r0, #40]
	strb	r5, [r0, #52]
	sub	sp, sp, #12
	ble	.L57
	mov	lr, #23
	mov	r0, #95
	ldr	r5, .L123+20
	add	r2, r2, #43
	strh	r2, [r5, #20]	@ movhi
	strh	lr, [r5, #16]	@ movhi
	strh	r0, [r5, #18]	@ movhi
	mov	lr, #107
	mov	r0, #113
	mov	r2, #101
.L58:
	mov	r4, #23
	add	r1, r1, #43
	strh	r1, [r5, #28]	@ movhi
	strh	r2, [r5, #26]	@ movhi
	strh	r4, [r5, #24]	@ movhi
.L59:
	mov	r2, #23
	ldr	r4, .L123+24
	add	r3, r3, #43
	strh	r3, [r5, #36]	@ movhi
	ldr	r3, [r4, #80]
	add	ip, ip, #43
	cmp	r3, #16
	strh	ip, [r5, #44]	@ movhi
	strh	lr, [r5, #34]	@ movhi
	strh	r0, [r5, #42]	@ movhi
	strh	r2, [r5, #32]	@ movhi
	strh	r2, [r5, #40]	@ movhi
	bne	.L117
	mov	r1, #10
	mov	r2, #448
	ldr	r3, .L123+28
	strh	r1, [r5, #50]	@ movhi
	strh	r2, [r5, #52]	@ movhi
	strh	r3, [r5, #48]	@ movhi
.L61:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L62
	lsl	r3, r3, #16
	ldr	r2, .L123+32
	lsr	r3, r3, #16
	add	r1, r3, #13
	add	r3, r3, #38
	strh	r1, [r2, #170]	@ movhi
	strh	r3, [r2, #234]	@ movhi
.L62:
	ldr	r3, [r4, #116]
	cmp	r3, #3
	str	r3, [sp, #4]
	beq	.L118
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L119
.L64:
	mov	r3, #0
	mov	ip, #12
	mov	r2, #2
	ldr	r1, .L123+36
	ldr	r0, .L123+32
.L78:
	cmp	r3, #11
	ldr	lr, [r1, #36]
	add	r2, r2, #2
	add	r3, r3, #1
	beq	.L120
	cmp	lr, #0
	beq	.L68
	ldr	lr, [r1, #8]
	cmp	lr, #6
	ldrls	pc, [pc, lr, asl #2]
	b	.L68
.L70:
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
.L94:
	mov	r2, #4
.L69:
	mov	r8, #167	@ movhi
	add	r6, r2, ip, lsl #5
	lsl	r6, r6, #1
	strh	r8, [r0, r6]	@ movhi
	mov	r6, #168	@ movhi
	lsl	lr, ip, #5
	add	lr, lr, #32
	add	r4, r2, #1
	add	r7, r2, lr
	add	lr, r4, lr
	add	r4, r4, ip, lsl #5
	lsl	r4, r4, #1
	strh	r6, [r0, r4]	@ movhi
	mov	r4, #192	@ movhi
	lsl	r7, r7, #1
	strh	r4, [r0, r7]	@ movhi
	mov	r4, #193	@ movhi
	lsl	lr, lr, #1
	strh	r4, [r0, lr]	@ movhi
.L68:
	cmp	r3, #22
	beq	.L121
.L66:
	add	r1, r1, #44
	b	.L78
.L93:
	mov	r2, #4
.L71:
	mov	r8, #163	@ movhi
	add	r6, r2, ip, lsl #5
	lsl	r6, r6, #1
	strh	r8, [r0, r6]	@ movhi
	mov	r6, #164	@ movhi
	lsl	lr, ip, #5
	add	lr, lr, #32
	add	r4, r2, #1
	add	r7, r2, lr
	add	lr, r4, lr
	add	r4, r4, ip, lsl #5
	lsl	r4, r4, #1
	strh	r6, [r0, r4]	@ movhi
	mov	r4, #188	@ movhi
	lsl	r7, r7, #1
	strh	r4, [r0, r7]	@ movhi
	mov	r4, #189	@ movhi
	lsl	lr, lr, #1
	cmp	r3, #22
	strh	r4, [r0, lr]	@ movhi
	bne	.L66
.L121:
	ldr	r3, .L123+40
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L79
	ldr	r1, [sp, #4]
	ldr	r2, [r3, #52]
	cmp	r1, r2
	ldrne	r0, .L123+44
	ldr	r2, .L123+32
	ldrne	r1, .L123+48
	ldreq	r0, .L123+52
	ldreq	r1, .L123+56
	str	r0, [r2, #296]
	str	r1, [r2, #360]
.L79:
	ldr	r2, [r3, #92]
	cmp	r2, #0
	beq	.L81
	ldr	r1, [sp, #4]
	ldr	r2, [r3, #84]
	cmp	r1, r2
	ldrne	r0, .L123+60
	ldr	r2, .L123+32
	ldrne	r1, .L123+64
	ldreq	r0, .L123+68
	ldreq	r1, .L123+72
	str	r0, [r2, #300]
	str	r1, [r2, #364]
.L81:
	ldr	r2, [r3, #124]
	cmp	r2, #0
	beq	.L83
	ldr	r2, [sp, #4]
	ldr	r3, [r3, #116]
	cmp	r2, r3
	ldrne	r1, .L123+76
	ldr	r3, .L123+32
	ldrne	r2, .L123+80
	ldreq	r1, .L123+84
	ldreq	r2, .L123+88
	str	r1, [r3, #304]
	str	r2, [r3, #368]
.L83:
	mov	ip, #0
	mov	r0, #96
	mov	r1, #16
	mov	r10, #32
	mov	r2, #1
	mov	r9, #7
	mov	r8, #82
	mov	r7, #56
	mov	r6, #8
	mov	r4, #81
	mov	lr, #160
	ldr	r3, .L123+92
	str	ip, [r3]
	ldr	r3, .L123+96
	stmib	r3, {r0, r1}
	strb	ip, [r3, #52]
	str	r10, [r3]
	str	r1, [r3, #12]
	ldr	r3, .L123+100
	stm	r3, {r7, r8}
	str	r2, [r3, #8]
	strb	r9, [r3, #52]
	ldr	r3, .L123+104
	ldr	r1, .L123+108
	str	r2, [r3, #8]
	ldr	r2, .L123+112
	strh	r0, [r5]	@ movhi
	strb	r6, [r3, #52]
	str	r4, [r3, #4]
	str	lr, [r3]
	strh	r1, [r5, #2]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L72:
	mov	fp, #165
	mov	r10, #166
	mov	r9, #190
	mov	r8, #191
	lsl	lr, ip, #5
	add	lr, lr, #32
	add	r4, r2, #1
	add	r7, lr, r2
	add	r6, r2, ip, lsl #5
	add	lr, r4, lr
	add	r4, r4, ip, lsl #5
	lsl	r7, r7, #1
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	lsl	r6, r6, #1
	strh	fp, [r0, r6]	@ movhi
	strh	r10, [r0, r4]	@ movhi
	strh	r9, [r0, r7]	@ movhi
	strh	r8, [r0, lr]	@ movhi
	b	.L68
.L92:
	mov	r2, #4
.L73:
	mov	fp, #113
	mov	r10, #114
	mov	r9, #138
	mov	r8, #139
.L116:
	lsl	r4, ip, #5
	add	r4, r4, #32
	add	lr, r2, #1
	add	r7, r2, r4
	add	r6, r2, ip, lsl #5
	add	r4, lr, r4
	add	lr, lr, ip, lsl #5
	lsl	r7, r7, #1
	lsl	lr, lr, #1
	lsl	r4, r4, #1
	lsl	r6, r6, #1
	strh	fp, [r0, r6]	@ movhi
	strh	r10, [r0, lr]	@ movhi
	strh	r9, [r0, r7]	@ movhi
	strh	r8, [r0, r4]	@ movhi
	b	.L68
.L89:
	mov	r2, #4
.L76:
	mov	fp, #117
	mov	r10, #118
	mov	r9, #142
	mov	r8, #143
	b	.L116
.L91:
	mov	r2, #4
.L74:
	mov	fp, #115
	mov	r10, #116
	mov	r9, #140
	mov	r8, #141
	b	.L116
.L90:
	mov	r2, #4
.L75:
	mov	fp, #119
	mov	r10, #120
	mov	r9, #144
	mov	r8, #145
	b	.L116
.L120:
	cmp	lr, #0
	add	ip, ip, #2
	beq	.L88
	ldr	r2, [r1, #8]
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L88
.L85:
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L72
	.word	.L93
	.word	.L94
.L88:
	mov	r2, #4
	b	.L66
.L57:
	cmp	r1, #0
	bgt	.L122
	mov	r0, #101
	mov	lr, #95
	ldr	r5, .L123+20
	b	.L59
.L119:
	ldrh	r3, [r4, #120]
	ldr	r2, .L123+32
	add	r1, r3, #64
	add	r3, r3, #89
	strh	r1, [r2, #174]	@ movhi
	strh	r3, [r2, #238]	@ movhi
	b	.L64
.L117:
	bl	updateHealth
	b	.L61
.L118:
	mov	ip, #23
	mov	r0, #48
	mov	r1, #24
	mov	r2, #49
	ldr	r3, .L123+32
	strh	ip, [r3, #174]	@ movhi
	strh	r0, [r3, #238]	@ movhi
	strh	r1, [r3, #176]	@ movhi
	strh	r2, [r3, #240]	@ movhi
	b	.L64
.L122:
	mov	r0, #107
	mov	lr, #101
	mov	r2, #95
	ldr	r5, .L123+20
	b	.L58
.L124:
	.align	2
.L123:
	.word	inventory
	.word	274877907
	.word	1717986919
	.word	1374389535
	.word	coin
	.word	shadowOAM
	.word	player
	.word	16432
	.word	100720640
	.word	allItems
	.word	allWeapons
	.word	8257661
	.word	9896086
	.word	5701718
	.word	7340143
	.word	11534511
	.word	13172936
	.word	8978568
	.word	10616993
	.word	14811361
	.word	16449786
	.word	12255418
	.word	13893843
	.word	index
	.word	select
	.word	description
	.word	boost
	.word	16416
	.word	390
	.size	initInventory, .-initInventory
	.align	2
	.global	updateBaseDamage
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBaseDamage, %function
updateBaseDamage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L126
	ldrh	r3, [r3, #64]
	ldr	r2, .L126+4
	add	r1, r3, #13
	add	r3, r3, #64
	strh	r1, [r2, #170]	@ movhi
	strh	r3, [r2, #234]	@ movhi
	bx	lr
.L127:
	.align	2
.L126:
	.word	player
	.word	100720640
	.size	updateBaseDamage, .-updateBaseDamage
	.align	2
	.global	updateItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateItems, %function
updateItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L139
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	add	r1, r2, #7
	cmp	r2, #0
	movlt	r2, r1
	add	r1, r3, #7
	cmp	r3, #0
	movlt	r3, r1
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #54
	mov	r5, #56
	mov	lr, #104
	mov	ip, #106
	mov	r0, #0
	asr	r2, r2, #3
	lsl	r4, r2, #5
	asr	r3, r3, #3
	add	r4, r4, #32
	ldr	r1, .L139+4
	add	r7, r3, r4
	add	r8, r3, r2, lsl #5
	add	r3, r3, #1
	ldr	r1, [r1]
	add	r2, r3, r2, lsl #5
	add	r3, r3, r4
	ldr	r4, .L139+8
	lsl	r2, r2, #1
	lsl	r8, r8, #1
	strh	r6, [r4, r8]	@ movhi
	strh	r5, [r4, r2]	@ movhi
	add	r2, r1, r1, lsl #2
	add	r2, r1, r2, lsl #1
	ldr	r1, .L139+12
	add	r2, r1, r2, lsl #2
	ldr	r1, [r2, #8]
	lsl	r7, r7, #1
	lsl	r3, r3, #1
	strh	lr, [r4, r7]	@ movhi
	strh	ip, [r4, r3]	@ movhi
	str	r0, [r2, #36]
	cmp	r1, #6
	ldrls	pc, [pc, r1, asl #2]
	b	.L128
.L131:
	.word	.L137
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L130
.L130:
	mov	r3, #0
	mov	r0, #2
	ldr	r2, .L139+16
	ldr	r1, .L139+20
	str	r0, [r2, #72]
	str	r3, [r2, #68]
	str	r3, [r1]
.L128:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L137:
	ldr	r2, .L139+16
	ldr	r3, [r2, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	add	r3, r3, #2
	str	r3, [r2, #80]
	b	updateHealth
.L136:
	ldr	r2, .L139+16
	ldr	r3, [r2, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	add	r3, r3, #6
	str	r3, [r2, #80]
	b	updateHealth
.L135:
	ldr	r2, .L139+16
	ldr	r3, [r2, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	add	r3, r3, #4
	str	r3, [r2, #80]
	b	updateHealth
.L134:
	ldr	r2, .L139+16
	ldr	r3, [r2, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	add	r3, r3, #8
	str	r3, [r2, #80]
	b	updateHealth
.L133:
	ldr	r2, .L139+16
	ldr	r3, [r2, #80]
	pop	{r4, r5, r6, r7, r8, lr}
	add	r3, r3, #16
	str	r3, [r2, #80]
	b	updateHealth
.L132:
	mov	r3, #0
	mov	r0, #2
	ldr	r2, .L139+16
	ldr	r1, .L139+20
	str	r0, [r2, #68]
	str	r3, [r2, #72]
	str	r3, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	select
	.word	index
	.word	100720640
	.word	allItems
	.word	player
	.word	vBlankCount
	.size	updateItems, .-updateItems
	.align	2
	.global	updateDescription
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDescription, %function
updateDescription:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L165
	ldr	r2, [r3, #68]
	cmp	r2, #0
	beq	.L142
	mov	r0, #15
	ldr	r2, .L165+4
	ldr	r1, .L165+8
	ldr	r3, .L165+12
	strh	r0, [r2, #72]	@ movhi
	strh	r1, [r2, #74]	@ movhi
	strh	r3, [r2, #76]	@ movhi
.L143:
	ldr	r3, .L165+16
	ldr	r3, [r3]
	ldr	r1, .L165+20
	add	r0, r3, r3, lsl #2
	add	r3, r3, r0, lsl #1
	add	r3, r1, r3, lsl #2
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L145
	ldr	r1, .L165+24
	ldr	r1, [r1, #4]
	cmp	r1, #32
	beq	.L145
	ldr	r3, [r3, #8]
	push	{r4, r5, r6, r7, lr}
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L141
.L149:
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L148
.L145:
	mov	r0, #512
	ldr	r1, .L165+28
	ldr	r3, .L165+32
	ldrb	r1, [r1, #52]	@ zero_extendqisi2
	ldrb	r3, [r3, #52]	@ zero_extendqisi2
	lsl	r1, r1, #3
	lsl	r3, r3, #3
	strh	r0, [r2, r1]	@ movhi
	strh	r0, [r2, r3]	@ movhi
	bx	lr
.L142:
	ldr	r3, [r3, #72]
	cmp	r3, #0
	movne	r0, #15
	moveq	r3, #512
	ldrne	r2, .L165+4
	ldrne	r1, .L165+8
	ldrne	r3, .L165+36
	ldreq	r2, .L165+4
	strhne	r0, [r2, #72]	@ movhi
	strhne	r1, [r2, #74]	@ movhi
	strhne	r3, [r2, #76]	@ movhi
	strheq	r3, [r2, #72]	@ movhi
	b	.L143
.L148:
	ldr	ip, .L165+28
	ldr	r6, .L165+40
	ldr	r3, [ip]
	and	r3, r3, r6
	mvn	r3, r3, lsl #18
	mov	r4, #496
	mvn	r3, r3, lsr #18
.L162:
	mov	lr, #400
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r1, [ip, #52]	@ zero_extendqisi2
	ldr	r0, .L165+32
	add	ip, r2, r1, lsl #3
	orr	r5, r5, #16384
	lsl	r1, r1, #3
	strh	r3, [ip, #2]	@ movhi
	strh	r5, [r2, r1]	@ movhi
	ldr	r3, [r0]
	ldrb	r1, [r0, #52]	@ zero_extendqisi2
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	and	r3, r3, r6
	strh	r4, [ip, #4]	@ movhi
	orr	r3, r3, #16384
	add	ip, r2, r1, lsl #3
	orr	r0, r0, #16384
	lsl	r1, r1, #3
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [r2, r1]	@ movhi
	strh	lr, [ip, #4]	@ movhi
.L141:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L155:
	mov	r4, #404
	mov	lr, #408
	ldr	r0, .L165+28
	ldr	r5, .L165+40
	ldr	r3, [r0]
	ldrb	r1, [r0, #52]	@ zero_extendqisi2
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	and	r3, r3, r5
	ldr	r0, .L165+32
	add	r6, r2, r1, lsl #3
	orr	r3, r3, #16384
	orr	ip, ip, #16384
	lsl	r1, r1, #3
	strh	ip, [r2, r1]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	ldr	r1, [r0]
	ldrb	r3, [r0, #52]	@ zero_extendqisi2
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	and	r1, r1, r5
	add	r0, r2, r3, lsl #3
	lsl	r3, r3, #3
	strh	r4, [r6, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r2, r3]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	b	.L141
.L154:
	ldr	ip, .L165+28
	ldr	r5, .L165+40
	ldr	r3, [ip]
	and	r3, r3, r5
	mvn	r3, r3, lsl #18
	mov	r6, #504
	mvn	r3, r3, lsr #18
	ldr	lr, .L165+32
	ldrb	r1, [ip, #52]	@ zero_extendqisi2
	ldrb	ip, [ip, #4]	@ zero_extendqisi2
	add	r4, r2, r1, lsl #3
	ldr	r0, [lr]
	orr	ip, ip, #16384
	lsl	r1, r1, #3
	strh	r3, [r4, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldrb	r3, [lr, #52]	@ zero_extendqisi2
	ldr	ip, .L165+44
	ldrb	lr, [lr, #4]	@ zero_extendqisi2
	strh	r6, [r4, #4]	@ movhi
	and	r0, r0, r5
.L163:
	add	r1, r2, r3, lsl #3
	lsl	r3, r3, #3
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r2, r3]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L153:
	mov	r4, #396
	ldr	ip, .L165+28
	ldr	r6, .L165+40
	ldr	r3, [ip]
	ldr	lr, .L165+32
	ldrb	r1, [ip, #52]	@ zero_extendqisi2
	ldrb	ip, [ip, #4]	@ zero_extendqisi2
	and	r3, r3, r6
	ldr	r0, [lr]
	orr	r3, r3, #16384
	orr	ip, ip, #16384
	add	r5, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	r3, [r5, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldrb	r3, [lr, #52]	@ zero_extendqisi2
	ldr	ip, .L165+44
	ldrb	lr, [lr, #4]	@ zero_extendqisi2
	and	r0, r0, r6
.L164:
	strh	r4, [r5, #4]	@ movhi
	b	.L163
.L152:
	ldr	ip, .L165+28
	ldr	lr, .L165+32
	ldr	r6, .L165+40
	ldr	r3, [ip]
	ldrb	r1, [ip, #52]	@ zero_extendqisi2
	ldrb	ip, [ip, #4]	@ zero_extendqisi2
	ldr	r0, [lr]
	and	r3, r3, r6
	orr	r3, r3, #16384
	orr	ip, ip, #16384
	add	r5, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	r3, [r5, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldrb	r3, [lr, #52]	@ zero_extendqisi2
	mov	r4, #392
	ldrb	lr, [lr, #4]	@ zero_extendqisi2
	ldr	ip, .L165+48
	and	r0, r0, r6
	b	.L164
.L151:
	ldr	r0, .L165+28
	ldr	r7, .L165+40
	ldr	r3, [r0]
	and	r3, r3, r7
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	mov	r5, #480
	mov	r4, #412
	ldrb	r1, [r0, #52]	@ zero_extendqisi2
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L165+32
	add	r6, r2, r1, lsl #3
	orr	lr, lr, #16384
	lsl	r1, r1, #3
	ldr	r0, [ip]
	strh	r3, [r6, #2]	@ movhi
	strh	lr, [r2, r1]	@ movhi
	ldrb	r3, [ip, #52]	@ zero_extendqisi2
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	and	r0, r0, r7
	add	ip, r2, r3, lsl #3
	orr	r1, r1, #16384
	lsl	r3, r3, #3
	strh	r5, [r6, #4]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r1, [r2, r3]	@ movhi
	strh	r4, [ip, #4]	@ movhi
	b	.L141
.L150:
	ldr	ip, .L165+28
	ldr	r6, .L165+40
	ldr	r3, [ip]
	and	r3, r3, r6
	mvn	r3, r3, lsl #18
	mov	r4, #488
	mvn	r3, r3, lsr #18
	b	.L162
.L166:
	.align	2
.L165:
	.word	player
	.word	shadowOAM
	.word	16584
	.word	29058
	.word	index
	.word	allItems
	.word	select
	.word	description
	.word	boost
	.word	29056
	.word	511
	.word	410
	.word	411
	.size	updateDescription, .-updateDescription
	.align	2
	.global	updateInventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateInventory, %function
updateInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L221
	ldrh	r3, [r5]
	tst	r3, #64
	ldr	r4, .L221+4
	beq	.L168
	ldr	r2, .L221+8
	ldrh	r2, [r2]
	ands	r2, r2, #64
	bne	.L168
	ldr	r0, [r4, #4]
	cmp	r0, #96
	beq	.L215
	cmp	r0, #112
	beq	.L171
	ldr	r1, [r4]
	subs	r3, r1, #32
	submi	r3, r1, #17
	asr	r3, r3, #4
.L172:
	cmp	r0, #32
	bne	.L181
.L170:
	subs	r3, r1, #160
	submi	r1, r1, #145
	movpl	r1, r3
	ldr	r6, .L221+12
	asr	r1, r1, #4
	add	r1, r1, #1
	str	r1, [r6]
	bl	updateDescription
	ldrh	r3, [r5]
	tst	r3, #1
	bne	.L187
.L214:
	ldr	r1, [r4, #4]
.L188:
	ldr	r3, [r4]
	ldrb	r2, [r4, #52]	@ zero_extendqisi2
	ldr	r0, .L221+16
	lsl	r3, r3, #23
	ldr	ip, .L221+20
	lsr	r3, r3, #23
	lsl	lr, r2, #3
	and	r1, r1, #255
	add	r2, r0, r2, lsl #3
	orr	r3, r3, #16384
	strh	r1, [r0, lr]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	bl	updateCurrency
	ldr	r3, .L221+24
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L168:
	tst	r3, #128
	beq	.L174
	ldr	r2, .L221+8
	ldrh	r2, [r2]
	ands	r2, r2, #128
	bne	.L174
	ldr	r3, [r4, #4]
	ldr	r1, .L221+28
	cmp	r3, #32
	ldr	r1, [r1]
	beq	.L216
	ldr	r3, [r4, #12]
	add	r3, r3, #96
	ldr	r0, .L221+32
	ldr	r6, .L221+36
	str	r3, [r4, #4]
.L212:
	mov	lr, pc
	bx	r6
.L211:
	ldr	r1, [r4]
.L210:
	subs	r3, r1, #32
	submi	r3, r1, #17
	ldr	r0, [r4, #4]
	asr	r3, r3, #4
.L173:
	cmp	r0, #32
	beq	.L170
.L179:
	cmp	r0, #112
	beq	.L186
.L181:
	ldr	r6, .L221+12
	str	r3, [r6]
.L185:
	bl	updateDescription
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L214
.L187:
	ldr	r3, .L221+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r1, [r4, #4]
	bne	.L188
	cmp	r1, #32
	ldr	r3, [r6]
	beq	.L217
	ldr	r2, .L221+40
	add	r0, r3, r3, lsl #2
	add	r3, r3, r0, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L188
	bl	updateItems
	b	.L214
.L174:
	tst	r3, #32
	ldr	r1, [r4]
	bne	.L218
.L176:
	tst	r3, #16
	beq	.L210
	ldr	r3, .L221+8
	ldrh	r2, [r3]
	ands	r2, r2, #16
	bne	.L210
	cmp	r1, #191
	ble	.L184
	sub	r3, r1, #32
	ldr	r0, [r4, #4]
	asr	r3, r3, #4
	b	.L173
.L218:
	ldr	r2, .L221+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L176
	ldr	r0, [r4, #4]
	cmp	r0, #95
	ble	.L177
	cmp	r1, #32
	ble	.L219
.L178:
	ldr	r2, .L221+28
	ldr	r3, [r4, #8]
	sub	r3, r1, r3
	ldr	r1, [r2]
	mov	r2, #0
.L213:
	ldr	r0, .L221+32
	ldr	r6, .L221+36
	str	r3, [r4]
	b	.L212
.L186:
	ldr	r6, .L221+12
	add	r3, r3, #11
	str	r3, [r6]
	b	.L185
.L217:
	ldr	ip, .L221+44
	add	ip, ip, r3, lsl #5
	ldr	r3, [ip, #28]
	cmp	r3, #0
	beq	.L188
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	lr, .L221+48
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	bl	updateWeapon
	ldr	r1, [r4, #4]
	b	.L188
.L215:
	ldr	r3, .L221+28
	ldr	r0, .L221+32
	ldr	r1, [r3]
	ldr	r3, .L221+36
	mov	lr, pc
	bx	r3
	mov	r1, #160
	mov	r3, #32
	stm	r4, {r1, r3}
	b	.L170
.L177:
	beq	.L220
	cmp	r1, #160
	bgt	.L178
	subs	r3, r1, #32
	submi	r3, r1, #17
	asr	r3, r3, #4
	b	.L172
.L216:
	mov	ip, #96
	str	r3, [r4]
	ldr	r0, .L221+32
	ldr	r3, .L221+36
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r3
	b	.L211
.L219:
	subs	r3, r1, #32
	submi	r3, r1, #17
	asr	r3, r3, #4
	b	.L179
.L171:
	ldr	r3, [r4, #12]
	ldr	r1, .L221+28
	rsb	r3, r3, #112
	ldr	r1, [r1]
	ldr	r0, .L221+32
	ldr	r6, .L221+36
	str	r3, [r4, #4]
	b	.L212
.L184:
	ldr	r3, [r4, #8]
	ldr	r0, .L221+28
	add	r3, r3, r1
	ldr	r1, [r0]
	b	.L213
.L220:
	subs	r3, r1, #32
	submi	r3, r1, #17
	asr	r3, r3, #4
	b	.L181
.L222:
	.align	2
.L221:
	.word	oldButtons
	.word	select
	.word	buttons
	.word	index
	.word	shadowOAM
	.word	390
	.word	draw
	.word	move_length
	.word	move_data
	.word	playSoundB
	.word	allItems
	.word	allWeapons
	.word	player+96
	.size	updateInventory, .-updateInventory
	.comm	vBlankCount,4,4
	.comm	boost,56,4
	.comm	description,56,4
	.comm	index,4,4
	.comm	select,56,4
	.comm	coin,56,4
	.comm	inventory,16,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	player,128,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
