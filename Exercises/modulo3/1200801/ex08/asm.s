.section .data
.global ptrvec, num

.section .text
.global vec_sum_even

vec_sum_even:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rsi
	movq $0, %rdi
	movq ptrvec(%rip), %rsi
	movl num(%rip), %ecx
	movb $2, %bl
	
vec_loop:
	movq $0, %rdx
	movl (%rsi), %eax
	divl %ebx
	cmpl $0, %edx
	je sum_even
	addq $4, %rsi
	loop vec_loop
	
sum_even:
	movl (%rsi), %eax
	addq %rax, %rdi
	addq $4, %rsi
	loop vec_loop
	
end:
	movq %rdi, %rax
	ret
