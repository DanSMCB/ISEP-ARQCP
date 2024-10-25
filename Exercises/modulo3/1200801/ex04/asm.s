.section .data
.global ptrvec, num

.section .text
.global vec_add_one

vec_add_one:
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rsi
	movq ptrvec(%rip), %rsi
	movl num(%rip), %ecx
	cmpl $0, %ecx
	jle end
	
vec_loop:
	movq (%rsi), %rbx
	incq %rbx
	movq %rbx, (%rsi)
	addq $8, %rsi
	loop vec_loop
	
end:
	ret
