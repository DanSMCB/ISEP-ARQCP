.section .data
.global ptrvec, num

.section .text
.global vec_zero

vec_zero:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rsi
	movq ptrvec(%rip), %rsi
	movl num(%rip), %ecx
	
vec_loop:
	movw (%rsi), %bx
	cmpw $100, %bx
	jge zero
	addq $2, %rsi
	loop vec_loop
	
zero:
	movw $0, (%rsi)
	addq $2, %rsi
	incq %rax
	loop vec_loop
	
end:
	ret
