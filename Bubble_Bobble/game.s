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
	.align	2
	.global	colorAt
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r3, .L5+4
	ldrne	r3, .L5+8
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	bx	lr
.L6:
	.align	2
.L5:
	.word	level
	.word	level1collisionmapBitmap
	.word	level2collisionmapBitmap
	.size	colorAt, .-colorAt
	.align	2
	.global	initGame1Sprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame1Sprites, %function
initGame1Sprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #136
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	lr, .L14
	str	r3, [lr, #4]
	mov	r3, #6
	mov	r10, #108
	mov	r0, #0
	str	r3, [lr, #48]
	mov	r3, #173
	str	r10, [lr]
	ldr	r10, .L14+4
	str	r0, [r10]
	ldr	r10, .L14+8
	str	r0, [r10]
	ldr	r10, .L14+12
	str	r3, [r10]
	mov	r3, #15
	strb	r3, [r10, #12]
	mov	r3, #6
	str	r3, [r10, #4]
	mov	r3, #6
	str	r0, [r10, #8]
	ldr	r10, .L14+16
	str	r3, [r10, #4]
	mov	r3, #181
	str	r3, [r10]
	mov	r3, #16
	strb	r3, [r10, #12]
	mov	r3, #10
	str	r3, [lr, #24]
	mov	r3, #6
	str	r0, [r10, #8]
	ldr	r10, .L14+20
	str	r3, [r10, #4]
	mov	r3, #189
	str	r3, [r10]
	mov	r3, #17
	mov	r9, #1
	mov	r7, #3
	mov	r5, #16
	strb	r3, [r10, #12]
	mov	fp, #4
	mov	r3, #10
	ldr	ip, .L14+24
	str	r9, [lr, #8]
	str	r9, [lr, #12]
	str	r0, [lr, #68]
	str	r0, [lr, #64]
	str	r0, [lr, #28]
	str	r0, [lr, #32]
	str	r0, [lr, #36]
	strb	r0, [lr, #72]
	str	r0, [lr, #56]
	str	r5, [lr, #16]
	str	r5, [lr, #20]
	str	fp, [lr, #40]
	str	r7, [lr, #44]
	str	r0, [r10, #8]
	str	r7, [lr, #52]
	str	r3, [ip, #372]
	mov	r3, #7
	str	r7, [lr, #60]
	ldr	lr, .L14+28
	strb	r3, [lr, #32]
	mov	r3, #8
	strb	r3, [lr, #68]
	mov	r3, #9
	strb	r3, [lr, #104]
	mov	r3, #300
	mov	r8, #14
	str	r3, [lr, #24]
	str	r3, [lr, #60]
	str	r3, [lr, #96]
	mov	r3, #10
	str	r0, [lr, #28]
	str	r0, [lr, #64]
	str	r0, [lr, #100]
	str	r8, [lr, #16]
	str	r8, [lr, #20]
	str	r8, [lr, #52]
	str	r8, [lr, #56]
	str	r8, [lr, #88]
	str	r8, [lr, #92]
	ldr	lr, .L14+32
	strb	r3, [lr, #44]
	mov	r3, #182
	str	r3, [ip, #4]
	mov	r3, #44
	str	r3, [ip, #96]
	mov	r3, #61
	str	r3, [ip, #188]
	mov	r3, #162
	str	r3, [ip, #280]
	mov	r3, #103
	str	r0, [lr, #32]
	str	r3, [ip, #376]
	mov	lr, #72
	mov	r3, #40
	str	lr, [ip, #192]
	str	r3, [ip, #8]
	str	r3, [ip, #100]
	str	r0, [ip, #32]
	str	r9, [ip, #124]
	str	r9, [ip, #216]
	str	r0, [ip, #308]
	str	r9, [ip, #400]
	str	lr, [ip, #284]
	mov	lr, #213
	str	r3, [ip, #468]
	mov	r1, r9
	mov	r2, r0
	mov	r4, r9
	mov	r6, #20
	mov	r3, ip
	str	lr, [ip, #464]
	str	r0, [ip, #492]
	b	.L11
.L13:
	str	r2, [r3]
	str	fp, [r3, #52]
.L9:
	add	r1, r1, #1
	add	r3, r3, #92
.L11:
	sub	r0, r1, #1
	cmp	r0, #3
	str	r4, [r3, #12]
	str	r4, [r3, #16]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	r6, [r3, #28]
	str	r2, [r3, #40]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r7, [r3, #56]
	strb	r1, [r3, #84]
	str	r2, [r3, #60]
	str	r4, [r3, #76]
	str	r2, [r3, #68]
	bls	.L13
	mov	r0, #2
	cmp	r1, #6
	str	r0, [r3]
	str	r0, [r3, #52]
	bne	.L9
	mvn	r3, #0
	ldr	r2, .L14+24
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	r3, [r2, #472]
	bx	lr
.L15:
	.align	2
.L14:
	.word	player
	.word	score
	.word	enemyStall
	.word	hundreds
	.word	tens
	.word	ones
	.word	enemies
	.word	bubbles
	.word	scoreAnimation
	.size	initGame1Sprites, .-initGame1Sprites
	.align	2
	.global	initGame2Sprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2Sprites, %function
initGame2Sprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r8, .L29
	str	r4, [r8]
	mov	r8, #76
	ldr	r2, .L29+4
	str	r8, [r2, #4]
	mov	r8, #40
	str	r8, [r2, #8]
	mov	r8, #50
	str	r8, [r2, #80]
	mov	r8, #115
	str	r8, [r2, #96]
	mov	r8, #157
	str	r8, [r2, #188]
	mvn	r8, #0
	str	r8, [r2, #196]
	mov	r8, #135
	str	r8, [r2, #264]
	mov	r8, #21
	str	r8, [r2, #280]
	mov	r8, #22
	str	r8, [r2, #464]
	mov	r8, #38
	str	r8, [r2, #468]
	ldr	r8, .L29+8
	str	r4, [r2, #216]
	str	r4, [r2, #400]
	str	r4, [r8, #68]
	str	r4, [r8, #64]
	str	r4, [r8, #28]
	mov	r1, r4
	mov	r0, r4
	mov	r4, #108
	mov	lr, #1
	mov	fp, #72
	mov	r10, #200
	mov	r7, #104
	str	r4, [r8]
	mov	r4, #136
	str	lr, [r2, #32]
	str	r4, [r8, #4]
	str	lr, [r2, #12]
	str	lr, [r2, #124]
	str	lr, [r2, #104]
	str	lr, [r2, #308]
	str	lr, [r2, #492]
	str	lr, [r2, #472]
	str	lr, [r2, #476]
	str	fp, [r2, #100]
	str	fp, [r2, #284]
	str	r10, [r2, #172]
	str	r10, [r2, #372]
	str	r7, [r2, #192]
	mov	r9, r2
	mov	r3, r2
	mov	ip, lr
	mov	r5, #4
	mov	r6, #5
	str	r7, [r2, #376]
	b	.L21
.L28:
	str	ip, [r3]
	str	r5, [r3, #52]
	str	r6, [r3, #44]
.L18:
	add	r1, r1, #1
	add	r3, r3, #92
.L21:
	cmp	r1, #2
	str	ip, [r3, #76]
	str	r0, [r3, #68]
	str	r0, [r3, #48]
	bls	.L28
	cmp	r1, #5
	beq	.L19
	str	r0, [r3]
	str	r5, [r3, #52]
	str	ip, [r3, #12]
	str	ip, [r3, #16]
	b	.L18
.L19:
	mov	r2, #300
	mov	r0, #2
	ldr	r3, .L29+12
	mov	r1, #0
	str	r2, [r3, #24]
	str	r2, [r3, #60]
	str	r2, [r3, #96]
	str	r0, [r9, #460]
	str	r0, [r9, #512]
	mov	r2, #11
	mov	ip, #16
	mov	r0, #4
	mov	r4, #3
	str	r1, [r3, #28]
	str	r1, [r3, #64]
	str	r1, [r3, #100]
	ldr	r3, .L29+16
.L22:
	add	lr, r2, #1
	strb	r2, [r3, #40]
	and	r2, lr, #255
	cmp	r2, #15
	str	r1, [r3, #36]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r4, [r3, #32]
	str	r1, [r3, #28]
	add	r3, r3, #44
	bne	.L22
	ldr	r2, [r8, #60]
	cmp	r2, #2
	bgt	.L16
	ldr	r3, .L29+20
	cmp	r2, #1
	strh	r0, [r3, #22]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r0, [r3, #86]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r0, [r3, #150]	@ movhi
	strh	r0, [r3, #152]	@ movhi
	bne	.L16
	strh	r0, [r3, #18]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	strh	r0, [r3, #82]	@ movhi
	strh	r0, [r3, #84]	@ movhi
	strh	r0, [r3, #146]	@ movhi
	strh	r0, [r3, #148]	@ movhi
.L16:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	enemyStall
	.word	enemies
	.word	player
	.word	bubbles
	.word	fireballs
	.word	100720640
	.size	initGame2Sprites, .-initGame2Sprites
	.global	__aeabi_idivmod
	.align	2
	.global	updateFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFireball, %function
updateFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L51
	ldr	r9, .L51+4
	ldr	r6, .L51+8
	ldr	r8, .L51+12
	sub	sp, sp, #16
	add	r7, r4, #176
.L43:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L35
	ldr	r1, [r4, #4]
	add	r1, r1, #1
	cmp	r1, #162
	add	r0, r6, #16
	ldm	r0, {r0, ip}
	strgt	r3, [r4, #36]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r1, [r4, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L35
	mov	r3, #1
	ldr	r2, [r6, #68]
	cmp	r2, #0
	str	r3, [r4, #28]
	beq	.L49
.L35:
	ldr	r3, [r4, #24]
	subs	r5, r3, #1
	strne	r5, [r4, #24]
	bne	.L33
	mov	r3, #10
	ldr	r2, [r4, #28]
	cmp	r2, #0
	str	r3, [r4, #24]
	beq	.L42
	ldr	r10, [r4, #32]
	ldr	r0, [r4, #16]
	mov	r1, r10
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	sub	r10, r10, #1
	cmp	r1, r10
	str	r1, [r4, #16]
	streq	r5, [r4, #36]
	streq	r5, [r4, #28]
.L33:
	add	r4, r4, #44
	cmp	r4, r7
	bne	.L43
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #16]
	b	.L33
.L49:
	ldr	r3, [r6, #60]
	cmp	r3, #3
	mov	r1, #4
	ldr	r2, .L51+16
	beq	.L50
	strh	r1, [r2, #18]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	r1, [r2, #84]	@ movhi
	strh	r1, [r2, #146]	@ movhi
	strh	r1, [r2, #148]	@ movhi
.L39:
	mov	ip, #0
	mov	r0, #108
	mov	r1, #136
	mov	r2, #50
	sub	r3, r3, #1
	stm	r6, {r0, r1}
	str	r3, [r6, #60]
	str	ip, [r6, #64]
	str	r2, [r6, #68]
	b	.L35
.L50:
	strh	r1, [r2, #22]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r1, [r2, #86]	@ movhi
	strh	r1, [r2, #88]	@ movhi
	strh	r1, [r2, #150]	@ movhi
	strh	r1, [r2, #152]	@ movhi
	b	.L39
.L52:
	.align	2
.L51:
	.word	fireballs
	.word	__aeabi_idivmod
	.word	player
	.word	collision
	.word	100720640
	.size	updateFireball, .-updateFireball
	.align	2
	.global	updateBubbles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubbles, %function
updateBubbles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	ldr	lr, .L74
	ldr	r3, .L74+4
	ldr	ip, [lr, #52]
	add	r0, r3, #108
.L58:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L54
	ldr	r2, [r3, #24]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r3, #24]
	beq	.L55
	ldr	r2, [r3, #4]
	cmp	r2, #31
	bgt	.L56
.L55:
	mov	r1, #1
	str	r4, [r3, #28]
	add	ip, ip, #1
.L54:
	add	r3, r3, #36
	cmp	r3, r0
	bne	.L58
	cmp	r1, #0
	strne	ip, [lr, #52]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L56:
	ldr	r6, [r3]
	ldr	r5, [r3, #8]
	add	r5, r6, r5
	sub	r7, r5, #18
	cmp	r7, #188
	bhi	.L57
	ldr	r7, [r3, #12]
	sub	r6, r6, r7
	cmp	r6, #20
	cmnne	r6, #40
	strne	r5, [r3]
	bne	.L54
.L57:
	sub	r2, r2, #1
	str	r2, [r3, #4]
	b	.L54
.L75:
	.align	2
.L74:
	.word	player
	.word	bubbles
	.size	updateBubbles, .-updateBubbles
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #0
	ldr	r4, .L178
	ldr	r3, [r4, #68]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #68]
	ldr	r3, [r4, #64]
	ldr	r2, .L178+4
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #64]
	ldr	ip, [r4]
	ldrh	r3, [r2, #48]
	ldr	r5, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #20]
	tst	r3, #32
	add	r7, r0, r1
	add	r3, r5, ip
	sub	lr, r3, #1
	str	r6, [r4, #32]
	sub	r3, r7, #1
	bne	.L79
	ldr	r6, .L178+8
	ldr	r2, [r4, #8]
	ldr	r6, [r6]
	sub	r2, ip, r2
	cmp	r6, #1
	rsb	r6, r1, r1, lsl #4
	add	r6, r2, r6, lsl #4
	beq	.L170
	ldr	r7, .L178+12
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L82
.L83:
	rsb	r6, r3, r3, lsl #4
	add	r6, r2, r6, lsl #4
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	cmp	r6, #0
	strne	r2, [r4]
.L82:
	mov	r6, #0
	mov	r2, #1
	str	r6, [r4, #28]
	str	r2, [r4, #32]
.L85:
	ldr	r2, .L178+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L91
	ldr	r6, .L178+4
	ldrh	r6, [r6, #48]
	tst	r6, #64
	beq	.L171
.L91:
	ldr	r6, [r4, #64]
	cmp	r6, #0
	cmpne	r1, #32
	bgt	.L172
.L92:
	rsb	r0, r0, #160
	cmp	r0, r1
	ble	.L101
	ldr	r6, .L178+8
	ldr	r0, [r4, #12]
	ldr	r6, [r6]
	add	r3, r0, r3
	rsb	r3, r3, r3, lsl #4
	cmp	r6, #1
	add	ip, ip, r3, lsl #4
	lsl	r3, r3, #4
	beq	.L173
	ldr	r6, .L178+12
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L105
.L101:
	tst	r2, #1
	beq	.L107
	ldr	r3, .L178+4
	ldrh	r3, [r3, #48]
	tst	r3, #1
	beq	.L174
.L107:
	ldr	r3, [r4, #56]
	ldr	r2, [r4, #32]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #56]
	cmp	r2, #0
	streq	r2, [r4, #36]
	bne	.L120
.L76:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L79:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L85
	rsb	r2, r5, #240
	cmp	r2, ip
	ble	.L86
	ldr	r2, .L178+8
	ldr	r7, [r4, #8]
	ldr	r2, [r2]
	add	r6, r7, lr
	cmp	r2, #1
	rsb	r2, r1, r1, lsl #4
	add	r2, r6, r2, lsl #4
	beq	.L175
	ldr	r8, .L178+12
	ldrb	r2, [r2, r8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L89
.L86:
	mov	r2, #1
	str	r2, [r4, #28]
	str	r2, [r4, #32]
	b	.L85
.L171:
	cmp	r1, #32
	ble	.L92
	ldr	r7, .L178+8
	ldr	r6, [r4, #12]
	ldr	r8, [r7]
	add	r7, r6, r3
	rsb	r7, r7, r7, lsl #4
	cmp	r8, #1
	ldr	r9, [r4, #64]
	lsl	r8, r7, #4
	add	r7, ip, r7, lsl #4
	beq	.L176
	ldr	r10, .L178+12
	ldrb	r7, [r7, r10]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L168
.L94:
	cmp	r9, #0
	bne	.L99
	mov	r0, #35
	mov	r3, #1
	sub	r1, r1, r6
	str	r1, [r4, #4]
	str	r0, [r4, #64]
	str	r3, [r4, #32]
.L99:
	ldr	r3, [r4, #28]
	bic	r3, r3, #2
	cmp	r3, #1
	bne	.L100
.L102:
	mov	r3, #3
	str	r3, [r4, #28]
	b	.L101
.L174:
	mov	r1, #1
	ldr	r3, [r4, #52]
	cmp	r3, #0
	str	r1, [r4, #32]
	ble	.L112
	ldr	r2, .L178+20
	ldr	r0, [r2, #28]
	sub	r3, r3, #1
	cmp	r0, #0
	str	r3, [r4, #52]
	beq	.L109
	ldr	r3, [r2, #64]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r2, #100]
	cmp	r3, #0
	moveq	r0, #2
	beq	.L109
.L112:
	mov	r3, #29
	str	r3, [r4, #56]
.L120:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L76
	ldr	r3, [r4, #28]
	sub	r3, r3, #2
	cmp	r3, #1
	ldr	r0, [r4, #36]
	bls	.L177
.L117:
	ldr	r3, .L178+24
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L118:
	mov	r3, #10
	str	r3, [r4, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L172:
	ldr	r6, [r4, #12]
.L119:
	mov	r0, #1
	ldr	r3, [r4, #28]
	bic	r3, r3, #2
	sub	r1, r1, r6
	cmp	r3, r0
	str	r1, [r4, #4]
	str	r0, [r4, #32]
	beq	.L102
.L100:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L101
.L170:
	ldr	r7, .L178+28
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L83
	b	.L82
.L173:
	ldr	r6, .L178+28
	ldrb	ip, [ip, r6]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L101
.L105:
	add	r3, r3, lr
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r4, #28]
	bic	r3, r3, #2
	add	r1, r0, r1
	cmp	r3, #1
	str	r1, [r4, #4]
	beq	.L102
	b	.L100
.L177:
	cmp	r0, #3
	bne	.L117
	b	.L118
.L176:
	ldr	r10, .L178+28
	ldrb	r7, [r7, r10]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L94
.L168:
	add	r8, r8, lr
	ldrb	r7, [r8, r10]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L94
	cmp	r9, #0
	bne	.L119
	b	.L92
.L175:
	ldr	r8, .L178+28
	ldrb	r2, [r2, r8]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L86
.L89:
	rsb	r2, r3, r3, lsl #4
	add	r6, r6, r2, lsl #4
	ldrb	r2, [r6, r8]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r7, r7, ip
	strne	r7, [r4]
	b	.L86
.L121:
	mov	r0, r1
.L109:
	mov	r1, #300
	mov	ip, #1
	ldr	r6, [r4, #28]
	add	r0, r0, r0, lsl #3
	ldr	lr, [r4, #4]
	add	r3, r2, r0, lsl #2
	bics	r6, r6, #2
	str	r1, [r3, #24]
	str	lr, [r3, #4]
	str	ip, [r3, #28]
	ldr	r1, [r4]
	lsl	r0, r0, #2
	bne	.L110
	mvn	lr, #0
	ldr	ip, [r3, #16]
	sub	ip, r1, ip
	cmp	ip, #7
	str	r1, [r3, #12]
	str	lr, [r3, #8]
	movle	r3, #8
	strgt	ip, [r2, r0]
	strle	r3, [r2, r0]
	b	.L112
.L110:
	add	r1, r5, r1
	cmp	r1, #218
	str	r1, [r3, #12]
	str	ip, [r3, #8]
	movgt	r3, #218
	strle	r1, [r2, r0]
	strgt	r3, [r2, r0]
	b	.L112
.L179:
	.align	2
.L178:
	.word	player
	.word	67109120
	.word	level
	.word	level2collisionmapBitmap
	.word	oldButtons
	.word	bubbles
	.word	__aeabi_idivmod
	.word	level1collisionmapBitmap
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateShadowOAM
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShadowOAM, %function
updateShadowOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	lr, .L221
	ldr	r5, [lr, #32]
	cmp	r5, #0
	beq	.L181
	ldr	r3, [lr, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	moveq	r5, r3
	str	r3, [lr, #24]
	streq	r3, [lr, #32]
.L181:
	ldr	r3, .L221+4
	ldr	r2, .L221+8
	ldr	r3, [r3]
	smull	r1, r6, r2, r3
	asr	r8, r3, #31
	rsb	r6, r8, r6, asr #2
	smull	r1, r2, r6, r2
	ldr	r1, .L221+12
	mov	r4, #524
	smull	r0, r3, r1, r3
	ldr	r0, [lr]
	asr	r1, r6, #31
	ldrb	ip, [lr, #44]	@ zero_extendqisi2
	rsb	r2, r1, r2, asr #2
	lsl	r0, r0, #23
	ldr	r1, .L221+16
	add	r2, r2, r2, lsl #2
	lsr	r0, r0, #23
	cmp	r5, #0
	orr	r0, r0, #16384
	sub	r2, r6, r2, lsl #1
	add	r6, r1, ip, lsl #3
	strh	r0, [r6, #2]	@ movhi
	moveq	r0, #512
	ldr	r7, .L221+20
	rsb	r3, r8, r3, asr #5
	strh	r4, [r6, #4]	@ movhi
	str	r3, [r7, #8]
	ldrb	r6, [r7, #12]	@ zero_extendqisi2
	ldr	r9, .L221+24
	add	r3, r3, #496
	ldrb	lr, [lr, #4]	@ zero_extendqisi2
	add	r3, r3, #1
	lsl	ip, ip, #3
	and	r3, r3, r9
	add	r10, r1, r6, lsl #3
	strh	lr, [r1, ip]	@ movhi
	ldrb	r8, [r7, #4]	@ zero_extendqisi2
	ldr	lr, .L221+28
	strh	r3, [r10, #4]	@ movhi
	ldr	r3, .L221+32
	ldr	r5, .L221+36
	strheq	r0, [r1, ip]	@ movhi
	orr	r8, r8, r3
	ldr	r0, [lr, #8]
	lsl	r6, r6, #3
	strh	r8, [r1, r6]	@ movhi
	ldrb	r4, [r5, #12]	@ zero_extendqisi2
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	add	r0, r0, #496
	ldr	r8, [r5]
	str	r2, [r5, #8]
	add	fp, r1, r4, lsl #3
	orr	r5, r6, r3
	ldr	r7, [r7]
	lsl	r4, r4, #3
	add	r0, r0, #1
	ldr	ip, .L221+40
	strh	r5, [r1, r4]	@ movhi
	and	r0, r0, r9
	ldrb	r5, [lr, #4]	@ zero_extendqisi2
	sub	r9, r9, #512
	add	r2, r2, #496
	and	r7, r7, r9
	add	r2, r2, #1
	ldrb	r4, [lr, #12]	@ zero_extendqisi2
	strh	r7, [r10, #2]	@ movhi
	strh	r2, [fp, #4]	@ movhi
	ldr	r7, [ip, #28]
	ldr	r2, [ip]
	orr	r5, r5, r3
	ldr	r3, [lr]
	ldrb	lr, [ip, #72]	@ zero_extendqisi2
	and	r6, r8, r9
	and	r2, r2, r9
	lsl	r8, r4, #3
	and	r9, r9, r3
	add	r3, r1, r4, lsl #3
	bic	r4, r7, #2
	orr	r2, r2, #16384
	cmp	r4, #1
	strh	r6, [fp, #2]	@ movhi
	add	r4, r1, lr, lsl #3
	ldrb	r6, [ip, #4]	@ zero_extendqisi2
	strh	r9, [r3, #2]	@ movhi
	strh	r5, [r1, r8]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	r3, [ip, #56]
	strh	r2, [r4, #2]	@ movhi
	orreq	r2, r2, #4096
	strheq	r2, [r4, #2]	@ movhi
	lsl	lr, lr, #3
	cmp	r3, #0
	strh	r6, [r1, lr]	@ movhi
	ldr	r0, .L221+44
	ldr	r2, [ip, #36]
	beq	.L184
	add	r2, r2, #96
	add	r3, r1, lr
	and	r2, r0, r2, lsl #1
	strh	r2, [r3, #4]	@ movhi
.L185:
	mov	r6, #512
	mov	r5, #460
	ldr	r3, .L221+48
	ldr	r4, .L221+52
	add	lr, r3, #108
.L189:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldrb	r2, [r3, #32]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	ip, r2, #3
	ldrne	r2, [r3]
	ldrbne	r7, [r3, #4]	@ zero_extendqisi2
	andne	r2, r2, r4
	orrne	r2, r2, #16384
	lsleq	r2, r2, #3
	add	r3, r3, #36
	strhne	r5, [r0, #4]	@ movhi
	strhne	r2, [r0, #2]	@ movhi
	strhne	r7, [r1, ip]	@ movhi
	strheq	r6, [r1, r2]	@ movhi
	cmp	r3, lr
	bne	.L189
	ldr	r3, .L221+56
	mov	r6, #512
	ldr	r4, .L221+52
	ldr	r5, .L221+44
	ldr	r7, .L221+32
	add	lr, r3, #552
	b	.L206
.L218:
	ldr	r0, [r3, #60]
	cmp	r0, #0
	beq	.L193
	ldr	r0, [r3, #48]
	add	r0, r0, #8
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
.L199:
	ldr	r0, [r3, #32]
	cmp	r0, #1
	addeq	r2, r1, r2
	orreq	ip, ip, #4096
	strheq	ip, [r2, #2]	@ movhi
.L191:
	add	r3, r3, #92
	cmp	r3, lr
	beq	.L217
.L206:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	ldrb	r2, [r3, #84]	@ zero_extendqisi2
	lsleq	r2, r2, #3
	strheq	r6, [r1, r2]	@ movhi
	beq	.L191
	ldm	r3, {r0, r8}
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	and	r8, r8, r4
	add	r9, r1, r2, lsl #3
	orr	ip, r8, #16384
	lsl	r2, r2, #3
	cmp	r0, #0
	strh	ip, [r9, #2]	@ movhi
	strh	r10, [r1, r2]	@ movhi
	beq	.L218
	cmp	r0, #2
	beq	.L219
	cmp	r0, #1
	bne	.L191
	ldr	r0, [r3, #60]
	cmp	r0, #0
	beq	.L202
	ldr	r0, [r3, #48]
	add	r0, r0, #40
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
.L203:
	ldr	r0, [r3, #32]
	cmp	r0, #1
	addeq	r2, r1, r2
	ldrheq	r0, [r2, #2]
	add	r3, r3, #92
	orreq	r0, r0, #4096
	strheq	r0, [r2, #2]	@ movhi
	cmp	r3, lr
	bne	.L206
.L217:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L193:
	ldr	r0, [r3, #68]
	cmp	r0, #0
	bne	.L216
	ldr	r0, [r3, #48]
	add	r0, r0, #4
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L199
.L219:
	ldr	r0, [r3, #60]
	cmp	r0, #0
	beq	.L198
	ldr	r0, [r3, #48]
	add	r0, r0, #102
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L199
.L198:
	ldr	r0, [r3, #68]
	cmp	r0, #0
	beq	.L200
.L216:
	ldr	r0, [r3, #72]
	add	r0, r0, #256
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L199
.L184:
	cmp	r7, #1
	addgt	r2, r2, #64
	add	r3, r1, lr
	and	r2, r0, r2, lsl #1
	strh	r2, [r3, #4]	@ movhi
	b	.L185
.L202:
	ldr	r0, [r3, #68]
	cmp	r0, #0
	bne	.L220
	ldr	r0, [r3, #40]
	cmp	r0, #0
	ldr	r0, [r3, #48]
	beq	.L205
	add	r0, r0, #34
	lsl	r0, r0, #2
	and	r0, r0, #1020
	orr	r10, r10, #16384
	orr	r8, r8, r7
	strh	r0, [r9, #4]	@ movhi
	strh	r10, [r1, r2]	@ movhi
	strh	r8, [r9, #2]	@ movhi
	b	.L203
.L200:
	ldr	r0, [r3, #48]
	add	r0, r0, #100
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L199
.L220:
	ldr	r0, [r3, #72]
	add	r0, r0, #256
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L203
.L205:
	add	r0, r0, #36
	and	r0, r5, r0, lsl #1
	strh	r0, [r9, #4]	@ movhi
	b	.L203
.L222:
	.align	2
.L221:
	.word	scoreAnimation
	.word	score
	.word	1717986919
	.word	1374389535
	.word	shadowOAM
	.word	hundreds
	.word	1023
	.word	ones
	.word	-32768
	.word	tens
	.word	player
	.word	1022
	.word	bubbles
	.word	511
	.word	enemies
	.size	updateShadowOAM, .-updateShadowOAM
	.align	2
	.global	updateGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame1, %function
updateGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L357
	ldr	r3, [r9]
	ldr	r10, .L357+4
	sub	sp, sp, #44
	add	r3, r3, #1
	str	r3, [r9]
	mov	r4, r10
	bl	updatePlayer
	mov	fp, #0
	bl	updateBubbles
	ldr	r8, .L357+8
	str	r10, [sp, #20]
	b	.L281
.L280:
	add	fp, fp, #1
	cmp	fp, #6
	add	r4, r4, #92
	beq	.L344
.L281:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L280
	ldr	r3, [r4, #68]
	ldr	r0, [r4, #4]
	cmp	r3, #0
	mov	r5, r0
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #24]
	ldr	lr, [r8]
	ldr	ip, [r8, #4]
	beq	.L225
	cmp	r1, #136
	addle	r1, r1, #1
	strle	r1, [r4, #8]
.L226:
	ldr	r5, [r8, #20]
	str	ip, [sp, #4]
	ldr	ip, [r8, #16]
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r5, [sp, #12]
	ldr	ip, .L357+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldr	r2, [r4, #60]
	beq	.L343
	cmp	r2, #0
	beq	.L262
	mov	r3, #1
	mov	r2, #32
	ldr	r1, [r8, #28]
	bics	r1, r1, #2
	str	r3, [r4, #68]
	str	r3, [r4, #16]
	str	r2, [r4, #8]
	ldr	r3, [r4, #4]
	beq	.L345
	add	r3, r3, #30
	cmp	r3, #216
	movgt	r3, #216
.L342:
	str	r3, [r4, #4]
.L265:
	mov	r2, #0
	ldr	r3, .L357+16
	str	fp, [r4, #72]
	str	r2, [r4, #60]
	str	r3, [r4, #64]
.L343:
	ldr	r7, [r4, #68]
.L261:
	mov	r10, #300
	ldr	r5, .L357+20
	add	r6, r5, #108
.L273:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L271
	cmp	r2, #0
	bne	.L271
	cmp	r7, #0
	beq	.L346
.L271:
	add	r5, r5, #36
	cmp	r5, r6
	bne	.L273
	cmp	r2, #0
	beq	.L274
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	cmp	r3, #0
	streq	r3, [r4, #60]
	cmp	r7, #0
	str	r3, [r4, #64]
	bne	.L280
.L278:
	ldr	r3, [r4, #28]
	subs	r3, r3, #1
	strne	r3, [r4, #28]
	bne	.L280
	mov	r3, #20
	ldr	r2, [r4, #60]
	ldr	r0, [r4, #48]
	cmp	r2, #0
	str	r3, [r4, #28]
	ldrne	r1, [r4, #56]
	ldreq	r1, [r4, #52]
	ldr	r3, .L357+24
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	add	fp, fp, #1
	cmp	fp, #6
	str	r1, [r4, #48]
	add	r4, r4, #92
	bne	.L281
.L344:
	ldr	r10, [sp, #20]
	bl	updateShadowOAM
	mov	r3, #2
	mov	r2, #0
	mov	r0, r3
	ldr	r1, .L357+28
	str	r3, [r1]
	ldr	r1, .L357+32
.L283:
	ldr	r3, [r10, #76]
	cmp	r3, #0
	movne	r2, #1
	add	r10, r10, #92
	movne	r0, r2
	cmp	r1, r10
	bne	.L283
	cmp	r2, #0
	beq	.L284
	ldr	r3, .L357+28
	cmp	r0, #2
	str	r0, [r3]
	beq	.L284
.L223:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L225:
	ldr	r6, [r9]
	ldr	r7, [r4, #60]
	and	r6, r6, #1
	orrs	r6, r6, r7
	bne	.L226
	ldr	r7, [r4]
	cmp	r7, #2
	beq	.L347
	cmp	r7, #0
	bne	.L226
	ldr	r6, [r4, #88]
	cmp	r6, #0
	str	r6, [sp, #24]
	subne	r6, r6, #1
	strne	r6, [sp, #24]
	strne	r6, [r4, #88]
	add	r7, r2, r0
	add	r6, r3, r1
	sub	r7, r7, #1
	sub	r6, r6, #1
	cmp	r0, lr
	str	r7, [sp, #32]
	str	r6, [sp, #28]
	bge	.L233
	ldr	r6, .L357+28
	ldr	r6, [r6]
	ldr	r10, [r4, #12]
	cmp	r6, #1
	rsb	r6, r1, r1, lsl #4
	add	r7, r10, r7
	lsl	r6, r6, #4
	str	r10, [sp, #36]
	add	r6, r7, r6
	beq	.L348
	ldr	r10, .L357+36
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L236
	ldr	r6, [sp, #28]
	rsb	r6, r6, r6, lsl #4
	add	r6, r7, r6, lsl #4
	ldr	r7, .L357+36
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
.L238:
	cmp	r6, #0
	ldrne	r6, [sp, #36]
	addne	r6, r6, r5
	movne	r5, r6
	strne	r6, [r4, #4]
.L236:
	mov	r6, #1
	str	r6, [r4, #32]
.L239:
	cmp	r1, #32
	movle	r6, #0
	movgt	r6, #1
	cmp	r1, ip
	ble	.L245
	ldr	r7, [sp, #24]
	cmp	r7, #0
	moveq	r7, r6
	movne	r7, #0
	cmp	r7, #0
	bne	.L349
.L245:
	ldr	r7, [sp, #24]
	cmp	r7, #0
	moveq	r6, #0
	cmp	r6, #0
	bne	.L350
	rsb	r6, r3, #160
	cmp	r6, r1
	ble	.L253
	ldr	r10, [r4, #16]
.L287:
	ldr	r6, .L357+28
	ldr	r6, [r6]
	cmp	r6, #1
	ldr	r6, [sp, #28]
	add	r6, r10, r6
	rsb	r6, r6, r6, lsl #4
	beq	.L351
	ldr	r7, .L357+36
	add	r0, r0, r6, lsl #4
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	r6, r6, #4
	beq	.L253
	ldr	r0, [sp, #32]
	add	r6, r0, r6
	ldr	r0, .L357+36
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
.L257:
	cmp	r0, #0
	beq	.L253
	add	r1, r1, r10
	mov	r0, r5
	str	r1, [r4, #8]
	b	.L226
.L274:
	cmp	r7, #0
	beq	.L278
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #64]
	streq	r2, [r4, #76]
	b	.L280
.L262:
	ldr	r7, [r4, #68]
	cmp	r7, #0
	bne	.L352
.L268:
	ldr	r3, [r8, #68]
	cmp	r3, #0
	bne	.L261
	mov	r1, #136
	mov	r2, #50
	mov	r0, #108
	str	r3, [r8, #64]
	ldr	r3, [r8, #60]
	cmp	r3, #3
	str	r1, [r8, #4]
	str	r2, [r8, #68]
	mov	r1, #4
	str	r0, [r8]
	ldr	r2, .L357+40
	beq	.L353
	strh	r1, [r2, #18]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	r1, [r2, #84]	@ movhi
	strh	r1, [r2, #146]	@ movhi
	strh	r1, [r2, #148]	@ movhi
.L270:
	sub	r3, r3, #1
	mov	r2, #0
	str	r3, [r8, #60]
	b	.L261
.L346:
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #20
	ldm	r2, {r2, r3}
	ldmib	r4, {r0, r1}
	ldr	ip, .L357+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r2, #1
	movne	r1, r2
	ldrne	r3, [r8, #52]
	addne	r3, r3, r2
	strne	r7, [r5, #28]
	ldreq	r2, [r4, #60]
	strne	r1, [r4, #60]
	strne	r10, [r4, #64]
	strne	r3, [r8, #52]
	ldr	r7, [r4, #68]
	b	.L271
.L352:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L268
	mov	r0, #20
	mov	r1, #1
	ldr	ip, .L357+44
	ldr	r3, [ip]
	add	r3, r3, #50
	str	r3, [ip]
	ldr	r3, [r4, #4]
	ldr	ip, .L357+48
	add	r3, r3, #5
	str	r3, [ip]
	ldr	r3, [r4, #8]
	mov	r7, r2
	str	r2, [r4, #68]
	str	r2, [r4, #76]
	str	r0, [ip, #24]
	str	r1, [ip, #32]
	str	r3, [ip, #4]
	b	.L261
.L345:
	sub	r3, r3, #30
	cmp	r3, #7
	movle	r3, #8
	strle	r3, [r4, #4]
	ble	.L265
	b	.L342
.L284:
	ldr	r3, .L357+48
	ldr	r4, [r3, #32]
	cmp	r4, #0
	bne	.L223
	ldr	r3, .L357+52
	mov	lr, pc
	bx	r3
	ldr	r5, .L357+56
	ldr	r3, [r5, #8]
	ldr	r1, .L357+60
	ldr	r9, .L357+64
	add	r3, r3, #496
	add	r3, r3, #1
	ldr	ip, .L357+68
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	and	r0, r3, r9
	ldrb	r8, [r1, #4]	@ zero_extendqisi2
	ldr	r3, .L357+72
	ldr	r2, [r1, #8]
	ldr	lr, .L357+76
	add	r10, ip, r6, lsl #3
	orr	r8, r8, r3
	lsl	r6, r6, #3
	strh	r8, [ip, r6]	@ movhi
	ldr	r7, [r1]
	ldr	r8, .L357+80
	add	r2, r2, #496
	ldr	r1, [lr, #8]
	add	r2, r2, #1
	and	r2, r2, r9
	and	r7, r7, r8
	strh	r2, [r10, #4]	@ movhi
	strh	r7, [r10, #2]	@ movhi
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	ldrb	r7, [r5, #4]	@ zero_extendqisi2
	add	r1, r1, #496
	add	r1, r1, #1
	ldr	r6, [r5]
	and	r1, r1, r9
	orr	r5, r7, r3
	lsl	r9, r2, #3
	strh	r5, [ip, r9]	@ movhi
	ldrb	r5, [lr, #4]	@ zero_extendqisi2
	orr	r5, r5, r3
	ldrb	r3, [lr, #12]	@ zero_extendqisi2
	ldr	lr, [lr]
	add	r2, ip, r2, lsl #3
	and	r6, r6, r8
	ldr	r7, .L357+8
	strh	r6, [r2, #2]	@ movhi
	and	lr, lr, r8
	lsl	r6, r3, #3
	add	r3, ip, r3, lsl #3
	strh	r0, [r2, #4]	@ movhi
	strh	r5, [ip, r6]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	str	r4, [r7, #36]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L347:
	add	r5, r4, #12
	ldm	r5, {r5, r7}
	add	r0, r0, r5
	add	r1, r1, r7
	cmp	r0, #7
	stmib	r4, {r0, r1}
	bgt	.L228
	cmp	r5, #0
	movgt	r6, #0
	movle	r6, #1
	rsb	r5, r5, #0
	str	r6, [r4, #32]
	str	r5, [r4, #12]
.L229:
	cmp	r1, #32
	ble	.L341
	cmp	r1, #136
	ble	.L226
.L341:
	rsb	r7, r7, #0
	str	r7, [r4, #16]
	b	.L226
.L353:
	strh	r1, [r2, #22]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r1, [r2, #86]	@ movhi
	strh	r1, [r2, #88]	@ movhi
	strh	r1, [r2, #150]	@ movhi
	strh	r1, [r2, #152]	@ movhi
	b	.L270
.L228:
	cmp	r0, #216
	ble	.L229
	cmp	r5, #0
	rsb	r5, r5, #0
	str	r5, [r4, #12]
	movle	r5, #1
	strgt	r6, [r4, #32]
	strle	r5, [r4, #32]
	b	.L229
.L233:
	ble	.L239
	ldr	r6, .L357+28
	ldr	r6, [r6]
	ldr	r7, [r4, #12]
	cmp	r6, #1
	rsb	r6, r1, r1, lsl #4
	sub	r7, r0, r7
	lsl	r6, r6, #4
	add	r6, r7, r6
	beq	.L354
	ldr	r10, .L357+36
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L242
	ldr	r6, [sp, #28]
	ldr	r10, .L357+36
	rsb	r6, r6, r6, lsl #4
	add	r6, r7, r6, lsl #4
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
.L244:
	cmp	r6, #0
	movne	r5, r7
	strne	r7, [r4, #4]
.L242:
	mov	r6, #0
	str	r6, [r4, #32]
	b	.L239
.L253:
	cmp	r1, ip
	mov	r0, r5
	bge	.L226
	sub	r5, r5, #38
	cmp	r5, #70
	movhi	r5, #0
	movls	r5, #1
	cmp	r0, lr
	movle	r5, #0
	cmp	r5, #0
	bne	.L355
	sub	r6, r0, #111
	cmp	r6, #81
	movhi	r6, #0
	movls	r6, #1
	cmp	r0, lr
	movge	r6, #0
	cmp	r6, #0
	ldrne	r6, [r4, #12]
	subne	r0, r0, r6, lsl #1
	strne	r5, [r4, #32]
	strne	r0, [r4, #4]
	b	.L226
.L348:
	ldr	r10, .L357+84
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L236
	ldr	r6, [sp, #28]
	rsb	r6, r6, r6, lsl #4
	add	r6, r7, r6, lsl #4
	ldr	r7, .L357+84
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	b	.L238
.L349:
	ldr	r6, .L357+28
	ldr	r6, [r6]
	ldr	r10, [r4, #16]
	cmp	r6, #1
	ldr	r6, [sp, #28]
	add	r6, r10, r6
	rsb	r6, r6, r6, lsl #4
	str	r6, [sp, #24]
	add	r7, r0, r6, lsl #4
	beq	.L356
	ldr	r6, .L357+36
	ldrb	r7, [r7, r6]	@ zero_extendqisi2
	ldr	r6, [sp, #24]
	cmp	r7, #0
	lsl	r6, r6, #4
	beq	.L247
	ldr	r7, [sp, #32]
	add	r6, r7, r6
	ldr	r7, .L357+36
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
.L250:
	cmp	r6, #0
	beq	.L247
	rsb	r6, r3, #160
	cmp	r1, r6
	blt	.L287
	mov	r0, r5
	b	.L226
.L350:
	ldr	r0, [r4, #16]
	sub	r1, r1, r0
	str	r1, [r4, #8]
	mov	r0, r5
	b	.L226
.L351:
	ldr	r7, .L357+84
	add	r0, r0, r6, lsl #4
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	r6, r6, #4
	beq	.L253
	ldr	r0, [sp, #32]
	add	r6, r0, r6
	ldrb	r0, [r6, r7]	@ zero_extendqisi2
	b	.L257
.L247:
	mov	r6, #35
	sub	r1, r1, r10
	mov	r0, r5
	str	r1, [r4, #8]
	str	r6, [r4, #88]
	b	.L226
.L354:
	ldr	r10, .L357+84
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L242
	ldr	r6, [sp, #28]
	ldr	r10, .L357+84
	rsb	r6, r6, r6, lsl #4
	add	r6, r7, r6, lsl #4
	ldrb	r6, [r6, r10]	@ zero_extendqisi2
	b	.L244
.L355:
	mov	r5, #1
	ldr	r6, [r4, #12]
	add	r0, r0, r6, lsl r5
	str	r0, [r4, #4]
	str	r5, [r4, #32]
	b	.L226
.L356:
	ldr	r6, .L357+84
	ldrb	r7, [r7, r6]	@ zero_extendqisi2
	ldr	r6, [sp, #24]
	cmp	r7, #0
	lsl	r6, r6, #4
	beq	.L247
	ldr	r7, [sp, #32]
	add	r6, r7, r6
	ldr	r7, .L357+84
	ldrb	r6, [r6, r7]	@ zero_extendqisi2
	b	.L250
.L358:
	.align	2
.L357:
	.word	enemyStall
	.word	enemies
	.word	player
	.word	collision
	.word	450
	.word	bubbles
	.word	__aeabi_idivmod
	.word	level
	.word	enemies+552
	.word	level2collisionmapBitmap
	.word	100720640
	.word	score
	.word	scoreAnimation
	.word	hideSprites
	.word	tens
	.word	hundreds
	.word	1023
	.word	shadowOAM
	.word	-32768
	.word	ones
	.word	511
	.word	level1collisionmapBitmap
	.size	updateGame1, .-updateGame1
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #1
	ldr	fp, .L497
	ldr	r3, [fp]
	ldr	r10, .L497+4
	sub	sp, sp, #44
	add	r3, r3, #1
	str	r3, [fp]
	mov	r4, r10
	bl	updatePlayer
	ldr	r8, .L497+8
	bl	updateBubbles
	str	r10, [sp, #20]
	mov	r10, r9
	b	.L424
.L417:
	cmp	r10, #6
	beq	.L423
.L421:
	add	r4, r4, #92
	add	r10, r10, #1
.L424:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L417
	ldr	r3, [r4, #68]
	ldr	r0, [r4, #4]
	cmp	r3, #0
	mov	r6, r0
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #24]
	ldm	r8, {ip, lr}
	beq	.L361
	cmp	r1, #136
	addle	r1, r1, #1
	strle	r1, [r4, #8]
.L362:
	ldr	r5, [r8, #20]
	str	lr, [sp, #4]
	ldr	lr, [r8, #16]
	str	ip, [sp]
	str	r5, [sp, #12]
	str	lr, [sp, #8]
	ldr	ip, .L497+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldr	r2, [r4, #60]
	beq	.L483
	cmp	r2, #0
	beq	.L399
	mov	r3, #32
	mov	r2, #1
	ldr	r1, [r8, #28]
	bics	r1, r1, #2
	str	r3, [r4, #8]
	str	r2, [r4, #68]
	ldr	r3, [r4, #4]
	beq	.L484
	add	r3, r3, #30
	cmp	r3, #207
	movgt	r3, #207
.L482:
	str	r3, [r4, #4]
.L402:
	mov	r2, #0
	ldr	r3, .L497+16
	str	r2, [r4, #60]
	str	r3, [r4, #64]
.L483:
	ldr	r7, [r4, #68]
.L398:
	mov	r9, #300
	ldr	r5, .L497+20
	add	r6, r5, #108
.L410:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L408
	cmp	r2, #0
	bne	.L408
	cmp	r7, #0
	beq	.L485
.L408:
	add	r5, r5, #36
	cmp	r5, r6
	bne	.L410
	cmp	r2, #0
	beq	.L411
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	cmp	r3, #0
	streq	r3, [r4, #60]
	cmp	r7, #0
	str	r3, [r4, #64]
	bne	.L417
.L415:
	ldr	r3, [r4, #28]
	subs	r3, r3, #1
	strne	r3, [r4, #28]
	bne	.L417
	mov	r3, #20
	ldr	r5, [r4, #60]
	cmp	r5, #0
	str	r3, [r4, #28]
	beq	.L416
	ldr	r0, [r4, #48]
	ldr	r1, [r4, #56]
	ldr	r3, .L497+24
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	cmp	r10, #6
	str	r1, [r4, #48]
	bne	.L421
.L423:
	ldr	r10, [sp, #20]
	bl	updateFireball
	bl	updateShadowOAM
	mov	lr, #512
	ldr	r3, .L497+28
	ldr	r4, .L497+32
	ldr	ip, .L497+36
	ldr	r1, .L497+40
	add	r0, r3, #176
.L428:
	ldr	r2, [r3, #36]
	cmp	r2, #0
	ldrb	r2, [r3, #40]	@ zero_extendqisi2
	lsl	r6, r2, #3
	add	r5, r4, r2, lsl #3
	moveq	r2, r6
	strheq	lr, [r4, r2]	@ movhi
	beq	.L426
	ldr	r2, [r3]
	ldr	r7, [r3, #28]
	and	r2, r2, ip
	orr	r2, r2, #16384
	cmp	r7, #0
	strh	r2, [r5, #2]	@ movhi
	ldrb	r7, [r3, #4]	@ zero_extendqisi2
	ldr	r2, [r3, #16]
	strh	r7, [r4, r6]	@ movhi
	add	r6, r2, #109
	addeq	r2, r2, #105
	and	r6, r1, r6, lsl #1
	andeq	r2, r1, r2, lsl #1
	strhne	r6, [r5, #4]	@ movhi
	strheq	r2, [r5, #4]	@ movhi
.L426:
	add	r3, r3, #44
	cmp	r3, r0
	bne	.L428
	mov	r1, #0
	mov	r3, r1
	mov	r2, r1
	ldr	r0, .L497+44
	str	r1, [r0]
	ldr	r0, .L497+48
.L430:
	ldr	r1, [r10, #76]
	add	r10, r10, #92
	cmp	r1, #0
	movne	r3, #1
	movne	r2, #2
	cmp	r0, r10
	bne	.L430
	cmp	r3, #0
	beq	.L431
	ldr	r3, .L497+44
	cmp	r2, #0
	str	r2, [r3]
	beq	.L431
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L361:
	ldr	r5, [fp]
	ldr	r7, [r4, #60]
	and	r5, r5, #1
	orrs	r7, r5, r7
	bne	.L362
	ldr	r5, [r4]
	cmp	r5, #2
	beq	.L486
	cmp	r5, #1
	beq	.L487
	cmp	r5, #0
	bne	.L362
	ldr	r5, [r4, #88]
	cmp	r5, #0
	str	r5, [sp, #24]
	subne	r5, r5, #1
	strne	r5, [sp, #24]
	strne	r5, [r4, #88]
	add	r7, r2, r0
	add	r5, r3, r1
	sub	r7, r7, #1
	sub	r5, r5, #1
	cmp	r0, ip
	str	r7, [sp, #32]
	str	r5, [sp, #28]
	blt	.L488
	ble	.L378
	ldr	r5, .L497+44
	ldr	r5, [r5]
	ldr	r7, [r4, #12]
	cmp	r5, #1
	rsb	r5, r1, r1, lsl #4
	sub	r7, r0, r7
	lsl	r5, r5, #4
	add	r5, r7, r5
	beq	.L489
	ldr	r9, .L497+52
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L381
	ldr	r5, [sp, #28]
	ldr	r9, .L497+52
	rsb	r5, r5, r5, lsl #4
	add	r5, r7, r5, lsl #4
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
.L383:
	cmp	r5, #0
	movne	r6, r7
	strne	r7, [r4, #4]
.L381:
	mov	r5, #0
	str	r5, [r4, #32]
.L378:
	cmp	r1, #32
	movle	r5, #0
	movgt	r5, #1
	cmp	r1, lr
	ble	.L384
	ldr	r7, [sp, #24]
	cmp	r7, #0
	moveq	r7, r5
	movne	r7, #0
	cmp	r7, #0
	bne	.L490
.L384:
	ldr	r7, [sp, #24]
	cmp	r7, #0
	moveq	r5, #0
	cmp	r5, #0
	bne	.L491
.L390:
	rsb	r5, r3, #160
	cmp	r5, r1
	ble	.L480
	ldr	r5, .L497+44
	ldr	r5, [r5]
	ldr	r9, [r4, #16]
	cmp	r5, #1
	ldr	r5, [sp, #28]
	add	r5, r9, r5
	rsb	r5, r5, r5, lsl #4
	beq	.L492
	ldr	r7, .L497+52
	add	r0, r0, r5, lsl #4
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	r5, r5, #4
	beq	.L480
	ldr	r0, [sp, #32]
	add	r7, r0, r5
	ldr	r0, .L497+52
	ldrb	r0, [r7, r0]	@ zero_extendqisi2
.L395:
	cmp	r0, #0
	addne	r1, r1, r9
	mov	r0, r6
	strne	r1, [r4, #8]
	b	.L362
.L411:
	cmp	r7, #0
	beq	.L415
	ldr	r3, [r4, #64]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #64]
	streq	r2, [r4, #76]
	b	.L417
.L399:
	ldr	r7, [r4, #68]
	cmp	r7, #0
	bne	.L493
.L405:
	ldr	r3, [r8, #68]
	cmp	r3, #0
	bne	.L398
	ldr	r3, [r8, #60]
	cmp	r3, #3
	mov	r1, #4
	ldr	r2, .L497+56
	beq	.L494
	strh	r1, [r2, #18]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	r1, [r2, #84]	@ movhi
	strh	r1, [r2, #146]	@ movhi
	strh	r1, [r2, #148]	@ movhi
.L407:
	mov	r1, #0
	mov	lr, #108
	mov	ip, #136
	mov	r0, #50
	sub	r3, r3, #1
	mov	r2, r1
	str	r3, [r8, #60]
	str	r1, [r8, #64]
	str	lr, [r8]
	str	ip, [r8, #4]
	str	r0, [r8, #68]
	b	.L398
.L485:
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #20
	ldm	r2, {r2, r3}
	ldmib	r4, {r0, r1}
	ldr	ip, .L497+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r2, #1
	movne	r1, r2
	ldrne	r3, [r8, #52]
	addne	r3, r3, r2
	strne	r7, [r5, #28]
	ldreq	r2, [r4, #60]
	strne	r1, [r4, #60]
	strne	r9, [r4, #64]
	strne	r3, [r8, #52]
	ldr	r7, [r4, #68]
	b	.L408
.L493:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L405
	mov	r0, #20
	mov	r1, #1
	ldr	ip, .L497+60
	ldr	r3, [ip]
	add	r3, r3, #50
	str	r3, [ip]
	ldr	r3, [r4, #4]
	ldr	ip, .L497+64
	add	r3, r3, #5
	str	r3, [ip]
	ldr	r3, [r4, #8]
	mov	r7, r2
	str	r2, [r4, #68]
	str	r2, [r4, #76]
	str	r0, [ip, #24]
	str	r1, [ip, #32]
	str	r3, [ip, #4]
	b	.L398
.L416:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L418
	ldr	r6, [r4, #44]
	ldr	r0, [r4, #48]
	mov	r1, r6
	ldr	r3, .L497+24
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	sub	r6, r6, #1
	cmp	r1, r6
	str	r1, [r4, #48]
	bne	.L417
	sub	r3, r10, #1
	cmp	r3, #3
	str	r5, [r4, #40]
	str	r5, [r4, #48]
	bhi	.L417
	ldr	r3, .L497+28
	b	.L422
.L419:
	add	r5, r5, #1
.L422:
	ldr	r2, [r3, #36]
	cmp	r2, #0
	add	r3, r3, #44
	bne	.L419
	mov	r0, #1
	mov	ip, #10
	ldr	lr, .L497+28
	add	r3, r5, r5, lsl #2
	add	r3, r5, r3, lsl r0
	add	r1, lr, r3, lsl #2
	str	r2, [r1, #16]
	ldr	r2, [r4, #32]
	cmp	r2, r0
	str	r0, [r1, #36]
	str	ip, [r1, #24]
	ldr	r0, [r4, #4]
	ldreq	r1, [r4, #20]
	str	r0, [lr, r3, lsl #2]
	addeq	r1, r1, r0
	moveq	r0, lr
	lsl	r2, r5, #2
	streq	r1, [r0, r3, lsl #2]
	add	r3, r2, r5
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #8]
	ldr	r0, .L497+28
	add	r3, r5, r3, lsl #1
	add	r3, r0, r3, lsl #2
	add	r2, r2, r1
	str	r2, [r3, #4]
	b	.L421
.L484:
	sub	r3, r3, #30
	cmp	r3, #16
	movle	r3, #17
	strle	r3, [r4, #4]
	ble	.L402
	b	.L482
.L431:
	ldr	r3, .L497+68
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r3, .L497+72
	ldr	r0, .L497+76
	ldr	lr, .L497+80
	ldrb	r5, [r3, #12]	@ zero_extendqisi2
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldr	r8, [r3]
	ldr	r2, [r3, #8]
	ldr	r1, [r0, #8]
	ldr	r3, [lr, #8]
	ldr	r7, .L497+84
	add	r2, r2, #496
	add	r3, r3, #496
	add	r1, r1, #496
	add	r2, r2, #1
	add	r3, r3, #1
	add	r1, r1, #1
	add	r9, r4, r5, lsl #3
	and	r2, r2, r7
	and	r3, r3, r7
	and	r1, r1, r7
	ldr	r7, .L497+88
	strh	r2, [r9, #4]	@ movhi
	ldrb	r2, [lr, #12]	@ zero_extendqisi2
	orr	r6, r6, r7
	lsl	r5, r5, #3
	strh	r6, [r4, r5]	@ movhi
	add	r6, r4, r2, lsl #3
	strh	r3, [r6, #4]	@ movhi
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	lsl	r2, r2, #3
	orr	r3, r3, r7
	strh	r3, [r4, r2]	@ movhi
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldr	r5, .L497+36
	ldr	lr, [lr]
	ldr	r2, [r0]
	orr	r7, r3, r7
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	and	lr, lr, r5
	ldr	r0, .L497+8
	and	r8, r8, r5
	strh	r8, [r9, #2]	@ movhi
	and	r2, r2, r5
	strh	lr, [r6, #2]	@ movhi
	lsl	lr, r3, #3
	add	r3, r4, r3, lsl #3
	strh	r7, [r4, lr]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	str	ip, [r0, #36]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L418:
	add	r0, r4, #48
	ldm	r0, {r0, r1}
	ldr	r3, .L497+24
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
	b	.L417
.L486:
	add	r5, r4, #12
	ldm	r5, {r5, r6}
	add	r0, r0, r5
	add	r1, r1, r6
	cmp	r0, #16
	stmib	r4, {r0, r1}
	bgt	.L364
	cmp	r5, #0
	movgt	r7, #0
	movle	r7, #1
	rsb	r5, r5, #0
	str	r7, [r4, #32]
	str	r5, [r4, #12]
.L365:
	cmp	r1, #32
	ble	.L481
	cmp	r1, #136
	ble	.L362
.L481:
	rsb	r6, r6, #0
	str	r6, [r4, #16]
	b	.L362
.L494:
	strh	r1, [r2, #22]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r1, [r2, #86]	@ movhi
	strh	r1, [r2, #88]	@ movhi
	strh	r1, [r2, #150]	@ movhi
	strh	r1, [r2, #152]	@ movhi
	b	.L407
.L487:
	ldr	r6, [r4, #40]
	cmp	r6, #0
	bne	.L362
	ldr	r9, [r4, #12]
	ldr	r7, [r4, #80]
	add	r0, r0, r9
	sub	r7, r7, #1
	cmp	r0, #70
	str	r0, [r4, #4]
	str	r7, [r4, #80]
	bgt	.L369
	rsb	r9, r9, #0
	str	r9, [r4, #12]
	str	r5, [r4, #32]
.L370:
	cmp	r7, #0
	bne	.L362
	mov	r6, #1
	mov	r5, #300
	str	r7, [r4, #48]
	str	r6, [r4, #40]
	str	r5, [r4, #80]
	b	.L362
.L364:
	cmp	r0, #207
	ble	.L365
	cmp	r5, #0
	rsb	r5, r5, #0
	str	r5, [r4, #12]
	movle	r5, #1
	strgt	r7, [r4, #32]
	strle	r5, [r4, #32]
	b	.L365
.L488:
	ldr	r5, .L497+44
	ldr	r5, [r5]
	ldr	r9, [r4, #12]
	cmp	r5, #1
	rsb	r5, r1, r1, lsl #4
	add	r7, r9, r7
	lsl	r5, r5, #4
	str	r9, [sp, #36]
	add	r5, r7, r5
	beq	.L495
	ldr	r9, .L497+52
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L375
	ldr	r5, [sp, #28]
	rsb	r5, r5, r5, lsl #4
	add	r5, r7, r5, lsl #4
	ldr	r7, .L497+52
	ldrb	r5, [r5, r7]	@ zero_extendqisi2
.L377:
	cmp	r5, #0
	ldrne	r5, [sp, #36]
	addne	r5, r5, r6
	movne	r6, r5
	strne	r5, [r4, #4]
.L375:
	mov	r5, #1
	str	r5, [r4, #32]
	b	.L378
.L480:
	mov	r0, r6
	b	.L362
.L369:
	cmp	r0, #160
	rsbgt	r9, r9, #0
	strgt	r9, [r4, #12]
	strgt	r6, [r4, #32]
	b	.L370
.L491:
	ldr	r0, [r4, #16]
	sub	r1, r1, r0
	str	r1, [r4, #8]
	mov	r0, r6
	b	.L362
.L495:
	ldr	r9, .L497+92
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L375
	ldr	r5, [sp, #28]
	rsb	r5, r5, r5, lsl #4
	add	r5, r7, r5, lsl #4
	ldr	r7, .L497+92
	ldrb	r5, [r5, r7]	@ zero_extendqisi2
	b	.L377
.L490:
	ldr	r5, .L497+44
	ldr	r5, [r5]
	ldr	r7, [r4, #16]
	cmp	r5, #1
	ldr	r5, [sp, #28]
	add	r5, r7, r5
	str	r7, [sp, #24]
	rsb	r5, r5, r5, lsl #4
	beq	.L496
	ldr	r9, .L497+52
	add	r7, r0, r5, lsl #4
	ldrb	r7, [r7, r9]	@ zero_extendqisi2
	cmp	r7, #0
	lsl	r5, r5, #4
	beq	.L386
	ldr	r7, [sp, #32]
	add	r5, r7, r5
	ldr	r7, .L497+52
	ldrb	r5, [r5, r7]	@ zero_extendqisi2
.L389:
	cmp	r5, #0
	bne	.L390
.L386:
	mov	r5, #35
	ldr	r0, [sp, #24]
	sub	r1, r1, r0
	str	r1, [r4, #8]
	mov	r0, r6
	str	r5, [r4, #88]
	b	.L362
.L492:
	ldr	r7, .L497+92
	add	r0, r0, r5, lsl #4
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	cmp	r0, #0
	lsl	r5, r5, #4
	beq	.L480
	ldr	r0, [sp, #32]
	add	r5, r0, r5
	ldrb	r0, [r5, r7]	@ zero_extendqisi2
	b	.L395
.L489:
	ldr	r9, .L497+92
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L381
	ldr	r5, [sp, #28]
	ldr	r9, .L497+92
	rsb	r5, r5, r5, lsl #4
	add	r5, r7, r5, lsl #4
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	b	.L383
.L496:
	ldr	r9, .L497+92
	add	r7, r0, r5, lsl #4
	ldrb	r7, [r7, r9]	@ zero_extendqisi2
	cmp	r7, #0
	lsl	r5, r5, #4
	beq	.L386
	ldr	r7, [sp, #32]
	add	r5, r7, r5
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	b	.L389
.L498:
	.align	2
.L497:
	.word	enemyStall
	.word	enemies
	.word	player
	.word	collision
	.word	450
	.word	bubbles
	.word	__aeabi_idivmod
	.word	fireballs
	.word	shadowOAM
	.word	511
	.word	1022
	.word	level
	.word	enemies+552
	.word	level2collisionmapBitmap
	.word	100720640
	.word	score
	.word	scoreAnimation
	.word	hideSprites
	.word	hundreds
	.word	ones
	.word	tens
	.word	1023
	.word	-32768
	.word	level1collisionmapBitmap
	.size	updateGame2, .-updateGame2
	.comm	enemyStall,4,4
	.comm	shadowOAM,1024,4
	.comm	ones,16,4
	.comm	tens,16,4
	.comm	hundreds,16,4
	.comm	fireballs,176,4
	.comm	scoreAnimation,48,4
	.comm	bubbles,108,4
	.comm	enemies,552,4
	.comm	player,76,4
	.comm	number,1,1
	.comm	food,1,1
	.comm	eType,1,1
	.comm	direction,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
