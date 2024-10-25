.section .data
.global short1, short2

.section .text
.global crossSumBytes

crossSumBytes:
	mov $0, %rax
	mov $0, %rbx
	movw short1(%rip), %ax
	movw short2(%rip), %bx
	addb %bl, %ah
	addb %bh, %al
	ret
