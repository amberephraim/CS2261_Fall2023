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
	.file	"final.c"
	.text
	.align	2
	.global	updateEnemiesFinal
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemiesFinal, %function
updateEnemiesFinal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L39
	ldr	r3, [r4, #72]
	cmp	r3, #0
	mov	r9, #0
	ldr	r6, .L39+4
	ldr	r7, .L39+8
	ldr	fp, .L39+12
	ldr	r10, .L39+16
	sub	sp, sp, #20
	bne	.L2
.L36:
	mov	r2, #512
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	lsl	r3, r3, #3
	strh	r2, [r6, r3]	@ movhi
.L3:
	cmp	r9, #1
	add	r4, r4, #88
	bne	.L21
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	ldr	r3, [r4, #72]
	cmp	r3, #0
	mov	r9, #1
	beq	.L36
.L2:
	ldr	r3, [r4, #80]
	cmp	r3, #0
	ldr	r5, .L39+20
	subne	r3, r3, #1
	strne	r3, [r4, #80]
	add	r8, r5, #176
.L6:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	add	r5, r5, #44
	bne	.L37
.L5:
	cmp	r5, r8
	bne	.L6
	ldr	r5, .L39+24
	ldr	r3, [r5, #40]
	cmp	r3, #0
	ldr	r8, [r4, #80]
	beq	.L7
	cmp	r8, #0
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	bne	.L13
	ldr	r2, [r4, #16]
	ldr	r3, [r4]
	stmib	sp, {r0, r2}
	str	r1, [sp, #12]
	str	r3, [sp]
	add	r0, r5, #96
	ldm	r0, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L34
	mov	r1, #60
	ldr	r2, [r5, #120]
	ldr	r3, [r5, #64]
	ldr	r0, [r5, #72]
	add	r3, r3, r2
	ldr	r2, [r4, #68]
	add	r3, r3, r0
	sub	r3, r2, r3
	cmp	r3, #0
	str	r3, [r4, #68]
	str	r1, [r4, #80]
	ble	.L10
.L11:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
.L13:
	ldr	r3, .L39+28
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r6, r3]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r3, .L39+32
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #80]
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	add	r3, r6, r2, lsl #3
	cmp	r1, #0
	orr	r0, r0, #32768
	strh	r0, [r3, #2]	@ movhi
	ldreq	r3, [r4, #52]
	addeq	r3, r3, #70
	lsleq	r3, r3, #2
	ldreq	r1, [r4, #24]
	ldrne	r3, [r4, #24]
	andeq	r3, r3, #1020
	orreq	r3, r3, r1, lsl #12
	ldr	r1, [r4, #40]
	lslne	r3, r3, #28
	orrne	r3, r3, #27000832
	lsleq	r3, r3, #16
	lsl	r2, r2, #3
	cmp	r1, #2
	add	r2, r6, r2
	lsr	r3, r3, #16
	orreq	r0, r0, #4096
	strh	r3, [r2, #4]	@ movhi
	strheq	r0, [r2, #2]	@ movhi
	b	.L3
.L10:
	str	r8, [r4, #72]
	mov	lr, pc
	bx	fp
	ldr	r2, .L39+36
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r3, r0, r3
	ldr	r2, [r10, #8]
	add	r3, r3, #50
	add	r3, r3, r2
	str	r3, [r10, #8]
.L34:
	ldr	r8, [r4, #80]
.L7:
	cmp	r8, #0
	bne	.L11
	ldr	r3, [r4, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #44]
	bne	.L11
	mov	r1, #100
	ldr	r2, [r4, #52]
	adds	r2, r2, #1
	and	r2, r2, #1
	rsbmi	r2, r2, #0
	cmp	r2, #1
	str	r2, [r4, #52]
	str	r1, [r4, #44]
	bne	.L11
	ldr	ip, .L39+40
	mov	r2, ip
.L17:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L38
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #44
	bne	.L17
	b	.L11
.L37:
	mov	r3, #0
	str	r3, [r4, #72]
	mov	lr, pc
	bx	fp
	ldr	r2, .L39+36
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3
	ldr	r3, [r10, #8]
	add	r0, r0, #50
	add	r0, r0, r3
	str	r0, [r10, #8]
	b	.L5
.L38:
	mov	lr, #1
	ldr	r5, [r4, #40]
	add	r2, r3, r3, lsl #2
	add	r3, r3, r2, lsl lr
	cmp	r5, #3
	add	r2, ip, r3, lsl #2
	mov	r0, #300
	mov	r1, #205
	moveq	r5, #38
	mvnne	r5, #0
	str	lr, [r2, #28]
	movne	lr, #208
	str	r0, [r2, #40]
	str	r1, [r2, #4]
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	streq	lr, [r2, #8]
	streq	r5, [ip, r3, lsl #2]
	strne	r5, [r2, #8]
	strne	lr, [ip, r3, lsl #2]
	b	.L13
.L40:
	.align	2
.L39:
	.word	enemies
	.word	shadowOAM
	.word	collision
	.word	rand
	.word	inventory
	.word	bullets
	.word	player
	.word	screenY
	.word	screenX
	.word	680390859
	.word	golfballs
	.size	updateEnemiesFinal, .-updateEnemiesFinal
	.align	2
	.global	updateGolfballs
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGolfballs, %function
updateGolfballs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L56
	ldr	r5, .L56+4
	ldr	r6, .L56+8
	ldr	r7, .L56+12
	ldr	fp, .L56+16
	ldr	r10, .L56+20
	sub	sp, sp, #20
	add	r9, r4, #440
	b	.L48
.L42:
	ldr	r8, [r7, #76]
	cmp	r8, #0
	beq	.L54
.L45:
	ldr	r3, [r4, #40]
	ldr	r2, [r4]
	ldr	r1, [r4, #8]
	sub	r3, r3, #1
	cmp	r3, #0
	add	r2, r2, r1
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	streq	r3, [r4, #28]
	str	r3, [r4, #40]
	str	r2, [r4]
	mov	lr, pc
	bx	fp
	ldr	r3, [r4, #32]
	ldr	r1, [r4, #16]
	and	r2, r0, #255
	lsl	r3, r3, #3
	ldr	r0, [r4]
	strh	r2, [r6, r3]	@ movhi
	mov	lr, pc
	bx	r10
	add	r2, r4, #32
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	add	r2, r6, r2, lsl #3
	cmp	r1, #1
	strh	r0, [r2, #2]	@ movhi
	lsl	r3, r3, #12
	orreq	r0, r0, #4096
	add	r4, r4, #44
	strheq	r0, [r2, #2]	@ movhi
	orr	r3, r3, #117
	cmp	r4, r9
	strh	r3, [r2, #4]	@ movhi
	add	r5, r5, #88
	beq	.L55
.L48:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L42
	mov	r2, #512
	ldr	r3, [r4, #32]
	add	r4, r4, #44
	lsl	r3, r3, #3
	cmp	r4, r9
	strh	r2, [r6, r3]	@ movhi
	add	r5, r5, #88
	bne	.L48
.L55:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L54:
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, [r7]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r2, #16
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	ip, .L56+24
	add	r0, r0, #8
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L45
	mov	ip, #45
	ldr	r2, [r7, #68]
	ldr	r1, [r5]
	ldr	r3, [r7, #80]
	sub	r1, r1, r2
	sub	r3, r3, r1
	ldr	r1, .L56+28
	str	r3, [r7, #80]
	mov	r2, r8
	ldr	r1, [r1]
	ldr	r3, .L56+32
	ldr	r0, .L56+36
	str	ip, [r7, #76]
	mov	lr, pc
	bx	r3
	b	.L45
.L57:
	.align	2
.L56:
	.word	golfballs
	.word	enemies+60
	.word	shadowOAM
	.word	player
	.word	screenY
	.word	screenX
	.word	collision
	.word	hit_length
	.word	playSoundB
	.word	hit_data
	.size	updateGolfballs, .-updateGolfballs
	.align	2
	.global	showCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	showCar, %function
showCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L60
	ldr	r9, .L60+4
	mov	r1, #0
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	ldrb	r3, [r5, #52]	@ zero_extendqisi2
	ldr	r4, .L60+8
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
	ldr	r8, .L60+12
	mov	r1, #0
	ldr	r0, [r5]
	mov	lr, pc
	bx	r8
	ldr	r6, .L60+16
	ldr	r2, [r5, #48]
	ldrb	r1, [r5, #52]	@ zero_extendqisi2
	ldr	r7, .L60+20
	and	r3, r0, r6
	lsl	r2, r2, #12
	add	r1, r4, r1, lsl #3
	orr	r2, r2, #768
	orr	r3, r3, #53248
	strh	r2, [r1, #4]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	ldr	r0, [r7, #4]
	mov	r1, #0
	mov	lr, pc
	bx	r9
	and	r3, r0, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r7, #52]	@ zero_extendqisi2
	lsl	r2, r2, #3
	strh	r3, [r4, r2]	@ movhi
	ldr	r0, [r7]
	mov	r1, #0
	mov	lr, pc
	bx	r8
	ldr	r3, [r5, #48]
	ldrb	r2, [r7, #52]	@ zero_extendqisi2
	and	r0, r0, r6
	lsl	r3, r3, #12
	add	r4, r4, r2, lsl #3
	orr	r3, r3, #904
	orr	r0, r0, #20480
	strh	r3, [r4, #4]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	car1
	.word	screenY
	.word	shadowOAM
	.word	screenX
	.word	511
	.word	car2
	.size	showCar, .-showCar
	.align	2
	.global	initFinal
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinal, %function
initFinal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L72
	ldr	ip, [r3]
	ldr	r1, .L72+4
	ldr	r3, .L72+8
	ldr	r2, .L72+12
	cmp	ip, r0
	str	r0, [r1, #44]
	str	r2, [r3]
	bne	.L71
.L63:
	bl	showCar
	ldr	r3, .L72+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #2
	cmp	r3, #1
	bls	.L62
	mov	r4, #1
	mov	r6, #32
	mov	r0, #0
	ldr	r1, .L72+20
	str	r4, [r1]
	ldr	r1, .L72+24
	str	r6, [r1, #16]
	str	r6, [r1, #20]
	str	r6, [r1, #104]
	str	r6, [r1, #108]
	mov	r6, #3
	str	r4, [r1, #24]
	str	r4, [r1, #44]
	str	r4, [r1, #72]
	str	r4, [r1, #112]
	str	r4, [r1, #160]
	mov	r8, r4
	ldr	r4, .L72+28
	str	r0, [r4]
	ldr	r4, .L72+32
	str	r0, [r4]
	ldr	r4, .L72+36
	str	r0, [r1, #76]
	str	r0, [r1, #52]
	str	r0, [r1, #80]
	str	r0, [r1, #164]
	str	r0, [r1, #140]
	str	r0, [r1, #168]
	strb	r6, [r1, #28]
	str	r0, [r4, #24]
	str	r0, [r4, #28]
	str	r0, [r4, #36]
	str	r0, [r4, #48]
	mov	lr, r0
	mov	r6, #132
	mov	r0, #113
	mov	r5, #2
	mov	r7, #4
	mov	r10, #6
	mov	r9, #5
	stm	r4, {r0, r6}
	mov	r0, #3
	str	r10, [r1, #68]
	str	r10, [r1, #156]
	str	r5, [r1, #56]
	str	r5, [r1, #144]
	str	r9, [r1, #32]
	str	r7, [r1, #60]
	strb	r7, [r1, #116]
	str	r9, [r1, #120]
	str	r0, [r1, #40]
	mov	r0, #11
	str	r0, [r1]
	mov	r0, #215
	mov	fp, #193
	str	r0, [r1, #88]
	mov	r0, #100
	mov	r3, r5
	mov	r2, #9
	mov	ip, #8
	str	r7, [r1, #148]
	str	r5, [r1, #128]
	str	r0, [r1, #132]
	str	fp, [r1, #4]
	str	fp, [r1, #92]
	ldr	r1, .L72+40
.L65:
	str	r2, [r1, #32]
	add	r2, r2, #1
	cmp	r2, #19
	str	ip, [r1, #16]
	str	r3, [r1, #20]
	str	r3, [r1, #24]
	str	lr, [r1, #28]
	str	r8, [r1, #36]
	add	r1, r1, #44
	bne	.L65
	mov	r0, #3
	mov	fp, #440
	mov	r10, #172
	mov	r9, #20
	ldr	r2, .L72+44
	str	r0, [r2, #48]
	str	fp, [r2]
	str	r10, [r2, #4]
	strb	r9, [r2, #52]
	ldr	r2, .L72+48
	mov	r7, #204
	str	r0, [r2, #48]
	mov	r6, #21
	mov	r0, #432
	mov	r1, #32
	mov	r5, #6
	mov	r4, #15
	mov	lr, #5
	mov	ip, #10
	stm	r2, {r0, r7}
	strb	r6, [r2, #52]
	ldr	r2, .L72+52
	str	r1, [r2, #16]
	str	r8, [r2, #8]
	str	r1, [r2, #20]
	str	r8, [r2, #72]
	str	r3, [r2, #24]
	strb	r5, [r2, #28]
	str	r4, [r2, #68]
	str	lr, [r2, #60]
	str	ip, [r2, #44]
.L62:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	ldr	r3, .L72+56
	mov	lr, pc
	bx	r3
	b	.L63
.L73:
	.align	2
.L72:
	.word	pal
	.word	plumbob
	.word	cm
	.word	finalcmBitmap
	.word	state
	.word	phase1
	.word	enemies
	.word	phase2
	.word	cutScene
	.word	player
	.word	golfballs
	.word	car1
	.word	car2
	.word	boss
	.word	setColor
	.size	initFinal, .-initFinal
	.align	2
	.global	updateScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScene, %function
updateScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L86
	ldr	r3, [r4, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	moveq	r2, #23
	str	r3, [r4, #44]
	ldr	r3, [r4, #52]
	addeq	r3, r3, #1
	streq	r3, [r4, #52]
	streq	r2, [r4, #44]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L76
.L78:
	.word	.L82
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L77
.L82:
	mov	r0, #186
	ldr	r3, .L86+4
	str	r0, [r4, #4]
	str	r3, [r4]
	ldr	r6, .L86+8
.L83:
	ldr	r1, [r4, #20]
	ldr	r3, .L86+12
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	ldr	r5, .L86+16
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r5, r3]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	ldr	r3, .L86+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #52]
	add	r3, r3, #160
	ldr	r2, [r6]
	ldrb	ip, [r4, #28]	@ zero_extendqisi2
	ldr	r1, [r4, #24]
	lsl	r0, r0, #23
	lsl	r3, r3, #2
	lsr	r0, r0, #23
	and	r3, r3, #1020
	add	r5, r5, ip, lsl #3
	orr	r0, r0, #36864
	cmp	r2, #0
	orr	r3, r3, r1, lsl #12
	strh	r0, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	streq	r2, [r4, #52]
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	mov	r0, #186
	ldr	r3, .L86+24
	str	r0, [r4, #4]
	str	r3, [r4]
	ldr	r6, .L86+8
	b	.L83
.L80:
	mov	r0, #193
	ldr	r3, .L86+28
	str	r0, [r4, #4]
	str	r3, [r4]
	ldr	r6, .L86+8
	b	.L83
.L79:
	mov	r3, #456
	mov	r0, #193
	str	r3, [r4]
	str	r0, [r4, #4]
	ldr	r6, .L86+8
	b	.L83
.L77:
	mov	r3, #192
	mov	r1, #0
	ldr	r6, .L86+8
	ldr	r2, .L86+4
	mov	r0, r3
	str	r3, [r4, #4]
	str	r1, [r6]
	str	r2, [r4]
	b	.L83
.L76:
	ldr	r0, [r4, #4]
	ldr	r6, .L86+8
	b	.L83
.L87:
	.align	2
.L86:
	.word	boss
	.word	455
	.word	cutScene
	.word	screenY
	.word	shadowOAM
	.word	screenX
	.word	454
	.word	457
	.size	updateScene, .-updateScene
	.align	2
	.global	updateBoss
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoss, %function
updateBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L129
	ldr	r4, .L129+4
	ldr	r3, [r9]
	ldr	r2, [r4, #80]
	ldr	r10, .L129+8
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r9]
	sub	sp, sp, #20
	ldr	r3, [r10, #40]
	beq	.L89
	sub	r2, r2, #1
	cmp	r3, #0
	str	r2, [r4, #80]
	beq	.L122
	cmp	r2, #0
	beq	.L112
.L122:
	ldr	r6, .L129+12
.L91:
	ldr	r5, .L129+16
	ldr	fp, .L129+20
	ldr	r8, .L129+24
	add	r7, r5, #176
.L94:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	add	r5, r5, #44
	bne	.L125
.L93:
	cmp	r5, r7
	bne	.L94
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	beq	.L95
	ldr	r3, [r4, #52]
	sub	r2, r3, #3
	cmp	r2, #1
	bls	.L126
.L101:
	ldr	r2, [r4, #44]
	subs	r2, r2, #1
	strne	r2, [r4, #44]
	bne	.L105
	mov	lr, #13
	ldr	r2, .L129+28
	add	r3, r3, #1
	smull	r5, ip, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, ip, asr #1
	add	r2, r2, r2, lsl #2
	sub	r3, r3, r2
	str	r3, [r4, #52]
	str	lr, [r4, #44]
.L105:
	ldr	r7, .L129+32
	mov	lr, pc
	bx	r7
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	ldr	r5, .L129+36
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r5, r3]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	ldr	r6, .L129+40
	mov	lr, pc
	bx	r6
	ldr	r8, .L129+44
	and	r0, r0, r8
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	ldr	r2, [r4, #80]
	add	r3, r5, r3, lsl #3
	cmp	r2, #0
	strh	r0, [r3, #2]	@ movhi
	beq	.L106
	ldr	r2, [r4, #24]
	lsl	r2, r2, #12
	orr	r2, r2, #668
	strh	r2, [r3, #4]	@ movhi
.L107:
	ldr	r3, [r4, #40]
	cmp	r3, #2
	bne	.L88
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	add	r5, r5, r3, lsl #3
	ldrh	r3, [r5, #2]
	orr	r3, r3, #4096
	strh	r3, [r5, #2]	@ movhi
.L88:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L125:
	mov	r3, #0
	str	r3, [r4, #72]
	mov	lr, pc
	bx	fp
	ldr	r2, .L129+48
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3
	ldr	r3, [r8, #8]
	add	r0, r0, #50
	add	r0, r0, r3
	str	r0, [r8, #8]
	b	.L93
.L89:
	cmp	r3, #0
	beq	.L122
.L112:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r10, #96
	ldm	r0, {r0, r1, r2, r3}
	ldr	r6, .L129+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L91
	mov	r1, #0
	mov	r0, #60
	ldr	r2, [r10, #120]
	ldr	r3, [r10, #64]
	add	r3, r3, r2
	ldr	r2, [r10, #72]
	add	r3, r3, r2
	ldr	r2, [r4, #68]
	sub	r3, r2, r3
	cmp	r3, r1
	ldrle	r2, .L129+24
	str	r3, [r4, #68]
	ldrle	r3, [r2, #8]
	addle	r3, r3, #500
	str	r0, [r4, #80]
	str	r1, [r4, #52]
	str	r1, [r4, #76]
	strle	r1, [r4, #72]
	strle	r3, [r2, #8]
	b	.L91
.L106:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r2, [r4, #52]
	bne	.L127
	add	r2, r2, #195
.L124:
	ldr	r1, [r4, #24]
	lsl	r2, r2, #2
	and	r2, r2, #1020
	orr	r2, r2, r1, lsl #12
	strh	r2, [r3, #4]	@ movhi
	b	.L107
.L95:
	ldr	r2, [r9]
	tst	r2, #1
	bne	.L99
	ldr	r3, [r4, #52]
.L97:
	cmp	r3, #4
	moveq	r2, #0
	streq	r2, [r4, #76]
	b	.L101
.L99:
	ldr	lr, [r10]
	ldr	ip, [r4]
	sub	r2, ip, lr
	add	r2, r2, #19
	cmp	r2, #38
	bhi	.L100
	mov	r2, #1
	str	r3, [r4, #52]
	str	r2, [r4, #76]
	b	.L101
.L127:
	cmp	r2, #4
	beq	.L128
	cmp	r2, #3
	addne	r2, r2, #227
	bne	.L124
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r1, [r4]
	and	r3, r0, #255
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	r3, [r5, r2]	@ movhi
	sub	r0, r1, #15
	ldr	r1, [r4, #16]
	mov	lr, pc
	bx	r6
	and	r2, r0, r8
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	r3, [r4, #52]
	add	r3, r3, #227
	ldrb	r1, [r4, #28]	@ zero_extendqisi2
	ldr	r0, [r4, #24]
	lsl	r3, r3, #2
	and	r3, r3, #1020
	add	r1, r5, r1, lsl #3
	orr	r3, r3, r0, lsl #12
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L107
.L126:
	ldr	ip, [r4, #80]
	ldr	r2, [r10, #76]
	orrs	r5, ip, r2
	bne	.L97
	ldr	r2, [r4, #16]
	ldr	r3, [r4]
	ldr	ip, [r10]
	str	r1, [sp, #12]
	str	r0, [sp, #4]
	str	r2, [sp, #8]
	str	r3, [sp]
	mov	r2, #16
	ldr	r3, [r10, #20]
	ldr	r1, [r10, #4]
	add	r0, ip, #8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L98
.L123:
	ldr	r3, [r4, #52]
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	b	.L97
.L100:
	cmp	ip, lr
	movlt	lr, #3
	movge	lr, #2
	ldr	r2, [r4, #8]
	addlt	ip, ip, r2
	subge	ip, ip, r2
	ldr	r3, [r4, #52]
	str	ip, [r4]
	str	lr, [r4, #40]
	b	.L97
.L128:
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r1, [r4]
	and	r3, r0, #255
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	r3, [r5, r2]	@ movhi
	sub	r0, r1, #15
	ldr	r1, [r4, #16]
	mov	lr, pc
	bx	r6
	and	r3, r0, r8
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r2, [r4, #24]
	ldrb	r1, [r4, #28]	@ zero_extendqisi2
	lsl	r2, r2, #12
	add	r1, r5, r1, lsl #3
	orr	r2, r2, #152
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	b	.L107
.L98:
	mov	ip, #45
	ldr	r3, [r4, #60]
	ldr	r1, [r10, #68]
	sub	r1, r3, r1
	ldr	r3, [r10, #80]
	sub	r3, r3, r1
	ldr	r1, .L129+52
	str	r3, [r10, #80]
	mov	r2, r5
	ldr	r1, [r1]
	ldr	r3, .L129+56
	ldr	r0, .L129+60
	str	ip, [r10, #76]
	mov	lr, pc
	bx	r3
	b	.L123
.L130:
	.align	2
.L129:
	.word	delay
	.word	boss
	.word	player
	.word	collision
	.word	bullets
	.word	rand
	.word	inventory
	.word	1717986919
	.word	screenY
	.word	shadowOAM
	.word	screenX
	.word	511
	.word	680390859
	.word	hit_length
	.word	playSoundB
	.word	hit_data
	.size	updateBoss, .-updateBoss
	.align	2
	.global	updateFinal
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinal, %function
updateFinal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	bl	showCar
	ldr	r1, .L152
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L132
	ldr	r2, .L152+4
	ldr	r3, [r2, #72]
	ldr	r2, [r2, #160]
	orrs	r2, r3, r2
	beq	.L133
.L137:
	ldr	r4, .L152+8
	ldr	r3, .L152+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #10
	movle	r3, #11
	strle	r3, [r4]
	ble	.L138
	cmp	r3, #222
	movgt	r3, #222
	strgt	r3, [r4]
.L138:
	bl	updateEnemiesFinal
	bl	updateGolfballs
.L139:
	ldr	r3, [r4, #80]
	cmp	r3, #0
	ble	.L150
.L144:
	ldr	r3, .L152+16
	ldr	r3, [r3, #72]
	cmp	r3, #0
	ldreq	r3, .L152+20
	ldrne	r3, .L152+24
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L132:
	ldr	r6, .L152+28
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.L140
	ldr	r3, .L152+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L151
	ldr	r4, .L152+8
	ldr	r3, .L152+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, .L152+36
	cmp	r3, r2
	bgt	.L142
	ldr	r3, .L152+40
	str	r3, [r4]
.L143:
	bl	updateBoss
	ldr	r3, [r4, #80]
	cmp	r3, #0
	bgt	.L144
.L150:
	ldr	r2, [r4, #84]
	ldr	r3, .L152+44
	str	r2, [r4, #80]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L133:
	ldr	r3, .L152+48
	mov	r0, r2
	str	r2, [r1]
	add	r2, r3, #440
.L136:
	str	r0, [r3, #28]
	add	r3, r3, #44
	cmp	r3, r2
	bne	.L136
	b	.L137
.L151:
	bl	updateScene
	ldr	r4, .L152+8
	b	.L139
.L140:
	ldr	r4, .L152+8
	ldr	r7, .L152+12
	mov	lr, pc
	bx	r7
	ldr	r2, [r4]
	ldr	r3, .L152+52
	cmp	r2, r3
	ble	.L139
	mov	r3, #1
	ldr	r2, .L152+32
	str	r3, [r6]
	str	r3, [r2]
	mov	lr, pc
	bx	r7
	ldr	r3, .L152+56
	ldrb	r2, [r4, #44]	@ zero_extendqisi2
	add	r3, r3, r2, lsl #3
	strh	r5, [r3, #4]	@ movhi
	b	.L139
.L142:
	cmp	r3, #480
	movgt	r3, #480
	strgt	r3, [r4]
	b	.L143
.L153:
	.align	2
.L152:
	.word	phase1
	.word	enemies
	.word	player
	.word	updatePlayer
	.word	boss
	.word	goToWin
	.word	draw
	.word	phase2
	.word	cutScene
	.word	265
	.word	266
	.word	goToLose
	.word	golfballs
	.word	330
	.word	shadowOAM
	.size	updateFinal, .-updateFinal
	.comm	delay,4,4
	.comm	car2,56,4
	.comm	car1,56,4
	.comm	boss,88,4
	.comm	golfballs,440,4
	.comm	enemies,176,4
	.comm	inventory,16,4
	.comm	cutScene,4,4
	.comm	phase2,4,4
	.comm	phase1,4,4
	.comm	toWin,4,4
	.comm	bullets,176,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	cm,4,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
