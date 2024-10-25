.section .data
.global A,B,C,D

.section .text
.global compute

compute:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movl A(%rip), %eax
	movl B(%rip), %ebx
	mull %ebx					#resultado em rdx:rax
	movl C(%rip), %ecx
	addl %ecx, %eax
	movl D(%rip), %ebx
	cmpl $0, %ebx
	je end
	divl %ebx					#resultado em rdx:rax
	ret
	
end:
	movq $0, %rax
	ret
