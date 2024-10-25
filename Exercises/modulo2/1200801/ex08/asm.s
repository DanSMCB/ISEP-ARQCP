.section .data
short1:
	.word 1
short2:
	.word 1
.global short1, short2

.section .text
.global crossSumBytes

crossSumBytes:
	movq $0, %rax
	movq $0, %rbx
	movw short1(%rip), %ax
	movw short2(%rip), %bx
	addb %bl, %ah
	addb %bh, %al
	ret
