.section .data
.global ptrvec, num

.section .text
.global vec_sum

vec_sum:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rsi
	movq ptrvec(%rip), %rsi
	movw num(%rip), %cx
	cmpw $0, %cx
	jle end
	
vec_loop:
	movl (%rsi), %ebx
	addl %ebx, %eax
	addq $4, %rsi
	loop vec_loop
	
end:
	ret
