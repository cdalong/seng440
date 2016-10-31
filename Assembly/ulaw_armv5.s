	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"ulaw.c"
	.global	Bias
	.section	.rodata
	.align	2
	.type	Bias, %object
	.size	Bias, 4
Bias:
	.word	132
	.global	Max
	.align	2
	.type	Max, %object
	.size	Max, 4
Max:
	.word	32635
	.data
	.type	CompressTable, %object
	.size	CompressTable, 256
CompressTable:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.text
	.align	2
	.global	pw2log
	.type	pw2log, %function
pw2log:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, r0
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-22]
	mov	r3, r3, asr #8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #128
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L2
	ldrh	r3, [fp, #-22]	@ movhi
	rsb	r3, r3, #0
	strh	r3, [fp, #-22]	@ movhi
.L2:
	ldrsh	r3, [fp, #-22]
	ldr	r2, .L5
	ldr	r2, [r2, #0]
	cmp	r3, r2
	ble	.L3
	ldr	r3, .L5
	ldr	r3, [r3, #0]
	strh	r3, [fp, #-22]	@ movhi
.L3:
	ldr	r3, .L5+4
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-22]
	mov	r3, r3, asr #7
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r2, r3, #255
	ldr	r3, .L5+8
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	ldrsh	r2, [fp, #-22]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	mov	r3, r2, asr r3
	and	r3, r3, #15
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-20]
	orr	r2, r2, r3
	ldr	r3, [fp, #-12]
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #255
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L6:
	.align	2
.L5:
	.word	Max
	.word	Bias
	.word	CompressTable
	.size	pw2log, .-pw2log
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%u\012\000"
	.align	2
.LC1:
	.ascii	"********************************\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	strh	r3, [fp, #-10]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L8
.L11:
	mov	r3, #0
	strh	r3, [fp, #-10]	@ movhi
	b	.L9
.L10:
	ldrsh	r3, [fp, #-10]
	mov	r0, r3
	bl	pw2log
	mov	r3, r0
	ldr	r0, .L13
	mov	r1, r3
	bl	printf
	ldrh	r3, [fp, #-10]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-10]	@ movhi
.L9:
	ldrsh	r2, [fp, #-10]
	ldr	r3, .L13+4
	cmp	r2, r3
	ble	.L10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L11
	ldr	r0, .L13+8
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	32684
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
