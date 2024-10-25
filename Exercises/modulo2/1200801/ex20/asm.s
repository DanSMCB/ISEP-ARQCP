.section .data
.global num

.section .text
.global check_num

check_num:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movl num(%rip), %eax
	movb $2, %cl
	divl %ecx
	movq $0, %rax
	movl num(%rip), %eax
	cmpl $0, %edx
	je even
	
odd:
	cmpl $0, %eax
	jl odd_neg
	movq $4, %rax
	jmp end

odd_neg:
	movq $2, %rax
	jmp end

even:
	cmpl $0, %eax
	jl even_neg
	movq $3, %rax
	jmp end

even_neg:
	movq $1, %rax
	
end:
	ret
