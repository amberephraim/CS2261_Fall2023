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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	mov	r1, #1
	mov	r2, #5
	mov	ip, #120
	mov	r5, #80
	ldr	r3, .L8
	str	r4, [r3]
	ldr	r3, .L8+4
	str	r4, [r3]
	ldr	r3, .L8+8
	str	r4, [r3]
	ldr	r3, .L8+12
	ldr	r0, .L8+16
	ldr	r8, .L8+20
	str	r4, [r3, #16]
	str	r4, [r3, #36]
	str	r4, [r3, #56]
	str	r4, [r3, #76]
	str	r4, [r3, #96]
	ldr	r3, .L8+24
	str	r4, [r0]
	ldr	r0, .L8+28
	str	r4, [r3, #12]
	str	r4, [r3, #32]
	str	r4, [r3, #52]
	str	r4, [r3, #72]
	str	r1, [r8, #20]
	ldr	r3, .L8+32
	ldr	r1, .L8+36
	str	r4, [r0]
	ldr	r0, .L8+40
	str	r2, [r1]
	str	r2, [r3]
	ldr	r1, .L8+44
	ldr	r2, .L8+48
	strb	r4, [r0]
	str	r4, [r8, #44]
	mov	r0, r4
	str	r4, [r8, #68]
	ldr	r3, .L8+52
	str	ip, [r8]
	strh	r2, [r1]	@ movhi
	str	r5, [r8, #4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+56
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L8+60
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+64
	mov	r1, r5
	mov	r2, #10
	mov	r0, #215
	ldr	r3, .L8+68
	ldr	r9, .L8+72
	mov	lr, pc
	bx	r4
	ldr	r7, .L8+76
	ldr	r4, .L8+80
	ldr	r6, .L8+84
	add	r5, r9, #320
.L2:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #2
	str	r0, [r9]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #1
	ldr	r3, [r9]
	add	r0, r0, #23
	str	r0, [r9, #4]
	str	r0, [r9, #12]
	str	r3, [r9, #8]
	add	r9, r9, #16
	cmp	r5, r9
	bne	.L2
	ldr	r0, .L8+48
	ldr	r3, .L8+88
	mov	lr, pc
	bx	r3
	mov	r4, #0
	ldr	r6, .L8+92
	ldr	r5, .L8+96
.L3:
	mov	r0, r4
	mov	r3, r5
	mov	r2, #3
	mov	r1, #5
	add	r4, r4, #6
	mov	lr, pc
	bx	r6
	cmp	r4, #30
	bne	.L3
	ldrb	r2, [r8, #24]	@ zero_extendqisi2
	ldm	r8, {r0, r1}
	ldr	r3, .L8+100
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	count
	.word	enemiesActive
	.word	speedTimer
	.word	enemies
	.word	lasersActive
	.word	.LANCHOR0
	.word	lasers
	.word	damage
	.word	oldLives
	.word	lives
	.word	rings
	.word	ringColor
	.word	20513
	.word	time
	.word	srand
	.word	fillScreen
	.word	drawCircle
	.word	24423
	.word	stars
	.word	2114445439
	.word	rand
	.word	1991868891
	.word	drawHorizontalRings
	.word	drawChar
	.word	32212
	.word	drawPlayer
	.size	initGame, .-initGame
	.align	2
	.global	unpauseGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseGame, %function
unpauseGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r0, #0
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	ldr	r4, .L15+4
	mov	r2, #10
	mov	r1, #80
	ldr	r3, .L15+8
	mov	r0, #215
	ldr	r6, .L15+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+16
	ldr	r0, .L15+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L11
	mov	r4, #0
	mov	r5, r4
	ldr	r8, .L15+24
	ldr	r7, .L15+28
.L12:
	mov	r2, #3
	mov	r0, r4
	mov	r3, r7
	mov	r1, #5
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	add	r5, r5, #1
	cmp	r2, r5
	add	r4, r4, #6
	bgt	.L12
.L11:
	ldr	r3, .L15+32
	ldr	r4, .L15+36
	ldrb	r2, [r3, #24]	@ zero_extendqisi2
	ldm	r3, {r0, r1}
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	fillScreen
	.word	drawCircle
	.word	24423
	.word	lives
	.word	drawHorizontalRings
	.word	20513
	.word	drawChar
	.word	32212
	.word	.LANCHOR0
	.word	drawPlayer
	.size	unpauseGame, .-unpauseGame
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	r0, [r3]
	ldr	r4, .L128+4
	lsr	r2, r0, #4
	ldr	r3, [r4]
	eor	r2, r2, #1
	cmp	r3, #230
	movgt	lr, #0
	andle	lr, r2, #1
	ldr	r9, .L128+8
	ldr	r8, .L128+12
	ldr	r1, [r9]
	ldr	r2, [r4, #4]
	ldr	ip, [r8]
	ldr	r5, .L128+16
	add	r1, r1, #1
	cmp	lr, #0
	str	r3, [r4, #8]
	str	r1, [r9]
	str	r2, [r4, #12]
	str	ip, [r5]
	sub	sp, sp, #28
	bne	.L115
	lsr	ip, r0, #5
	eor	ip, ip, #1
	cmp	r3, #8
	movle	ip, #0
	andgt	ip, ip, #1
	cmp	ip, #0
	ldrne	ip, [r4, #20]
	subne	r3, r3, ip
	strbne	lr, [r4, #24]
	strne	r3, [r4]
.L19:
	lsr	r3, r0, #6
	eor	r3, r3, #1
	cmp	r2, #20
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	subne	r2, r2, #1
	strne	r2, [r4, #4]
	bne	.L21
	lsr	r3, r0, #7
	eor	r3, r3, #1
	cmp	r2, #146
	movgt	r3, #0
	andle	r3, r3, #1
	cmp	r3, #0
	addne	r2, r2, #1
	strne	r2, [r4, #4]
.L21:
	ldr	r3, .L128+20
	smull	r2, r3, r1, r3
	asr	r2, r1, #31
	rsb	r3, r2, r3, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r1, r3, lsl #2
	bne	.L22
	ldr	lr, .L128+24
	ldrb	ip, [lr]	@ zero_extendqisi2
	cmp	ip, #2
	beq	.L113
	cmp	ip, #0
	moveq	r3, #1
	strbeq	r3, [lr]
	beq	.L22
	cmp	ip, #1
	moveq	r3, #3
	strbeq	r3, [lr]
	beq	.L22
	cmp	ip, #3
	beq	.L116
.L22:
	ldr	r3, .L128+20
	smull	ip, r3, r1, r3
	rsb	r2, r2, r3, asr #4
	add	r2, r2, r2, lsl #2
	cmp	r1, r2, lsl #3
	ldreq	r3, .L128+28
	ldreq	r2, .L128+32
	strheq	r2, [r3]	@ movhi
	ands	r3, r0, #1
	bne	.L27
	ldr	r2, .L128+36
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L117
.L27:
	ldr	r6, .L128+40
	mov	r5, r6
	ldr	r7, .L128+44
	ldr	fp, .L128+48
	add	r10, r6, #80
.L37:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L33
	mov	r1, #70
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	mov	r0, #205
	cmp	r3, #0
	mov	r3, #4
	ldr	ip, [r5]
	ldr	r2, [r4, #100]
	str	ip, [r5, #8]
	str	r1, [sp, #4]
	ldr	r1, [r5, #4]
	subeq	ip, ip, #2
	addne	ip, ip, #2
	str	r0, [sp]
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	sub	r0, ip, #1
	mov	r2, r3
	str	ip, [r5]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L118
.L33:
	add	r5, r5, #20
	cmp	r5, r10
	bne	.L37
	mov	r1, #70
	mov	r2, #205
	ldr	r3, [r4, #100]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [r4, #104]
	ldr	r2, [r4, #108]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L119
.L38:
	ldr	r2, [r9]
	ldr	r3, .L128+52
	smull	r1, r3, r2, r3
	asr	r1, r2, #31
	add	r3, r3, r2
	rsb	r3, r1, r3, asr #6
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #3
	bne	.L39
	ldr	r10, .L128+56
	ldr	r2, [r10]
	cmp	r2, #4
	ble	.L120
.L39:
	mov	r10, #0
	ldr	r5, .L128+60
	ldr	fp, .L128+64
.L53:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L43
	ldm	r5, {r0, r1}
	cmp	r0, #216
	str	r0, [r5, #8]
	addne	r0, r0, #1
	str	r1, [r5, #12]
	strne	r0, [r5]
	bne	.L46
	cmp	r1, #79
	addle	r1, r1, #1
	subgt	r1, r1, #1
	str	r1, [r5, #4]
.L46:
	mov	ip, #70
	mov	r2, #205
	ldr	r3, [r4, #100]
	stm	sp, {r2, ip}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	sub	r1, r1, #4
	ldr	r3, [r4, #112]
	ldr	r2, [r4, #116]
	sub	r0, r0, #4
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L121
.L47:
	ldr	r1, [r5, #4]
	ldr	r2, [r5]
	ldr	r0, [r4, #116]
	ldr	ip, [r4, #112]
	sub	r1, r1, #4
	sub	r2, r2, #4
	ldr	r3, [r4, #104]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	sub	r3, r3, #5
	ldr	r2, [r4, #108]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L122
.L48:
	cmp	r10, #4
	beq	.L54
	ldr	r3, [r6, #12]
	cmp	r3, #0
	bne	.L123
.L43:
	add	r10, r10, #1
	cmp	r10, #5
	add	r5, r5, #20
	add	r6, r6, #20
	bne	.L53
.L54:
	ldr	r2, [r9]
	rsb	r3, r2, r2, lsl #5
	rsb	r3, r2, r3, lsl #2
	ldr	r1, .L128+68
	rsb	r3, r3, r3, lsl #5
	add	r3, r3, r3, lsl #20
	sub	r3, r1, r3
	cmp	r1, r3, ror #1
	bcc	.L124
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L55
.L114:
	add	r1, r4, #28
	ldm	r1, {r1, r2}
.L56:
	mov	ip, #8
	mov	r0, #6
	ldr	r3, [r4, #104]
	stm	sp, {r1, r2}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	sub	r3, r3, #5
	ldr	r2, [r4, #108]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L125
.L58:
	mov	ip, #8
	mov	r0, #6
	ldr	r1, [r4, #56]
	ldr	r2, [r4, #52]
	ldr	r3, [r4, #104]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	sub	r3, r3, #5
	ldr	r2, [r4, #108]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L111
	ldr	r5, .L128+72
.L59:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L61
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5]
	moveq	r3, #1
	streq	r3, [r4, #20]
.L61:
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L63
	ldr	r2, .L128+76
	ldr	r1, .L128+80
	mla	r3, r1, r3, r2
	ldr	r2, .L128+84
	cmp	r2, r3, ror #2
	bcc	.L17
.L63:
	ldr	r8, .L128+88
	ldr	r5, .L128+92
	ldr	r7, .L128+96
	ldr	r6, .L128+100
	add	r4, r8, #320
.L64:
	ldm	r8, {r2, r3}
	str	r3, [r8, #12]
	str	r2, [r8, #8]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #2
	str	r0, [r8]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #23
	str	r0, [r8, #4]
	add	r8, r8, #16
	cmp	r4, r8
	bne	.L64
.L17:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L122:
	mov	r0, #0
	mov	ip, #5
	mov	r1, #120
	mov	r2, #80
	ldr	r3, [r8]
	ldr	lr, .L128+16
	str	r3, [lr]
	sub	r3, r3, #1
	str	r3, [r8]
	ldr	r3, .L128+48
	str	r0, [r5]
	stm	r4, {r1, r2}
	str	ip, [r3]
	mov	lr, pc
	bx	fp
	b	.L48
.L121:
	mov	r2, #5
	mov	r0, #0
	ldr	r3, [r8]
	ldr	r1, .L128+16
	str	r3, [r1]
	ldr	r1, .L128+48
	sub	r3, r3, #1
	str	r3, [r8]
	str	r2, [r1]
	ldr	r3, .L128+104
	ldr	r2, .L128+28
	str	r0, [r5]
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	fp
	b	.L47
.L118:
	mov	r2, #5
	mov	r0, #0
	ldr	r3, [r8]
	ldr	r1, .L128+16
	str	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r8]
	str	r2, [fp]
	ldr	r3, .L128+104
	ldr	r2, .L128+28
	str	r0, [r5]
	strh	r3, [r2]	@ movhi
	ldr	r3, .L128+64
	mov	lr, pc
	bx	r3
	b	.L33
.L123:
	mov	ip, #4
	ldm	r6, {r0, r1}
	sub	r1, r1, #1
	ldr	r3, [r4, #112]
	ldr	r2, [r4, #116]
	str	r1, [sp, #4]
	sub	r0, r0, #1
	ldr	r1, [r5, #4]
	str	r0, [sp]
	ldr	r0, [r5]
	add	r3, r3, #3
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	add	r2, r2, #3
	sub	r1, r1, #6
	sub	r0, r0, #6
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L43
	mov	r3, #0
	mov	r0, #1
	str	r3, [r6]
	str	r3, [r5]
	mov	lr, pc
	bx	fp
	b	.L43
.L124:
	ldr	r3, .L128+108
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #5
	ldr	r1, [r4, #68]
	sub	r2, r2, r3, lsl #2
	orrs	r3, r2, r1
	bne	.L114
	ldr	r5, .L128+92
	mov	lr, pc
	bx	r5
	ldr	r2, .L128+112
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #1
	add	r3, r3, r3, lsl #3
	sub	r3, r0, r3
	add	r3, r3, #14
	str	r3, [r4, #52]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	ldr	r3, .L128+116
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	sub	r3, r0, r3
	ldr	r2, [r4, #52]
	add	r3, r3, #23
	str	r3, [r4, #56]
	str	r3, [r4, #64]
	str	r1, [r4, #68]
	str	r2, [r4, #60]
	b	.L114
.L120:
	ldr	r1, .L128+60
	mov	r2, r1
.L41:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L126
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #20
	bne	.L41
	b	.L39
.L117:
	ldr	ip, .L128+120
	ldr	r2, [r4, #16]
	ldr	r0, [ip]
	cmp	r2, r0
	ble	.L27
	ldr	lr, .L128+40
	mov	r2, lr
.L31:
	ldr	r1, [r2, #12]
	cmp	r1, #0
	beq	.L127
	add	r3, r3, #1
	cmp	r3, #4
	add	r2, r2, #20
	bne	.L31
	b	.L27
.L116:
	mov	r3, #2
.L113:
	strb	r3, [lr]
	b	.L22
.L119:
	mov	r2, #120
	mov	r1, #5
	mov	r0, #80
	ldr	r3, [r8]
	str	r2, [r4]
	ldr	r2, .L128+16
	str	r3, [r2]
	ldr	r2, .L128+48
	sub	r3, r3, #1
	str	r3, [r8]
	str	r1, [r2]
	ldr	r3, .L128+28
	ldr	r2, .L128+104
	str	r0, [r4, #4]
	strh	r2, [r3]	@ movhi
	mov	r0, #1
	ldr	r3, .L128+64
	mov	lr, pc
	bx	r3
	b	.L38
.L111:
	mov	r1, #0
	mov	r2, #300
	ldr	r3, [r4, #20]
	ldr	r5, .L128+72
	add	r3, r3, #1
	str	r3, [r4, #20]
	mov	r0, #16
	str	r1, [r4, #52]
	ldr	r3, .L128+64
	str	r2, [r5]
	mov	lr, pc
	bx	r3
	b	.L59
.L125:
	mov	r2, #0
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	mov	r0, #16
	ldr	r3, .L128+64
	str	r2, [r4, #28]
	mov	lr, pc
	bx	r3
	b	.L58
.L115:
	mov	lr, #1
	ldr	ip, [r4, #20]
	add	r3, ip, r3
	str	r3, [r4]
	strb	lr, [r4, #24]
	b	.L19
.L55:
	ldr	r5, .L128+92
	mov	lr, pc
	bx	r5
	ldr	r2, .L128+112
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #1
	add	r3, r3, r3, lsl #3
	sub	r3, r0, r3
	add	r3, r3, #14
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r5
	mov	ip, #1
	ldr	r3, .L128+116
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #5
	add	r2, r3, r2, lsl #2
	ldr	r1, [r4, #28]
	sub	r2, r0, r2
	add	r2, r2, #23
	str	r2, [r4, #32]
	str	r2, [r4, #40]
	str	ip, [r4, #44]
	str	r1, [r4, #36]
	b	.L56
.L126:
	mov	r0, #1
	mov	fp, #8
	add	r3, r3, r3, lsl #2
	add	r2, r1, r3, lsl #2
	str	fp, [r1, r3, lsl #2]
	str	r0, [r2, #16]
	ldr	r5, .L128+92
	str	r2, [sp, #20]
	mov	lr, pc
	bx	r5
	mov	r3, r0
	rsbs	r0, r0, #0
	ldr	r1, [r10]
	and	r0, r0, #127
	ldr	r2, [sp, #20]
	and	r3, r3, #127
	rsbpl	r3, r0, #0
	add	r3, r3, #20
	add	r1, r1, #1
	stmib	r2, {r3, fp}
	str	r3, [r2, #12]
	str	r1, [r10]
	b	.L39
.L127:
	mov	r5, #1
	ldr	r2, [r4, #4]
	add	r1, r3, r3, lsl #2
	add	r7, lr, r1, lsl #2
	ldrb	r6, [r4, #24]	@ zero_extendqisi2
	sub	r2, r2, #3
	str	r2, [r7, #4]
	ldr	r2, [r4]
	cmp	r6, #0
	lsl	r10, r3, #2
	lsl	r1, r1, #2
	subeq	r2, r2, #9
	addne	r2, r2, #8
	add	r3, r10, r3
	streq	r2, [lr, r1]
	strne	r2, [lr, r1]
	add	r0, r0, #1
	add	lr, lr, r3, lsl #2
	str	r5, [r7, #12]
	strbeq	r6, [r7, #16]
	strbne	r5, [r7, #16]
	str	r2, [lr, #8]
	str	r0, [ip]
	b	.L27
.L129:
	.align	2
.L128:
	.word	buttons
	.word	.LANCHOR0
	.word	count
	.word	lives
	.word	oldLives
	.word	1717986919
	.word	rings
	.word	ringColor
	.word	20513
	.word	oldButtons
	.word	lasers
	.word	collision
	.word	damage
	.word	-2004318071
	.word	enemiesActive
	.word	enemies
	.word	playAnalogSound
	.word	7809030
	.word	speedTimer
	.word	28633112
	.word	-1775253149
	.word	14316556
	.word	stars
	.word	rand
	.word	2114445439
	.word	1991868891
	.word	16541
	.word	443351463
	.word	-1080021015
	.word	274877907
	.word	lasersActive
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #0
	ldr	r4, .L169
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	ldr	r3, [r4, #104]
	sub	sp, sp, #8
	ldr	r2, [r4, #108]
	add	r3, r3, #6
	str	r6, [sp]
	ldr	r5, .L169+4
	sub	r1, r1, #5
	sub	r0, r0, #6
	mov	lr, pc
	bx	r5
	ldr	r8, .L169+8
	ldr	r2, .L169+12
	ldr	r3, [r8]
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.L131
.L133:
	mvn	lr, #32768
	ldr	r3, .L169+16
	ldr	r0, .L169+20
	ldr	r3, [r3]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	ldr	r1, .L169+24
	ldr	r2, .L169+28
	add	r0, r0, r0, lsl #2
	rsb	r0, r0, r0, lsl #4
	ldr	ip, [r1]
	sub	r0, r3, r0, lsl #2
	add	r6, r2, #320
.L132:
	cmp	r0, #0
	bne	.L135
	ldr	r1, [r2, #12]
	ldr	r3, [r2, #8]
	rsb	r1, r1, r1, lsl #4
	add	r3, r3, r1, lsl #4
	lsl	r3, r3, #1
	strh	r0, [ip, r3]	@ movhi
.L135:
	ldr	r1, [r2, #4]
	ldr	r3, [r2], #16
	rsb	r1, r1, r1, lsl #4
	add	r3, r3, r1, lsl #4
	lsl	r3, r3, #1
	cmp	r6, r2
	strh	lr, [ip, r3]	@ movhi
	bne	.L132
	mov	r8, #0
	ldr	r6, .L169+32
	ldr	r10, .L169+36
	ldr	r9, .L169+40
	add	r7, r6, #80
.L138:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	bne	.L165
.L136:
	add	r6, r6, #20
	cmp	r7, r6
	bne	.L138
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L166
.L139:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	bne	.L167
.L141:
	mov	r9, #0
	ldr	r6, .L169+44
	ldr	r10, .L169+48
	ldr	r8, .L169+52
	add	r7, r6, #100
.L145:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L168
.L143:
	add	r6, r6, #20
	cmp	r7, r6
	bne	.L145
	ldr	r2, .L169+56
	ldr	r3, .L169+60
	ldr	r5, .L169+64
	ldrh	r1, [r2]
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	r3, .L169+68
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #0
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	ldm	r4, {r0, r1}
	beq	.L146
	ldr	r3, .L169+72
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	sub	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L168:
	add	r0, r6, #8
	ldm	r0, {r0, r1}
	ldr	r3, [r4, #112]
	sub	r0, r0, #4
	str	r9, [sp]
	ldr	r2, [r4, #116]
	sub	r1, r1, #4
	mov	lr, pc
	bx	r5
	ldr	r0, [r6]
	cmp	r0, #0
	bne	.L144
	ldr	r3, [r8]
	sub	r3, r3, #1
	str	r0, [r6, #16]
	str	r3, [r8]
	b	.L143
.L165:
	mov	r3, #4
	ldr	r1, [r6, #4]
	ldr	r0, [r6, #8]
	mov	r2, r3
	sub	r0, r0, #1
	str	r8, [sp]
	sub	r1, r1, #1
	mov	lr, pc
	bx	r5
	ldr	r0, [r6]
	sub	r3, r0, #4
	cmp	r3, #231
	bls	.L137
	ldr	r3, [r9]
	sub	r3, r3, #1
	str	r8, [r6, #12]
	str	r3, [r9]
	b	.L136
.L144:
	ldr	r1, [r6, #4]
	mov	lr, pc
	bx	r10
	b	.L143
.L146:
	ldr	r3, .L169+76
	mov	lr, pc
	bx	r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L131:
	add	r2, r2, r2, lsl #1
	mov	r3, #8
	mov	r1, #5
	mov	r0, r6
	str	r6, [sp]
	lsl	r2, r2, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L133
	mov	r7, r6
	ldr	r10, .L169+80
	ldr	r9, .L169+84
.L134:
	mov	r2, #3
	mov	r0, r6
	mov	r3, r9
	mov	r1, #5
	mov	lr, pc
	bx	r10
	ldr	r2, [r8]
	add	r7, r7, #1
	cmp	r2, r7
	add	r6, r6, #6
	bgt	.L134
	b	.L133
.L137:
	ldr	r1, [r6, #4]
	mov	lr, pc
	bx	r10
	b	.L136
.L167:
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	mov	r2, #0
	ldr	r6, .L169+88
	mov	lr, pc
	bx	r6
	ldr	r0, [r4, #52]
	cmp	r0, #0
	streq	r0, [r4, #68]
	beq	.L141
	ldr	r2, .L169+92
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r6
	b	.L141
.L166:
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	mov	r2, #0
	ldr	r6, .L169+88
	mov	lr, pc
	bx	r6
	ldr	r0, [r4, #28]
	cmp	r0, #0
	streq	r0, [r4, #44]
	beq	.L139
	ldr	r2, .L169+96
	ldr	r1, [r4, #32]
	mov	lr, pc
	bx	r6
	b	.L139
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.word	drawRectangle
	.word	lives
	.word	oldLives
	.word	count
	.word	458129845
	.word	videoBuffer
	.word	stars
	.word	lasers
	.word	drawLaser
	.word	lasersActive
	.word	enemies
	.word	drawAlien
	.word	enemiesActive
	.word	ringColor
	.word	rings
	.word	damage
	.word	drawRings
	.word	drawPlayerHurt
	.word	drawPlayer
	.word	drawChar
	.word	32212
	.word	drawPowerup
	.word	7934
	.word	16541
	.size	drawGame, .-drawGame
	.global	enemyHeight
	.global	enemyWidth
	.global	playerHeight
	.global	playerWidth
	.global	planetSide
	.comm	speedTimer,4,4
	.comm	damage,4,4
	.comm	lasersActive,4,4
	.comm	enemiesActive,4,4
	.comm	oldLives,4,4
	.comm	lives,4,4
	.comm	count,4,4
	.comm	stars,320,4
	.global	player
	.global	powerups
	.comm	lasers,80,4
	.comm	enemies,100,4
	.comm	ringColor,2,2
	.comm	rings,1,1
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	NOTES,2,2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	player, %object
	.size	player, 28
player:
	.word	120
	.word	80
	.word	120
	.word	80
	.word	2
	.word	1
	.byte	0
	.space	3
	.type	powerups, %object
	.size	powerups, 72
powerups:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.space	24
	.type	planetSide, %object
	.size	planetSide, 4
planetSide:
	.word	30
	.type	playerHeight, %object
	.size	playerHeight, 4
playerHeight:
	.word	8
	.type	playerWidth, %object
	.size	playerWidth, 4
playerWidth:
	.word	15
	.type	enemyHeight, %object
	.size	enemyHeight, 4
enemyHeight:
	.word	7
	.type	enemyWidth, %object
	.size	enemyWidth, 4
enemyWidth:
	.word	9
	.ident	"GCC: (devkitARM release 53) 9.1.0"
