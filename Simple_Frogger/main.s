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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L12
	sub	sp, sp, #148
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r1, #67108864
	mov	lr, #114
	mov	r7, #3
	mov	r3, #146
	ldr	ip, .L12+4
	ldr	r0, .L12+8
	ldr	r2, .L12+12
	strh	r0, [r1]	@ movhi
	ldr	r8, .L12+16
	strh	r4, [r2]	@ movhi
	ldm	ip, {r0, r1, r2}
	add	r6, sp, #8
	add	r5, ip, #12
	ldrh	fp, [r8, #48]
	stm	r6, {r0, r1, r2}
	ldm	r5, {r0, r1, r2}
	add	r5, sp, #20
	stm	r5, {r0, r1, r2}
	ldm	r6, {r0, r1, r2}
	ldr	r6, .L12+20
	stm	r6, {r0, r1, r2}
	ldm	r5, {r0, r1, r2}
	ldr	r5, .L12+24
	ldr	r9, .L12+28
	str	lr, [r5]
	ldr	r10, .L12+32
	ldr	r5, .L12+36
	ldr	r6, .L12+40
	strb	r4, [r9]
	ldr	r9, .L12+20
	strh	fp, [r10]	@ movhi
	str	lr, [r5]
	ldr	r8, .L12+44
	ldr	r10, .L12+48
	ldr	lr, .L12+52
	str	r7, [r6]
	add	r9, r9, #12
	add	r6, ip, #24
	str	r7, [r8]
	str	r3, [r10]
	str	r3, [lr]
	stm	r9, {r0, r1, r2}
	ldm	r6, {r0, r1, r2, r3}
	add	fp, sp, #32
	add	lr, ip, #40
	mov	r9, #992
	stm	fp, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	r10, sp, #48
	add	lr, ip, #56
	stm	r10, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	r6, sp, #64
	ldr	lr, .L12+56
	add	r5, ip, #72
	stm	r6, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	mov	r8, lr
	add	r5, sp, #80
	stm	r5, {r0, r1, r2, r3}
	ldm	fp, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r10, {r0, r1, r2, r3}
	add	r10, lr, #16
	stm	r10, {r0, r1, r2, r3}
	ldm	r6, {r0, r1, r2, r3}
	add	r6, lr, #32
	stm	r6, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	add	lr, lr, #48
	add	r5, ip, #88
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	add	lr, sp, #96
	add	r5, ip, #104
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	add	r6, sp, #112
	stm	r6, {r0, r1, r2, r3}
	add	ip, ip, #120
	ldm	ip, {r0, r1, r2, r3}
	add	ip, sp, #128
	stm	ip, {r0, r1, r2, r3}
	ldr	r5, .L12+60
	ldm	r6, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	lr, r5, #16
	stm	lr, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	ldr	r6, .L12+64
	add	ip, r5, #32
	stm	ip, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r6
	ldr	lr, .L12+52
	ldr	r3, .L12+68
	ldr	r2, .L12+36
	ldr	r1, [lr]
	ldr	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L12+72
	mov	lr, pc
	bx	r3
	ldr	r6, .L12+76
	mov	r2, r7
	mov	r3, #6
	mov	r1, #1
	mov	r0, #5
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r2, r7
	mov	r3, #6
	mov	r1, #1
	mov	r0, #10
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r2, r7
	mov	r3, #6
	mov	r1, #1
	mov	r0, #15
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, #47
	mov	r0, #109
	ldr	r3, .L12+80
	mov	lr, pc
	bx	r3
	cmp	r4, #1
	mov	r6, r8
	ldr	r7, .L12+20
	ldr	r9, .L12+84
	ldr	fp, .L12+88
	ldr	r10, .L12+92
	bgt	.L2
.L11:
	ldm	r7, {r0, r1}
	mov	lr, pc
	bx	fp
.L3:
	ldrh	r2, [r5, #12]
	ldr	r1, [r5, #4]
	ldr	r0, [r5], #16
	mov	lr, pc
	bx	r10
	add	r4, r4, #1
	ldrh	r2, [r6, #12]
	ldr	r1, [r6, #4]
	ldr	r0, [r6], #16
	mov	lr, pc
	bx	r9
	cmp	r4, #4
	add	r7, r7, #12
	beq	.L1
	cmp	r4, #1
	ble	.L11
.L2:
	cmp	r4, #3
	bne	.L3
	add	r0, r8, #48
	ldrh	r2, [r8, #60]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r9
.L1:
	add	sp, sp, #148
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mgba_open
	.word	.LANCHOR0
	.word	1027
	.word	oldButtons
	.word	67109120
	.word	logs
	.word	frogOldX
	.word	state
	.word	buttons
	.word	frogX
	.word	oldLives
	.word	lives
	.word	frogOldY
	.word	frogY
	.word	trucks
	.word	cars
	.word	drawLandscape
	.word	.LANCHOR1
	.word	drawFrog
	.word	drawRectangle
	.word	drawLilypad
	.word	drawTruck
	.word	drawLog
	.word	drawCar
	.size	initialize, .-initialize
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L91
	ldr	r3, .L91+4
	ldrh	r2, [ip]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L91+8
	ldr	r8, .L91+12
	strh	r2, [r3]	@ movhi
	ldr	r3, .L91+16
	ldr	r4, .L91+20
	ldr	lr, .L91+24
	ldr	r0, [r7]
	ldr	r1, [r8]
	ldr	fp, .L91+28
	ldrh	r3, [r3, #48]
	str	r1, [lr]
	str	r0, [r4]
	ldr	lr, .L91+32
	ldr	r4, [fp]
	tst	r3, #64
	strh	r3, [ip]	@ movhi
	str	r4, [lr]
	sub	sp, sp, #20
	bne	.L15
	cmp	r1, #11
	movle	ip, #0
	movgt	ip, #1
	ands	ip, ip, r2, lsr #6
	subne	r1, r1, #15
	strne	r1, [r8]
	bne	.L16
.L15:
	tst	r3, #128
	bne	.L17
	cmp	r1, #145
	movgt	ip, #0
	movle	ip, #1
	ands	ip, ip, r2, lsr #7
	addne	r1, r1, #15
	strne	r1, [r8]
	bne	.L16
.L17:
	tst	r3, #32
	bne	.L18
	cmp	r0, #9
	movle	r1, #0
	movgt	r1, #1
	ands	r1, r1, r2, lsr #5
	subne	r0, r0, #15
	strne	r0, [r7]
	bne	.L16
.L18:
	tst	r3, #16
	beq	.L86
.L16:
	mov	r2, #0
	mov	r5, #230
	mov	r4, #9
	ldr	lr, .L91+36
	ldr	r1, .L91+40
	ldr	r0, .L91+44
.L32:
	cmp	r2, #1
	ldr	r3, [r1, #-8]
	bgt	.L19
	ldr	ip, [lr, #-8]
	cmp	r2, #0
	ldreq	r6, .L91+48
	ldrne	r6, .L91+48
	str	ip, [lr]
	subeq	ip, ip, #2
	addne	ip, ip, #2
	streq	ip, [r6]
	strne	ip, [r6, #12]
	ldr	ip, [lr, #-8]
	cmp	ip, #230
	strgt	r4, [lr, #-8]
	bgt	.L23
	cmp	ip, #8
	strle	r5, [lr, #-8]
.L23:
	ldr	ip, [r0, #-8]
	tst	r2, #1
	str	ip, [r0]
	bne	.L87
	sub	ip, ip, #1
	cmp	ip, #8
	str	ip, [r0, #-8]
	strle	r5, [r0, #-8]
	str	r3, [r1]
	add	r3, r3, #1
.L29:
	cmp	r3, #230
	movgt	r3, r4
	add	r2, r2, #1
	cmp	r2, #4
	str	r3, [r1, #-8]
	add	r0, r0, #16
	add	r1, r1, #16
	add	lr, lr, #12
	bne	.L32
	mov	r5, #0
	ldr	r1, [r8]
	ldr	r6, .L91+52
	ldr	r9, .L91+56
	ldr	r10, .L91+48
	ldr	r4, .L91+60
.L44:
	cmp	r5, #1
	bgt	.L33
	ldm	r4, {r3, lr}
	ldr	ip, [r4, #8]
	ldr	r0, [r10, #4]
	ldr	r1, [r10]
	stmib	sp, {r0, ip, lr}
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r7]
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L34
	ldr	r0, [r7]
	cmp	r5, #0
	addne	r0, r0, #2
	subeq	r0, r0, #2
	sub	r3, r0, #9
	cmp	r3, #221
	str	r0, [r7]
	bls	.L85
	mov	r2, #114
	str	r2, [r7]
	mov	r2, #146
	mov	r0, #114
	mov	r1, r2
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r2, [r8]
	str	r3, [fp]
.L38:
	ldr	r3, [r4]
.L53:
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, [r9, #4]
	ldr	r2, [r9]
	stm	sp, {r2, ip}
	mov	r2, r3
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L40
	ldr	r0, [r7]
	ldr	r1, [r8]
.L41:
	ldr	lr, [r4, #20]
	ldr	ip, [r4, #24]
	ldr	r3, [r4]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldm	r6, {ip, lr}
	mov	r2, r3
	stm	sp, {ip, lr}
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L42
	ldr	r1, [r8]
.L43:
	add	r5, r5, #1
	cmp	r5, #4
	add	r6, r6, #16
	add	r9, r9, #16
	add	r10, r10, #12
	bne	.L44
	cmp	r1, #56
	beq	.L88
.L45:
	cmp	r1, #26
	beq	.L89
.L48:
	cmp	r1, #41
	beq	.L90
.L14:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	mov	r1, #146
	mov	r2, #114
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r2, [r7]
	str	r1, [r8]
	str	r3, [fp]
	b	.L43
.L33:
	cmp	r5, #3
	ldr	r3, [r4]
	ldr	r0, [r7]
	bne	.L53
	ldr	ip, [r4, #20]
	ldr	r2, [r4, #24]
	str	ip, [sp, #12]
	ldr	ip, [r6, #4]
	str	r2, [sp, #8]
	ldr	r2, [r6]
	stm	sp, {r2, ip}
	mov	r2, r3
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L42
	ldr	r1, [r8]
	cmp	r1, #56
	bne	.L45
.L88:
	ldm	r4, {r3, lr}
	ldr	r0, [r4, #8]
	ldr	r5, .L91+48
	ldr	ip, [r5, #16]
	str	lr, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, [r5, #12]
	mov	r2, r3
	stm	sp, {r0, ip}
	ldr	r0, [r7]
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L46
.L49:
	mov	r1, #114
	mov	r2, #146
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r3, [fp]
	str	r1, [r7]
	str	r2, [r8]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L19:
	cmp	r2, #3
	bne	.L23
.L84:
	str	r3, [r1]
	add	r3, r3, #2
	b	.L29
.L87:
	sub	ip, ip, #3
	cmp	ip, #8
	str	ip, [r0, #-8]
	strle	r5, [r0, #-8]
	b	.L84
.L34:
	ldr	r0, [r7]
.L85:
	ldr	r1, [r8]
	b	.L38
.L40:
	mov	r1, #146
	mov	r0, #114
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r0, [r7]
	str	r1, [r8]
	str	r3, [fp]
	b	.L41
.L86:
	cmp	r0, #218
	movgt	r3, #0
	movle	r3, #1
	ands	r3, r3, r2, lsr #4
	addne	r0, r0, #15
	strne	r0, [r7]
	b	.L16
.L46:
	ldr	r1, [r8]
	cmp	r1, #26
	bne	.L48
.L89:
	ldr	r2, .L91+48
	ldm	r4, {r3, r5, lr}
	ldm	r2, {r0, ip}
	mov	r2, r3
	stm	sp, {r0, ip, lr}
	str	r5, [sp, #12]
	ldr	r0, [r7]
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L49
	ldr	r1, [r8]
	b	.L48
.L90:
	mov	r0, #12
	mov	ip, #103
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	str	ip, [sp]
	mov	r2, r3
	str	r1, [sp, #4]
	ldr	r0, [r7]
	ldr	ip, .L91+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L49
	b	.L14
.L92:
	.align	2
.L91:
	.word	buttons
	.word	oldButtons
	.word	frogX
	.word	frogY
	.word	67109120
	.word	frogOldX
	.word	frogOldY
	.word	lives
	.word	oldLives
	.word	logs+8
	.word	trucks+8
	.word	cars+8
	.word	logs
	.word	trucks
	.word	cars
	.word	.LANCHOR1
	.word	collision
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L134
	ldr	r3, [r5]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L126
	ldr	r2, .L134+4
	ldr	r2, [r2]
	cmp	r2, #11
	beq	.L127
	ldr	r2, .L134+8
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.L97
	ldr	r6, .L134+12
.L100:
	ldr	r5, .L134+16
	ldr	r3, .L134+20
	ldr	r0, [r5]
	ldr	r3, [r3]
	cmp	r0, r3
	ldr	r3, .L134+24
	ldr	r1, [r3]
	beq	.L128
.L98:
	cmp	r1, #146
	beq	.L129
	cmp	r1, #85
	ldr	r4, .L134+28
	bgt	.L130
	cmp	r1, #11
	cmpne	r1, #71
	beq	.L131
	cmp	r1, #25
	bgt	.L123
.L102:
	ldr	r8, .L134+32
	ldr	r9, .L134+36
	ldr	fp, .L134+40
	mov	r7, r8
	str	r8, [sp, #12]
	mov	r10, r9
	mov	r5, #0
	mov	r8, fp
.L109:
	cmp	r5, #1
	bgt	.L106
	ldr	r3, .L134+44
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	ldr	r1, [r8, #4]
	ldr	r0, [r8, #8]
	mov	lr, pc
	bx	r6
.L107:
	ldr	r3, .L134+48
	ldr	r1, [r10, #4]
	str	r3, [sp]
	sub	r1, r1, #1
	ldr	r0, [r10, #8]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #16]
	mov	lr, pc
	bx	r6
	ldr	r3, .L134+48
	ldr	r1, [r7, #4]
	str	r3, [sp]
	add	r5, r5, #1
	ldr	r0, [r7, #8]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #4
	add	r8, r8, #12
	add	r10, r10, #16
	add	r7, r7, #16
	bne	.L109
	ldr	r8, [sp, #12]
	b	.L116
.L97:
	mov	r2, #0
	mov	r3, #6
	str	r2, [sp]
	mov	r1, #1
	mov	r2, #13
	mov	r0, #5
	ldr	r6, .L134+12
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L100
	mov	r4, #1
	mov	r7, #992
.L101:
	mov	r3, #6
	add	r0, r4, r4, lsl #2
	mov	r2, #3
	mov	r1, #1
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	add	r4, r4, #1
	cmp	r3, r4
	bge	.L101
	b	.L100
.L126:
	mov	r1, #2
	ldr	r2, .L134+52
	mov	r0, #31
	ldr	r3, .L134+56
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L131:
	ldr	r3, [r4]
	ldr	ip, .L134+60
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	b	.L102
.L106:
	cmp	r5, #3
	bne	.L107
	ldr	r3, .L134+48
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #8]
	str	r3, [sp]
	sub	r1, r1, #1
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r8, [sp, #12]
	mov	lr, pc
	bx	r6
.L116:
	mov	r10, #0
	cmp	r10, #1
	ldr	r5, .L134+64
	ldr	r7, .L134+68
	ldr	r6, .L134+72
	bgt	.L110
.L132:
	ldm	fp, {r0, r1}
	mov	lr, pc
	bx	r7
.L111:
	ldrh	r2, [r9, #12]
	ldr	r1, [r9, #4]
	ldr	r0, [r9], #16
	mov	lr, pc
	bx	r6
	add	r10, r10, #1
	ldrh	r2, [r8, #12]
	ldr	r1, [r8, #4]
	ldr	r0, [r8], #16
	mov	lr, pc
	bx	r5
	cmp	r10, #4
	add	fp, fp, #12
	beq	.L115
	cmp	r10, #1
	ble	.L132
.L110:
	cmp	r10, #3
	bne	.L111
	ldr	r3, .L134+32
	add	r0, r3, #48
	ldrh	r2, [r3, #60]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
.L115:
	ldr	r3, .L134+24
	ldr	r3, [r3]
	cmp	r3, #41
	beq	.L133
.L114:
	ldr	r3, .L134+4
	ldr	r1, [r3]
	ldr	r3, .L134+20
	ldr	r2, [r4]
	ldr	r0, [r3]
	ldr	r3, .L134+76
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L128:
	cmp	r0, r1
	ldreq	r4, .L134+28
	bne	.L98
	b	.L102
.L127:
	mov	r1, #1
	ldr	r2, .L134+52
	mov	r0, #992
	ldr	r3, .L134+56
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L130:
	ldr	r3, [r4]
	ldr	ip, .L134+48
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	b	.L102
.L133:
	mov	r1, #47
	ldr	r3, .L134+80
	mov	r0, #109
	mov	lr, pc
	bx	r3
	b	.L114
.L129:
	mov	ip, #0
	ldr	r4, .L134+28
	ldr	r3, [r4]
	str	ip, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r6
	ldr	r3, .L134+24
	ldr	r1, [r3]
	ldr	r3, .L134+84
	ldr	r0, [r5]
	ldr	r2, [r4]
	add	r1, r1, #1
	str	r3, [sp]
	mov	r3, #2
	mov	lr, pc
	bx	r6
	b	.L102
.L123:
	ldr	r3, [r4]
	ldr	ip, .L134+44
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	b	.L102
.L135:
	.align	2
.L134:
	.word	lives
	.word	frogY
	.word	oldLives
	.word	drawRectangle
	.word	frogOldX
	.word	frogX
	.word	frogOldY
	.word	.LANCHOR1
	.word	trucks
	.word	cars
	.word	logs
	.word	29380
	.word	15855
	.word	state
	.word	fillScreen
	.word	11076
	.word	drawTruck
	.word	drawLog
	.word	drawCar
	.word	drawFrog
	.word	drawLilypad
	.word	1023
	.size	drawGame, .-drawGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L144
	mov	lr, pc
	bx	r3
	ldr	r4, .L144+4
	ldr	r8, .L144+8
	ldr	r7, .L144+12
	ldr	r6, .L144+16
	ldr	r5, .L144+20
.L137:
	ldrb	r3, [r4]	@ zero_extendqisi2
.L140:
	cmp	r3, #1
	beq	.L138
	cmp	r3, #2
	beq	.L139
	cmp	r3, #0
	bne	.L140
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L137
.L139:
	mov	r0, #31
	mov	lr, pc
	bx	r5
	b	.L137
.L138:
	mov	r0, #992
	mov	lr, pc
	bx	r5
	b	.L137
.L145:
	.align	2
.L144:
	.word	initialize
	.word	state
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	fillScreen
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, lr}
	ldr	r2, .L148
	mov	r0, #31
	ldr	r3, .L148+4
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	state
	.word	fillScreen
	.size	goToLose, .-goToLose
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L152
	mov	r0, #992
	ldr	r3, .L152+4
	strb	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	state
	.word	fillScreen
	.size	goToWin, .-goToWin
	.comm	state,1,1
	.comm	cars,48,4
	.comm	trucks,64,4
	.comm	logs,24,4
	.global	logHeight
	.global	logWidth
	.global	truckHeight
	.global	truckWidth
	.global	carHeight
	.global	carWidth
	.global	frogSide
	.comm	frogOldY,4,4
	.comm	frogOldX,4,4
	.comm	frogY,4,4
	.comm	frogX,4,4
	.comm	oldLives,4,4
	.comm	lives,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	54
	.word	26
	.word	54
.LC1:
	.word	159
	.word	56
	.word	54
.LC2:
	.word	54
	.word	104
	.word	54
	.short	1023
	.space	2
.LC3:
	.word	54
	.word	134
	.word	54
	.short	1023
	.space	2
.LC4:
	.word	159
	.word	104
	.word	159
	.short	23039
	.space	2
.LC5:
	.word	159
	.word	134
	.word	159
	.short	23039
	.space	2
.LC6:
	.word	115
	.word	89
	.word	115
	.short	31
	.space	2
.LC7:
	.word	204
	.word	119
	.word	204
	.short	31744
	.space	2
.LC8:
	.word	99
	.word	119
	.word	99
	.short	31744
	.space	2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	frogSide, %object
	.size	frogSide, 4
frogSide:
	.word	13
	.type	logHeight, %object
	.size	logHeight, 4
logHeight:
	.word	13
	.type	logWidth, %object
	.size	logWidth, 4
logWidth:
	.word	15
	.type	carHeight, %object
	.size	carHeight, 4
carHeight:
	.word	7
	.type	carWidth, %object
	.size	carWidth, 4
carWidth:
	.word	7
	.type	truckHeight, %object
	.size	truckHeight, 4
truckHeight:
	.word	7
	.type	truckWidth, %object
	.size	truckWidth, 4
truckWidth:
	.word	15
	.ident	"GCC: (devkitARM release 53) 9.1.0"
