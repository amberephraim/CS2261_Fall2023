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
	.file	"shops.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAds.part.0, %function
updateAds.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #200
	ldr	ip, .L4
	ldr	r3, [ip]
	ldr	r1, .L4+4
	add	r3, r3, #1
	smull	r2, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r3, r1, r1, lsl #1
	lsl	r3, r3, #16
	str	r1, [ip]
	ldr	r2, .L4+8
	lsr	r3, r3, #16
	ldr	r1, .L4+12
	add	r0, r3, #448
	str	lr, [r1]
	add	ip, r0, #2
	add	lr, r2, #760
	add	r0, r0, #3
	add	r1, r3, #472
	strh	ip, [lr]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	add	ip, r3, #476
	add	lr, r2, #824
	add	r1, r1, #3
	strh	r1, [lr]	@ movhi
	strh	ip, [lr, #2]	@ movhi
	add	r0, r3, #500
	add	lr, r2, #828
	add	ip, ip, #1
	strh	ip, [lr]	@ movhi
	add	lr, r2, #888
	add	ip, r0, #1
	strh	r0, [lr]	@ movhi
	strh	ip, [lr, #2]	@ movhi
	add	r1, r3, #524
	add	lr, r2, #892
	add	r0, r0, #2
	strh	r0, [lr]	@ movhi
	add	r0, r2, #952
	add	lr, r1, #1
	strh	lr, [r0]	@ movhi
	add	lr, r1, #2
	strh	lr, [r0, #2]	@ movhi
	add	ip, r3, #548
	add	lr, r2, #956
	add	r1, r1, #3
	strh	r1, [lr]	@ movhi
	add	r0, ip, #2
	add	r1, r2, #1016
	strh	r0, [r1]	@ movhi
	add	lr, r3, #452
	add	r0, r2, #764
	add	ip, ip, #3
	add	r3, r3, #552
	add	r2, r2, #1020
	strh	ip, [r1, #2]	@ movhi
	strh	lr, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	ad
	.word	1431655766
	.word	100700160
	.word	adTimer
	.size	updateAds.part.0, .-updateAds.part.0
	.align	2
	.global	initShops
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShops, %function
initShops:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	ldr	r3, .L18
	ldr	ip, [r3]
	ldr	r1, .L18+4
	ldr	r3, .L18+8
	ldr	r2, .L18+12
	cmp	ip, r0
	push	{r4, lr}
	str	r0, [r1]
	str	r2, [r3]
	bne	.L17
.L7:
	ldr	r3, .L18+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #3
	cmp	r3, #1
	mov	r1, #196
	movls	r3, #44
	ldr	r2, .L18+20
	str	r1, [r2, #4]
	strls	r3, [r2]
	bls	.L9
	ldr	r3, .L18+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r1, r3, #2
	cmp	r3, #8
	cmpne	r1, #2
	movhi	r3, #312
	strhi	r3, [r2]
.L9:
	mov	r3, #0
	mov	r1, #200
	ldr	r4, .L18+28
	ldr	lr, .L18+32
	ldr	ip, .L18+36
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #36]
	str	r3, [r2, #40]
	str	r3, [r2, #76]
	ldr	r0, .L18+40
	ldr	r2, .L18+44
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L17:
	ldr	r3, .L18+48
	mov	lr, pc
	bx	r3
	b	.L7
.L19:
	.align	2
.L18:
	.word	pal
	.word	toText
	.word	cm
	.word	shopscmBitmap
	.word	gameState
	.word	player
	.word	state
	.word	ad
	.word	toHouse
	.word	toAreas
	.word	toStore
	.word	adTimer
	.word	setColor
	.size	initShops, .-initShops
	.align	2
	.global	updateMoveMaps
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMoveMaps, %function
updateMoveMaps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L46
	ldrh	r3, [r3]
	tst	r3, #32
	push	{r4, lr}
	beq	.L21
	ldr	r2, .L46+4
	ldrh	r2, [r2]
	tst	r2, #32
	moveq	r2, #5
	ldreq	r3, .L46+8
	strbeq	r2, [r3]
	beq	.L22
.L21:
	tst	r3, #16
	beq	.L23
	ldr	r2, .L46+4
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L23
	ldr	r2, .L46+12
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L23
	mov	r2, #4
	ldr	r3, .L46+8
	strb	r2, [r3]
.L24:
	mov	ip, #248
	ldr	r2, .L46+16
	ldr	r1, .L46+20
	ldr	r3, [r2]
	ldr	r0, .L46+24
	ldr	lr, [r1]
	ldr	r2, [r2, #4]
	ldr	r0, [r0]
	ldr	r1, .L46+28
	sub	r3, r3, #6
	sub	r3, r3, lr
	sub	r2, r2, #20
	ldrb	r1, [r1, #52]	@ zero_extendqisi2
	ldr	lr, .L46+32
	sub	r2, r2, r0
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r0, lr, r1, lsl #3
	orr	r3, r3, #16384
	lsl	r1, r1, #3
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [lr, r1]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	b	.L28
.L23:
	ldr	r4, .L46+8
	tst	r3, #1
	ldrb	r2, [r4]	@ zero_extendqisi2
	bne	.L45
.L25:
	tst	r3, #2
	beq	.L27
	ldr	r3, .L46+4
	ldrh	r3, [r3]
	ands	r3, r3, #2
	ldreq	r1, .L46+36
	streq	r3, [r1]
.L27:
	cmp	r2, #4
	beq	.L24
.L22:
	ldr	r2, .L46+16
	ldr	r1, .L46+20
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, #7
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mov	lr, #280
	mvn	r3, r3, lsr #18
	ldr	r0, .L46+24
	ldr	r2, [r2, #4]
	ldr	r0, [r0]
	ldr	r1, .L46+28
	sub	r2, r2, #20
	ldrb	r1, [r1, #52]	@ zero_extendqisi2
	ldr	ip, .L46+32
	sub	r2, r2, r0
	and	r2, r2, #255
	add	r0, ip, r1, lsl #3
	orr	r2, r2, #16384
	lsl	r1, r1, #3
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	strh	lr, [r0, #4]	@ movhi
.L28:
	ldr	r3, .L46+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L45:
	ldr	r1, .L46+4
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L25
	cmp	r2, #4
	ldreq	r3, .L46+44
	ldrne	r3, .L46+48
	mov	lr, pc
	bx	r3
	ldrb	r2, [r4]	@ zero_extendqisi2
	b	.L27
.L47:
	.align	2
.L46:
	.word	oldButtons
	.word	buttons
	.word	menuButton
	.word	inventory
	.word	player
	.word	hOff0
	.word	vOff0
	.word	plumbob
	.word	shadowOAM
	.word	toAreas
	.word	draw
	.word	goToArea2
	.word	goToArea1
	.size	updateMoveMaps, .-updateMoveMaps
	.align	2
	.global	plumbobShops
	.syntax unified
	.arm
	.fpu softvfp
	.type	plumbobShops, %function
plumbobShops:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	cmpne	r0, #1
	bne	.L49
	mov	r2, #1
	mov	r1, #8
	ldr	r3, .L63
	ldrh	r0, [r3]
	ldr	r3, .L63+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L63+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L63+12
	streq	r2, [r3]
	bx	lr
.L49:
	cmp	r1, #2
	cmpne	r0, #2
	bne	.L53
	mov	r2, #1
	mov	r1, #8
	ldr	r3, .L63
	ldrh	r0, [r3]
	ldr	r3, .L63+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L63+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L63+16
	streq	r2, [r3]
	bx	lr
.L53:
	cmp	r1, #3
	cmpne	r0, #3
	bxne	lr
	mov	r2, #1
	mov	r1, #8
	ldr	r3, .L63
	ldrh	r0, [r3]
	ldr	r3, .L63+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L63+8
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r0, #5
	ldreq	r1, .L63+20
	ldreq	r3, .L63+24
	strbeq	r0, [r1]
	streq	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	oldButtons
	.word	plumbob
	.word	buttons
	.word	toHouse
	.word	toStore
	.word	menuButton
	.word	toAreas
	.size	plumbobShops, .-plumbobShops
	.global	__aeabi_idivmod
	.align	2
	.global	updateNPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNPC, %function
updateNPC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L144
	mov	r4, r9
	mov	r5, #1
	ldr	r3, [r4, #36]
	cmp	r3, #0
	ldr	r8, .L144+4
	ldr	r10, .L144+8
	ldr	r7, .L144+12
	sub	sp, sp, #20
	sub	fp, r5, #1
	beq	.L66
.L137:
	add	r1, r4, #8
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, [r8]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r2, #16
	ldr	r3, [r8, #20]
	ldr	r1, [r8, #4]
	ldr	ip, .L144+16
	add	r0, r0, #8
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L68
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L68
	mov	r6, #1
	mov	r2, #9
	ldr	r3, .L144+20
	ldrh	r1, [r3]
	ldr	r3, .L144+24
	tst	r1, #1
	str	r6, [r3, #44]
	str	r2, [r3, #48]
	bne	.L136
.L68:
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	bne	.L93
	mov	r3, #15
	ldr	r0, [r4, #28]
	str	r3, [r4, #24]
	ldr	r1, [r4, #32]
	ldr	r3, .L144+28
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #28]
.L93:
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	ldr	r6, .L144+32
	ldrb	r2, [r4, #20]	@ zero_extendqisi2
	and	r3, r0, #255
	orr	r3, r3, r6
	lsl	r2, r2, #3
	strh	r3, [r7, r2]	@ movhi
	ldr	r0, [r4]
	ldr	r3, .L144+36
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4, #20]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	and	r6, r6, #32768
	add	r2, r7, r3, lsl #3
	orr	r6, r6, r0
	sub	fp, fp, #1
	strh	r6, [r2, #2]	@ movhi
	lsl	r3, r3, #3
	cmp	fp, #4
	ldrls	pc, [pc, fp, asl #2]
	b	.L94
.L96:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L95
.L95:
	ldr	r1, [r9, #288]
	ldr	r2, .L144+40
	ldr	r0, [r9, #276]
	add	r1, r1, #456
	and	r2, r2, r1, lsl #1
	orr	r2, r2, r0, lsl #12
	add	r7, r7, r3
	orr	fp, r6, #4096
	orr	r3, r2, #1024
	strh	fp, [r7, #2]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L97:
	ldr	r0, [r9, #212]
	mov	lr, pc
	bx	r10
	ldrb	r3, [r9, #228]	@ zero_extendqisi2
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r7, r3]	@ movhi
	ldr	r0, [r9, #208]
	ldr	r3, .L144+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r9, #236]
	add	r3, r3, #224
	ldr	r2, [r9, #224]
	lsl	r3, r3, #2
	and	r3, r3, #1020
	orr	r3, r3, r2, lsl #12
	ldr	r1, .L144+44
	ldrb	r2, [r9, #228]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	add	r2, r7, r2, lsl #3
	orr	r1, r0, r1
	orr	r3, r3, #1024
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
.L104:
	ldr	r3, [r4, #88]
	add	r5, r5, #1
	cmp	r3, #0
	add	r4, r4, #52
	sub	fp, r5, #1
	bne	.L137
.L66:
	cmp	r5, #6
	bne	.L104
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L98:
	ldr	r1, [r9, #184]
	ldr	r2, .L144+40
	ldr	r0, [r9, #172]
	add	r1, r1, #460
.L134:
	and	r2, r2, r1, lsl #1
	orr	r2, r2, r0, lsl #12
	add	r3, r7, r3
	orr	r2, r2, #1024
	strh	r2, [r3, #4]	@ movhi
	b	.L104
.L99:
	ldr	r1, [r9, #132]
	ldr	r2, .L144+40
	ldr	r0, [r9, #120]
	add	r1, r1, #396
	b	.L134
.L100:
	ldr	r1, [r9, #80]
	ldr	r2, .L144+40
	add	r1, r1, #392
	and	r2, r2, r1, lsl #1
	ldr	ip, [r9, #68]
	ldr	r0, [r8]
	ldr	r1, [r9, #52]
	orr	r2, r2, ip, lsl #12
	cmp	r0, r1
	add	r3, r7, r3
	orr	r2, r2, #1024
	orrlt	r6, r6, #4096
	strh	r2, [r3, #4]	@ movhi
	strhlt	r6, [r3, #2]	@ movhi
	b	.L104
.L136:
	ldr	r3, .L144+48
	ldrh	r2, [r3]
	ands	r2, r2, r6
	bne	.L68
	cmp	fp, r6
	beq	.L138
	cmp	fp, #2
	beq	.L139
	cmp	fp, #3
	beq	.L140
	cmp	fp, #4
	beq	.L141
	cmp	fp, #5
	beq	.L142
	ldr	r3, .L144+52
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L144+56
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L82
	ldr	r6, .L144+64
	ldr	lr, [r6, #8]
	ldr	r0, .L144+68
	add	lr, lr, #150
	mov	r2, r3
	mov	r1, r0
	mov	ip, r0
	str	lr, [r6, #8]
	b	.L85
.L83:
	add	r2, r2, #1
	cmp	r2, #22
	add	ip, ip, #44
	beq	.L84
.L85:
	ldr	lr, [ip, #36]
	cmp	lr, #0
	bne	.L83
	mov	ip, #2
	mov	lr, #1
	add	r6, r2, r2, lsl ip
	add	r2, r2, r6, lsl lr
	add	r2, r1, r2, lsl ip
	str	lr, [r2, #36]
	str	ip, [r2, #8]
.L84:
	mov	r2, #0
	ldr	ip, .L144+68
	b	.L88
.L86:
	add	r2, r2, #1
	cmp	r2, #22
	add	ip, ip, #44
	beq	.L91
.L88:
	ldr	lr, [ip, #36]
	cmp	lr, #0
	bne	.L86
	mov	ip, #1
	add	lr, r2, r2, lsl #2
	add	r2, r2, lr, lsl ip
	add	r2, r1, r2, lsl #2
	str	ip, [r2, #36]
	str	ip, [r2, #8]
	b	.L91
.L82:
	mov	r2, #0
	ldr	r3, .L144+72
	strb	r2, [r3]
.L73:
	mov	r2, #1
	ldr	r3, .L144+76
	str	r2, [r3]
	b	.L68
.L89:
	add	r3, r3, #1
	cmp	r3, #22
	add	r0, r0, #44
	beq	.L90
.L91:
	ldr	r2, [r0, #36]
	cmp	r2, #0
	bne	.L89
	mov	r0, #1
	mov	r2, #3
	add	ip, r3, r3, lsl #2
	add	r3, r3, ip, lsl r0
	add	r3, r1, r3, lsl #2
	str	r0, [r3, #36]
	str	r2, [r3, #8]
.L90:
	mov	r1, #1
	mov	r2, #8
	ldr	r3, .L144+72
	str	r1, [r4, #48]
	strb	r2, [r3]
	b	.L73
.L141:
	ldr	r3, [r9, #248]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r9, #252]
	cmp	r3, #0
	beq	.L143
.L77:
	mov	r2, #3
	ldr	r3, .L144+72
	strb	r2, [r3]
	b	.L73
.L138:
	ldr	r3, .L144+80
	ldr	r0, .L144+84
	ldr	r1, [r3]
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L144+72
	ldr	r3, .L144+76
	strb	r1, [r2]
	str	fp, [r3]
	b	.L68
.L142:
	ldr	r3, .L144+88
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L144+92
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r1, .L144+72
	ldr	r2, .L144+76
	strb	r3, [r1]
	str	r3, [r2]
	b	.L68
.L139:
	ldr	r3, .L144+96
	ldr	r0, .L144+100
	ldr	r1, [r3]
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r9, #144]
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r9, #148]
	cmp	r3, #0
	bne	.L72
	mov	r1, #8
	ldr	r2, .L144+64
	ldr	r3, [r2, #8]
	add	r3, r3, #500
	str	r3, [r2, #8]
	ldr	r3, .L144+72
	str	r6, [r9, #152]
	strb	r1, [r3]
	b	.L73
.L140:
	ldr	r3, .L144+104
	ldr	r0, .L144+108
	ldr	r1, [r3]
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r9, #196]
	cmp	r3, #0
	beq	.L75
	ldr	r2, .L144+112
	ldr	r3, [r2, #60]
	ldr	r1, [r2, #92]
	ldr	r2, [r2, #124]
	orr	r3, r3, r1
	orrs	r3, r3, r2
	beq	.L75
	mov	r1, #1
	mov	r2, #8
	ldr	r3, [r8, #64]
	add	r3, r3, r1
	str	r3, [r8, #64]
	ldr	r3, .L144+72
	str	r1, [r9, #204]
	strb	r2, [r3]
	b	.L73
.L72:
	mov	r2, #4
	ldr	r3, .L144+72
	strb	r2, [r3]
	b	.L73
.L75:
	mov	r2, #5
	ldr	r3, .L144+72
	strb	r2, [r3]
	b	.L73
.L143:
	ldr	ip, .L144+64
	ldr	r0, [ip, #8]
	ldr	r1, .L144+68
	add	r0, r0, #500
	mov	r2, r1
	str	r0, [ip, #8]
	b	.L80
.L78:
	add	r3, r3, #1
	cmp	r3, #22
	add	r2, r2, #44
	beq	.L79
.L80:
	ldr	r0, [r2, #36]
	cmp	r0, #0
	bne	.L78
	mov	r0, #1
	mov	r2, #4
	add	ip, r3, r3, lsl #2
	add	r3, r3, ip, lsl r0
	add	r1, r1, r3, lsl #2
	str	r0, [r1, #36]
	str	r2, [r1, #8]
.L79:
	mov	r1, #1
	mov	r2, #8
	ldr	r3, .L144+72
	str	r1, [r9, #256]
	strb	r2, [r3]
	b	.L73
.L94:
	ldr	r0, [r9, #4]
	mov	lr, pc
	bx	r10
	ldrb	r3, [r9, #20]	@ zero_extendqisi2
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r7, r3]	@ movhi
	ldr	r0, [r9]
	ldr	r3, .L144+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r9, #28]
	add	r3, r3, #192
	ldr	ip, [r9, #16]
	lsl	r3, r3, #2
	ldrb	r1, [r9, #20]	@ zero_extendqisi2
	lsl	r2, r0, #23
	and	r3, r3, #1020
	lsr	r2, r2, #23
	orr	r3, r3, ip, lsl #12
	add	r1, r7, r1, lsl #3
	orr	r2, r2, #36864
	orr	r3, r3, #1024
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L66
.L145:
	.align	2
.L144:
	.word	people
	.word	player
	.word	screenY
	.word	shadowOAM
	.word	collision
	.word	oldButtons
	.word	plumbob
	.word	__aeabi_idivmod
	.word	-32768
	.word	screenX
	.word	1022
	.word	-28672
	.word	buttons
	.word	hi2_length
	.word	hi2_data
	.word	playSoundB
	.word	inventory
	.word	allItems
	.word	ltext
	.word	toText
	.word	hello1_length
	.word	hello1_data
	.word	hey2_length
	.word	hey2_data
	.word	hey1_length
	.word	hey1_data
	.word	hello2_length
	.word	hello2_data
	.word	allWeapons
	.size	updateNPC, .-updateNPC
	.align	2
	.global	updateShops
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShops, %function
updateShops:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L164
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	beq	.L147
	bl	updateNPC
	ldr	r2, .L164+4
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bleq	updateAds.part.0
.L148:
	pop	{r4, r5, r6, lr}
	b	updateMoveMaps
.L147:
	ldr	r2, .L164+8
	ldr	r4, .L164+12
	ldr	r5, .L164+16
	str	r3, [r2, #44]
	str	r3, [r4]
	bl	updateNPC
	ldr	r3, .L164+20
	mov	lr, pc
	bx	r3
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	ldr	r0, .L164+4
	ldr	r2, .L164+24
	add	r2, r2, r3, lsl #3
	ldr	r3, [r0]
	ldrh	r1, [r2, #4]
	sub	r3, r3, #1
	orr	r1, r1, #1024
	cmp	r3, #0
	strh	r1, [r2, #4]	@ movhi
	str	r3, [r0]
	bleq	updateAds.part.0
.L149:
	ldr	r3, [r5]
	sub	r3, r3, #231
	cmp	r3, #18
	bhi	.L150
	ldr	r3, .L164+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L150
	tst	r3, #2
	beq	.L150
	ldr	r3, .L164+32
	ldrh	r3, [r3]
	tst	r3, #3
	moveq	r2, #1
	ldreq	r3, .L164+36
	streq	r2, [r3, #124]
.L150:
	ldr	r3, .L164+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L162
	ldr	r3, .L164+44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L163
	ldr	r3, [r4]
	cmp	r3, #0
	ldrne	r3, .L164+48
	ldreq	r3, .L164+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L162:
	ldr	r3, .L164+56
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L163:
	ldr	r3, .L164+60
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L165:
	.align	2
.L164:
	.word	toAreas
	.word	adTimer
	.word	plumbob
	.word	toStore
	.word	player
	.word	updatePlayer
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	allWeapons
	.word	toHouse
	.word	toText
	.word	goToStore
	.word	draw
	.word	goToHouse
	.word	goToText
	.size	updateShops, .-updateShops
	.align	2
	.global	updateAds
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAds, %function
updateAds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L168
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bxne	lr
	b	updateAds.part.0
.L169:
	.align	2
.L168:
	.word	adTimer
	.size	updateAds, .-updateAds
	.comm	toText,4,4
	.comm	toStore,4,4
	.comm	toAreas,4,4
	.comm	toHouse,4,4
	.comm	adTimer,4,4
	.comm	ad,4,4
	.comm	people,312,4
	.comm	inventory,16,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
