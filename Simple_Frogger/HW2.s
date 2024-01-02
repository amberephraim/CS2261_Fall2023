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
	.file	"HW2.c"
	.text
	.align	2
	.global	drawFrog
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrog, %function
drawFrog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	ip, .L4
	sub	sp, sp, #8
	str	ip, [sp]
	ldr	r7, .L4+4
	mov	r3, r2
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
	mov	lr, pc
	bx	r7
	mov	r3, #2
	ldr	r8, .L4+8
	mov	r1, r6
	mov	r2, r3
	add	r0, r5, #1
	str	r8, [sp]
	mov	lr, pc
	bx	r7
	mov	r3, #2
	add	r0, r5, r4
	mov	r1, r6
	mov	r2, r3
	add	r4, r4, r4, lsr #31
	str	r8, [sp]
	sub	r0, r0, #3
	mov	lr, pc
	bx	r7
	add	r1, r6, r4, asr #1
	add	r0, r5, r4, asr #1
	mov	r3, #992
	mov	r2, #2
	ldr	r4, .L4+12
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	5538
	.word	drawRectangle
	.word	32767
	.word	drawCircle
	.size	drawFrog, .-drawFrog
	.align	2
	.global	drawLog
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLog, %function
drawLog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L8
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #13
	mov	r2, #15
	ldr	r4, .L8+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	5424
	.word	drawRectangle
	.size	drawLog, .-drawLog
	.align	2
	.global	drawLilypad
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLilypad, %function
drawLilypad:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #992
	ldr	r4, .L12
	mov	r2, #6
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	drawCircle
	.size	drawLilypad, .-drawLilypad
	.align	2
	.global	drawCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar, %function
drawCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #0
	mov	r4, r0
	mov	r5, r1
	sub	sp, sp, #12
	ldr	r6, .L16
	add	r8, r0, #1
	sub	r9, r1, #1
	str	r2, [sp]
	mov	r3, #5
	mov	r2, #7
	mov	lr, pc
	bx	r6
	add	r4, r4, #5
	mov	r0, r8
	mov	r1, r9
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	add	r5, r5, #5
	mov	r1, r9
	mov	r0, r4
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r8
	mov	r1, r5
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, r5
	mov	r0, r4
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	drawRectangle
	.size	drawCar, .-drawCar
	.align	2
	.global	drawTruck
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTruck, %function
drawTruck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	ldr	r5, .L20
	str	r2, [sp]
	mov	r3, #5
	mov	r2, #10
	mov	r6, r0
	mov	r4, r1
	mov	lr, pc
	bx	r5
	mov	r3, #5
	mov	r7, #0
	ldr	ip, .L20+4
	add	r8, r4, r3
	str	ip, [sp]
	add	r9, r6, r3
	mov	r1, r4
	mov	r2, r3
	add	r0, r6, #10
	mov	lr, pc
	bx	r5
	mov	r0, r9
	mov	r1, r8
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	add	r10, r6, #12
	mov	r1, r8
	mov	r0, r6
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	sub	r4, r4, #1
	mov	r1, r8
	mov	r0, r10
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r6
	mov	r1, r4
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r10
	mov	r1, r4
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	r0, r9
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	drawRectangle
	.word	12684
	.size	drawTruck, .-drawTruck
	.align	2
	.global	drawLandscape
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLandscape, %function
drawLandscape:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	sub	sp, sp, #8
	ldr	r6, .L24
	ldr	r5, .L24+4
	mov	r1, r4
	mov	r0, r4
	mov	r3, #10
	mov	r2, #240
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #15
	mov	r2, #240
	mov	r1, #10
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+8
	mov	r0, r4
	str	r3, [sp]
	mov	r2, #240
	mov	r3, #45
	mov	r1, #25
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #15
	mov	r2, #240
	mov	r1, #70
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+12
	mov	r0, r4
	str	r3, [sp]
	mov	r2, #240
	mov	r3, #60
	mov	r1, #85
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #15
	mov	r2, #240
	mov	r1, #145
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+16
	mov	r0, r4
	str	r3, [sp]
	mov	r2, #240
	mov	r3, #2
	mov	r1, #147
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	11076
	.word	drawRectangle
	.word	29380
	.word	15855
	.word	1023
	.size	drawLandscape, .-drawLandscape
	.ident	"GCC: (devkitARM release 53) 9.1.0"
