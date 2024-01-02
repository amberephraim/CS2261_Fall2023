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
	.file	"area2.c"
	.text
	.align	2
	.global	initArea2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initArea2, %function
initArea2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	ldr	r2, .L13
	ldr	r2, [r2]
	ldr	lr, .L13+4
	ldr	ip, .L13+8
	ldr	r0, .L13+12
	ldr	r1, .L13+16
	cmp	r2, r3
	ldr	r2, .L13+20
	str	r3, [lr, #44]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2, #4]
	bne	.L11
.L2:
	mov	r2, #0
	ldr	r3, .L13+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	lr, .L13+28
	ldr	r1, .L13+32
	ldr	r0, .L13+36
	sub	r3, r3, #2
	cmp	r3, #1
	str	r2, [lr, #24]
	str	r2, [lr, #28]
	str	r2, [lr, #36]
	str	r0, [r1]
	bls	.L1
	mov	r0, #3
	mov	r10, #27
	mov	r9, #152
	mov	r8, #8
	ldr	ip, .L13+40
	mov	r6, r0
	mov	r3, ip
	mov	r1, #1
	mov	r5, #32
	mov	r7, #4
	mov	r4, #6
	mov	fp, #10
	str	r10, [lr]
	str	r9, [lr, #4]
	str	r8, [lr, #48]
.L5:
	cmp	r0, #5
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r7, [r3, #60]
	str	r4, [r3, #68]
	str	r2, [r3, #76]
	strb	r0, [r3, #28]
	str	r1, [r3, #24]
	str	fp, [r3, #44]
	str	r2, [r3, #52]
	str	r4, [r3, #56]
	str	r1, [r3, #72]
	str	r2, [r3, #80]
	str	r6, [r3, #32]
	add	lr, r0, #1
	addne	r3, r3, #88
	andne	r0, lr, #255
	bne	.L5
.L12:
	mov	r2, #252
	mov	r3, #152
	mov	lr, #288
	mov	r0, #2
	mov	r1, #448
	str	r2, [ip]
	str	r3, [ip, #4]
	add	r2, r2, #62
	add	r3, r3, #130
	str	fp, [ip, #244]
	str	r7, [ip, #208]
	str	r6, [ip, #40]
	str	r6, [ip, #216]
	str	lr, [ip, #92]
	str	r0, [ip, #128]
	str	r1, [ip, #180]
	str	r2, [ip, #88]
	str	r3, [ip, #176]
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	ldr	r3, .L13+44
	mov	lr, pc
	bx	r3
	b	.L2
.L14:
	.align	2
.L13:
	.word	pal
	.word	plumbob
	.word	toShops
	.word	toBoss
	.word	delay
	.word	inventory
	.word	state
	.word	player
	.word	cm
	.word	area2cmBitmap
	.word	enemies
	.word	setColor
	.size	initArea2, .-initArea2
	.align	2
	.global	plumbobArea2
	.syntax unified
	.arm
	.fpu softvfp
	.type	plumbobArea2, %function
plumbobArea2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2
	cmpne	r0, #2
	bne	.L16
	mov	r2, #1
	mov	r1, #10
	ldr	r3, .L29
	ldrh	r0, [r3]
	ldr	r3, .L29+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L29+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L29+12
	streq	r2, [r3]
	bx	lr
.L16:
	ldr	r3, .L29+16
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bxeq	lr
	cmp	r1, #1
	cmpne	r0, #1
	bxne	lr
	mov	r2, #1
	mov	r1, #10
	ldr	r3, .L29
	ldrh	r0, [r3]
	ldr	r3, .L29+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L29+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L29+20
	streq	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	oldButtons
	.word	plumbob
	.word	buttons
	.word	toShops
	.word	inventory
	.word	toBoss
	.size	plumbobArea2, .-plumbobArea2
	.align	2
	.global	updateEnemiesArea2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemiesArea2, %function
updateEnemiesArea2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	ldr	r10, .L115
	ldr	r3, [r10]
	add	r3, r3, #1
	str	r3, [r10]
	ldr	r9, .L115+4
	ldr	r8, .L115+8
	ldr	fp, .L115+12
	sub	sp, sp, #36
.L73:
	ldr	r3, [r9, #72]
	cmp	r3, #0
	bne	.L32
	mov	r1, #512
	ldrb	r3, [r9, #28]	@ zero_extendqisi2
	ldr	r2, .L115+16
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
.L33:
	add	r7, r7, #1
	cmp	r7, #3
	add	r9, r9, #88
	bne	.L73
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	ldr	r3, [r9, #80]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r9, #80]
	ldr	r1, [r9]
	ldr	r2, [r9, #16]
	ldr	r0, [r9, #4]
	ldr	r3, [r9, #20]
	ldr	r4, .L115+20
	str	r1, [sp, #24]
	str	r2, [sp, #28]
	str	r0, [sp, #16]
	str	r3, [sp, #20]
	ldr	r6, .L115+24
	add	r5, r4, #176
.L39:
	stmib	sp, {r0, r2, r3}
	str	r1, [sp]
	add	r2, r4, #16
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	add	r4, r4, #44
	bne	.L108
.L36:
	cmp	r5, r4
	beq	.L100
.L109:
	ldr	r1, [r9]
	ldr	r2, [r9, #16]
	ldr	r0, [r9, #4]
	ldr	r3, [r9, #20]
	b	.L39
.L108:
	mov	r3, #0
	str	r3, [r9, #72]
	ldr	r3, .L115+28
	mov	lr, pc
	bx	r3
	ldr	r1, .L115+32
	smull	r3, r1, r0, r1
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #4
	add	r1, r2, r2, lsl #2
	add	r1, r1, r1, lsl #2
	add	r2, r2, r1, lsl #2
	sub	r0, r0, r2
	ldr	r1, [fp, #8]
	ldr	r2, [r6, #144]
	add	r0, r0, #50
	add	r0, r0, r1
	cmp	r2, #0
	str	r0, [fp, #8]
	beq	.L37
	mov	r3, #0
	ldr	r2, [r9, #32]
	cmp	r2, #3
	streq	r3, [r6, #148]
.L37:
	cmp	r7, #2
	bne	.L36
	mov	r2, #1
	ldr	r3, .L115+36
	str	r2, [fp, #4]
	ldr	r1, .L115+40
	ldr	r2, .L115+44
	ldr	r0, .L115+48
	str	r1, [r3, #3828]
	str	r0, [r3, #3508]
	str	r2, [r3, #3572]
	str	r2, [r3, #3636]
	str	r2, [r3, #3700]
	str	r2, [r3, #3764]
	ldr	r1, .L115+52
	ldr	r2, .L115+56
	add	r3, r3, #3824
	ldr	r0, .L115+60
	add	r3, r3, #2
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L115+64
	ldr	r2, .L115+68
	cmp	r5, r4
	strh	r3, [r1, #64]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r1, #192]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	bne	.L109
.L100:
	ldr	r4, .L115+72
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L41
	ldr	r5, [r9, #80]
	cmp	r5, #0
	beq	.L110
.L42:
	ldr	r3, [r9, #32]
	cmp	r3, #3
	bne	.L107
.L49:
	ldr	r1, [r9, #20]
	ldr	r3, .L115+76
	ldr	r0, [r9, #4]
	mov	lr, pc
	bx	r3
	ldrb	r2, [r9, #28]	@ zero_extendqisi2
	ldr	r4, .L115+16
	and	r3, r0, #255
	lsl	r2, r2, #3
	ldr	r1, [r9, #16]
	strh	r3, [r4, r2]	@ movhi
	ldr	r0, [r9]
	ldr	r3, .L115+80
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	ldr	r2, [r9, #80]
	cmp	r2, #0
	ldreq	r2, [r9, #52]
	ldrne	r2, [r9, #24]
	addeq	r2, r2, #224
	lsleq	r2, r2, #2
	ldrb	r3, [r9, #28]	@ zero_extendqisi2
	ldreq	r1, [r9, #24]
	lslne	r2, r2, #12
	andeq	r2, r2, #1020
	add	r3, r4, r3, lsl #3
	orrne	r2, r2, #924
	orreq	r2, r2, r1, lsl #12
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L47:
	ldr	r3, [r9, #40]
	cmp	r3, #2
	bne	.L33
.L112:
	ldrb	r2, [r9, #28]	@ zero_extendqisi2
	ldr	r3, .L115+16
	add	r3, r3, r2, lsl #3
	ldrh	r2, [r3, #2]
	orr	r2, r2, #4096
	strh	r2, [r3, #2]	@ movhi
	b	.L33
.L110:
	ldr	r0, [r9, #20]
	ldr	r1, [r9, #16]
	ldr	r2, [r9, #4]
	ldr	r3, [r9]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #96
	ldm	r0, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L41
	mov	r1, #60
	ldr	r2, [r4, #120]
	ldr	r3, [r4, #64]
	add	r3, r3, r2
	ldr	r2, [r4, #72]
	add	r3, r3, r2
	ldr	r2, [r9, #68]
	sub	r3, r2, r3
	cmp	r3, #0
	str	r3, [r9, #68]
	str	r1, [r9, #80]
	bgt	.L42
	ldr	r3, .L115+24
	ldr	r2, [r3, #144]
	cmp	r2, #0
	beq	.L44
	ldr	r2, [r9, #32]
	cmp	r2, #3
	streq	r5, [r3, #148]
.L44:
	mov	r3, #0
	str	r3, [r9, #72]
	ldr	r3, .L115+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+32
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r3, r0, r3
	ldr	r2, [fp, #8]
	add	r3, r3, #50
	add	r3, r3, r2
	cmp	r7, #2
	str	r3, [fp, #8]
	bne	.L41
	mov	r1, #1
	ldr	r3, .L115+36
	ldr	r2, .L115+48
	str	r1, [fp, #4]
	str	r2, [r3, #3508]
	ldr	r1, .L115+40
	add	r2, r2, #2097152
	add	r2, r2, #32
	str	r1, [r3, #3828]
	str	r2, [r3, #3572]
	str	r2, [r3, #3636]
	str	r2, [r3, #3700]
	str	r2, [r3, #3764]
	ldr	r1, .L115+52
	ldr	r2, .L115+56
	add	r3, r3, #3824
	ldr	r0, .L115+60
	add	r3, r3, #2
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L115+64
	ldr	r2, .L115+68
	strh	r3, [r1, #64]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r1, #192]	@ movhi
	strh	r3, [r2, #128]	@ movhi
.L41:
	ldr	r3, [r9, #32]
	cmp	r3, #3
	beq	.L45
.L107:
	cmp	r3, #4
	bne	.L47
	ldr	r0, [r9, #4]
	ldr	r1, [r4, #4]
	sub	r3, r0, #59
	cmp	r3, r1
	ble	.L111
.L61:
	ldr	r3, [r9, #44]
	subs	r3, r3, #1
	strne	r3, [r9, #44]
	bne	.L68
	mov	r1, #10
	ldr	r3, [r9, #52]
	ldr	r2, .L115+84
	add	r3, r3, #1
	smull	ip, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2, lsl #1
	str	r3, [r9, #52]
	str	r1, [r9, #44]
.L68:
	ldr	r1, [r9, #20]
	ldr	r3, .L115+76
	mov	lr, pc
	bx	r3
	ldrb	r3, [r9, #28]	@ zero_extendqisi2
	ldr	r4, .L115+16
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
	ldr	r1, [r9, #16]
	ldr	r3, .L115+80
	ldr	r0, [r9]
	mov	lr, pc
	bx	r3
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r9, #28]	@ zero_extendqisi2
	ldr	r1, [r9, #80]
	add	r2, r4, r2, lsl #3
	cmp	r1, #0
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, [r9, #24]
	beq	.L69
	lsl	r3, r3, #12
	orr	r3, r3, #668
	strh	r3, [r2, #4]	@ movhi
	ldr	r1, [r9, #52]
.L70:
	cmp	r1, #5
	moveq	r3, #0
	streq	r3, [r9, #76]
	ldr	r3, [r9, #40]
	cmp	r3, #2
	bne	.L33
	b	.L112
.L111:
	ldr	r3, [r9, #80]
	cmp	r3, #0
	bne	.L61
	ldr	r3, [r9, #76]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r9, #52]
	sub	r3, r3, #3
	cmp	r3, #1
	bhi	.L61
	ldr	r5, [r4, #76]
	cmp	r5, #0
	bne	.L61
	add	r2, r9, #16
	ldm	r2, {r2, ip}
	ldr	r3, [r9]
	ldr	lr, [r4]
	str	r0, [sp, #4]
	str	r2, [sp, #8]
	str	ip, [sp, #12]
	str	r3, [sp]
	mov	r2, #16
	ldr	r3, [r4, #20]
	add	r0, lr, #8
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L101
.L105:
	ldr	r0, [r9, #4]
	b	.L61
.L45:
	ldr	r3, [r9, #80]
	cmp	r3, #0
	bne	.L49
	ldr	r5, [r4, #76]
	cmp	r5, #0
	ldr	r2, [r9]
	beq	.L113
.L50:
	add	r0, sp, #16
	ldr	r1, [r9, #40]
	ldm	r0, {r0, ip}
	ldr	r3, .L115+88
	add	r0, r0, ip
	cmp	r1, #3
	ldr	r3, [r3]
	ldr	ip, [r9, #8]
	lsl	r1, r0, #9
	beq	.L114
	sub	r2, r2, ip
	str	r2, [r9]
	ldr	r2, [sp, #24]
	add	r3, r3, r2
	ldrb	r2, [r3, r0, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r1
	bne	.L55
	ldrb	r3, [r3, #-513]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L54
.L55:
	mov	r3, #3
	str	r3, [r9, #40]
	b	.L54
.L69:
	ldr	r1, [r9, #76]
	cmp	r1, #0
	ldr	r1, [r9, #52]
	addne	r0, r1, #192
	addeq	r0, r1, #160
	lsl	r3, r3, #28
	lsl	r0, r0, #2
	asr	r3, r3, #16
	and	r0, r0, #1020
	orr	r3, r3, r0
	strh	r3, [r2, #4]	@ movhi
	b	.L70
.L114:
	ldr	r0, [sp, #28]
	add	r3, r3, r0
	ldr	r0, [sp, #24]
	add	r2, ip, r2
	str	r2, [r9]
	add	r3, r3, r0
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #2
	strne	r3, [r9, #40]
.L54:
	ldr	r3, [r9, #44]
	subs	r3, r3, #1
	strne	r3, [r9, #44]
	bne	.L49
	mov	r1, #10
	ldr	r3, [r9, #52]
	ldr	r2, .L115+84
	add	r3, r3, #1
	smull	r0, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2, lsl #1
	str	r3, [r9, #52]
	str	r1, [r9, #44]
	b	.L49
.L113:
	mov	ip, #8
	ldr	r3, [r9, #4]
	add	r2, r2, #14
	add	r3, r3, ip
	ldr	r0, [r4]
	ldr	r1, [r9, #20]
	stm	sp, {r2, r3, ip}
	str	r1, [sp, #12]
	mov	r2, #16
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #4]
	add	r0, r0, ip
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L51
.L104:
	ldr	r2, [r9]
	b	.L50
.L63:
	ldr	r3, [r10]
	ands	r3, r3, #1
	bne	.L33
	ldr	ip, [r4]
	ldr	r1, [r9]
	sub	r2, r1, ip
	add	r2, r2, #19
	cmp	r2, #38
	bhi	.L65
	mov	r2, #1
	str	r3, [r9, #52]
	str	r2, [r9, #76]
	b	.L61
.L51:
	mov	ip, #45
	ldr	r3, [r9, #60]
	ldr	r1, [r4, #68]
	sub	r1, r3, r1
	ldr	r3, [r4, #80]
	sub	r3, r3, r1
	ldr	r1, .L115+92
	str	r3, [r4, #80]
	mov	r2, r5
	ldr	r1, [r1]
	ldr	r3, .L115+96
	ldr	r0, .L115+100
	str	ip, [r4, #76]
	mov	lr, pc
	bx	r3
	b	.L104
.L65:
	cmp	r1, ip
	movlt	r2, #3
	movge	r3, #2
	ldrlt	r3, [r9, #8]
	ldrge	r2, [r9, #8]
	addlt	r1, r3, r1
	subge	r1, r1, r2
	strlt	r1, [r9]
	strlt	r2, [r9, #40]
	strge	r1, [r9]
	strge	r3, [r9, #40]
	b	.L61
.L101:
	mov	ip, #45
	ldr	r3, [r9, #60]
	ldr	r1, [r4, #68]
	sub	r1, r3, r1
	ldr	r3, [r4, #80]
	sub	r3, r3, r1
	ldr	r1, .L115+92
	str	r3, [r4, #80]
	mov	r2, r5
	ldr	r1, [r1]
	ldr	r3, .L115+96
	ldr	r0, .L115+100
	str	ip, [r4, #76]
	mov	lr, pc
	bx	r3
	b	.L105
.L116:
	.align	2
.L115:
	.word	delay
	.word	enemies
	.word	collision
	.word	inventory
	.word	shadowOAM
	.word	bullets
	.word	people
	.word	rand
	.word	680390859
	.word	100700160
	.word	65536999
	.word	57148263
	.word	55051079
	.word	100703666
	.word	998
	.word	838
	.word	870
	.word	100703794
	.word	player
	.word	screenY
	.word	screenX
	.word	715827883
	.word	cm
	.word	hit_length
	.word	playSoundB
	.word	hit_data
	.size	updateEnemiesArea2, .-updateEnemiesArea2
	.align	2
	.global	updateArea2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateArea2, %function
updateArea2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L125
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L123
	ldr	r3, .L125+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L120
	ldr	r3, .L125+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L120:
	ldr	r1, .L125+12
	ldr	r2, .L125+16
	str	r3, [r1, #44]
	mov	lr, pc
	bx	r2
	bl	updateEnemiesArea2
	ldr	r3, .L125+20
	ldr	r2, [r3, #80]
	cmp	r2, #0
	ble	.L124
	ldr	r3, .L125+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L123:
	ldr	r3, .L125+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L124:
	ldr	r1, [r3, #84]
	ldr	r2, .L125+32
	str	r1, [r3, #80]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	toShops
	.word	toBoss
	.word	goToFinal
	.word	plumbob
	.word	updatePlayer
	.word	player
	.word	draw
	.word	goToShops
	.word	goToLose
	.size	updateArea2, .-updateArea2
	.comm	delay,4,4
	.comm	bullets,176,4
	.comm	enemies,264,4
	.comm	inventory,16,4
	.comm	toBoss,4,4
	.comm	toShops,4,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	cm,4,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
