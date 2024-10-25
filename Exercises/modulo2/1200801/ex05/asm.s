.section .data
.global s

.section .text
.global swapBytes

swapBytes:
	movq $0, %rax
	movq $0, %rbx
	movw s(%rip), %bx
	movb %bh, %al
	movb %bl, %ah
	ret
	
	
