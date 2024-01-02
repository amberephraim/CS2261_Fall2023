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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #3
	ldr	r2, .L4
	ldr	r1, .L4+4
	ldr	r4, .L4+8
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	100720640
	.word	startMap
	.word	DMANow
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4352
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L8
	mov	lr, pc
	bx	r2
	ldr	r4, .L8+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+36
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L8+40
	ldr	r2, .L8+44
	strh	r3, [r1]	@ movhi
	ldr	r0, .L8+48
	ldrh	r1, [r2, #48]
	ldr	r2, .L8+52
	pop	{r4, lr}
	str	r3, [r0]
	strh	r1, [r2]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	tilesetTiles
	.word	tilesetPal
	.word	oldButtons
	.word	67109120
	.word	stall
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #3
	ldr	r2, .L12
	ldr	r1, .L12+4
	ldr	r4, .L12+8
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+16
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	100720640
	.word	pauseMap
	.word	DMANow
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #109
	ldr	r5, .L16
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+4
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r5
	mov	ip, #118
	mov	r0, #127
	ldr	r1, .L16+12
	ldr	r3, [r1, #8]
	ldr	r4, .L16+16
	ldr	r7, .L16+20
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	add	r3, r3, #496
	ldr	r2, .L16+24
	add	r3, r3, #1
	add	r1, r4, lr, lsl #3
	and	r3, r3, r7
	ldr	r8, .L16+28
	strh	r3, [r1, #4]	@ movhi
	ldr	r3, [r2, #8]
	strh	r9, [r1, #2]	@ movhi
	ldr	r1, [r8, #8]
	ldr	r6, .L16+32
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	add	r3, r3, #496
	ldrb	r8, [r8, #12]	@ zero_extendqisi2
	lsl	lr, lr, #3
	add	r3, r3, #1
	add	r1, r1, #496
	strh	r6, [r4, lr]	@ movhi
	and	r3, r3, r7
	lsl	lr, r2, #3
	add	r1, r1, #1
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #4]	@ movhi
	and	r1, r1, r7
	add	r3, r4, r8, lsl #3
	lsl	r8, r8, #3
	strh	r6, [r4, lr]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	r2, .L16+36
	strh	r6, [r4, r8]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #4
	ldr	r3, .L16+40
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	100720640
	.word	loseMap
	.word	hundreds
	.word	shadowOAM
	.word	1023
	.word	tens
	.word	ones
	.word	-32718
	.word	waitForVBlank
	.word	state
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #109
	ldr	r5, .L20
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L20+4
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r5
	mov	ip, #118
	mov	r0, #127
	ldr	r1, .L20+12
	ldr	r3, [r1, #8]
	ldr	r4, .L20+16
	ldr	r7, .L20+20
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	add	r3, r3, #496
	ldr	r2, .L20+24
	add	r3, r3, #1
	add	r1, r4, lr, lsl #3
	and	r3, r3, r7
	ldr	r8, .L20+28
	strh	r3, [r1, #4]	@ movhi
	ldr	r3, [r2, #8]
	strh	r9, [r1, #2]	@ movhi
	ldr	r1, [r8, #8]
	ldr	r6, .L20+32
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	add	r3, r3, #496
	ldrb	r8, [r8, #12]	@ zero_extendqisi2
	lsl	lr, lr, #3
	add	r3, r3, #1
	add	r1, r1, #496
	strh	r6, [r4, lr]	@ movhi
	and	r3, r3, r7
	lsl	lr, r2, #3
	add	r1, r1, #1
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #4]	@ movhi
	and	r1, r1, r7
	add	r3, r4, r8, lsl #3
	lsl	r8, r8, #3
	strh	r6, [r4, lr]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	r2, .L20+36
	strh	r6, [r4, r8]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #5
	ldr	r3, .L20+40
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	100720640
	.word	winMap
	.word	hundreds
	.word	shadowOAM
	.word	1023
	.word	tens
	.word	ones
	.word	-32718
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.global	__aeabi_idivmod
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L29
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	bne	.L23
	ldr	r4, .L29+4
	ldr	r3, [r4]
	ldr	r2, .L29+8
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	ldr	r5, .L29+12
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4]
	ldr	r1, [r5, #36]
	bne	.L24
	add	r0, r1, #1
	ldr	r3, .L29+16
	ldr	r1, [r5, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L24:
	ldr	r3, [r5]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r5, #72]	@ zero_extendqisi2
	ldr	r6, .L29+20
	add	r0, r1, #64
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	lsl	r0, r0, #2
	add	r1, r6, r2, lsl #3
	and	r0, r0, #1020
	lsl	r2, r2, #3
	strh	r0, [r1, #4]	@ movhi
	strh	ip, [r6, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	ldr	r0, .L29+24
	mov	lr, pc
	bx	r0
	ldr	r5, .L29+28
	mov	r1, r6
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L29+32
	ldr	r3, [r4]
	ldr	r1, .L29+36
	mla	r3, r1, r3, r2
	ldr	r2, .L29+40
	cmp	r2, r3, ror #3
	bcs	.L28
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	ldr	r3, .L29+12
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L26
	ldr	r3, .L29+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToLose
.L26:
	ldr	r3, .L29+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L29+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	ldr	r3, .L29+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToWin
.L30:
	.align	2
.L29:
	.word	level
	.word	stall
	.word	1717986919
	.word	player
	.word	__aeabi_idivmod
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	hideSprites
	.word	updateGame2
	.size	game2, .-game2
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L38
	ldr	r5, .L38+4
	mov	r3, #1024
	mov	r2, r4
	mov	r0, #3
	ldr	r1, .L38+8
	ldr	r6, .L38+12
	mov	lr, pc
	bx	r6
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L37
	ldr	r3, .L38+16
	ldr	r2, [r3, #60]
	cmp	r2, #2
	bgt	.L33
	mov	r3, #4
	cmp	r2, #1
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #86]	@ movhi
	strh	r3, [r4, #88]	@ movhi
	strh	r3, [r4, #150]	@ movhi
	strh	r3, [r4, #152]	@ movhi
	bne	.L33
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #82]	@ movhi
	strh	r3, [r4, #84]	@ movhi
	strh	r3, [r4, #146]	@ movhi
	strh	r3, [r4, #148]	@ movhi
.L33:
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r6
	mov	r3, #3
	strb	r3, [r5]
	pop	{r4, r5, r6, lr}
	b	game2
.L37:
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	b	.L33
.L39:
	.align	2
.L38:
	.word	100720640
	.word	state
	.word	level2Map
	.word	DMANow
	.word	player
	.word	waitForVBlank
	.word	shadowOAM
	.word	initGame2Sprites
	.size	goToGame2, .-goToGame2
	.align	2
	.global	game1
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1, %function
game1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L47
	ldr	r3, [r3]
	cmp	r3, #2
	push	{r4, r5, r6, lr}
	bne	.L41
	ldr	r4, .L47+4
	ldr	r3, [r4]
	ldr	r2, .L47+8
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	ldr	r5, .L47+12
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4]
	ldr	r1, [r5, #36]
	bne	.L42
	add	r0, r1, #1
	ldr	r3, .L47+16
	ldr	r1, [r5, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L42:
	ldr	r3, [r5]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r5, #72]	@ zero_extendqisi2
	ldr	r6, .L47+20
	add	r0, r1, #64
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	lsl	r0, r0, #2
	add	r1, r6, r2, lsl #3
	and	r0, r0, #1020
	lsl	r2, r2, #3
	strh	r0, [r1, #4]	@ movhi
	strh	ip, [r6, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	ldr	r0, .L47+24
	mov	lr, pc
	bx	r0
	ldr	r5, .L47+28
	mov	r1, r6
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L47+32
	ldr	r3, [r4]
	ldr	r1, .L47+36
	mla	r3, r1, r3, r2
	ldr	r2, .L47+40
	cmp	r2, r3, ror #3
	bcs	.L46
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	ldr	r3, .L47+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+12
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L44
	ldr	r3, .L47+48
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToLose
.L44:
	ldr	r3, .L47+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L47+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	ldr	r3, .L47+48
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame2
.L48:
	.align	2
.L47:
	.word	level
	.word	stall
	.word	1717986919
	.word	player
	.word	__aeabi_idivmod
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	updateGame1
	.word	hideSprites
	.size	game1, .-game1
	.align	2
	.global	goToGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame1, %function
goToGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L56
	ldr	r5, .L56+4
	mov	r3, #1024
	mov	r2, r4
	mov	r0, #3
	ldr	r1, .L56+8
	ldr	r6, .L56+12
	mov	lr, pc
	bx	r6
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r3, .L56+16
	ldr	r2, [r3, #60]
	cmp	r2, #2
	bgt	.L51
	mov	r3, #4
	cmp	r2, #1
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #86]	@ movhi
	strh	r3, [r4, #88]	@ movhi
	strh	r3, [r4, #150]	@ movhi
	strh	r3, [r4, #152]	@ movhi
	bne	.L51
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #82]	@ movhi
	strh	r3, [r4, #84]	@ movhi
	strh	r3, [r4, #146]	@ movhi
	strh	r3, [r4, #148]	@ movhi
.L51:
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L56+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r1, #2
	mov	r2, #1
	ldr	r3, .L56+28
	strb	r1, [r5]
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	game1
.L55:
	ldr	r3, .L56+32
	mov	lr, pc
	bx	r3
	b	.L51
.L57:
	.align	2
.L56:
	.word	100720640
	.word	state
	.word	level1Map
	.word	DMANow
	.word	player
	.word	waitForVBlank
	.word	shadowOAM
	.word	level
	.word	initGame1Sprites
	.size	goToGame1, .-goToGame1
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
	push	{r4, r7, fp, lr}
	ldr	r8, .L111
	ldr	r4, .L111+4
	ldr	r3, .L111+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L111+12
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	ldr	r10, .L111+16
	ldr	r7, .L111+20
	ldr	r6, .L111+24
	ldr	r5, .L111+28
	ldr	fp, .L111+32
.L59:
	strh	ip, [r9]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r8]	@ movhi
	cmp	lr, #5
	ldrls	pc, [pc, lr, asl #2]
	b	.L85
.L66:
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L65
.L68:
	tst	ip, #8
	beq	.L78
	ldrh	r3, [fp, #48]
	tst	r3, #8
	beq	.L79
.L78:
	mov	lr, pc
	bx	r5
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L69:
	tst	ip, #8
	beq	.L77
	ldrh	r3, [fp, #48]
	tst	r3, #8
	beq	.L79
.L77:
	mov	lr, pc
	bx	r6
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L73:
	strh	r3, [r9]	@ movhi
	ldrh	r2, [fp, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r8]	@ movhi
.L71:
	tst	ip, #8
	beq	.L73
	ldrh	r2, [fp, #48]
	tst	r2, #8
	bne	.L73
.L76:
	ldr	r3, .L111+36
	mov	lr, pc
	bx	r3
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L82:
	strh	r3, [r9]	@ movhi
	ldrh	r2, [fp, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r8]	@ movhi
.L65:
	tst	ip, #8
	beq	.L82
	ldrh	r2, [fp, #48]
	tst	r2, #8
	bne	.L82
.L83:
	ldr	r3, .L111+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+44
	mov	lr, pc
	bx	r3
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L80:
	strh	r3, [r9]	@ movhi
	ldrh	r2, [fp, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r8]	@ movhi
.L67:
	tst	ip, #8
	beq	.L80
	ldrh	r2, [fp, #48]
	tst	r2, #8
	bne	.L80
	b	.L83
.L74:
	strh	r3, [r9]	@ movhi
	ldrh	r2, [fp, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r8]	@ movhi
.L70:
	tst	ip, #8
	beq	.L74
	ldrh	r2, [fp, #48]
	tst	r2, #8
	bne	.L74
	ldr	r3, [r10]
	cmp	r3, #1
	beq	.L76
	ldr	r3, .L111+48
	mov	lr, pc
	bx	r3
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L79:
	mov	lr, pc
	bx	r7
	ldrh	ip, [r8]
	ldrb	lr, [r4]	@ zero_extendqisi2
	b	.L59
.L85:
	mov	ip, r3
	b	.L59
.L112:
	.align	2
.L111:
	.word	buttons
	.word	state
	.word	initialize
	.word	oldButtons
	.word	level
	.word	goToPause
	.word	game1
	.word	game2
	.word	67109120
	.word	goToGame1
	.word	hideSprites
	.word	goToStart
	.word	goToGame2
	.size	main, .-main
	.comm	score,4,4
	.comm	stall,4,4
	.comm	level,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	ones,16,4
	.comm	tens,16,4
	.comm	hundreds,16,4
	.comm	player,76,4
	.comm	shadowOAM,1024,4
	.comm	state,1,1
	.comm	number,1,1
	.comm	food,1,1
	.comm	eType,1,1
	.comm	direction,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
