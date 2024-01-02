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
	.file	"area1.c"
	.text
	.align	2
	.global	initArea1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initArea1, %function
initArea1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	ldr	r2, .L22
	ldr	lr, [r2]
	ldr	ip, .L22+4
	ldr	r0, .L22+8
	ldr	r1, .L22+12
	ldr	r2, .L22+16
	cmp	lr, r3
	str	r3, [ip, #44]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	bne	.L20
.L2:
	ldr	r3, .L22+20
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #2
	cmp	r3, #8
	cmpne	r2, #1
	ldr	r3, .L22+24
	ldr	r2, .L22+28
	str	r2, [r3]
	bls	.L3
	mov	r5, #0
	ldr	r4, .L22+32
	mov	r1, r5
	mov	ip, r5
	mov	r10, #5
	str	r5, [r4, #48]
	str	r5, [r4, #24]
	str	r5, [r4, #28]
	str	r5, [r4, #36]
	str	r5, [r4, #76]
	mov	r5, #440
	ldr	r0, .L22+36
	str	r5, [r4, #4]
	add	r5, r5, r10
	mov	r3, r0
	mov	r7, #30
	mov	fp, #40
	mov	r2, #1
	mov	lr, #4
	mov	r6, #10
	mov	r9, #32
	mov	r8, #3
	str	r5, [r4]
	b	.L8
.L21:
	str	r7, [r3, #16]
	str	r9, [r3, #20]
	str	ip, [r3, #32]
	str	r2, [r3, #40]
	str	r8, [r3, #60]
	str	lr, [r3, #68]
.L18:
	str	ip, [r3, #76]
	strb	r4, [r3, #28]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r6, [r3, #44]
	str	ip, [r3, #52]
	str	lr, [r3, #56]
	str	r2, [r3, #72]
	str	ip, [r3, #80]
	add	r1, r1, #1
	add	r3, r3, #88
.L8:
	add	r4, r1, #3
	cmp	r1, #2
	and	r4, r4, #255
	bls	.L21
	cmp	r1, #5
	beq	.L6
	str	r7, [r3, #16]
	str	fp, [r3, #20]
	str	r2, [r3, #32]
	str	lr, [r3, #60]
	str	r10, [r3, #68]
	b	.L18
.L6:
	mov	r3, #1
	str	r3, [r0, #508]
	str	r3, [r0, #448]
	str	r3, [r0, #452]
	str	r3, [r0, #464]
	str	r3, [r0, #516]
	mov	r3, #10
	str	r3, [r0, #484]
	mov	r3, #4
	mov	lr, #380
	str	r3, [r0, #496]
	mov	r3, #356
	stm	r0, {r3, lr}
	mov	r3, #183
	str	r3, [r0, #88]
	mov	r3, #186
	mov	r2, #0
	mov	r1, #200
	mov	r5, #2
	mov	ip, #320
	mov	fp, #16
	mov	r10, #8
	mov	r9, #208
	mov	r8, #146
	mov	r7, #72
	mov	r6, #500
	str	r3, [r0, #264]
	add	r3, r3, #260
	strb	r4, [r0, #468]
	str	fp, [r0, #456]
	str	r10, [r0, #460]
	str	r5, [r0, #472]
	str	r5, [r0, #500]
	str	r2, [r0, #440]
	str	r2, [r0, #492]
	str	r2, [r0, #520]
	str	r2, [r0, #512]
	str	r1, [r0, #444]
	str	r1, [r0, #180]
	str	r1, [r0, #212]
	str	lr, [r0, #36]
	str	ip, [r0, #92]
	str	ip, [r0, #124]
	str	r9, [r0, #268]
	str	r8, [r0, #352]
	str	r7, [r0, #356]
	str	r6, [r0, #524]
	str	r3, [r0, #176]
.L3:
	mov	r2, #9
	mov	r1, #2
	mov	lr, #3
	mov	ip, #0
	mov	r0, #1
	ldr	r3, .L22+40
.L9:
	str	r2, [r3, #32]
	add	r2, r2, #1
	cmp	r2, #19
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #36]
	add	r3, r3, #44
	bne	.L9
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	ldr	r3, .L22+44
	mov	lr, pc
	bx	r3
	b	.L2
.L23:
	.align	2
.L22:
	.word	pal
	.word	plumbob
	.word	toShops
	.word	delay
	.word	toText
	.word	state
	.word	cm
	.word	area1cmBitmap
	.word	player
	.word	enemies
	.word	electricity
	.word	setColor
	.size	initArea1, .-initArea1
	.align	2
	.global	plumbobArea1
	.syntax unified
	.arm
	.fpu softvfp
	.type	plumbobArea1, %function
plumbobArea1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2
	cmpne	r0, #2
	bxne	lr
	mov	r2, #1
	mov	r1, #10
	ldr	r3, .L31
	ldrh	r0, [r3]
	ldr	r3, .L31+4
	tst	r0, #1
	str	r2, [r3, #44]
	str	r1, [r3, #48]
	bxeq	lr
	ldr	r3, .L31+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldreq	r3, .L31+12
	streq	r2, [r3]
	bx	lr
.L32:
	.align	2
.L31:
	.word	oldButtons
	.word	plumbob
	.word	buttons
	.word	toShops
	.size	plumbobArea1, .-plumbobArea1
	.align	2
	.global	updateEnemiesArea1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemiesArea1, %function
updateEnemiesArea1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L161
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L161+4
	ldr	r2, [r1, #524]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, #0
	str	r2, [r1, #524]
	str	r3, [r8]
	sub	sp, sp, #44
	bne	.L34
	mov	ip, #1
	ldr	r0, .L161+8
	ldr	r0, [r0, #4]
	add	r0, r0, #10
	str	r2, [r1, #440]
	str	r0, [r1, #444]
	str	ip, [r1, #512]
.L34:
	ldr	r4, .L161
	ldr	r10, .L161+12
	ldr	r9, .L161+16
	add	fp, r4, #528
	b	.L89
.L150:
	mov	r1, #512
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	ldr	r2, .L161+20
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
.L36:
	add	r4, r4, #88
	cmp	r4, fp
	beq	.L33
.L155:
	ldr	r3, [r8]
.L89:
	tst	r3, #1
	beq	.L36
	ldr	r3, [r4, #72]
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r4, #80]
	cmp	r3, #0
	ldr	r5, .L161+24
	subne	r3, r3, #1
	strne	r3, [r4, #80]
	ldr	r7, .L161+28
	add	r6, r5, #176
.L40:
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
	bx	r10
	cmp	r0, #0
	add	r5, r5, #44
	bne	.L151
.L39:
	cmp	r6, r5
	bne	.L40
	ldr	r5, .L161+8
	ldr	r3, [r5, #40]
	cmp	r3, #0
	beq	.L44
	ldr	r6, [r4, #80]
	cmp	r6, #0
	beq	.L152
.L44:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L153
.L42:
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L154
.L49:
	ldr	r3, [r4, #32]
	cmp	r3, #1
	beq	.L56
	cmp	r3, #2
	beq	.L53
	cmp	r3, #0
	bne	.L36
.L149:
	ldr	r0, [r4, #4]
.L59:
	ldr	r3, [r4, #44]
	subs	r3, r3, #1
	strne	r3, [r4, #44]
	bne	.L63
	mov	r2, #10
	ldr	r1, [r4, #76]
	cmp	r1, #0
	str	r2, [r4, #44]
	beq	.L64
	ldr	r2, [r4, #52]
	cmp	r2, #3
	add	r2, r2, #1
	streq	r3, [r4, #76]
	rsbs	r1, r2, #0
	and	r1, r1, #3
	and	r3, r2, #3
	rsbpl	r3, r1, #0
	str	r3, [r4, #52]
.L63:
	ldr	r1, [r4, #20]
	ldr	r3, .L161+32
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	ldr	r5, .L161+20
	and	r2, r0, #255
	lsl	r3, r3, #3
	strh	r2, [r5, r3]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	ldr	r7, .L161+36
	mov	lr, pc
	bx	r7
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r1, [r4, #80]
	add	r2, r5, r2, lsl #3
	cmp	r1, #0
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, [r4, #24]
	beq	.L66
	lsl	r3, r3, #12
	add	r4, r4, #88
	orr	r3, r3, #508
	cmp	r4, fp
	strh	r3, [r2, #4]	@ movhi
	bne	.L155
.L33:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L151:
	mov	r3, #0
	str	r3, [r4, #72]
	ldr	r3, .L161+40
	mov	lr, pc
	bx	r3
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3
	ldr	r3, [r9, #8]
	add	r0, r0, #50
	add	r0, r0, r3
	str	r0, [r9, #8]
	b	.L39
.L153:
	ldr	r3, [r4, #32]
	cmp	r3, #1
	beq	.L56
	cmp	r3, #2
	beq	.L53
	cmp	r3, #0
	bne	.L36
.L58:
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r0, [r4, #4]
	beq	.L156
	cmp	r3, #0
	bne	.L59
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #36]
	sub	r0, r0, r1
	cmp	r0, r2
	moveq	r2, #1
	str	r0, [r4, #4]
	streq	r3, [r4, #52]
	streq	r2, [r4, #76]
	streq	r2, [r4, #40]
	b	.L59
.L154:
	ldr	r6, [r5, #76]
	cmp	r6, #0
	bne	.L49
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, [r5]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	mov	r2, #16
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #4]
	add	r0, r0, #8
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldreq	r3, [r4, #32]
	bne	.L157
.L54:
	cmp	r3, #1
	beq	.L56
	cmp	r3, #2
	beq	.L53
	cmp	r3, #0
	bne	.L36
.L55:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	bne	.L149
	b	.L58
.L152:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r5, #96
	ldm	r0, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L44
	mov	r1, #20
	ldr	r2, [r5, #120]
	ldr	r3, [r5, #64]
	add	r3, r3, r2
	ldr	r2, [r5, #72]
	add	r3, r3, r2
	ldr	r2, [r4, #68]
	sub	r3, r2, r3
	ldr	r2, [r4, #32]
	cmp	r2, #1
	str	r3, [r4, #68]
	str	r1, [r4, #80]
	beq	.L158
	cmp	r3, #0
	ble	.L47
.L46:
	cmp	r2, #2
	bne	.L44
	mov	r3, #500
	ldr	r2, [r4, #76]
	cmp	r2, #0
	str	r3, [r4, #84]
	bne	.L42
.L53:
	ldr	r3, [r4, #44]
	subs	r3, r3, #1
	strne	r3, [r4, #44]
	bne	.L86
	mov	r1, #10
	ldr	r3, [r4, #52]
	ldr	r2, .L161+44
	add	r3, r3, #1
	smull	r0, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2, lsl #1
	str	r3, [r4, #52]
	str	r1, [r4, #44]
.L86:
	ldr	r3, [r4]
	add	r3, r3, #2
	cmp	r3, #512
	movgt	r2, #0
	str	r3, [r4]
	movgt	r3, #500
	strgt	r2, [r4, #72]
	strgt	r3, [r4, #84]
	ldr	r1, [r4, #20]
	ldr	r3, .L161+32
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r3
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r5, .L161+20
	and	r3, r0, #255
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	r3, [r5, r2]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	ldr	r7, .L161+36
	mov	lr, pc
	bx	r7
	ldr	r2, [r4, #52]
	ldr	r3, .L161+48
	add	r2, r2, #328
	and	r3, r3, r2, lsl #1
	ldrb	r1, [r4, #28]	@ zero_extendqisi2
	ldr	r2, [r4, #24]
	lsl	r0, r0, #23
	add	r5, r5, r1, lsl #3
	lsr	r0, r0, #23
	orr	r3, r3, r2, lsl #12
	strh	r0, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	b	.L36
.L56:
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #4]
	ldr	r6, .L161+32
	mov	lr, pc
	bx	r6
	cmp	r0, #160
	bgt	.L146
	ldr	r7, .L161+36
.L68:
	ldr	r3, [r4, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #44]
	bne	.L69
	mov	r0, #25
	ldr	r2, [r4, #52]
	add	r2, r2, #1
	rsbs	r1, r2, #0
	and	r1, r1, #3
	and	r2, r2, #3
	rsbpl	r2, r1, #0
	cmp	r2, #3
	str	r0, [r4, #44]
	str	r2, [r4, #52]
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	beq	.L70
.L71:
	mov	lr, pc
	bx	r6
	and	r3, r0, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r6, .L161+20
	lsl	r2, r2, #3
	strh	r3, [r6, r2]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r7
	ldr	r2, [r4, #80]
	cmp	r2, #0
	movne	r2, #33536
	ldrb	r1, [r4, #28]	@ zero_extendqisi2
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	add	ip, r6, r1, lsl #3
	orr	r3, r3, #49152
	strh	r3, [ip, #2]	@ movhi
	strhne	r2, [ip, #4]	@ movhi
	lsl	r1, r1, #3
	bne	.L80
	ldr	r0, [r4, #24]
	ldr	r2, [r4, #52]
	lsl	r0, r0, #28
	cmp	r2, #1
	asr	r0, r0, #16
	ble	.L159
	ldr	lr, [r4, #4]
	str	lr, [sp, #20]
	ldr	lr, [r5, #4]
	ldr	r7, [r4, #20]
	str	lr, [sp, #16]
	str	lr, [sp, #24]
	ldr	lr, [sp, #20]
	add	r7, lr, r7
	ldr	lr, [sp, #16]
	cmp	lr, r7
	ble	.L82
	add	r2, r2, #194
	lsl	r2, r2, #2
	and	r2, r2, #1020
	orr	r0, r0, r2
	strh	r0, [ip, #4]	@ movhi
.L80:
	ldr	r2, [r5]
	ldr	r0, [r4]
	cmp	r0, r2
	addgt	r6, r6, r1
	orrgt	r3, r3, #4096
	strhgt	r3, [r6, #2]	@ movhi
	b	.L36
.L66:
	ldr	r1, [r4, #76]
	cmp	r1, #0
	ldrne	r1, [r4, #52]
	addne	r1, r1, #160
	lslne	r1, r1, #2
	lsl	r3, r3, #28
	asr	r3, r3, #16
	andne	r1, r1, #1020
	orrne	r3, r3, r1
	orreq	r3, r3, #376
	strh	r3, [r2, #4]	@ movhi
	b	.L36
.L69:
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #20]
	b	.L71
.L64:
	ldr	r3, [r4, #52]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #52]
	b	.L63
.L159:
	add	r2, r2, #192
	lsl	r2, r2, #2
	and	r2, r2, #1020
	orr	r0, r0, r2
	strh	r0, [ip, #4]	@ movhi
	b	.L80
.L156:
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #36]
	add	r0, r0, r2
	sub	r3, r0, r3
	cmp	r3, #19
	movgt	r3, #0
	str	r0, [r4, #4]
	strgt	r3, [r4, #40]
	b	.L59
.L146:
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	ldr	r7, .L161+36
	mov	lr, pc
	bx	r7
	cmp	r0, #240
	ble	.L68
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	and	r3, r0, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r5, .L161+20
	lsl	r2, r2, #3
	strh	r3, [r5, r2]	@ movhi
	ldr	r1, [r4, #16]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r7
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r2, [r4, #24]
	ldrb	r1, [r4, #28]	@ zero_extendqisi2
	lsl	r2, r2, #12
	add	r5, r5, r1, lsl #3
	orr	r2, r2, #768
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	b	.L36
.L82:
	add	r7, sp, #20
	ldm	r7, {r7, lr}
	cmp	lr, r7
	addge	r2, r2, #192
	addlt	r2, r2, #196
	lslge	r2, r2, #2
	lsllt	r2, r2, #2
	andge	r2, r2, #1020
	andlt	r2, r2, #1020
	orrlt	r0, r0, r2
	orrge	r2, r0, r2
	strhlt	r0, [ip, #4]	@ movhi
	strhge	r2, [ip, #4]	@ movhi
	b	.L80
.L70:
	ldr	ip, [r5]
	add	lr, r0, r1
	ldr	r2, .L161+52
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	ldr	ip, [r5, #4]
	add	lr, r0, #19
	str	lr, [sp, #24]
	add	lr, r0, #34
	str	lr, [sp, #28]
	str	r7, [sp, #36]
	str	r1, [sp, #32]
	mov	r7, ip
	add	lr, r2, #440
	b	.L78
.L160:
	mvn	r1, #0
	str	r0, [r2, #4]
	str	r1, [r2, #12]
.L76:
	cmp	r3, #1
	beq	.L147
	mov	r3, #1
.L72:
	add	r2, r2, #44
	cmp	lr, r2
	beq	.L147
.L78:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L72
	ldr	r1, [r4]
	ldr	ip, [sp, #16]
	cmp	ip, r1
	mov	ip, #1
	str	ip, [r2, #28]
	mov	ip, #75
	addge	r1, r1, #20
	str	ip, [r2, #40]
	lsl	ip, r3, #3
	addlt	r1, r1, ip
	addge	r1, r1, ip
	strlt	r1, [r2]
	strge	r1, [r2]
	mvnlt	r1, #0
	movge	r1, #1
	cmp	r7, r0
	str	r1, [r2, #8]
	blt	.L160
	ldr	r1, [sp, #20]
	cmp	r7, r1
	movgt	r1, #1
	movle	r1, #0
	strgt	r1, [r2, #12]
	strle	r1, [r2, #12]
	ldrgt	r1, [sp, #28]
	ldrle	r1, [sp, #24]
	str	r1, [r2, #4]
	b	.L76
.L158:
	cmp	r3, #0
	str	r6, [r4, #52]
	bgt	.L44
.L47:
	mov	r3, #0
	str	r3, [r4, #72]
	ldr	r3, .L161+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L161+28
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	sub	r3, r0, r3
	ldr	r2, [r9, #8]
	add	r3, r3, #50
	add	r3, r3, r2
	str	r3, [r9, #8]
	ldr	r2, [r4, #32]
	b	.L46
.L157:
	mov	ip, #45
	ldr	r0, [r5, #68]
	ldr	r2, [r4, #60]
	ldr	r3, [r5, #80]
	sub	r2, r2, r0
	ldr	r1, .L161+56
	sub	r3, r3, r2
	str	r3, [r5, #80]
	mov	r2, r6
	ldr	r3, .L161+60
	ldr	r1, [r1]
	ldr	r0, .L161+64
	str	ip, [r5, #76]
	mov	lr, pc
	bx	r3
	ldr	r2, .L161+68
	ldr	r3, [r2, #40]
	cmp	r3, #0
	ldr	r3, [r4, #32]
	beq	.L51
	cmp	r3, #2
	ldr	r1, [r2, #248]
	streq	r6, [r2, #44]
	beq	.L53
.L52:
	cmp	r1, #0
	beq	.L54
	ldr	r1, [r2, #252]
	cmp	r1, #0
	ble	.L54
	cmp	r3, #0
	subeq	r1, r1, #1
	streq	r1, [r2, #252]
	beq	.L55
	b	.L54
.L147:
	add	r1, sp, #32
	ldm	r1, {r1, r7}
	b	.L71
.L51:
	ldr	r1, [r2, #248]
	b	.L52
.L162:
	.align	2
.L161:
	.word	enemies
	.word	delay
	.word	player
	.word	collision
	.word	inventory
	.word	shadowOAM
	.word	bullets
	.word	680390859
	.word	screenY
	.word	screenX
	.word	rand
	.word	715827883
	.word	1022
	.word	electricity
	.word	hit_length
	.word	playSoundB
	.word	hit_data
	.word	people
	.size	updateEnemiesArea1, .-updateEnemiesArea1
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L179
	ldr	r5, .L179+4
	ldr	r6, .L179+8
	ldr	r7, .L179+12
	ldr	fp, .L179+16
	ldr	r10, .L179+20
	sub	sp, sp, #20
	add	r9, r4, #440
	b	.L170
.L164:
	ldr	r3, [r4, #40]
	ldr	r8, [r7, #76]
	sub	r3, r3, #1
	cmp	r8, #0
	str	r3, [r4, #40]
	beq	.L177
.L167:
	ldmib	r4, {r0, r1}
	ldr	r2, [r4]
	add	r2, r2, r1
	ldr	r1, [r4, #12]
	cmp	r3, #0
	add	r0, r0, r1
	ldr	r1, [r4, #20]
	str	r2, [r4]
	streq	r3, [r4, #28]
	str	r0, [r4, #4]
	mov	lr, pc
	bx	fp
	ldr	r3, [r4, #32]
	and	r0, r0, #255
	lsl	r3, r3, #3
	ldr	r1, [r4, #16]
	strh	r0, [r6, r3]	@ movhi
	ldr	r0, [r4]
	mov	lr, pc
	bx	r10
	add	r2, r4, #32
	ldm	r2, {r2, r3}
	lsl	r0, r0, #23
	lsl	r3, r3, #12
	add	r4, r4, #44
	add	r2, r6, r2, lsl #3
	lsr	r0, r0, #23
	orr	r3, r3, #117
	cmp	r4, r9
	strh	r0, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	add	r5, r5, #88
	beq	.L178
.L170:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L164
	mov	r2, #512
	ldr	r3, [r4, #32]
	add	r4, r4, #44
	lsl	r3, r3, #3
	cmp	r4, r9
	strh	r2, [r6, r3]	@ movhi
	add	r5, r5, #88
	bne	.L170
.L178:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L177:
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
	ldr	ip, .L179+24
	add	r0, r0, #8
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L174
.L176:
	ldr	r3, [r4, #40]
	b	.L167
.L174:
	mov	ip, #45
	ldr	r2, [r7, #68]
	ldr	r1, [r5]
	ldr	r3, [r7, #80]
	sub	r1, r1, r2
	sub	r3, r3, r1
	ldr	r1, .L179+28
	str	r3, [r7, #80]
	mov	r2, r8
	ldr	r1, [r1]
	ldr	r3, .L179+32
	ldr	r0, .L179+36
	str	ip, [r7, #76]
	mov	lr, pc
	bx	r3
	b	.L176
.L180:
	.align	2
.L179:
	.word	electricity
	.word	enemies+60
	.word	shadowOAM
	.word	player
	.word	screenY
	.word	screenX
	.word	collision
	.word	hit_length
	.word	playSoundB
	.word	hit_data
	.size	updateBullets, .-updateBullets
	.align	2
	.global	updateArea1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateArea1, %function
updateArea1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L189
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L182
	ldr	r3, .L189+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L182:
	ldr	r1, .L189+8
	ldr	r2, .L189+12
	str	r3, [r1, #44]
	mov	lr, pc
	bx	r2
	bl	updateEnemiesArea1
	bl	updateBullets
	ldr	r3, .L189+16
	ldr	r2, [r3]
	sub	r2, r2, #1
	cmp	r2, #38
	bhi	.L184
	ldr	r2, [r3, #4]
	cmp	r2, #80
	ldr	r2, [r3, #80]
	bgt	.L185
	ldr	r1, .L189+20
	ldr	r0, [r1]
	cmp	r0, #0
	bne	.L185
	mov	r0, #1
	mov	lr, #7
	ldr	ip, .L189+24
	cmp	r2, #0
	ldr	r2, .L189+28
	strb	lr, [ip]
	str	r0, [r1]
	str	r0, [r2]
	ble	.L186
.L187:
	ldr	r3, .L189+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L184:
	ldr	r2, [r3, #80]
.L185:
	cmp	r2, #0
	ble	.L186
	ldr	r3, .L189+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L187
	ldr	r3, .L189+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L186:
	ldr	r1, [r3, #84]
	ldr	r2, .L189+40
	str	r1, [r3, #80]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	toShops
	.word	goToShops
	.word	plumbob
	.word	updatePlayer
	.word	player
	.word	inventory
	.word	ltext
	.word	toText
	.word	goToText
	.word	draw
	.word	goToLose
	.size	updateArea1, .-updateArea1
	.comm	delay,4,4
	.comm	bullets,176,4
	.comm	inventory,16,4
	.comm	toText,4,4
	.comm	toShops,4,4
	.comm	allItems,968,4
	.comm	allWeapons,128,4
	.comm	electricity,440,4
	.comm	enemies,528,4
	.comm	plumbob,56,4
	.comm	player,128,4
	.comm	cm,4,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
