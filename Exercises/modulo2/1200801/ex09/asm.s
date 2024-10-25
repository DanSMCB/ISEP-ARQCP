.section .data
.global A,B,C,D

.section .text
.global sum_and_subtract

sum_and_subtract:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movb A(%rip), %al
	movw B(%rip), %cx
	movl C(%rip), %ebx
	movl D(%rip), %edx
	addl %ebx, %eax
	addl %ecx, %edx
	subl %edx, %eax
	ret
