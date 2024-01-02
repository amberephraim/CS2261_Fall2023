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
	.file	"store.c"
	.text
	.global	__aeabi_idivmod
	.align	2
	.global	updateCredits
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCredits, %function
updateCredits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L9
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	ldr	r1, [r4, #36]
	bne	.L2
	mov	r2, #10
	add	r0, r1, #1
	ldr	r3, .L9+4
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L2:
	ldr	r3, .L9+8
	ldr	r5, .L9+12
	ldr	r7, [r3, #8]
	ldr	r0, .L9+16
	ldr	ip, .L9+20
	smull	r3, r5, r7, r5
	smull	r2, lr, r0, r7
	smull	r2, r3, ip, r7
	asr	ip, r7, #31
	rsb	r5, ip, r5, asr #6
	rsb	lr, ip, lr, asr #2
	rsb	ip, ip, r3, asr #5
	smull	r3, r10, r0, r5
	smull	r3, r2, r0, lr
	smull	r3, r6, r0, ip
	ldrb	r8, [r4, #52]	@ zero_extendqisi2
	ldr	r0, .L9+24
	ldr	r3, .L9+28
	add	r1, r1, #160
	and	r1, r0, r1, lsl #1
	add	r9, r3, r8, lsl #3
	strh	r1, [r9, #4]	@ movhi
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	lsl	r8, r8, #3
	ldr	r4, [r4]
	strh	r1, [r3, r8]	@ movhi
	asr	r1, r5, #31
	asr	r0, lr, #31
	lsl	r4, r4, #23
	rsb	r1, r1, r10, asr #2
	rsb	r2, r0, r2, asr #2
	lsr	r4, r4, #23
	add	r1, r1, r1, lsl #2
	asr	r0, ip, #31
	orr	r4, r4, #16384
	sub	r1, r5, r1, lsl #1
	rsb	r0, r0, r6, asr #2
	strh	r4, [r9, #2]	@ movhi
	add	r2, r2, r2, lsl #2
	add	r0, r0, r0, lsl #2
	add	r4, lr, lr, lsl #2
	cmp	r1, #0
	sub	r7, r7, r4, lsl #1
	sub	r2, lr, r2, lsl #1
	sub	r0, ip, r0, lsl #1
	ble	.L3
	mov	lr, #15
	mov	ip, #190
	add	r1, r1, #43
	strh	r1, [r3, #20]	@ movhi
	strh	lr, [r3, #16]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	mov	lr, #202
	mov	ip, #208
	mov	r1, #196
.L4:
	mov	r4, #15
	add	r0, r0, #43
	strh	r0, [r3, #28]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r4, [r3, #24]	@ movhi
.L6:
	mov	r1, #15
	add	r7, r7, #43
	add	r2, r2, #43
	strh	r7, [r3, #44]	@ movhi
	strh	lr, [r3, #34]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	strh	ip, [r3, #42]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r1, [r3, #40]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L3:
	mov	r1, #512
	cmp	r0, #0
	movle	ip, #196
	movle	lr, #190
	strh	r1, [r3, #16]	@ movhi
	strhle	r1, [r3, #24]	@ movhi
	ble	.L6
	mov	ip, #202
	mov	lr, #196
	mov	r1, #190
	b	.L4
.L10:
	.align	2
.L9:
	.word	coin
	.word	__aeabi_idivmod
	.word	inventory
	.word	274877907
	.word	1717986919
	.word	1374389535
	.word	1022
	.word	shadowOAM
	.size	updateCredits, .-updateCredits
	.align	2
	.global	initStore
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStore, %function
initStore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 312
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L25
	ldr	r1, [r3, #124]
	ldr	r3, .L25+4
	cmp	r1, r2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	r2, [r3]
	ldrne	r3, .L25+8
	ldrne	r2, .L25+12
	strne	r2, [r3, #8]
	mov	r2, #10
	ldr	r3, .L25+16
	mov	r4, #0
	mov	r1, #12
	mov	r5, #1
	str	r2, [r3, #24]
	mov	r0, #171
	mov	r2, #5
	mov	fp, #7
	sub	sp, sp, #316
	stm	r3, {r0, r1}
	str	r4, [r3, #36]
	str	r2, [r3, #40]
	strb	r5, [r3, #52]
	bl	updateCredits
	ldr	lr, .L25+20
	strb	fp, [lr, #52]
	mov	fp, #24
	mov	r10, #32
	str	fp, [lr, #4]
	str	fp, [lr]
	mov	r9, #9
	mov	lr, #8
	mov	r8, #34
	mov	r7, #52
	ldr	ip, .L25+24
	ldr	r3, .L25+28
	mov	r1, r4
	mov	r2, #36
	ldr	r6, .L25+32
	add	r0, sp, #12
	str	fp, [ip]
	str	r10, [ip, #4]
	strb	lr, [ip, #52]
	strb	r9, [r3, #52]
	str	r8, [r3]
	str	r7, [r3, #4]
	mov	lr, pc
	bx	r6
	mov	r6, #48
	mov	r2, #128
	mov	r3, #50
	str	r4, [sp, #64]
	str	r4, [sp, #108]
	str	r4, [sp, #152]
	str	r4, [sp, #196]
	str	r4, [sp, #240]
	str	r4, [sp, #68]
	str	r4, [sp, #72]
	str	r4, [sp, #76]
	str	r4, [sp, #80]
	str	r4, [sp, #84]
	str	r4, [sp, #88]
	str	r4, [sp, #112]
	str	r4, [sp, #116]
	str	r4, [sp, #120]
	str	r4, [sp, #124]
	str	r4, [sp, #128]
	str	r4, [sp, #132]
	str	r4, [sp, #156]
	str	r4, [sp, #160]
	str	r4, [sp, #164]
	str	r4, [sp, #168]
	str	r4, [sp, #172]
	str	r4, [sp, #176]
	str	r4, [sp, #200]
	str	r4, [sp, #204]
	str	r4, [sp, #208]
	str	r4, [sp, #212]
	str	r4, [sp, #216]
	str	r4, [sp, #220]
	str	r4, [sp, #244]
	str	r4, [sp, #248]
	str	r4, [sp, #252]
	str	r4, [sp, #256]
	stmib	sp, {r2, r6}
	str	r3, [sp, #16]
	add	lr, sp, #4
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	ip, .L25+36
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	mov	r8, #2
	mov	r7, #90
	str	r4, [sp, #260]
	str	r4, [sp, #264]
	str	r4, [sp, #284]
	str	r4, [sp, #288]
	str	r4, [sp, #292]
	str	r4, [sp, #296]
	str	r4, [sp, #300]
	str	r4, [sp, #304]
	str	r4, [sp, #308]
	stm	ip, {r0, r1, r2}
	mov	r1, #152
	str	r6, [sp, #52]
	str	r8, [sp, #56]
	str	r7, [sp, #60]
	str	r1, [sp, #48]
	add	r7, sp, r6
	ldmia	r7!, {r0, r1, r2, r3}
	add	lr, ip, #12
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r9, #130
	ldm	r7, {r0, r1, r2}
	stm	lr, {r0, r1, r2}
	mov	r0, #176
	str	r5, [sp, #100]
	str	r9, [sp, #104]
	add	r5, sp, #92
	str	r6, [sp, #96]
	str	r0, [sp, #92]
	ldmia	r5!, {r0, r1, r2, r3}
	add	lr, ip, #56
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	mov	r10, #200
	stmia	lr!, {r0, r1, r2, r3}
	mov	fp, #3
	ldm	r5, {r0, r1, r2}
	mov	r5, #175
	str	r6, [sp, #140]
	str	r10, [sp, #136]
	str	fp, [sp, #144]
	str	r5, [sp, #148]
	add	r5, sp, #136
	stm	lr, {r0, r1, r2}
	ldmia	r5!, {r0, r1, r2, r3}
	add	lr, ip, #100
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	mov	r8, #72
	stmia	lr!, {r0, r1, r2, r3}
	mov	r3, #5
	mov	r2, #128
	ldr	r7, .L25+40
	str	r2, [sp, #180]
	str	r3, [sp, #188]
	ldm	r5, {r0, r1, r2}
	str	r8, [sp, #184]
	str	r7, [sp, #192]
	add	r5, sp, #180
	stm	lr, {r0, r1, r2}
	ldmia	r5!, {r0, r1, r2, r3}
	add	lr, ip, #144
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	mov	r9, #4
	stmia	lr!, {r0, r1, r2, r3}
	mov	r1, #152
	str	r9, [sp, #232]
	str	r1, [sp, #224]
	str	r8, [sp, #228]
	ldm	r5, {r0, r1, r2}
	str	r7, [sp, #236]
	add	r5, sp, #224
	stm	lr, {r0, r1, r2}
	ldmia	r5!, {r0, r1, r2, r3}
	add	lr, ip, #188
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	mov	fp, #6
	stm	lr, {r0, r1, r2}
	mov	r0, #176
	str	fp, [sp, #276]
	str	r0, [sp, #268]
	str	r8, [sp, #272]
	str	r7, [sp, #280]
	add	lr, sp, #268
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, ip, #232
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	mov	fp, #24
	stm	ip, {r0, r1, r2}
	mov	r2, #128
	ldr	lr, .L25+44
	ldr	r5, .L25+48
	ldr	r3, .L25+52
	str	r4, [r5]
	strb	r4, [lr, #52]
	ldr	r5, .L25+56
	ldr	r4, .L25+60
	add	r1, r3, #520
	stm	lr, {r2, r6}
	str	fp, [lr, #8]
	str	fp, [lr, #12]
	add	r0, r3, #524
	strh	r6, [r3]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	mov	r3, #8	@ movhi
	mov	r10, #144
	strh	r3, [r1, #2]	@ movhi
	mov	r9, #65
	mov	r3, #8
	ldr	r2, .L25
	ldr	r6, [r2, #60]
	ldr	lr, .L25+64
	ldr	r2, .L25+68
	cmp	r6, #0
	stm	r2, {r3, r10}
	strh	lr, [r1]	@ movhi
	ldrne	r3, .L25+72
	strb	r9, [r2, #52]
	ldrne	r1, .L25+76
	ldrne	r2, .L25+80
	ldr	ip, .L25+84
	strh	ip, [r0]	@ movhi
	strne	r1, [r3, #800]
	strne	r2, [r3, #864]
	ldr	r3, .L25
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L11
	mov	r1, #54
	mov	lr, #56
	mov	r0, #104
	mov	r2, #106
	ldr	r3, .L25+88
	ldr	ip, .L25+92
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, .L25+96
	strh	lr, [ip]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [r3, #68]	@ movhi
.L11:
	add	sp, sp, #316
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	allWeapons
	.word	toShops
	.word	inventory
	.word	9999
	.word	coin
	.word	description
	.word	boost
	.word	price
	.word	memset
	.word	storeItems
	.word	425
	.word	select
	.word	index
	.word	shadowOAM
	.word	16512
	.word	390
	.word	16528
	.word	exit
	.word	100720640
	.word	3670070
	.word	6946920
	.word	330
	.word	100721444
	.word	100721448
	.word	100721508
	.size	initStore, .-initStore
	.align	2
	.global	updateItem
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateItem, %function
updateItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L47
	ldr	r10, .L47+4
	ldr	r4, .L47+8
	ldr	r2, [r3]
	ldr	r6, .L47+12
	ldrb	r0, [r3, #52]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldr	r1, .L47+16
	ldr	r3, .L47+20
	ldr	r9, [r10, #4]
	ldr	lr, .L47+24
	ldrb	r7, [r4, #4]	@ zero_extendqisi2
	ldr	ip, [r4]
	and	r2, r2, r6
	orr	r2, r2, r1
	orr	r5, r5, #16384
	add	r8, r3, r0, lsl #3
	cmp	r9, #48
	lsl	r0, r0, #3
	strh	r5, [r3, r0]	@ movhi
	strh	r2, [r8, #2]	@ movhi
	ldrb	r0, [lr, #52]	@ zero_extendqisi2
	ldr	r2, [lr, #4]
	ldr	r5, [r10]
	ldrb	r4, [r4, #52]	@ zero_extendqisi2
	ldr	lr, [lr]
	orr	r7, r7, #16384
	and	ip, ip, r6
	beq	.L41
	and	r1, r1, #49152
	and	r2, r2, #255
	cmp	r9, #72
	orr	r1, r1, ip
	orr	r2, r2, #16384
	beq	.L42
	cmp	r5, #128
	and	r6, r6, lr
	moveq	r9, #760
	moveq	r5, #736
	moveq	lr, #424
	movne	r9, #216
	movne	r5, #744
	movne	lr, #428
	add	ip, r3, r4, lsl #3
	strh	r1, [ip, #2]	@ movhi
	orr	r6, r6, #16384
	add	r1, r3, r0, lsl #3
	lsl	r4, r4, #3
	lsl	r0, r0, #3
	strh	r9, [ip, #4]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	strh	r5, [r8, #4]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	r2, [r3, r0]	@ movhi
.L27:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	cmp	r5, #128
	moveq	r9, #488
	beq	.L40
	cmp	r5, #152
	movne	r9, #496
	beq	.L43
.L40:
	mov	r5, #752
	mov	ip, #400
	and	r6, r6, lr
	add	lr, r3, r4, lsl #3
	strh	r1, [lr, #2]	@ movhi
	orr	r6, r6, #16384
	add	r1, r3, r0, lsl #3
	lsl	r4, r4, #3
	lsl	r0, r0, #3
	strh	r9, [lr, #4]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	strh	r5, [r8, #4]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L41:
	cmp	r5, #128
	and	r2, r2, #255
	and	r6, r6, lr
	beq	.L44
	cmp	r5, #152
	beq	.L45
	cmp	r5, #176
	beq	.L46
	mov	r9, #392
	mov	r5, #632
	orr	ip, ip, #16384
	add	lr, r3, r4, lsl #3
	lsl	r4, r4, #3
	strh	ip, [lr, #2]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	ldr	ip, .L47+28
.L38:
	add	r1, r3, r0, lsl #3
	lsl	r0, r0, #3
	strh	r9, [lr, #4]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r5, [r8, #4]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L45:
	orr	ip, ip, #16384
	add	lr, r3, r4, lsl #3
	lsl	r4, r4, #3
	strh	ip, [lr, #2]	@ movhi
	mov	r9, #396
	mov	r5, #616
	strh	r7, [r3, r4]	@ movhi
	ldr	ip, .L47+32
	b	.L38
.L44:
	mov	r10, #404
	mov	r9, #608
	mov	r5, #408
	add	lr, r3, r4, lsl #3
	add	r1, r3, r0, lsl #3
	lsl	r4, r4, #3
	orr	ip, ip, #16384
	lsl	r0, r0, #3
	strh	r10, [lr, #4]	@ movhi
	strh	ip, [lr, #2]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	strh	r9, [r8, #4]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L46:
	orr	r1, ip, r1
	add	lr, r3, r4, lsl #3
	lsl	r4, r4, #3
	mov	r9, #504
	mov	r5, #624
	strh	r1, [lr, #2]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	ldr	ip, .L47+36
	b	.L38
.L43:
	mov	r10, #480
	mov	r9, #752
	mov	r5, #412
	add	ip, r3, r4, lsl #3
	strh	r1, [ip, #2]	@ movhi
	and	r6, r6, lr
	add	r1, r3, r0, lsl #3
	lsl	r4, r4, #3
	lsl	r0, r0, #3
	strh	r10, [ip, #4]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	strh	r9, [r8, #4]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	b	.L27
.L48:
	.align	2
.L47:
	.word	price
	.word	select
	.word	description
	.word	511
	.word	-16384
	.word	shadowOAM
	.word	boost
	.word	411
	.word	409
	.word	410
	.size	updateItem, .-updateItem
	.align	2
	.global	updateStore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStore, %function
updateStore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L106
	ldrh	r3, [r5]
	tst	r3, #128
	bne	.L93
	ldr	r4, .L106+4
.L50:
	tst	r3, #64
	beq	.L54
	ldr	r2, .L106+8
	ldrh	r2, [r2]
	ands	r2, r2, #64
	bne	.L54
	ldr	r1, [r4, #4]
	cmp	r1, #48
	bgt	.L97
.L54:
	tst	r3, #32
	beq	.L55
	ldr	r2, .L106+8
	ldrh	r2, [r2]
	ands	r2, r2, #32
	bne	.L55
	ldr	r1, [r4]
	cmp	r1, #128
	bgt	.L98
.L55:
	tst	r3, #16
	beq	.L56
	ldr	r2, .L106+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L56
	ldr	r2, [r4, #4]
	cmp	r2, #48
	beq	.L99
	cmp	r2, #72
	beq	.L100
	cmp	r2, #96
	bne	.L56
	ldr	r2, [r4]
	cmp	r2, #151
	ble	.L58
.L56:
	tst	r3, #1
	beq	.L60
	ldr	r3, .L106+8
	ldrh	r2, [r3]
	ands	r6, r2, #1
	beq	.L61
.L60:
	ldr	r3, .L106+12
	ldr	r1, [r4, #4]
	ldr	r5, [r3]
	ldr	r3, [r4]
.L62:
	ldr	ip, .L106+16
	ldrb	r2, [r4, #52]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r0, .L106+20
	lsr	r3, r3, #23
	add	lr, ip, r2, lsl #3
	orr	r3, r3, #16384
	ldrb	r0, [r0, #52]	@ zero_extendqisi2
	strh	r3, [lr, #2]	@ movhi
	ldr	r3, .L106+24
	cmp	r1, #120
	strh	r3, [lr, #4]	@ movhi
	and	r1, r1, #255
	sub	r3, r3, #60
	lsl	r2, r2, #3
	add	r0, ip, r0, lsl #3
	strh	r1, [ip, r2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	orreq	r1, r1, #512
	addeq	r3, r3, #32
	strheq	r1, [ip, r2]	@ movhi
	strheq	r3, [r0, #4]	@ movhi
	cmp	r5, #0
	beq	.L71
	ldr	r3, .L106+28
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L93:
	ldr	r2, .L106+8
	ldrh	r2, [r2]
	tst	r2, #128
	ldr	r4, .L106+4
	bne	.L50
	ldr	r2, [r4, #4]
	cmp	r2, #119
	bgt	.L50
	cmp	r2, #48
	beq	.L101
	cmp	r2, #72
	beq	.L102
.L53:
	ldr	r3, .L106+32
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L106+36
	ldr	r3, .L106+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	str	r3, [r4, #4]
	ldrh	r3, [r5]
	b	.L54
.L71:
	bl	updateCredits
	bl	updateItem
	ldr	r3, .L106+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L61:
	ldr	r3, .L106+32
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L106+36
	ldr	r3, .L106+40
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #4]
	cmp	r1, #120
	beq	.L103
	ldr	r3, .L106+12
	cmp	r1, #96
	ldr	r5, [r3]
	ldr	r3, [r4]
	beq	.L104
	mov	r2, r6
	ldr	r0, .L106+48
	b	.L69
.L66:
	add	r2, r2, #1
	cmp	r2, #7
	add	r0, r0, #44
	beq	.L62
.L69:
	ldr	ip, [r0, #-4]
	cmp	ip, r3
	bne	.L66
	ldr	ip, [r0]
	cmp	r1, ip
	bne	.L66
	ldr	r6, .L106+52
	add	r0, r2, r2, lsl #2
	ldr	r7, .L106+56
	add	r0, r2, r0, lsl #1
	add	r0, r6, r0, lsl #2
	ldr	r0, [r0, #12]
	ldr	ip, [r7, #8]
	subs	r8, ip, r0
	lsl	r10, r2, #2
	bmi	.L62
	ldr	r9, .L106+60
	mov	r0, #0
	mov	ip, r9
	b	.L68
.L67:
	add	r0, r0, #1
	cmp	r0, #22
	add	ip, ip, #44
	beq	.L62
.L68:
	ldr	lr, [ip, #36]
	cmp	lr, #0
	bne	.L67
	mov	ip, #1
	add	r10, r10, r2
	add	r2, r2, r10, lsl ip
	add	r2, r6, r2, lsl #2
	add	r6, r0, r0, lsl #2
	ldr	r2, [r2, #8]
	add	r0, r0, r6, lsl ip
	add	r0, r9, r0, lsl #2
	str	r8, [r7, #8]
	str	r2, [r0, #8]
	str	lr, [r0, #40]
	str	ip, [r0, #36]
	b	.L62
.L98:
	ldr	r3, [r4, #8]
	ldr	r0, .L106+32
	sub	r3, r1, r3
	ldr	r1, [r0]
.L96:
	ldr	r0, .L106+36
	ldr	r6, .L106+40
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
	b	.L56
.L99:
	ldr	r2, [r4]
	cmp	r2, #199
	bgt	.L56
.L58:
	ldr	r3, [r4, #8]
	ldr	r1, .L106+32
	add	r3, r3, r2
	ldr	r1, [r1]
	mov	r2, #0
	b	.L96
.L97:
	ldr	r3, [r4, #12]
	ldr	r0, .L106+32
	sub	r3, r1, r3
	ldr	r6, .L106+40
	ldr	r1, [r0]
	ldr	r0, .L106+36
	str	r3, [r4, #4]
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
	b	.L54
.L100:
	ldr	r2, [r4]
	cmp	r2, #175
	ble	.L58
	b	.L56
.L103:
	mov	r3, #1
	ldr	r2, .L106+12
	mov	r5, r3
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L62
.L102:
	ldr	r3, [r4]
	cmp	r3, #176
	bne	.L53
.L52:
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	str	r3, [r4]
	b	.L53
.L101:
	ldr	r3, [r4]
	cmp	r3, #200
	bne	.L53
	b	.L52
.L104:
	ldr	r0, .L106+56
	cmp	r3, #128
	ldr	r2, [r0, #8]
	beq	.L105
	cmp	r2, #1000
	blt	.L62
	ldr	ip, .L106+64
	ldr	lr, [ip, #92]
	cmp	lr, #0
	bne	.L62
	mov	r9, #1
	mov	r8, #54
	mov	r7, #56
	mov	r6, #104
	mov	lr, #106
	sub	r2, r2, #1000
	str	r2, [r0, #8]
	ldr	r2, .L106+68
	ldr	r0, .L106+72
	str	r9, [ip, #92]
	strh	r8, [r2, #2]	@ movhi
	strh	r7, [r2, #4]	@ movhi
	strh	r6, [r0, #2]	@ movhi
	strh	lr, [r2, #68]	@ movhi
	b	.L62
.L105:
	cmp	r2, #500
	blt	.L62
	ldr	ip, .L106+64
	ldr	lr, [ip, #60]
	cmp	lr, #0
	bne	.L62
	mov	r6, #1
	sub	r2, r2, #500
	str	r2, [r0, #8]
	ldr	lr, .L106+76
	ldr	r2, .L106+80
	ldr	r0, .L106+84
	str	r6, [ip, #60]
	str	lr, [r2, #800]
	str	r0, [r2, #864]
	b	.L62
.L107:
	.align	2
.L106:
	.word	oldButtons
	.word	select
	.word	buttons
	.word	toShops
	.word	shadowOAM
	.word	exit
	.word	390
	.word	goToShops
	.word	move_length
	.word	move_data
	.word	playSoundB
	.word	draw
	.word	storeItems+4
	.word	storeItems
	.word	inventory
	.word	allItems
	.word	allWeapons
	.word	100721444
	.word	100721508
	.word	3670070
	.word	100720640
	.word	6946920
	.size	updateStore, .-updateStore
	.comm	storeItems,308,4
	.comm	price,56,4
	.comm	boost,56,4
	.comm	description,56,4
	.comm	toShops,4,4
	.comm	exit,56,4
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
