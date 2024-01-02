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
	.global	__aeabi_idivmod
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlumbob.part.0, %function
updatePlumbob.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L5
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	ldr	r1, [r4, #36]
	bne	.L2
	ldr	r3, .L5+4
	add	r0, r1, #1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L2:
	ldr	r2, .L5+8
	ldr	r0, .L5+12
	ldr	r3, [r2, #4]
	ldr	r0, [r0]
	sub	r3, r3, #20
	sub	r3, r3, r0
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L5+16
	ldr	ip, [r2]
	ldr	r6, [r0]
	add	r2, ip, #14
	add	r0, r1, #89
	ldr	lr, .L5+20
	ldrb	r1, [r4, #52]	@ zero_extendqisi2
	ldr	r5, [r4, #48]
	sub	r2, r2, r6
	lsl	r0, r0, #22
	lsr	r0, r0, #22
	lsl	r2, r2, #23
	add	ip, lr, r1, lsl #3
	orr	r0, r0, r5, lsl #12
	lsl	r1, r1, #3
	lsr	r2, r2, #23
	strh	r3, [lr, r1]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	plumbob
	.word	__aeabi_idivmod
	.word	player
	.word	vOff0
	.word	hOff0
	.word	shadowOAM
	.size	updatePlumbob.part.0, .-updatePlumbob.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #444
	mov	r7, sp
	ldr	r3, .L11
	mov	r0, #0
	mov	r8, sp
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+4
	mov	lr, pc
	bx	r3
	ldr	ip, .L11+8
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	add	lr, ip, #16
	stm	r7, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r4, sp, #32
	stmia	r4!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	lr, ip, #48
	stm	r4, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r6, sp, #64
	stmia	r6!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	add	lr, ip, #80
	stm	r6, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #96
	stmia	ip!, {r0, r1, r2, r3}
	mov	r5, #0
	ldm	lr, {r0, r1, r2, r3}
	ldr	lr, .L11+12
	stm	ip, {r0, r1, r2, r3}
	ldmia	r8!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	r7, {r0, r1, r2, r3}
	add	r7, sp, #32
	stm	lr, {r0, r1, r2, r3}
	ldmia	r7!, {r0, r1, r2, r3}
	add	r7, lr, #16
	stmia	r7!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	add	r4, sp, #64
	stm	r7, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	add	r10, lr, #48
	stmia	r10!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1, r2, r3}
	add	r6, sp, #96
	stm	r10, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	add	r10, lr, #80
	stmia	r10!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	ldr	r6, .L11+16
	ldr	ip, .L11+20
	stm	r10, {r0, r1, r2, r3}
	sub	r10, lr, #16
	str	r5, [r6]
	ldmia	r10!, {r0, r1, r2, r3}
	add	r6, ip, #96
	stmia	r6!, {r0, r1, r2, r3}
	mov	r3, #10
	str	r3, [ip, #52]
	ldm	lr, {r0, r1, r2, r3}
	mov	lr, #8
	mov	r8, #1
	mov	fp, #32
	str	lr, [ip, #48]
	mov	lr, #16
	str	r5, [ip, #24]
	str	r5, [ip, #28]
	str	r5, [ip, #32]
	str	r5, [ip, #56]
	str	r5, [ip, #68]
	str	r5, [ip, #72]
	str	r5, [ip, #76]
	str	r5, [ip, #36]
	str	r8, [ip, #8]
	str	r8, [ip, #12]
	strb	r8, [ip, #44]
	str	r8, [ip, #64]
	str	fp, [ip, #16]
	str	fp, [ip, #20]
	str	lr, [ip, #80]
	str	lr, [ip, #84]
	stm	r6, {r0, r1, r2, r3}
	mov	r3, #5
	mov	r1, #60
	str	r3, [ip, #92]
	ldr	r3, .L11+24
	str	r1, [r3, #8]
	mov	r1, #22
	str	r5, [r3]
	str	r1, [r3, #12]
	mov	r3, #2
	ldr	r2, .L11+28
	str	r5, [r2, #40]
	str	r8, [r2, #36]
	str	r5, [r2, #8]
	ldr	r2, .L11+32
	strb	r3, [r2, #52]
	mov	r3, #4
	mov	r7, r5
	mov	r4, #30
	mov	r9, #100
	str	r3, [r2, #40]
	str	r5, [ip, #88]
	ldr	r3, .L11+36
.L8:
	mov	r2, #8
	str	r2, [r3, #16]
	mov	r2, #6
	str	r4, [r3, #32]
	add	r4, r4, #1
	cmp	r4, #34
	str	r2, [r3, #20]
	str	r9, [r3, #24]
	str	r7, [r3, #28]
	str	r7, [r3, #36]
	add	r3, r3, #44
	bne	.L8
	mov	r6, #32
	ldr	r4, .L11+40
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #148
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #200
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #252
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #304
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #356
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #0
	add	r0, sp, #408
	mov	lr, pc
	bx	r4
	mov	r7, #1
	mov	r8, #4
	mov	r10, #192
	mov	r9, #10
	mov	r4, #3
	mov	r2, #20
	ldr	r3, .L11+44
	str	r7, [sp, #164]
	strb	r4, [sp, #148]
	str	r8, [sp, #160]
	str	r7, [sp, #144]
	str	r9, [sp, #152]
	str	r6, [sp, #140]
	str	r10, [sp, #132]
	str	r2, [sp, #136]
	str	r3, [sp, #128]
	add	r5, sp, #128
	ldmia	r5!, {r0, r1, r2, r3}
	ldr	ip, .L11+48
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	mov	r1, #2
	mov	r5, #16
	mov	lr, ip
	ldr	r2, .L11+52
	str	r8, [sp, #212]
	str	r7, [sp, #216]
	strb	r8, [sp, #200]
	str	r9, [sp, #204]
	str	r5, [sp, #188]
	str	r1, [sp, #196]
	str	r10, [sp, #184]
	str	r6, [sp, #192]
	str	r2, [sp, #180]
	add	fp, sp, #180
	str	r3, [lr], #4
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r3, #8
	str	r3, [sp, #232]
	mov	r3, #5
	ldr	fp, [fp]
	str	fp, [lr]
	mov	fp, #5
	str	r4, [sp, #248]
	str	r5, [sp, #240]
	str	r9, [sp, #256]
	str	r8, [sp, #264]
	str	r7, [sp, #268]
	strb	r3, [sp, #252]
	str	r10, [sp, #236]
	str	r6, [sp, #244]
	add	r5, sp, #232
	ldmia	r5!, {r0, r1, r2, r3}
	add	r4, ip, #56
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	str	fp, [sp, #300]
	mov	fp, #6
	mov	lr, #16
	strb	fp, [sp, #304]
	mov	fp, #83
	str	lr, [sp, #292]
	str	r9, [sp, #308]
	str	r8, [sp, #316]
	str	r7, [sp, #320]
	str	fp, [sp, #284]
	str	r10, [sp, #288]
	str	r6, [sp, #296]
	add	fp, sp, #284
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	add	lr, ip, #108
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	mov	r4, #16
	ldmia	fp!, {r0, r1, r2, r3}
	str	r4, [sp, #344]
	mov	r4, #6
	str	r4, [sp, #352]
	mov	r4, #7
	ldr	r5, .L11+56
	strb	r4, [sp, #356]
	str	r9, [sp, #360]
	str	r8, [sp, #368]
	str	r7, [sp, #372]
	str	r5, [sp, #336]
	str	r10, [sp, #340]
	str	r6, [sp, #348]
	add	r5, sp, #336
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	add	r4, ip, #160
	stmia	r4!, {r0, r1, r2, r3}
	ldr	fp, [fp]
	ldmia	r5!, {r0, r1, r2, r3}
	str	fp, [lr]
	stmia	r4!, {r0, r1, r2, r3}
	mov	lr, #16
	mov	r3, #7
	str	lr, [sp, #396]
	str	r3, [sp, #404]
	mov	lr, #197
	mov	r3, #8
	str	lr, [sp, #388]
	strb	r3, [sp, #408]
	str	r10, [sp, #392]
	ldmia	r5!, {r0, r1, r2, r3}
	str	r6, [sp, #400]
	str	r9, [sp, #412]
	str	r8, [sp, #420]
	str	r7, [sp, #424]
	add	lr, sp, #388
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, ip, #212
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	add	sp, sp, #444
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	time
	.word	srand
	.word	.LANCHOR0
	.word	allWeapons
	.word	pal
	.word	player
	.word	inventory
	.word	allItems
	.word	plumbob
	.word	bullets
	.word	memset
	.word	463
	.word	people
	.word	273
	.word	390
	.size	initGame, .-initGame
	.align	2
	.global	screenX
	.syntax unified
	.arm
	.fpu softvfp
	.type	screenX, %function
screenX:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	ldr	r3, [r3]
	sub	r0, r0, r3
	cmp	r0, #250
	bgt	.L15
	add	r1, r0, r1
	cmn	r1, #2
	movle	r0, #250
	bx	lr
.L15:
	mov	r0, #250
	bx	lr
.L18:
	.align	2
.L17:
	.word	hOff0
	.size	screenX, .-screenX
	.align	2
	.global	screenY
	.syntax unified
	.arm
	.fpu softvfp
	.type	screenY, %function
screenY:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldr	r3, [r3]
	sub	r0, r0, r3
	cmp	r0, #170
	bgt	.L21
	add	r1, r0, r1
	cmn	r1, #2
	movle	r0, #170
	bx	lr
.L21:
	mov	r0, #170
	bx	lr
.L24:
	.align	2
.L23:
	.word	vOff0
	.size	screenY, .-screenY
	.align	2
	.global	setColor
	.syntax unified
	.arm
	.fpu softvfp
	.type	setColor, %function
setColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L25
.L28:
	.word	.L31
	.word	.L30
	.word	.L29
	.word	.L27
.L27:
	mov	r0, #224
	ldr	r3, .L32+4
	ldr	r1, .L32+8
	ldr	r2, .L32+12
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L25:
	bx	lr
.L31:
	ldr	r3, .L32+4
	ldr	r0, .L32+16
	ldr	r1, .L32+20
	ldr	r2, .L32+24
	strh	r0, [r3, #26]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L30:
	ldr	r3, .L32+4
	ldr	r0, .L32+28
	ldr	r1, .L32+32
	ldr	r2, .L32+36
	strh	r0, [r3, #26]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L29:
	mov	r0, #0
	ldr	r3, .L32+4
	ldr	r1, .L32+40
	ldr	r2, .L32+44
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L33:
	.align	2
.L32:
	.word	pal
	.word	83886592
	.word	5967
	.word	10847
	.word	13532
	.word	12405
	.word	18668
	.word	31939
	.word	12384
	.word	32564
	.word	27482
	.word	22196
	.size	setColor, .-setColor
	.align	2
	.global	updatePlumbob
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlumbob, %function
updatePlumbob:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	updatePlumbob.part.0
.L35:
	mov	r1, #512
	ldrb	r3, [r3, #52]	@ zero_extendqisi2
	ldr	r2, .L36+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L37:
	.align	2
.L36:
	.word	plumbob
	.word	shadowOAM
	.size	updatePlumbob, .-updatePlumbob
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L40+4
	ldrh	r1, [r3]
	ldr	r3, .L40+8
	strh	r1, [r2, #16]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L40+12
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L40+16
	strh	r1, [r2, #20]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L40+20
	strh	r1, [r2, #22]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L40+24
	strh	r1, [r2, #24]	@ movhi
	ldrh	r1, [r3]
	ldr	r4, .L40+28
	strh	r1, [r2, #26]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L40+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	waitForVBlank
	.word	hOff0
	.word	vOff0
	.word	hOff1
	.word	vOff1
	.word	hOff2
	.word	vOff2
	.word	DMANow
	.word	shadowOAM
	.size	draw, .-draw
	.align	2
	.global	updateGun
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGun, %function
updateGun:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, #0
	mov	r5, #512
	ldr	r1, .L65
	ldr	r2, .L65+4
	ldr	r3, .L65+8
	ldr	lr, [r1]
	ldr	ip, [r2]
	ldr	r1, .L65+12
	ldr	r6, .L65+16
	add	r0, r3, #176
.L50:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L62
	ldr	r7, [r3, #4]
	sub	r7, r7, lr
	cmp	r7, #170
	bgt	.L45
	ldr	r8, [r3, #20]
	add	r8, r7, r8
	cmn	r8, #1
	movge	r2, #0
	movlt	r2, #1
	cmp	r7, #170
	orreq	r2, r2, #1
	cmp	r2, #0
	ldr	r2, [r3]
	bne	.L46
	sub	r9, r2, ip
	cmp	r9, #249
	ldr	r8, [r3, #16]
	bgt	.L47
	add	r9, r9, r8
	cmn	r9, #1
	bge	.L63
.L47:
	ldr	r9, [r3, #8]
	add	r2, r2, r9
	str	r4, [r3, #28]
	str	r2, [r3]
.L52:
	and	r9, r7, #255
.L51:
	ldr	r7, [r3, #32]
	sub	r2, r2, ip
	lsl	r7, r7, #3
	cmp	r2, #250
	strh	r9, [r1, r7]	@ movhi
	bgt	.L54
	add	r8, r8, r2
	cmn	r8, #1
	andge	r2, r2, r6
	blt	.L54
.L49:
	ldr	r8, [r3, #36]
	lsl	r8, r8, #12
	add	r7, r1, r7
	orr	r8, r8, #85
	strh	r2, [r7, #2]	@ movhi
	strh	r8, [r7, #4]	@ movhi
.L44:
	add	r3, r3, #44
	cmp	r3, r0
	bne	.L50
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L54:
	mov	r2, #250
	b	.L49
.L62:
	ldr	r2, [r3, #32]
	lsl	r2, r2, #3
	strh	r5, [r1, r2]	@ movhi
	b	.L44
.L45:
	ldr	r2, [r3]
	ldr	r7, [r3, #8]
	add	r2, r2, r7
	mov	r9, #170
	str	r4, [r3, #28]
	str	r2, [r3]
	ldr	r8, [r3, #16]
	b	.L51
.L46:
	ldr	r9, [r3, #8]
	cmn	r8, #1
	add	r2, r2, r9
	str	r4, [r3, #28]
	str	r2, [r3]
	movlt	r9, #170
	ldrlt	r8, [r3, #16]
	blt	.L51
.L64:
	ldr	r8, [r3, #16]
	b	.L52
.L63:
	ldr	r9, [r3, #8]
	add	r2, r2, r9
	str	r2, [r3]
	and	r9, r7, #255
	b	.L51
.L66:
	.align	2
.L65:
	.word	vOff0
	.word	hOff0
	.word	bullets
	.word	shadowOAM
	.word	511
	.size	updateGun, .-updateGun
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L277
	ldr	r3, [r4, #76]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #76]
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #32]
	ldr	lr, [r4]
	add	r2, r1, r2
	cmp	r3, r0
	str	r0, [r4, #40]
	sub	r2, r2, #1
	add	ip, lr, #8
	add	r0, lr, #23
	bne	.L69
.L71:
	mov	r5, #0
	mov	r3, #1
	str	r5, [r4, #24]
	str	r3, [r4, #28]
.L70:
	ldr	r3, [r4, #48]
	cmp	r3, #8
	movlt	r3, #0
	movge	r3, #8
	ldr	r8, .L277+4
	ldrh	r5, [r8]
	tst	r5, #32
	str	r3, [r4, #48]
	bne	.L73
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L243
.L256:
	ldr	r6, .L277+8
.L74:
	ldr	r9, .L277+12
	ldrh	r3, [r9]
	tst	r3, #64
	beq	.L77
	tst	r5, #64
	bne	.L77
	ldr	lr, [r4, #24]
	cmp	lr, #0
	bne	.L78
	ldr	lr, [r4, #12]
	ldr	r7, [r6]
	add	lr, r2, lr
	mul	lr, r7, lr
	ldr	r7, .L277+16
	ldr	r10, [r7]
	add	fp, r10, ip
	ldrb	fp, [fp, lr]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L79
	add	r10, r10, r0
	ldrb	lr, [r10, lr]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L80
.L79:
	ldr	lr, [r4, #36]
	cmp	lr, #0
	bne	.L80
	mov	r3, #60
	ldr	r5, [r4, #48]
	cmp	r5, #7
	str	r3, [r4, #32]
	mov	lr, #1
	movle	r3, #2
	movgt	r3, #10
	str	lr, [r4, #24]
	str	r3, [r4, #48]
.L82:
	cmp	r1, #0
	ble	.L85
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #48]
	sub	r3, r1, r3
	cmp	r2, #7
	str	r3, [r4, #4]
	bgt	.L87
.L90:
	mov	r3, #2
	str	r3, [r4, #48]
	b	.L88
.L77:
	tst	r3, #128
	beq	.L83
	tst	r5, #128
	bne	.L83
.L257:
	ldr	r7, .L277+16
.L180:
	mov	lr, #0
	mov	r3, #1
	str	lr, [r4, #24]
	str	r3, [r4, #28]
.L84:
	ldr	lr, [r4, #12]
	ldr	r3, [r6]
	add	r2, lr, r2
	mul	r2, r3, r2
	ldr	r3, [r7]
	add	r5, r3, ip
	ldrb	r5, [r5, r2]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L89
	add	r3, r3, r0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r4, #48]
	add	lr, lr, r1
	cmp	r3, #7
	str	lr, [r4, #4]
	ble	.L90
.L87:
	mov	r3, #10
	str	r3, [r4, #48]
	b	.L88
.L83:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L82
.L85:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L262
.L88:
	ldr	r7, .L277+20
	ldrb	r3, [r7]	@ zero_extendqisi2
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L91
.L93:
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L92
.L73:
	tst	r5, #16
	bne	.L256
	ldr	r3, [r4, #36]
	cmp	r3, #0
	ldr	r6, .L277+8
	bne	.L74
	ldr	r3, [r4, #16]
	ldr	r10, [r6]
	sub	r3, r10, r3
	cmp	lr, r3
	bge	.L76
	mul	r9, r1, r10
	ldr	r7, .L277+16
	ldr	r3, [r4, #8]
	ldr	fp, [r7]
	add	r7, r3, r0
	add	fp, fp, r7
	ldrb	r7, [fp, r9]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L76
	mul	r7, r2, r10
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	cmp	r7, #0
	addne	r3, lr, r3
	strne	r3, [r4]
.L76:
	mov	r3, #9
	str	r3, [r4, #48]
	b	.L74
.L243:
	cmp	lr, #0
	ldr	r6, .L277+8
	ble	.L75
	ldr	r10, [r6]
	mul	fp, r10, r1
	ldr	r7, .L277+16
	ldr	r3, [r4, #8]
	ldr	r9, [r7]
	sub	r7, ip, r3
	add	r9, r9, r7
	ldrb	r7, [r9, fp]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L75
	mul	r7, r10, r2
	ldrb	r7, [r9, r7]	@ zero_extendqisi2
	cmp	r7, #0
	subne	r3, lr, r3
	strne	r3, [r4]
.L75:
	mov	r3, #1
	str	r3, [r4, #48]
	b	.L74
.L92:
	ldr	r3, [r6]
	mul	r3, r1, r3
	ldr	r2, .L277+16
	ldr	r2, [r2]
	add	r0, r2, r0
	add	ip, r2, ip
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldrb	r0, [ip, r3]	@ zero_extendqisi2
	ldr	r3, .L277+24
	mov	lr, pc
	bx	r3
.L91:
	ldr	r10, .L277+28
	ldr	r3, [r10, #44]
	cmp	r3, #0
	beq	.L97
.L266:
	bl	updatePlumbob.part.0
	ldr	r5, .L277+32
.L98:
	ldrh	r3, [r9]
	tst	r3, #1
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #48]
	beq	.L99
	ldrh	r3, [r8]
	tst	r3, #1
	bne	.L99
	ldr	r3, [r10, #44]
	cmp	r3, #0
	beq	.L263
.L99:
	cmp	r2, #0
	beq	.L101
.L100:
	cmp	r1, #7
	movle	r1, #5
	movgt	r1, #13
.L259:
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #52]
	str	r1, [r4, #48]
	bne	.L261
.L102:
	mov	r2, #7
	ldr	r3, [r4, #56]
	cmp	r3, #5
	str	r2, [r4, #52]
	beq	.L264
	cmp	r3, #4
	add	r2, r3, #1
	bne	.L265
	ldr	r3, [r4, #116]
	cmp	r3, #3
	beq	.L117
.L260:
	mov	r3, #5
	ldr	r2, [r4, #36]
	ldr	ip, [r4]
	ldr	r0, [r4, #4]
	b	.L116
.L94:
	ldr	r3, [r6]
	mul	r3, r1, r3
	ldr	r2, .L277+16
	ldr	r2, [r2]
	ldr	r10, .L277+28
	add	r0, r2, r0
	add	ip, r2, ip
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldrb	r0, [ip, r3]	@ zero_extendqisi2
	ldr	r3, .L277+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r10, #44]
	cmp	r3, #0
	bne	.L266
.L97:
	mov	r2, #512
	ldrb	r3, [r10, #52]	@ zero_extendqisi2
	ldr	r5, .L277+32
	lsl	r3, r3, #3
	strh	r2, [r5, r3]	@ movhi
	b	.L98
.L95:
	ldr	r3, [r6]
	mul	r3, r1, r3
	ldr	r2, .L277+16
	ldr	r2, [r2]
	add	r0, r2, r0
	add	ip, r2, ip
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldrb	r0, [ip, r3]	@ zero_extendqisi2
	ldr	r3, .L277+40
	mov	lr, pc
	bx	r3
	b	.L91
.L96:
	ldr	r3, [r6]
	mul	r3, r1, r3
	ldr	r2, .L277+16
	ldr	r2, [r2]
	add	r0, r2, r0
	add	ip, r2, ip
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldrb	r0, [ip, r3]	@ zero_extendqisi2
	ldr	r3, .L277+44
	mov	lr, pc
	bx	r3
	b	.L91
.L89:
	mov	r3, #0
	str	r3, [r4, #28]
	b	.L88
.L108:
	ldr	r3, [r4, #56]
	cmp	r3, #3
	beq	.L261
.L111:
	mov	r0, #20
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	str	r3, [r4, #56]
	str	r0, [r4, #52]
.L261:
	ldr	ip, [r4]
	ldr	r0, [r4, #4]
.L105:
	ldr	r3, [r4, #16]
	rsb	r3, r3, #240
	add	r3, r3, r3, lsr #31
	sub	r3, ip, r3, asr #1
	cmp	r3, #0
	movlt	r9, #0
	ldr	r2, [r4, #20]
	rsb	r2, r2, #160
	ldr	lr, .L277+48
	add	r2, r2, r2, lsr #31
	sub	r2, r0, r2, asr #1
	str	r3, [lr]
	movlt	r3, r9
	strlt	r9, [lr]
	cmp	r2, #0
	movlt	r9, #0
	ldr	r8, .L277+52
	ldrb	r7, [r7]	@ zero_extendqisi2
	str	r2, [r8]
	movlt	r2, r9
	strlt	r9, [r8]
	cmp	r7, #1
	ldr	r6, [r6]
	beq	.L267
	sub	r9, r6, #239
	cmp	r9, r3
	ldr	r3, .L277+56
	ldr	r3, [r3]
	suble	r6, r6, #240
	strle	r6, [lr]
	sub	r6, r3, #159
	cmp	r6, r2
	suble	r3, r3, #160
	strle	r3, [r8]
	cmp	r7, #2
	beq	.L268
	cmp	r7, #3
	bne	.L130
	ldr	r3, [lr]
	ldr	r6, .L277+60
	ldr	lr, [r8]
	str	r3, [r6]
	ldr	r2, .L277+64
	ldr	r6, .L277+68
	str	lr, [r2]
	lsl	r3, r3, #16
	lsl	r2, lr, #16
	str	lr, [r6]
	lsr	r3, r3, #16
	lsr	r2, r2, #16
.L129:
	sub	r3, ip, r3
	lsl	lr, r3, #23
	lsr	lr, lr, #23
	mvn	lr, lr, lsl #17
	ldr	r9, [r4, #76]
	mvn	lr, lr, lsr #17
	cmp	r9, #0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r10, #512
	movne	r3, #276
	ldrb	r6, [r4, #44]	@ zero_extendqisi2
	ldrb	r7, [r4, #112]	@ zero_extendqisi2
	add	r8, r5, r6, lsl #3
	sub	r2, r0, r2
	strh	lr, [r8, #2]	@ movhi
	lsl	r6, r6, #3
	and	lr, r2, #255
	lsl	r7, r7, #3
	lsl	r2, r2, #16
	strh	r10, [r5, r7]	@ movhi
	strhne	r3, [r8, #4]	@ movhi
	strh	lr, [r5, r6]	@ movhi
	lsr	r2, r2, #16
	beq	.L269
.L137:
	cmp	r1, #7
	bgt	.L167
	add	r6, r5, r6
	ldrh	r3, [r6, #2]
	orr	r3, r3, #4096
	strh	r3, [r6, #2]	@ movhi
	add	r5, r5, r7
	ldrh	r3, [r5, #2]
	orr	r3, r3, #4096
	strh	r3, [r5, #2]	@ movhi
.L167:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateGun
.L269:
	cmp	r1, #13
	ldrls	pc, [pc, r1, asl #2]
	b	.L137
.L140:
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L137
	.word	.L137
	.word	.L139
	.word	.L137
	.word	.L137
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L137
	.word	.L137
	.word	.L139
.L69:
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L70
	b	.L71
.L263:
	cmp	r2, #0
	bne	.L100
	add	r0, r4, #24
	ldmia	r0, {r0, r3}
	orr	r3, r0, r3
	cmp	r3, #0
	beq	.L270
.L101:
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #52]
	bne	.L261
	mov	r3, #10
	str	r3, [r4, #52]
	cmp	r1, #13
	ldrls	pc, [pc, r1, asl #2]
	b	.L261
.L107:
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L261
	.word	.L261
	.word	.L102
	.word	.L261
	.word	.L261
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L261
	.word	.L261
	.word	.L102
.L267:
	sub	r7, r6, #300
	sub	r7, r7, #3
	cmp	r7, r3
	suble	r3, r6, #304
	strle	r3, [lr]
	ldr	lr, .L277+56
	ldr	lr, [lr]
	sub	r6, lr, #255
	cmp	r6, r2
	suble	r2, lr, #256
	strle	r2, [r8]
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	b	.L129
.L268:
	ldr	r3, [lr]
	ldr	r2, .L277+60
	ldr	lr, [r8]
	ldr	r6, .L277+64
	str	r3, [r2]
	lsl	r3, r3, #16
	lsl	r2, lr, #16
	str	lr, [r6]
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	b	.L129
.L130:
	cmp	r7, #4
	bne	.L131
	ldr	r6, [r8]
	ldr	r7, .L277+64
	lsl	r2, r6, #16
	ldrh	r3, [lr]
	str	r6, [r7]
	lsr	r2, r2, #16
	b	.L129
.L139:
	ldr	r8, [r4, #56]
	add	lr, r8, #96
	lsl	lr, lr, #2
	cmp	r1, #7
	and	lr, lr, #1020
	add	r10, r5, r6
	strh	lr, [r10, #4]	@ movhi
	addle	lr, ip, #5
	strle	lr, [r4, #96]
	ldr	lr, [r4, #116]
	add	r10, ip, #20
	movle	r9, #1
	strgt	r10, [r4, #96]
	cmp	lr, #0
	cmpne	lr, #3
	add	fp, r0, #11
	str	fp, [r4, #100]
	beq	.L146
	ldr	fp, .L277+72
	add	lr, r8, lr, lsl #4
	sub	lr, lr, #6
	and	lr, fp, lr, lsl #1
	add	fp, r5, r7
	strh	lr, [fp, #4]	@ movhi
	cmp	r8, #5
	ldrls	pc, [pc, r8, asl #2]
	b	.L137
.L148:
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L147
.L141:
	ldr	r3, [r4, #56]
	lsl	r3, r3, #2
	cmp	r3, #12
	movge	r3, #12
	add	r3, r3, #256
	and	r3, r3, #1020
	add	r2, r5, r6
	strh	r3, [r2, #4]	@ movhi
	b	.L137
.L142:
	ldr	r3, [r4, #56]
	add	r3, r3, #32
	lsl	r3, r3, #2
	and	r3, r3, #1020
	add	r2, r5, r6
	strh	r3, [r2, #4]	@ movhi
	b	.L137
.L143:
	ldr	r2, [r4, #56]
	ldr	r3, .L277+76
	lsl	r2, r2, #2
	cmp	r2, #12
	andle	r3, r3, r2
	andgt	r3, r3, #12
	add	r2, r5, r6
	strh	r3, [r2, #4]	@ movhi
	b	.L137
.L78:
	tst	r3, #128
	beq	.L82
	tst	r5, #128
	beq	.L257
	b	.L82
.L131:
	cmp	r7, #5
	ldrhne	r2, [r8]
	ldrhne	r3, [lr]
	bne	.L129
	ldr	r3, .L277+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L271
	ldr	r3, .L277+84
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L134
	mov	r3, #272
	mov	r2, #96
	str	r3, [lr]
	str	r2, [r8]
	b	.L129
.L109:
	ldr	lr, [r4, #56]
	ldr	r3, .L277+88
	add	lr, lr, #1
	smull	r0, r3, lr, r3
	sub	r3, r3, lr, asr #31
	add	r3, r3, r3, lsl #1
	ldr	ip, [r4]
	ldr	r0, [r4, #4]
	sub	r3, lr, r3, lsl #1
.L116:
	cmp	r2, #0
	str	r3, [r4, #56]
	beq	.L105
	cmp	r3, #4
	moveq	r3, #1
	streq	r3, [r4, #40]
	b	.L105
.L110:
	ldr	r3, [r4, #56]
	b	.L111
.L80:
	tst	r3, #128
	beq	.L85
	tst	r5, #128
	beq	.L180
	b	.L85
.L262:
	ldr	r7, .L277+16
	b	.L84
.L146:
	cmp	lr, #3
	cmpeq	r8, #4
	bne	.L137
	cmp	r9, #0
	movne	lr, #5
	moveq	lr, #14
	mov	r0, r5
	mov	ip, #86
	add	r2, r2, #5
	add	r2, r2, r9
	and	r2, r2, #255
	orr	r2, r2, #16384
	add	r3, r3, lr
	strh	r2, [r0, r7]!	@ movhi
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	b	.L137
.L271:
	mov	r3, #9
	mov	r2, #96
	str	r3, [lr]
	str	r2, [r8]
	b	.L129
.L264:
	mov	r3, #0
	mov	r2, #4
	str	r3, [r4, #36]
	str	r3, [r4, #56]
	str	r2, [r4, #60]
	b	.L261
.L265:
	ldr	r3, .L277+88
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #1
	ldr	ip, [r4]
	ldr	r2, [r4, #36]
	ldr	r0, [r4, #4]
	b	.L116
.L270:
	mov	r2, #1
	str	r3, [r4, #56]
	str	r2, [r4, #36]
	b	.L100
.L152:
	add	r2, r2, #18
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	add	r0, r0, #18
	add	r2, r5, r7
	bne	.L156
	add	r3, r3, #12
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r2, #2]	@ movhi
	mov	r3, #12
	str	r0, [r4, #100]
.L172:
	add	ip, r3, ip
	str	ip, [r4, #96]
	b	.L137
.L153:
	add	r2, r2, #18
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	add	r0, r0, #18
	add	r2, r5, r7
	bne	.L156
	add	r3, r3, #13
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mov	r3, #13
	b	.L172
.L147:
	add	r2, r2, #13
	add	r2, r2, r9
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	add	r2, r5, r7
	beq	.L272
	sub	r3, r3, #4
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #14
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	sub	r10, ip, #4
.L173:
	str	r10, [r4, #96]
	b	.L137
.L149:
	add	r2, r2, #9
	add	r2, r2, r9
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	add	r2, r5, r7
	beq	.L273
	sub	r3, r3, #8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #10
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mvn	r3, #7
	b	.L172
.L150:
	add	r2, r2, #11
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	beq	.L274
	mvn	r2, #5
	sub	r3, r3, #6
	lsl	r3, r3, #23
	lsr	r3, r3, #23
.L171:
	add	ip, r2, ip
	add	r2, r5, r7
	str	ip, [r4, #96]
	strh	r3, [r2, #2]	@ movhi
	b	.L137
.L151:
	add	r2, r2, #14
	sub	r2, r2, r9
	and	r2, r2, #255
	orr	r2, r2, #16384
	cmp	r9, #0
	strh	r2, [r5, r7]	@ movhi
	add	r2, r5, r7
	beq	.L275
	add	r3, r3, #5
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #13
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mov	r3, #5
	b	.L172
.L134:
	ldr	r3, [lr]
	cmp	r3, #8
	movle	r6, #9
	lslgt	r3, r3, #16
	movle	r3, r6
	ldrh	r2, [r8]
	strle	r6, [lr]
	lsrgt	r3, r3, #16
	b	.L129
.L117:
	ldr	r8, .L277+92
	mov	r9, #0
	mov	r3, r8
.L120:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L276
	add	r9, r9, #1
	cmp	r9, #4
	add	r3, r3, #44
	bne	.L120
	b	.L260
.L156:
	add	r3, r3, #4
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mov	r3, #4
	b	.L172
.L275:
	add	r3, r3, #12
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #14
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mov	r3, #12
	b	.L172
.L273:
	add	r3, r3, #24
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #9
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	mov	r3, #24
	b	.L172
.L274:
	add	r3, r3, #22
	lsl	r3, r3, #23
	mov	r2, #22
	lsr	r3, r3, #23
	b	.L171
.L272:
	add	r3, r3, #20
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, #13
	strh	r3, [r2, #2]	@ movhi
	str	r0, [r4, #100]
	b	.L173
.L276:
	ldr	r3, .L277+96
	ldr	r0, .L277+100
	ldr	r1, [r3]
	ldr	r3, .L277+104
	mov	lr, pc
	bx	r3
	mov	r3, #1
	add	r2, r9, r9, lsl #2
	ldr	r1, [r4, #48]
	add	r9, r9, r2, lsl r3
	add	r2, r8, r9, lsl #2
	cmp	r1, #7
	str	r3, [r2, #28]
	lsl	r9, r9, #2
	bgt	.L119
	mvn	lr, #1
	ldr	ip, [r4, #56]
	ldr	r3, .L277+88
	add	ip, ip, #1
	smull	r0, r3, ip, r3
	ldr	r0, [r4, #4]
	sub	r3, r3, ip, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, ip, r3, lsl #1
	add	ip, r0, #8
	str	ip, [r2, #4]
	ldr	ip, [r4]
	str	lr, [r2, #8]
	str	ip, [r8, r9]
	ldr	r2, [r4, #36]
	b	.L116
.L119:
	mov	r10, #2
	ldr	lr, [r4, #56]
	ldr	r3, .L277+88
	add	lr, lr, #1
	smull	r0, r3, lr, r3
	ldr	ip, [r4]
	sub	r3, r3, lr, asr #31
	ldr	r0, [r4, #4]
	add	r3, r3, r3, lsl #1
	sub	r3, lr, r3, lsl #1
	add	lr, ip, #26
	str	lr, [r8, r9]
	add	lr, r0, #8
	str	lr, [r2, #4]
	str	r10, [r2, #8]
	ldr	r2, [r4, #36]
	b	.L116
.L278:
	.align	2
.L277:
	.word	player
	.word	buttons
	.word	mapWidth
	.word	oldButtons
	.word	cm
	.word	gameState
	.word	plumbobArea2
	.word	plumbob
	.word	shadowOAM
	.word	plumbobArea1
	.word	plumbobShops
	.word	plumbobHouse
	.word	hOff0
	.word	vOff0
	.word	mapHeight
	.word	hOff1
	.word	vOff1
	.word	vOff2
	.word	1022
	.word	1023
	.word	phase1
	.word	phase2
	.word	715827883
	.word	bullets
	.word	shoot_length
	.word	shoot_data
	.word	playSoundB
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateText
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateText, %function
updateText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L309
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L308
.L280:
	ldr	r3, .L309+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L283
	ldr	r2, .L309+8
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L283
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L279
.L286:
	.word	.L291
	.word	.L290
	.word	.L307
	.word	.L289
	.word	.L288
	.word	.L287
	.word	.L307
	.word	.L307
	.word	.L307
.L283:
	tst	r3, #2
	beq	.L279
	ldr	r3, .L309+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L307
.L279:
	pop	{r4, r5, r6, lr}
	bx	lr
.L307:
	ldr	r3, .L309+12
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L308:
	ldr	r3, .L309+8
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L281
	ldr	r1, .L309+16
	ldr	r2, [r1]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r1]
	ble	.L281
.L282:
	bl	draw
	b	.L280
.L281:
	tst	r3, #128
	bne	.L282
	ldr	r2, .L309+16
	ldr	r3, [r2]
	cmp	r3, #109
	addle	r3, r3, #1
	strle	r3, [r2]
	bl	draw
	b	.L280
.L291:
	mov	r2, #1
	ldr	r3, .L309+20
	ldr	r1, .L309+12
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	mov	lr, pc
	bx	r1
	b	.L279
.L290:
	ldr	ip, .L309+24
	ldr	r0, [ip, #8]
	cmp	r0, #174
	ble	.L279
	mov	r5, #8
	ldr	r2, .L309+28
	sub	r0, r0, #175
	mov	r3, #0
	mov	lr, r2
	mov	r1, r2
	str	r0, [ip, #8]
	strb	r5, [r4]
	b	.L294
.L292:
	add	r3, r3, #1
	cmp	r3, #22
	add	r1, r1, #44
	beq	.L293
.L294:
	ldr	r0, [r1, #36]
	cmp	r0, #0
	bne	.L292
	mov	r0, #1
	mov	r1, #5
	add	ip, r3, r3, lsl #2
	add	r3, r3, ip, lsl r0
	add	r3, lr, r3, lsl #2
	str	r0, [r3, #36]
	str	r1, [r3, #8]
.L293:
	mov	r3, #0
	b	.L297
.L295:
	add	r3, r3, #1
	cmp	r3, #22
	add	r2, r2, #44
	beq	.L296
.L297:
	ldr	r1, [r2, #36]
	cmp	r1, #0
	bne	.L295
	mov	r1, #1
	mov	r2, #6
	add	r0, r3, r3, lsl #2
	add	r3, r3, r0, lsl r1
	add	r3, lr, r3, lsl #2
	str	r1, [r3, #36]
	str	r2, [r3, #8]
.L296:
	mov	r1, #1
	ldr	r2, .L309+20
	ldr	r3, .L309+32
	str	r1, [r2, #308]
	mov	lr, pc
	bx	r3
	b	.L279
.L289:
	mov	r1, #2
	mov	r0, #1
	ldr	r3, .L309+20
	ldr	r2, .L309+12
	str	r0, [r3, #248]
	str	r1, [r3, #252]
	mov	lr, pc
	bx	r2
	b	.L279
.L288:
	mov	r2, #1
	ldr	r3, .L309+20
	ldr	r1, .L309+12
	str	r2, [r3, #144]
	str	r2, [r3, #148]
	mov	lr, pc
	bx	r1
	b	.L279
.L287:
	mov	r1, #1
	ldr	r2, .L309+20
	ldr	r3, .L309+12
	str	r1, [r2, #196]
	mov	lr, pc
	bx	r3
	b	.L279
.L310:
	.align	2
.L309:
	.word	ltext
	.word	oldButtons
	.word	buttons
	.word	goToGame
	.word	vOff0
	.word	people
	.word	inventory
	.word	allItems
	.word	goToText
	.size	updateText, .-updateText
	.global	temp
	.comm	bullets,176,4
	.comm	inventory,16,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	cm,4,4
	.comm	shadowOAM,1024,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	0
	.word	10
	.word	3
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
.LC1:
	.word	0
	.word	0
	.word	10
	.word	3
	.byte	0
	.space	3
	.word	1
	.word	2
	.word	0
.LC2:
	.word	0
	.word	0
	.word	12
	.word	3
	.byte	0
	.space	3
	.word	2
	.word	5
	.word	0
.LC3:
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	3
	.word	100
	.word	0
	.bss
	.align	2
	.type	temp, %object
	.size	temp, 4
temp:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
