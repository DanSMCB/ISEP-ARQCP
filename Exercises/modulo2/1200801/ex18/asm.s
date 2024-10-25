.section .data
.global n
A:
	.int 2
B:
	.int 2
.global A, B

.section .text
.global calculate

calculate:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rdi
	movq $0, %rsi
	movl $1, %eax
	movl $1, %edi
	mull %eax
	movl A(%rip), %ebx
	mull %ebx
	mull %ebx
	movq $0, %rbx
	movl B(%rip), %ebx
	divl %ebx
	movq %rax, %rsi
	movq $0, %rbx
	movl n(%rip), %ebx
	cmpl %edi, %ebx
	je end
	
loop:
	addl $1, %edi
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movl %edi, %eax
	mull %edi
	movl A(%rip), %ebx
	mull %ebx
	mull %ebx
	movq $0, %rbx
	movl B(%rip), %ebx
	divl %ebx
	addq %rax, %rsi
	movq $0, %rbx
	movl n(%rip), %ebx
	cmpl %edi, %ebx
	je end
	jmp loop
	
end:
	movq %rsi, %rax
	ret
