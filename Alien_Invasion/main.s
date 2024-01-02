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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ALIEN INVASION\000"
	.align	2
.LC1:
	.ascii	"Press START to begin\000"
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L4
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+12
	mov	r3, r5
	mov	r1, #80
	mov	r0, #0
	ldr	r2, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L4+20
	mov	r1, #88
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+24
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	32767
	.word	20513
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	.LC1
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L8+4
	ldr	r3, .L8+8
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r3, .L8+12
	ldr	r2, .L8+16
	strh	r1, [r3]	@ movhi
	ldr	r3, .L8+20
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	1027
	.word	initSound
	.word	oldButtons
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L14
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	ldreq	r3, .L14+4
	ldrne	r3, .L14+8
	mov	lr, pc
	bx	r3
	mov	r3, #2
	strb	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	state
	.word	initGame
	.word	unpauseGame
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L21+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	goToGame
.L22:
	.align	2
.L21:
	.word	buttons
	.word	oldButtons
	.size	start, .-start
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Come back when you're ready\000"
	.text
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
	ldr	r0, .L25
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L25+8
	ldr	r3, .L25+12
	ldr	r2, .L25+16
	mov	r1, #80
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L25+20
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	32212
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC2
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	push	{r4, lr}
	mov	r0, #9
	ldr	r3, .L35+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L36:
	.align	2
.L35:
	.word	buttons
	.word	oldButtons
	.word	playAnalogSound
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"You tried your best\000"
	.align	2
.LC4:
	.ascii	"Play again?\000"
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L39
	ldr	r0, .L39+4
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L39+12
	mov	r3, r5
	mov	r1, #80
	mov	r0, #0
	ldr	r2, .L39+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L39+20
	mov	r1, #88
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L39+24
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	32767
	.word	20513
	.word	fillScreen
	.word	drawString
	.word	.LC3
	.word	.LC4
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	bne	.L42
	ldr	r3, .L49+4
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L48
.L42:
	ldr	r3, .L49+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L43
	mov	r0, #13
	ldr	r3, .L49+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L43:
	ldr	r3, .L49+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L48:
	mov	r0, #9
	ldr	r3, .L49+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L50:
	.align	2
.L49:
	.word	buttons
	.word	oldButtons
	.word	updateGame
	.word	lives
	.word	playAnalogSound
	.word	waitForVBlank
	.word	drawGame
	.size	game, .-game
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
	ldr	r9, .L67
	ldr	r4, .L67+4
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	ldr	fp, .L67+12
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrh	r1, [r9]
	ldr	r8, .L67+16
	ldr	r6, .L67+20
	ldr	r5, .L67+24
	ldr	r7, .L67+28
	ldr	r10, .L67+32
.L53:
	strh	r1, [fp]	@ movhi
	ldrh	r3, [r10, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L60
.L55:
	.word	.L58
	.word	.L57
	.word	.L56
	.word	.L54
.L54:
	tst	r3, #8
	bne	.L60
	tst	r1, #8
	bne	.L66
.L60:
	mov	r1, r3
	b	.L53
.L56:
	mov	lr, pc
	bx	r5
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrh	r1, [r9]
	b	.L53
.L58:
	tst	r3, #8
	bne	.L60
	tst	r1, #8
	beq	.L60
	mov	lr, pc
	bx	r8
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrh	r1, [r9]
	b	.L53
.L57:
	mov	lr, pc
	bx	r6
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrh	r1, [r9]
	b	.L53
.L66:
	mov	lr, pc
	bx	r7
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrh	r1, [r9]
	b	.L53
.L68:
	.align	2
.L67:
	.word	buttons
	.word	state
	.word	initialize
	.word	oldButtons
	.word	goToGame
	.word	pause
	.word	game
	.word	goToStart
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	goToStart
.L75:
	.align	2
.L74:
	.word	buttons
	.word	oldButtons
	.size	lose, .-lose
	.comm	state,1,1
	.comm	lives,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
