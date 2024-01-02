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
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, r5, r6, lr}
	mov	r0, #3
	ldr	r4, .L8
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #7680
	mov	r2, #100663296
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #256
	mov	r2, #49
	mov	r5, #1
	mov	lr, #33
	mov	ip, #56
	mov	r0, #70
	ldr	r4, .L8+40
	str	r3, [r4]
	ldr	r4, .L8+44
	str	r3, [r4]
	ldr	r4, .L8+48
	strb	r3, [r4]
	ldr	r3, .L8+52
	str	r1, [r3]
	ldr	r3, .L8+56
	str	r1, [r3]
	ldr	r3, .L8+60
	strh	r2, [r3, #2]	@ movhi
	ldr	r2, .L8+64
	ldr	r4, .L8+68
	strh	r2, [r3]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r5, [r3, #12]	@ movhi
	ldr	r2, .L8+72
	mov	lr, pc
	bx	r2
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, r5
	beq	.L2
	ldr	r3, .L8+76
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L8+80
	ldr	r3, .L8+84
	mov	lr, pc
	bx	r3
.L2:
	mov	r3, #0
	strb	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	splashTiles
	.word	splashPal
	.word	100720640
	.word	splashMap
	.word	83886592
	.word	interfaceSSPal
	.word	100728832
	.word	interfaceSSTiles
	.word	hideSprites
	.word	hOff0
	.word	vOff0
	.word	menuButton
	.word	mapWidth
	.word	mapHeight
	.word	shadowOAM
	.word	16440
	.word	state
	.word	draw
	.word	valleyofSpirits_length
	.word	valleyofSpirits_data
	.word	playSoundA
	.size	goToSplash, .-goToSplash
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L29
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L11
	ldr	r2, .L29+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L11
.L12:
	ldr	r3, .L29+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	moveq	r2, #1
	movne	r2, #0
	strbeq	r2, [r3]
	strbne	r2, [r3]
	bne	.L16
.L15:
	mov	ip, #65
	mov	r0, #80
	mov	r1, #106
	mov	r2, #1
	ldr	r3, .L29+12
	ldr	lr, .L29+16
	strh	ip, [r3, #4]	@ movhi
	ldr	ip, .L29+20
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	b	.L18
.L11:
	tst	r3, #128
	beq	.L13
	ldr	r3, .L29+4
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L12
.L13:
	ldr	r3, .L29+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	cmp	r3, #1
	bne	.L18
	b	.L15
.L16:
	mov	ip, #49
	mov	lr, #33
	mov	r0, #56
	mov	r1, #70
	mov	r2, #1
	ldr	r3, .L29+12
	strh	ip, [r3, #2]	@ movhi
	ldr	ip, .L29+24
	strh	lr, [r3, #4]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
.L18:
	ldr	r3, .L29+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	oldButtons
	.word	buttons
	.word	menuButton
	.word	shadowOAM
	.word	16464
	.word	-16335
	.word	16440
	.word	draw
	.size	splash, .-splash
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L33
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #6400
	mov	r2, #100663296
	ldr	r1, .L33+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L33+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L33+12
	ldr	r1, .L33+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L33+20
	ldr	r1, .L33+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L33+28
	ldr	r1, .L33+32
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r3, #256
	ldr	r1, .L33+36
	ldr	lr, .L33+40
	ldr	ip, .L33+44
	ldr	r0, .L33+48
	str	r2, [r1]
	ldr	r1, .L33+52
	str	r2, [lr]
	str	r3, [ip]
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	ldr	r3, .L33+56
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L33+60
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	DMANow
	.word	instructionsAndPauseTiles
	.word	instructionsAndPausePal
	.word	100720640
	.word	instructionsMap
	.word	83886592
	.word	interfaceSSPal
	.word	100728832
	.word	interfaceSSTiles
	.word	hOff0
	.word	vOff0
	.word	mapWidth
	.word	mapHeight
	.word	hideSprites
	.word	draw
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #7168
	mov	r0, #6912
	ldr	r4, .L37
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #6400
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L37+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L37+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+12
	ldr	r1, .L37+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+20
	ldr	r1, .L37+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L37+28
	ldr	r1, .L37+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L37+36
	ldr	r1, .L37+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L37+44
	mov	lr, pc
	bx	r3
	mov	r0, #8
	mov	r4, #2
	mov	fp, #192
	mov	r10, #81
	mov	r9, #35
	mov	r8, #65
	mov	r7, #43
	mov	r6, #216
	mov	r2, #0
	mvn	ip, #103
	ldr	r3, .L37+48
	str	r0, [r3]
	ldr	r3, .L37+52
	strh	r0, [r3, #40]	@ movhi
	ldr	r0, .L37+56
	strh	r0, [r3]	@ movhi
	sub	r0, r0, #112
	strh	r0, [r3, #2]	@ movhi
	add	r0, r0, #49152
	strh	r0, [r3, #16]	@ movhi
	add	r0, r0, #11
	strh	r0, [r3, #24]	@ movhi
	sub	r0, r0, #16
	strh	r0, [r3, #26]	@ movhi
	add	r0, r0, #27
	strh	r0, [r3, #32]	@ movhi
	ldr	r0, .L37+60
	strh	fp, [r3, #4]	@ movhi
	strh	r10, [r3, #20]	@ movhi
	strh	r9, [r3, #28]	@ movhi
	strh	r8, [r3, #36]	@ movhi
	strh	r7, [r3, #42]	@ movhi
	strh	r4, [r3, #44]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	ldr	r3, .L37+64
	str	r6, [r3]
	ldr	r3, .L37+68
	str	r2, [r3]
	ldr	r3, .L37+72
	mov	r5, #6
	str	r2, [r3]
	ldr	r3, .L37+76
	mov	lr, #10
	str	r2, [r3]
	ldr	r2, .L37+80
	str	ip, [r2]
	mov	ip, #96
	mov	r1, #256
	ldr	r3, .L37+84
	str	r5, [r3]
	ldr	r3, .L37+88
	str	lr, [r3]
	ldr	r3, .L37+92
	ldr	r2, .L37+96
	ldr	r0, .L37+100
	str	ip, [r3]
	ldr	r3, .L37+104
	str	r1, [r2]
	str	r1, [r0]
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+108
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+112
	ldr	r2, .L37+116
	strb	r4, [r3]
	strb	r4, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	DMANow
	.word	instructionsAndPauseTiles
	.word	instructionsAndPausePal
	.word	100720640
	.word	pauseMap
	.word	100718592
	.word	skyMap
	.word	83886592
	.word	interfaceSSPal
	.word	100728832
	.word	interfaceSSTiles
	.word	hideSprites
	.word	x
	.word	shadowOAM
	.word	-32648
	.word	-16381
	.word	y
	.word	currentFrame
	.word	hOff1
	.word	vOff1
	.word	hOff0
	.word	numFrames
	.word	timeUntilNextFrame
	.word	vOff0
	.word	mapHeight
	.word	mapWidth
	.word	draw
	.word	pauseSounds
	.word	menuButton
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToInventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInventory, %function
goToInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L41
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #6400
	mov	r2, #100663296
	ldr	r1, .L41+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L41+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L41+12
	ldr	r1, .L41+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L41+20
	ldr	r1, .L41+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L41+28
	ldr	r1, .L41+32
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #256
	ldr	r2, .L41+36
	ldr	ip, .L41+40
	ldr	r1, .L41+44
	ldr	r0, .L41+48
	str	r4, [r2]
	ldr	r2, .L41+52
	str	r4, [ip]
	str	r3, [r1]
	str	r3, [r0]
	mov	lr, pc
	bx	r2
	ldr	r3, .L41+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L41+64
	ldr	r3, .L41+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+72
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L41+76
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	DMANow
	.word	inventoryTiles
	.word	inventoryPal
	.word	100720640
	.word	inventoryMap
	.word	83886592
	.word	interfaceSSPal
	.word	100728832
	.word	interfaceSSTiles
	.word	hOff0
	.word	vOff0
	.word	mapHeight
	.word	mapWidth
	.word	hideSprites
	.word	initInventory
	.word	openInventory_length
	.word	openInventory_data
	.word	playSoundB
	.word	draw
	.word	state
	.size	goToInventory, .-goToInventory
	.align	2
	.global	goToStore
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStore, %function
goToStore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L45
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #6400
	mov	r2, #100663296
	ldr	r1, .L45+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L45+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L45+12
	ldr	r1, .L45+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L45+20
	ldr	r1, .L45+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L45+28
	ldr	r1, .L45+32
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #256
	ldr	r2, .L45+36
	ldr	ip, .L45+40
	ldr	r1, .L45+44
	ldr	r0, .L45+48
	str	r4, [r2]
	ldr	r2, .L45+52
	str	r4, [ip]
	str	r3, [r1]
	str	r3, [r0]
	mov	lr, pc
	bx	r2
	ldr	r3, .L45+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L45+64
	ldr	r3, .L45+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+72
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L45+76
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	DMANow
	.word	inventoryTiles
	.word	inventoryPal
	.word	100720640
	.word	storeMap
	.word	83886592
	.word	interfaceSSPal
	.word	100728832
	.word	interfaceSSTiles
	.word	hOff0
	.word	vOff0
	.word	mapHeight
	.word	mapWidth
	.word	hideSprites
	.word	initStore
	.word	openInventory_length
	.word	openInventory_data
	.word	playSoundB
	.word	draw
	.word	state
	.size	goToStore, .-goToStore
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
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L49
	strh	r1, [r2, #8]	@ movhi
	add	r3, r3, #1648
	mov	r2, #100663296
	ldr	r1, .L49+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+12
	ldr	r1, .L49+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r3, #256
	ldr	r1, .L49+20
	ldr	lr, .L49+24
	ldr	ip, .L49+28
	ldr	r0, .L49+32
	str	r2, [r1]
	ldr	r1, .L49+36
	str	r2, [lr]
	str	r3, [ip]
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	ldr	r3, .L49+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+44
	mov	lr, pc
	bx	r3
	mov	r0, #7
	mov	r2, #1
	ldr	r1, .L49+48
	ldr	r3, .L49+52
	strb	r0, [r1]
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	DMANow
	.word	textTiles
	.word	textPal
	.word	100720640
	.word	winMap
	.word	hOff0
	.word	vOff0
	.word	mapWidth
	.word	mapHeight
	.word	hideSprites
	.word	initGame
	.word	draw
	.word	state
	.word	gameState
	.size	goToWin, .-goToWin
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
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L53
	strh	r1, [r2, #8]	@ movhi
	add	r3, r3, #1648
	mov	r2, #100663296
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+12
	ldr	r1, .L53+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r3, #256
	ldr	r1, .L53+20
	ldr	lr, .L53+24
	ldr	ip, .L53+28
	ldr	r0, .L53+32
	str	r2, [r1]
	ldr	r1, .L53+36
	str	r2, [lr]
	str	r3, [ip]
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	ldr	r3, .L53+40
	mov	lr, pc
	bx	r3
	mov	r0, #6
	mov	r2, #2
	ldr	r1, .L53+44
	ldr	r3, .L53+48
	strb	r0, [r1]
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	DMANow
	.word	textTiles
	.word	textPal
	.word	100720640
	.word	loseMap
	.word	hOff0
	.word	vOff0
	.word	mapWidth
	.word	mapHeight
	.word	hideSprites
	.word	draw
	.word	state
	.word	gameState
	.size	goToLose, .-goToLose
	.align	2
	.global	goToText
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToText, %function
goToText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #7168
	push	{r4, r5, r6, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L68
	strh	r1, [r2, #8]	@ movhi
	add	r3, r3, #1648
	mov	r2, #100663296
	ldr	r1, .L68+4
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L68+8
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+16
	ldr	r5, .L68+20
	ldr	r1, .L68+24
	ldr	r2, .L68+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r1, [r5]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L56
.L58:
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L57
.L57:
	mov	r0, #512
	mov	r3, #1024
	strh	r0, [r5]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+36
	mov	lr, pc
	bx	r4
.L56:
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L68+40
	ldr	r1, .L68+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L68+48
	ldr	r1, .L68+52
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r0, .L68+56
	ldr	r1, .L68+60
	ldr	r2, .L68+64
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r2, #8
	ldr	r3, .L68+68
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	ldr	r0, .L68+72
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+76
	mov	lr, pc
	bx	r4
	b	.L56
.L65:
	ldr	r0, .L68+80
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+84
	mov	lr, pc
	bx	r4
	b	.L56
.L64:
	ldr	r0, .L68+88
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+92
	mov	lr, pc
	bx	r4
	b	.L56
.L63:
	ldr	r0, .L68+96
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+100
	mov	lr, pc
	bx	r4
	b	.L56
.L62:
	ldr	r0, .L68+104
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+108
	mov	lr, pc
	bx	r4
	b	.L56
.L61:
	ldr	r0, .L68+112
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+116
	mov	lr, pc
	bx	r4
	b	.L56
.L60:
	ldr	r0, .L68+120
	mov	r3, #1024
	strh	r0, [r5, #4]	@ movhi
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+124
	mov	lr, pc
	bx	r4
	b	.L56
.L59:
	mov	r3, #1024
	ldr	r2, .L68+32
	ldr	r1, .L68+128
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L68+132
	ldr	r2, .L68+136
	ldr	r3, .L68+140
	strh	r1, [r5]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	b	.L56
.L69:
	.align	2
.L68:
	.word	DMANow
	.word	textTiles
	.word	textPal
	.word	hideSprites
	.word	ltext
	.word	shadowOAM
	.word	16400
	.word	-16368
	.word	100720640
	.word	completedTextMap
	.word	83886592
	.word	textSSPal
	.word	100728832
	.word	textSSTiles
	.word	hOff0
	.word	vOff0
	.word	draw
	.word	state
	.word	4097
	.word	text1Map
	.word	29313
	.word	text2Map
	.word	8321
	.word	text3Map
	.word	25089
	.word	text4Map
	.word	12545
	.word	text5Map
	.word	20865
	.word	text6Map
	.word	769
	.word	textCatMap
	.word	textMapMap
	.word	16472
	.word	-16208
	.word	897
	.size	goToText, .-goToText
	.align	2
	.global	goToHouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToHouse, %function
goToHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #23552
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L74
	strh	r3, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #6400
	mov	r2, #100663296
	ldr	r1, .L74+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L74+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L74+12
	ldr	r1, .L74+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L74+20
	ldr	r1, .L74+24
	mov	lr, pc
	bx	r4
	ldr	r2, .L74+28
	ldr	r1, .L74+32
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L74+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+40
	mov	lr, pc
	bx	r3
	mov	lr, #512
	mov	ip, #256
	mov	r3, #0
	ldr	r1, .L74+44
	ldr	r2, .L74+48
	str	lr, [r1]
	ldr	r0, .L74+52
	ldr	r1, .L74+56
	ldr	r4, .L74+60
	str	ip, [r2]
	ldr	r2, .L74+64
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r2, r3, #2
	cmp	r3, #8
	cmpne	r2, #1
	bhi	.L71
	ldr	r3, .L74+68
	mov	lr, pc
	bx	r3
.L72:
	mov	r1, #5
	mov	r2, #1
	ldr	r3, .L74+72
	strb	r1, [r4]
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L71:
	ldr	r3, .L74+76
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L74+80
	ldr	r3, .L74+84
	mov	lr, pc
	bx	r3
	b	.L72
.L75:
	.align	2
.L74:
	.word	DMANow
	.word	houseTiles
	.word	housePal
	.word	100720640
	.word	houseMap
	.word	83886592
	.word	mainSSPal
	.word	100728832
	.word	mainSSTiles
	.word	hideSprites
	.word	initHouse
	.word	mapWidth
	.word	mapHeight
	.word	hOff0
	.word	vOff0
	.word	state
	.word	draw
	.word	unpauseSounds
	.word	gameState
	.word	Lightyear_City_length
	.word	Lightyear_City_data
	.word	playSoundA
	.size	goToHouse, .-goToHouse
	.align	2
	.global	goToShops
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToShops, %function
goToShops:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	mov	r3, #5888
	mov	r2, #20480
	ldr	ip, .L85
	ldr	r1, .L85+4
	push	{r4, r5, r6, lr}
	ldr	r4, .L85+8
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	ldr	r3, .L85+12
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L85+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L85+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L85+24
	ldr	r1, .L85+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L85+32
	ldr	r1, .L85+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L85+40
	ldr	r1, .L85+44
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L85+48
	ldr	r1, .L85+52
	mov	lr, pc
	bx	r4
	ldr	r2, .L85+56
	ldr	r1, .L85+60
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+68
	mov	lr, pc
	bx	r3
	mov	ip, #512
	mov	r1, #256
	ldr	r2, .L85+72
	ldr	r0, .L85+76
	ldr	r4, .L85+80
	ldr	r3, .L85+84
	str	r1, [r2]
	str	ip, [r0]
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r2, r3, #2
	cmp	r3, #8
	cmpne	r2, #1
	bls	.L83
	ldr	r5, .L85+88
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L84
.L78:
	mov	r2, #5
	mov	r3, #2
	strb	r2, [r4]
	strb	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	ldr	r3, .L85+92
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L85+96
	ldr	r3, .L85+100
	mov	lr, pc
	bx	r3
	b	.L78
.L83:
	ldr	r3, .L85+104
	mov	lr, pc
	bx	r3
	ldr	r5, .L85+88
	b	.L78
.L86:
	.align	2
.L85:
	.word	5122
	.word	20993
	.word	DMANow
	.word	10000
	.word	shopsTiles
	.word	shopsPal
	.word	100696064
	.word	shopsBG0Map
	.word	100700160
	.word	shopsBG1Map
	.word	100704256
	.word	shopsSkyMap
	.word	83886592
	.word	mainSSPal
	.word	100728832
	.word	mainSSTiles
	.word	hideSprites
	.word	initShops
	.word	mapHeight
	.word	mapWidth
	.word	state
	.word	draw
	.word	gameState
	.word	Lightyear_City_length
	.word	Lightyear_City_data
	.word	playSoundA
	.word	unpauseSounds
	.size	goToShops, .-goToShops
	.align	2
	.global	goToArea1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToArea1, %function
goToArea1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	mov	r3, #5888
	mov	r2, #53248
	ldr	ip, .L96
	ldr	r1, .L96+4
	push	{r4, r5, r6, lr}
	ldr	r4, .L96+8
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #16384
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L96+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L96+20
	ldr	r1, .L96+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L96+28
	ldr	r1, .L96+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L96+36
	ldr	r1, .L96+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L96+44
	ldr	r1, .L96+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L96+52
	ldr	r1, .L96+56
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L96+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+64
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #0
	ldr	r2, .L96+68
	ldr	ip, .L96+72
	ldr	r1, .L96+76
	ldr	r4, .L96+80
	str	r3, [r2]
	ldr	r2, .L96+84
	str	r3, [ip]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r2, r3, #2
	cmp	r3, #8
	cmpne	r2, #1
	bls	.L94
	ldr	r5, .L96+88
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L95
.L89:
	mov	r2, #5
	mov	r3, #3
	strb	r2, [r4]
	strb	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	ldr	r3, .L96+92
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L96+96
	ldr	r3, .L96+100
	mov	lr, pc
	bx	r3
	b	.L89
.L94:
	ldr	r3, .L96+104
	mov	lr, pc
	bx	r3
	ldr	r5, .L96+88
	b	.L89
.L97:
	.align	2
.L96:
	.word	-26622
	.word	-11263
	.word	DMANow
	.word	area1Tiles
	.word	area1Pal
	.word	100696064
	.word	area1BG0Map
	.word	100704256
	.word	area1BG1Map
	.word	100712448
	.word	area1BG2Map
	.word	83886592
	.word	area1SSPal
	.word	100728832
	.word	area1SSTiles
	.word	hideSprites
	.word	initArea1
	.word	mapWidth
	.word	mapHeight
	.word	hOff2
	.word	state
	.word	draw
	.word	gameState
	.word	pinkBloom_length
	.word	pinkBloom_data
	.word	playSoundA
	.word	unpauseSounds
	.size	goToArea1, .-goToArea1
	.align	2
	.global	goToArea2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToArea2, %function
goToArea2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #53248
	ldr	r0, .L107
	push	{r4, r5, r6, lr}
	ldr	r4, .L107+4
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #16384
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L107+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L107+16
	ldr	r1, .L107+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L107+24
	ldr	r1, .L107+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L107+32
	ldr	r1, .L107+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L107+40
	ldr	r1, .L107+44
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #0
	ldr	r2, .L107+56
	ldr	ip, .L107+60
	ldr	r1, .L107+64
	ldr	r4, .L107+68
	str	r3, [r2]
	ldr	r2, .L107+72
	str	r3, [ip]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #2
	cmp	r3, #1
	bls	.L105
	ldr	r5, .L107+76
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L106
.L100:
	mov	r2, #5
	mov	r3, #4
	strb	r2, [r4]
	strb	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	ldr	r3, .L107+80
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L107+84
	ldr	r3, .L107+88
	mov	lr, pc
	bx	r3
	b	.L100
.L105:
	ldr	r3, .L107+92
	mov	lr, pc
	bx	r3
	ldr	r5, .L107+76
	b	.L100
.L108:
	.align	2
.L107:
	.word	-27647
	.word	DMANow
	.word	area2Tiles
	.word	area2Pal
	.word	100696064
	.word	area2BG0Map
	.word	100704256
	.word	area2BG1Map
	.word	83886592
	.word	area2SSPal
	.word	100728832
	.word	area2SSTiles
	.word	hideSprites
	.word	initArea2
	.word	mapWidth
	.word	mapHeight
	.word	hOff1
	.word	state
	.word	draw
	.word	gameState
	.word	toTheUnknown_length
	.word	toTheUnknown_data
	.word	playSoundA
	.word	unpauseSounds
	.size	goToArea2, .-goToArea2
	.align	2
	.global	goToFinal
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFinal, %function
goToFinal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #20480
	ldr	r0, .L118
	push	{r4, r5, r6, lr}
	ldr	r4, .L118+4
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #16384
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L118+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L118+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L118+16
	ldr	r1, .L118+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L118+24
	ldr	r1, .L118+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L118+32
	ldr	r1, .L118+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L118+40
	ldr	r1, .L118+44
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+52
	mov	lr, pc
	bx	r3
	mov	lr, #512
	mov	ip, #256
	mov	r1, #10
	ldr	r3, .L118+56
	ldr	r0, .L118+60
	ldr	r2, .L118+64
	ldr	r4, .L118+68
	str	lr, [r3]
	ldr	r3, .L118+72
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r3, r3, #2
	cmp	r3, #1
	bls	.L116
	ldr	r5, .L118+76
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L117
.L111:
	mov	r3, #5
	strb	r3, [r4]
	strb	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	ldr	r3, .L118+80
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L118+84
	ldr	r3, .L118+88
	mov	lr, pc
	bx	r3
	b	.L111
.L116:
	ldr	r3, .L118+92
	mov	lr, pc
	bx	r3
	ldr	r5, .L118+76
	b	.L111
.L119:
	.align	2
.L118:
	.word	5121
	.word	DMANow
	.word	area2Tiles
	.word	area2Pal
	.word	100696064
	.word	finalBG0Map
	.word	100704256
	.word	finalBG1Map
	.word	83886592
	.word	finalSSPal
	.word	100728832
	.word	finalSSTiles
	.word	hideSprites
	.word	initFinal
	.word	mapWidth
	.word	mapHeight
	.word	vOff1
	.word	state
	.word	draw
	.word	gameState
	.word	theHiddenOne_length
	.word	theHiddenOne_data
	.word	playSoundA
	.word	unpauseSounds
	.size	goToFinal, .-goToFinal
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
	ldr	r3, .L134
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L120
.L123:
	.word	.L127
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L122
.L132:
	ldr	r3, .L134+4
	mov	lr, pc
	bx	r3
.L120:
	pop	{r4, lr}
	bx	lr
.L127:
	ldr	r3, .L134+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L128
	pop	{r4, lr}
	b	goToHouse
.L126:
	ldr	r3, .L134+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L129
	pop	{r4, lr}
	b	goToShops
.L124:
	ldr	r3, .L134+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L131
	pop	{r4, lr}
	b	goToArea2
.L125:
	ldr	r3, .L134+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L130
	pop	{r4, lr}
	b	goToArea1
.L122:
	ldr	r3, .L134+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L132
	pop	{r4, lr}
	b	goToFinal
.L128:
	ldr	r3, .L134+12
	mov	lr, pc
	bx	r3
	b	.L120
.L129:
	ldr	r3, .L134+16
	mov	lr, pc
	bx	r3
	b	.L120
.L130:
	ldr	r3, .L134+20
	mov	lr, pc
	bx	r3
	b	.L120
.L131:
	ldr	r3, .L134+24
	mov	lr, pc
	bx	r3
	b	.L120
.L135:
	.align	2
.L134:
	.word	gameState
	.word	updateFinal
	.word	state
	.word	updateHouse
	.word	updateShops
	.word	updateArea1
	.word	updateArea2
	.size	goToGame, .-goToGame
	.global	__aeabi_idivmod
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
	ldr	r2, .L187
	ldr	ip, .L187+4
	ldr	r1, [r2]
	ldr	r3, [ip]
	cmp	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	add	lr, r3, #2
	bne	.L137
	ldr	r1, .L187+8
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L182
	cmp	r2, #3
	beq	.L183
	cmp	r2, #1
	beq	.L180
	ldr	r4, .L187+12
.L140:
	ldr	r5, .L187+16
	ldr	r0, .L187+20
	ldr	r2, [r5]
	ldr	r1, [r0]
	str	lr, [ip]
	sub	r2, r2, #1
	ldr	ip, .L187+24
	ldr	r6, .L187+28
	add	r1, r1, #1
	sub	r3, r3, #110
	cmp	r2, #0
	str	r1, [r0]
	str	r3, [ip]
	str	r2, [r5]
	ldr	r1, [r6]
	bne	.L149
	ldr	r3, .L187+32
	add	r0, r1, #1
	ldr	r1, [r3]
	ldr	r3, .L187+36
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r6]
	str	r3, [r5]
.L149:
	ldr	r3, .L187+40
	ldr	r2, .L187+44
	ldr	r3, [r3]
	ldr	r2, [r2]
	add	r1, r1, #48
	ldr	r0, .L187+48
	sub	r3, r3, r2
	lsl	r1, r1, #2
	and	r1, r1, #1020
	and	r3, r3, #255
	strh	r1, [r4, #4]	@ movhi
	strh	r3, [r4]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	ldr	r2, .L187+52
	mov	lr, pc
	bx	r2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L137:
	ldr	r3, .L187+24
	ldr	r4, [r3]
	sub	r4, lr, r4
	cmp	r4, #240
	str	lr, [ip]
	ble	.L151
	mov	r1, #0
	ldr	r3, .L187+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	str	r1, [r2]
	beq	.L184
	cmp	r3, #3
	beq	.L185
	mov	r0, #1
	ldr	r2, .L187+56
	ldr	r3, .L187+60
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r2]
	str	r1, [r3]
	b	goToInstructions
.L151:
	ldr	r5, .L187+16
	ldr	r3, [r5]
	ldr	r6, .L187+28
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5]
	ldr	r1, [r6]
	beq	.L186
.L154:
	lsl	r4, r4, #23
	lsr	r4, r4, #23
	mvn	r4, r4, lsl #17
	mvn	r4, r4, lsr #17
	ldr	r2, .L187+44
	ldr	r3, .L187+40
	ldr	r0, [r2]
	ldr	r3, [r3]
	add	r1, r1, #48
	ldr	r2, .L187+12
	sub	r3, r3, r0
	lsl	r1, r1, #2
	and	r1, r1, #1020
	and	r3, r3, #255
	strh	r4, [r2, #2]	@ movhi
	ldr	r0, .L187+52
	strh	r1, [r2, #4]	@ movhi
	strh	r3, [r2]	@ movhi
	mov	lr, pc
	bx	r0
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L182:
	mov	r6, #73
	mov	r7, #8
	mov	r5, #45
	ldr	r0, .L187+64
	ldr	r4, .L187+12
	ldrh	r0, [r0]
	strh	r6, [r4, #12]	@ movhi
	strh	r2, [r4, #44]	@ movhi
	ldr	r6, .L187+68
	ldr	r2, .L187+72
	tst	r0, #64
	strh	r7, [r4, #40]	@ movhi
	strh	r6, [r4, #8]	@ movhi
	strh	r2, [r4, #10]	@ movhi
	strh	r5, [r4, #42]	@ movhi
	beq	.L139
	ldr	r2, .L187+76
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L145
.L139:
	tst	r0, #128
	beq	.L140
	ldr	r2, .L187+76
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L140
.L147:
	mov	r2, #3
	strb	r2, [r1]
	b	.L140
.L186:
	ldr	r3, .L187+32
	add	r0, r1, #1
	ldr	r1, [r3]
	ldr	r3, .L187+36
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r6]
	str	r3, [r5]
	b	.L154
.L180:
	mov	r5, #89
	mov	r7, #30
	mov	r6, #63
	mov	r0, #2
	ldr	r4, .L187+12
	ldr	r2, .L187+64
	strh	r5, [r4, #12]	@ movhi
	ldr	r5, .L187+80
	ldrh	r2, [r2]
	strh	r5, [r4, #8]	@ movhi
	ldr	r5, .L187+72
	tst	r2, #64
	strh	r7, [r4, #40]	@ movhi
	strh	r6, [r4, #42]	@ movhi
	strh	r5, [r4, #10]	@ movhi
	strh	r0, [r4, #44]	@ movhi
	beq	.L146
	ldr	r0, .L187+76
	ldrh	r0, [r0]
	tst	r0, #64
	beq	.L147
.L146:
	tst	r2, #128
	beq	.L140
	ldr	r2, .L187+76
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L140
.L148:
	mov	r2, #2
	strb	r2, [r1]
	b	.L140
.L184:
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToGame
.L183:
	mov	r5, #39
	mov	r7, #19
	mov	r6, #38
	mov	r0, #2
	ldr	r4, .L187+12
	ldr	r2, .L187+64
	strh	r5, [r4, #12]	@ movhi
	ldrh	r2, [r2]
	ldr	r5, .L187+84
	tst	r2, #64
	strh	r5, [r4, #8]	@ movhi
	sub	r5, r5, #16
	strh	r7, [r4, #40]	@ movhi
	strh	r6, [r4, #42]	@ movhi
	strh	r5, [r4, #10]	@ movhi
	strh	r0, [r4, #44]	@ movhi
	beq	.L144
	ldr	r0, .L187+76
	ldrh	r0, [r0]
	tst	r0, #64
	beq	.L148
.L144:
	tst	r2, #128
	beq	.L140
	ldr	r2, .L187+76
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L140
.L145:
	mov	r2, #1
	strb	r2, [r1]
	b	.L140
.L185:
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToSplash
.L188:
	.align	2
.L187:
	.word	switchingStates
	.word	x
	.word	menuButton
	.word	shadowOAM
	.word	timeUntilNextFrame
	.word	hOff1
	.word	hOff0
	.word	currentFrame
	.word	numFrames
	.word	__aeabi_idivmod
	.word	y
	.word	vOff0
	.word	-32656
	.word	draw
	.word	fromPause
	.word	fromStart
	.word	oldButtons
	.word	16392
	.word	-16381
	.word	buttons
	.word	16414
	.word	16403
	.size	pause, .-pause
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
	mov	r4, #0
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L191
	mov	lr, pc
	bx	r2
	ldr	r3, .L191+4
	ldr	r2, .L191+8
	strh	r4, [r3]	@ movhi
	ldr	r3, .L191+12
	ldrh	ip, [r2, #48]
	ldr	r1, .L191+16
	ldr	r2, .L191+20
	ldr	r0, .L191+24
	str	r4, [r3]
	ldr	r3, .L191+28
	str	r4, [r1]
	str	r4, [r2]
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L191+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L191+36
	strb	r4, [r3]
	bl	goToPause
	bl	pause
	pop	{r4, lr}
	b	goToSplash
.L192:
	.align	2
.L191:
	.word	mgba_open
	.word	oldButtons
	.word	67109120
	.word	x
	.word	y
	.word	switchingStates
	.word	buttons
	.word	setupSounds
	.word	initGame
	.word	gameState
	.size	initialize, .-initialize
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
	ldr	r8, .L273
	ldr	r6, .L273+4
	push	{r4, r7, fp, lr}
	ldr	r3, .L273+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L273+12
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	ldr	r7, .L273+16
	ldr	fp, .L273+20
	ldr	r10, .L273+24
	ldr	r9, .L273+28
	ldr	r4, .L273+32
.L194:
	strh	r2, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L223
.L198:
	.word	.L205
	.word	.L204
	.word	.L203
	.word	.L202
	.word	.L201
	.word	.L200
	.word	.L199
	.word	.L199
	.word	.L197
.L199:
	tst	r2, #8
	beq	.L223
	tst	r3, #8
	beq	.L214
.L223:
	mov	r2, r3
	b	.L194
.L200:
	tst	r2, #256
	beq	.L220
	tst	r3, #256
	beq	.L272
.L220:
	tst	r2, #8
	beq	.L219
	tst	r3, #8
	beq	.L221
.L219:
	mov	lr, pc
	bx	r7
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L201:
	mov	lr, pc
	bx	r9
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L202:
	tst	r2, #256
	beq	.L218
	tst	r3, #256
	beq	.L219
.L218:
	ldr	r3, .L273+36
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L203:
	tst	r2, #4
	beq	.L215
	tst	r3, #4
	bne	.L215
.L216:
	mov	r2, #1
	ldr	r3, .L273+40
	str	r2, [r3]
.L217:
	mov	lr, pc
	bx	r10
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L205:
	tst	r2, #4
	beq	.L206
	tst	r3, #4
	bne	.L206
.L207:
	ldr	r3, .L273+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L219
	mov	r3, #0
	mov	r1, #1
	ldr	r2, .L273+48
	str	r3, [fp]
	str	r1, [r2]
	ldr	r3, .L273+52
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L197:
	ldr	r3, .L273+56
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L210:
	tst	r2, #8
	beq	.L213
	tst	r3, #8
	beq	.L211
.L213:
	strh	r3, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	mov	r2, r3
	mov	r3, r1
	strh	r1, [r8]	@ movhi
.L204:
	tst	r2, #4
	beq	.L210
	tst	r3, #4
	bne	.L210
.L211:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L214
.L221:
	ldr	r3, .L273+60
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L206:
	tst	r2, #8
	beq	.L208
	tst	r3, #8
	beq	.L207
.L208:
	ldr	r3, .L273+64
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L215:
	tst	r2, #8
	beq	.L217
	tst	r3, #8
	bne	.L217
	b	.L216
.L214:
	ldr	r3, .L273+68
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L272:
	ldr	r3, .L273+72
	mov	lr, pc
	bx	r3
	ldrh	r2, [r8]
	ldrb	r0, [r6]	@ zero_extendqisi2
	b	.L194
.L274:
	.align	2
.L273:
	.word	buttons
	.word	state
	.word	initialize
	.word	oldButtons
	.word	goToGame
	.word	fromPause
	.word	pause
	.word	updateStore
	.word	67109120
	.word	updateInventory
	.word	switchingStates
	.word	menuButton
	.word	fromStart
	.word	goToInstructions
	.word	updateText
	.word	goToPause
	.word	splash
	.word	goToSplash
	.word	goToInventory
	.size	main, .-main
	.comm	numFrames,4,4
	.comm	timeUntilNextFrame,4,4
	.comm	currentFrame,4,4
	.comm	y,4,4
	.comm	x,4,4
	.comm	fromStart,4,4
	.comm	fromPause,4,4
	.comm	mapHeight,4,4
	.comm	mapWidth,4,4
	.comm	vOff2,4,4
	.comm	hOff2,4,4
	.comm	vOff1,4,4
	.comm	hOff1,4,4
	.comm	vOff0,4,4
	.comm	hOff0,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	shadowOAM,1024,4
	.comm	switchingStates,4,4
	.comm	ltext,1,1
	.comm	menuButton,1,1
	.comm	gameState,1,1
	.comm	state,1,1
	.comm	soundB,24,4
	.comm	soundA,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
