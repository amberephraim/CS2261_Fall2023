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
	.file	"shapes.c"
	.text
	.align	2
	.global	drawHorizontalLine
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L10
	ldr	ip, [ip]
	rsb	r0, r0, r0, lsl #4
	str	lr, [sp, #-4]!
	add	lr, r1, r0, lsl #4
	add	r0, r2, r0, lsl #4
	add	r1, ip, #2
	add	r2, ip, lr, lsl #1
	add	r1, r1, r0, lsl #1
.L3:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L3
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	videoBuffer
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawVerticalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalLine, %function
drawVerticalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L20
	ldr	ip, [ip]
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	lr, r2, r2, lsl #4
	add	r2, r0, r1, lsl #4
	add	r0, r0, lr, lsl #4
	add	r1, ip, #480
	add	r2, ip, r2, lsl #1
	add	r1, r1, r0, lsl #1
.L14:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L14
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	videoBuffer
	.size	drawVerticalLine, .-drawVerticalLine
	.align	2
	.global	drawDiagonalLineR
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiagonalLineR, %function
drawDiagonalLineR:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r2, #0
	bxle	lr
	ldr	r2, .L30
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	lr, ip, ip, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r2, [r2]
	add	r1, ip, lr, lsl #4
	add	r1, r0, r1
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L24:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	add	r2, r2, #2
	cmp	r2, r1
	bne	.L24
	ldr	lr, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	videoBuffer
	.size	drawDiagonalLineR, .-drawDiagonalLineR
	.align	2
	.global	drawDiagonalLineL
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiagonalLineL, %function
drawDiagonalLineL:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r2, #0
	bxle	lr
	ldr	r2, .L40
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	lr, ip, ip, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r2, [r2]
	rsb	r1, ip, lr, lsl #4
	add	r1, r0, r1
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L34:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #476
	add	r2, r2, #2
	cmp	r2, r1
	bne	.L34
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	videoBuffer
	.size	drawDiagonalLineL, .-drawDiagonalLineL
	.align	2
	.global	drawCircle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCircle, %function
drawCircle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	rsb	r6, r2, #0
	cmp	r2, r6
	blt	.L42
	mov	r5, r6
	mul	lr, r2, r2
	ldr	ip, .L49
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r4, [ip]
	sub	r1, r0, r2
	add	r4, r4, r1, lsl #1
	add	r0, r2, #1
.L44:
	mov	r2, r6
	mul	ip, r5, r5
.L46:
	mla	r1, r2, r2, ip
	cmp	r1, lr
	rsble	r1, r2, r2, lsl #4
	lslle	r1, r1, #5
	add	r2, r2, #1
	strhle	r3, [r1, r4]	@ movhi
	cmp	r2, r0
	bne	.L46
	add	r5, r5, #1
	cmp	r5, r0
	add	r4, r4, #2
	bne	.L44
.L42:
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	videoBuffer
	.size	drawCircle, .-drawCircle
	.align	2
	.global	drawSemiCircleB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSemiCircleB, %function
drawSemiCircleB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	rsb	r6, r2, #0
	cmp	r2, r6
	blt	.L51
	mul	r4, r2, r2
	ldr	ip, .L60
	rsb	r1, r1, r1, lsl #4
	ldr	r5, [ip]
	add	r0, r0, r1, lsl #4
	sub	r1, r0, r2
	add	r5, r5, r1, lsl #1
	add	ip, r2, #1
.L53:
	cmp	r2, #0
	movge	r1, #0
	mulge	lr, r6, r6
	blt	.L57
.L55:
	mla	r0, r1, r1, lr
	cmp	r0, r4
	rsble	r0, r1, r1, lsl #4
	lslle	r0, r0, #5
	add	r1, r1, #1
	strhle	r3, [r0, r5]	@ movhi
	cmp	r1, ip
	bne	.L55
.L57:
	add	r6, r6, #1
	cmp	r6, ip
	add	r5, r5, #2
	bne	.L53
.L51:
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	videoBuffer
	.size	drawSemiCircleB, .-drawSemiCircleB
	.align	2
	.global	drawSemiCircleT
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSemiCircleT, %function
drawSemiCircleT:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	rsb	r6, r2, #0
	cmp	r2, r6
	blt	.L62
	mov	r5, r6
	mul	lr, r2, r2
	ldr	ip, .L71
	rsb	r1, r1, r1, lsl #4
	ldr	r4, [ip]
	add	r0, r0, r1, lsl #4
	sub	r1, r0, r2
	add	r4, r4, r1, lsl #1
	add	r7, r2, #1
.L64:
	cmp	r2, #0
	movge	r1, r6
	mulge	ip, r5, r5
	blt	.L68
.L66:
	mla	r0, r1, r1, ip
	cmp	r0, lr
	rsble	r0, r1, r1, lsl #4
	lslle	r0, r0, #5
	add	r1, r1, #1
	strhle	r3, [r0, r4]	@ movhi
	cmp	r1, #1
	bne	.L66
.L68:
	add	r5, r5, #1
	cmp	r5, r7
	add	r4, r4, #2
	bne	.L64
.L62:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	videoBuffer
	.size	drawSemiCircleT, .-drawSemiCircleT
	.align	2
	.global	drawSparseCircle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSparseCircle, %function
drawSparseCircle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	rsb	r6, r2, #0
	cmp	r2, r6
	blt	.L73
	mov	r4, r6
	mul	lr, r2, r2
	ldr	ip, .L80
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r5, [ip]
	sub	r1, r0, r2
	add	r5, r5, r1, lsl #1
	add	r0, r2, #1
.L75:
	mov	r2, r6
	mul	ip, r4, r4
.L77:
	mla	r1, r2, r2, ip
	cmp	r1, lr
	rsbeq	r1, r2, r2, lsl #4
	lsleq	r1, r1, #5
	add	r2, r2, #1
	strheq	r3, [r1, r5]	@ movhi
	cmp	r2, r0
	bne	.L77
	add	r4, r4, #1
	cmp	r4, r0
	add	r5, r5, #2
	bne	.L75
.L73:
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	videoBuffer
	.size	drawSparseCircle, .-drawSparseCircle
	.align	2
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	ldr	ip, .L93
	ldr	ip, [ip]
	rsb	r1, r1, r1, lsl #4
	push	{r4, lr}
	add	r4, r0, r1, lsl #4
	add	r1, ip, #2
	add	r1, r1, r4, lsl #1
	add	ip, ip, r4, lsl #1
	sub	lr, r0, r2
	lsl	r4, r0, #1
.L86:
	sub	r2, r4, r0
	cmp	r0, r2
	bgt	.L84
	mov	r2, ip
.L85:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L85
.L84:
	sub	r0, r0, #1
	add	ip, ip, #476
	add	r1, r1, #480
	cmp	r0, lr
	add	ip, ip, #2
	add	r1, r1, #2
	bne	.L86
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	videoBuffer
	.size	drawTriangle, .-drawTriangle
	.align	2
	.global	drawTriangleD
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangleD, %function
drawTriangleD:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	ldr	ip, .L106
	ldr	ip, [ip]
	rsb	r1, r1, r1, lsl #4
	push	{r4, lr}
	add	r4, r0, r1, lsl #4
	add	r1, ip, #2
	add	r1, r1, r4, lsl #1
	add	ip, ip, r4, lsl #1
	sub	lr, r0, r2
	lsl	r4, r0, #1
.L99:
	sub	r2, r4, r0
	cmp	r0, r2
	bgt	.L97
	mov	r2, ip
.L98:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L98
.L97:
	sub	r0, r0, #1
	sub	ip, ip, #480
	sub	r1, r1, #476
	cmp	r0, lr
	sub	ip, ip, #2
	sub	r1, r1, #2
	bne	.L99
	pop	{r4, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	videoBuffer
	.size	drawTriangleD, .-drawTriangleD
	.ident	"GCC: (devkitARM release 53) 9.1.0"
