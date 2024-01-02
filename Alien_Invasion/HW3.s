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
	.file	"HW3.c"
	.text
	.align	2
	.global	drawHorizontalRings
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalRings, %function
drawHorizontalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #12
	ldr	r5, .L4
	str	r0, [sp]
	mov	r3, #2
	mov	r2, #41
	mov	r1, #80
	mov	r0, #195
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #10
	mov	r1, #78
	mov	r0, #196
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #10
	mov	r1, #78
	mov	r0, #225
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+4
	ldr	r3, [r3]
	add	r3, r3, #36864
	add	r2, r3, #1440
	add	r3, r3, #1520
	strh	r4, [r2, #6]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawRectangle
	.word	videoBuffer
	.size	drawHorizontalRings, .-drawHorizontalRings
	.align	2
	.global	drawVerticalRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalRings, %function
drawVerticalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #12
	ldr	r5, .L8
	str	r0, [sp]
	mov	r3, #41
	mov	r2, #2
	mov	r1, #60
	mov	r0, #214
	mov	lr, pc
	bx	r5
	mov	r3, #10
	mov	r2, #1
	mov	r1, #61
	mov	r0, #217
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #10
	mov	r2, #1
	mov	r1, #90
	mov	r0, #217
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+4
	ldr	r3, [r3]
	add	r2, r3, #29184
	add	r3, r3, #48384
	strh	r4, [r2, #48]	@ movhi
	strh	r4, [r3, #48]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	drawRectangle
	.word	videoBuffer
	.size	drawVerticalRings, .-drawVerticalRings
	.align	2
	.global	drawDiagonalRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiagonalRings, %function
drawDiagonalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r3, r0
	ldr	r5, .L12
	mov	r2, #19
	mov	r1, #70
	mov	r0, #207
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, #23
	mov	r1, #69
	mov	r0, #204
	mov	lr, pc
	bx	r5
	mov	r3, r4
	ldr	r5, .L12+4
	mov	r2, #19
	mov	r1, #70
	mov	r0, #223
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, #23
	mov	r1, #69
	mov	r0, #226
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	drawDiagonalLineR
	.word	drawDiagonalLineL
	.size	drawDiagonalRings, .-drawDiagonalRings
	.align	2
	.global	drawAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAlien, %function
drawAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	ldr	r7, .L16
	mov	r2, #4
	ldr	r3, .L16+4
	ldr	r6, .L16+8
	mov	lr, pc
	bx	r6
	ldr	r6, .L16+12
	mov	r3, r7
	add	r2, r4, #4
	sub	r1, r4, #4
	mov	r0, r5
	mov	lr, pc
	bx	r6
	mov	r3, r7
	add	r2, r4, #3
	sub	r1, r4, #3
	add	r0, r5, #1
	mov	lr, pc
	bx	r6
	mov	r3, r7
	add	r0, r5, #2
	add	r2, r4, #1
	sub	r1, r4, #1
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	15855
	.word	32764
	.word	drawSemiCircleT
	.word	drawHorizontalLine
	.size	drawAlien, .-drawAlien
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r2
	mov	r5, r0
	mov	r4, r1
	sub	sp, sp, #20
	add	fp, r0, #5
	mov	r2, #5
	ldr	r3, .L22
	ldr	r6, .L22+4
	str	ip, [sp, #12]
	ldr	r7, .L22+8
	mov	lr, pc
	bx	r6
	mov	r2, fp
	sub	r1, r5, #5
	mov	r0, r4
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r7
	add	r2, r5, #4
	sub	r1, r5, #4
	ldr	r3, .L22+12
	add	r0, r4, #1
	mov	lr, pc
	bx	r7
	sub	r6, r5, #1
	add	r2, r5, #3
	sub	r1, r5, #3
	add	r10, r5, #1
	ldr	r3, .L22+12
	add	r0, r4, #2
	mov	lr, pc
	bx	r7
	add	r8, r4, #4
	mov	r1, r6
	mov	r2, r10
	ldr	r3, .L22+12
	add	r0, r4, #3
	mov	lr, pc
	bx	r7
	add	r9, r4, #6
	ldr	r7, .L22+16
	mov	r1, r8
	add	r2, r4, #8
	mov	r0, r5
	ldr	r3, .L22+20
	mov	lr, pc
	bx	r7
	mov	r1, r8
	mov	r2, r9
	mov	r0, r10
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r7
	mov	r2, r9
	mov	r1, r8
	mov	r0, r6
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r7
	mov	r3, #3
	ldr	ip, .L22+28
	sub	r4, r4, #3
	mov	r0, r6
	mov	r1, r4
	mov	r2, r3
	str	ip, [sp]
	ldr	r6, .L22+32
	mov	lr, pc
	bx	r6
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldr	r3, .L22+36
	mov	r1, r4
	str	r3, [sp]
	movne	r0, fp
	mov	r3, #3
	mov	r2, #2
	subeq	r0, r5, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	32764
	.word	drawSemiCircleT
	.word	drawHorizontalLine
	.word	32212
	.word	drawVerticalLine
	.word	7934
	.word	7614
	.word	24423
	.word	drawRectangle
	.word	15855
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawPlayerHurt
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerHurt, %function
drawPlayerHurt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r2
	mov	r5, r0
	mov	r4, r1
	sub	sp, sp, #20
	add	fp, r0, #5
	mov	r2, #5
	ldr	r3, .L28
	ldr	r6, .L28+4
	str	ip, [sp, #12]
	ldr	r7, .L28+8
	mov	lr, pc
	bx	r6
	mov	r2, fp
	sub	r1, r5, #5
	mov	r0, r4
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r7
	add	r2, r5, #4
	sub	r1, r5, #4
	ldr	r3, .L28+12
	add	r0, r4, #1
	mov	lr, pc
	bx	r7
	sub	r6, r5, #1
	add	r2, r5, #3
	sub	r1, r5, #3
	add	r10, r5, #1
	ldr	r3, .L28+12
	add	r0, r4, #2
	mov	lr, pc
	bx	r7
	add	r8, r4, #4
	mov	r1, r6
	mov	r2, r10
	ldr	r3, .L28+12
	add	r0, r4, #3
	mov	lr, pc
	bx	r7
	add	r9, r4, #6
	ldr	r7, .L28+16
	mov	r1, r8
	add	r2, r4, #8
	mov	r0, r5
	ldr	r3, .L28+20
	mov	lr, pc
	bx	r7
	mov	r1, r8
	mov	r2, r9
	mov	r0, r10
	ldr	r3, .L28+24
	mov	lr, pc
	bx	r7
	mov	r2, r9
	mov	r1, r8
	mov	r0, r6
	ldr	r3, .L28+24
	mov	lr, pc
	bx	r7
	mov	r3, #3
	ldr	ip, .L28+28
	sub	r4, r4, #3
	mov	r0, r6
	mov	r1, r4
	mov	r2, r3
	str	ip, [sp]
	ldr	r6, .L28+32
	mov	lr, pc
	bx	r6
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldr	r3, .L28+36
	mov	r1, r4
	str	r3, [sp]
	movne	r0, fp
	mov	r3, #3
	mov	r2, #2
	subeq	r0, r5, #6
	mov	lr, pc
	bx	r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	16541
	.word	drawSemiCircleT
	.word	drawHorizontalLine
	.word	13301
	.word	drawVerticalLine
	.word	7934
	.word	7614
	.word	24423
	.word	drawRectangle
	.word	15855
	.size	drawPlayerHurt, .-drawPlayerHurt
	.align	2
	.global	drawLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLaser, %function
drawLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #4
	push	{r4, r5, r6, lr}
	ldr	ip, .L32
	sub	sp, sp, #8
	mov	r4, r0
	mov	r5, r1
	mov	r2, r3
	str	ip, [sp]
	ldr	r6, .L32+4
	sub	r1, r1, #1
	sub	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r3, #2
	ldr	ip, .L32+8
	mov	r1, r5
	mov	r0, r4
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	13301
	.word	drawRectangle
	.word	32767
	.size	drawLaser, .-drawLaser
	.align	2
	.global	drawPowerup
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPowerup, %function
drawPowerup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, r2
	ldr	r4, .L36
	mov	r2, #43
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	drawChar
	.size	drawPowerup, .-drawPowerup
	.align	2
	.global	eraseHorizontalRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseHorizontalRings, %function
eraseHorizontalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #0
	sub	sp, sp, #12
	ldr	r4, .L40
	mov	r3, #4
	mov	r2, #11
	mov	r1, #78
	mov	r0, #195
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #11
	mov	r1, #78
	mov	r0, #225
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L40+4
	mov	r3, #2
	str	r2, [sp]
	mov	r1, #80
	mov	r2, #20
	mov	r0, #205
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	drawRectangle
	.word	24423
	.size	eraseHorizontalRings, .-eraseHorizontalRings
	.align	2
	.global	eraseVerticalRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseVerticalRings, %function
eraseVerticalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #0
	sub	sp, sp, #12
	ldr	r4, .L44
	mov	r3, #11
	mov	r2, #4
	mov	r1, #60
	mov	r0, #214
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #11
	mov	r2, #4
	mov	r1, #90
	mov	r0, #214
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L44+4
	mov	r3, #20
	str	r2, [sp]
	mov	r1, #70
	mov	r2, #2
	mov	r0, #214
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	drawRectangle
	.word	24423
	.size	eraseVerticalRings, .-eraseVerticalRings
	.align	2
	.global	eraseDiagonalRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	eraseDiagonalRings, %function
eraseDiagonalRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #0
	ldr	r4, .L48
	mov	r2, #19
	mov	r1, #70
	mov	r0, #207
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #23
	mov	r1, #69
	mov	r0, #204
	mov	lr, pc
	bx	r4
	ldr	r4, .L48+4
	mov	r3, #0
	mov	r2, #19
	mov	r1, #70
	mov	r0, #223
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #23
	mov	r1, #69
	mov	r0, #226
	mov	lr, pc
	bx	r4
	ldr	r4, .L48+8
	mov	r2, #10
	mov	r1, #80
	mov	r0, #215
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	drawDiagonalLineR
	.word	drawDiagonalLineL
	.word	drawCircle
	.word	24423
	.size	eraseDiagonalRings, .-eraseDiagonalRings
	.align	2
	.global	drawRings
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRings, %function
drawRings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0
	push	{r4, lr}
	mov	r4, r1
	beq	.L56
	cmp	r3, #1
	beq	.L57
	cmp	r3, #3
	beq	.L58
	cmp	r3, #2
	beq	.L59
	pop	{r4, lr}
	bx	lr
.L56:
	bl	eraseDiagonalRings
	mov	r0, r4
	pop	{r4, lr}
	b	drawHorizontalRings
.L58:
	bl	eraseDiagonalRings
	mov	r0, r4
	pop	{r4, lr}
	b	drawVerticalRings
.L57:
	bl	eraseHorizontalRings
	mov	r0, r4
	pop	{r4, lr}
	b	drawDiagonalRings
.L59:
	bl	eraseVerticalRings
	mov	r0, r4
	pop	{r4, lr}
	b	drawDiagonalRings
	.size	drawRings, .-drawRings
	.ident	"GCC: (devkitARM release 53) 9.1.0"
