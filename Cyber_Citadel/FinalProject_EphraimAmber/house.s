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
	.file	"house.c"
	.text
	.align	2
	.global	initHouse
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHouse, %function
initHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0
	mov	lr, #4
	ldr	r2, .L13
	ldr	r1, .L13+4
	ldr	r2, [r2]
	ldr	ip, .L13+8
	ldr	r0, .L13+12
	str	lr, [r1]
	cmp	r2, r3
	ldr	r1, .L13+16
	ldr	r2, .L13+20
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	bne	.L11
.L2:
	ldr	r3, .L13+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L12
	ldr	r3, .L13+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #2
	cmp	r3, #8
	cmpne	r2, #1
	bhi	.L5
	ldr	r3, .L13+32
	ldm	r3, {r10, ip}
.L4:
	mov	r2, #0
	mov	lr, #4
	mov	r9, #10
	mov	r8, #3
	mov	r7, #20
	mov	r6, #140
	mov	r5, #16
	mov	r4, #9
	ldr	r0, [r3, #16]
	rsb	r0, r0, #240
	ldr	r1, .L13+36
	add	r0, r0, r0, lsr #31
	sub	r0, r10, r0, asr #1
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r0, [r1]
	str	r2, [r3, #76]
	ldr	r1, [r3, #20]
	ldr	r3, .L13+40
	str	r9, [r3, #24]
	str	r2, [r3, #36]
	str	lr, [r3, #40]
	ldr	r3, .L13+44
	rsb	r1, r1, #160
	ldr	r0, .L13+48
	str	r2, [r3, #28]
	strb	r8, [r3, #20]
	ldr	r2, .L13+52
	add	r1, r1, r1, lsr #31
	sub	r1, ip, r1, asr #1
	stm	r3, {r2, r6}
	str	lr, [r3, #32]
	str	r7, [r3, #24]
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	str	r1, [r0]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	mov	r1, #6
	mov	r2, #120
	mov	r0, #8
	ldr	r3, .L13+32
	mov	r10, r1
	mov	ip, r2
	str	r1, [r3]
	str	r0, [r3, #48]
	str	r2, [r3, #4]
	b	.L4
.L12:
	mov	r2, #372
	mov	r1, #0
	mov	ip, #120
	ldr	r3, .L13+32
	mov	r10, r2
	str	r2, [r3]
	str	r1, [r3, #48]
	str	ip, [r3, #4]
	b	.L4
.L11:
	ldr	r3, .L13+56
	mov	lr, pc
	bx	r3
	b	.L2
.L14:
	.align	2
.L13:
	.word	pal
	.word	numPals
	.word	switchMap
	.word	toText
	.word	housecmBitmap
	.word	cm
	.word	gameState
	.word	state
	.word	player
	.word	hOff0
	.word	plumbob
	.word	cat
	.word	vOff0
	.word	275
	.word	setColor
	.size	initHouse, .-initHouse
	.global	__aeabi_idivmod
	.align	2
	.global	plumbobHouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	plumbobHouse, %function
plumbobHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	cmpne	r0, #1
	bne	.L16
	ldr	r3, .L41
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L39
.L16:
	cmp	r1, #2
	cmpne	r0, #2
	push	{r4, r5, lr}
	sub	sp, sp, #20
	bne	.L20
	mov	r1, #1
	mov	r2, #8
	ldr	r3, .L41+4
	ldrh	r0, [r3]
	ldr	r3, .L41+8
	tst	r0, #1
	str	r1, [r3, #44]
	str	r2, [r3, #48]
	beq	.L15
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L40
.L15:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L39:
	mov	r2, #1
	mov	r1, #8
	ldr	r3, .L41+4
	ldrh	r0, [r3]
	ldr	r3, .L41+8
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L41+16
	streq	r2, [r3]
	bx	lr
.L20:
	ldr	r3, .L41+20
	ldr	r4, .L41
	ldr	r0, [r3]
	ldr	r5, [r4, #12]
	ldm	r4, {r2, ip, lr}
	ldr	r1, [r3, #4]
	add	r0, r0, #8
	stm	sp, {r2, ip, lr}
	str	r5, [sp, #12]
	mov	r3, #32
	mov	r2, #16
	ldr	r5, .L41+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L15
	mov	r2, #1
	mov	r1, #9
	ldr	r3, .L41+4
	ldrh	r0, [r3]
	ldr	r3, .L41+8
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	beq	.L15
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L15
	mov	r0, #6
	ldr	r1, .L41+28
	ldr	r3, .L41+32
	str	r2, [r4, #40]
	strb	r0, [r1]
	str	r2, [r3]
	b	.L15
.L40:
	ldr	r4, .L41+36
	ldr	r3, .L41+40
	ldr	r0, [r4]
	ldr	r1, [r3]
	add	r0, r0, #1
	ldr	r3, .L41+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+48
	str	r1, [r4]
	mov	lr, pc
	bx	r3
	b	.L15
.L42:
	.align	2
.L41:
	.word	cat
	.word	oldButtons
	.word	plumbob
	.word	buttons
	.word	switchMap
	.word	player
	.word	collision
	.word	ltext
	.word	toText
	.word	pal
	.word	numPals
	.word	__aeabi_idivmod
	.word	setColor
	.size	plumbobHouse, .-plumbobHouse
	.align	2
	.global	updateCat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCat, %function
updateCat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L46
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L44
	ldr	r0, [r4, #28]
	ldr	r3, .L46+4
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r1, [r4, #28]
	str	r3, [r4, #24]
.L44:
	ldr	r0, [r4, #4]
	ldr	r3, .L46+8
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4, #20]	@ zero_extendqisi2
	ldr	r5, .L46+12
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r5, r3]	@ movhi
	ldr	r0, [r4]
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r1
	ldr	r2, [r4, #28]
	ldrb	r1, [r4, #20]	@ zero_extendqisi2
	ldr	r3, .L46+20
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	add	r2, r2, #76
	add	r5, r5, r1, lsl #3
	orr	r0, r0, #20480
	and	r3, r3, r2, lsl #1
	strh	r0, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	cat
	.word	__aeabi_idivmod
	.word	screenY
	.word	shadowOAM
	.word	screenX
	.word	1022
	.size	updateCat, .-updateCat
	.align	2
	.global	updateHouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHouse, %function
updateHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L54
	push	{r4, lr}
	ldr	r3, .L54+4
	str	r1, [r2, #44]
	mov	lr, pc
	bx	r3
	bl	updateCat
	ldr	r3, .L54+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L53
	ldr	r3, .L54+12
	ldr	r3, [r3]
	cmp	r3, #0
	ldrne	r3, .L54+16
	ldreq	r3, .L54+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L53:
	ldr	r3, .L54+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	plumbob
	.word	updatePlayer
	.word	switchMap
	.word	toText
	.word	goToText
	.word	draw
	.word	goToShops
	.size	updateHouse, .-updateHouse
	.comm	inventory,16,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	cat,52,4
	.comm	toText,4,4
	.comm	switchMap,4,4
	.comm	numPals,4,4
	.comm	pal,4,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
