.section .data
.global sum, num

.section .text
.global vec_avg

vec_avg:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rdx
	movl sum(%rip), %eax
	movl num(%rip), %ebx
	divl %ebx
	ret
