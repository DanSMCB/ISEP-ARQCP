.section .data
.global op1, op2

.section .text
.global sum2ints

sum2ints:
	movq $0, %rax
	movq $0, %rbx
	movl op1(%rip), %eax
	movl op2(%rip), %ebx
	addl %ebx, %eax
	ret
