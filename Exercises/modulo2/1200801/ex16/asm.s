.section .data
.global num

.section .text
.global steps

steps:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq num(%rip), %rax
	movq num(%rip), %rcx
	movb $3, %bl
	mulq %rbx
	addq $6, %rax
	divq %rbx
	addq $12, %rax
	subq %rcx, %rax
	subq $1, %rax
	ret
