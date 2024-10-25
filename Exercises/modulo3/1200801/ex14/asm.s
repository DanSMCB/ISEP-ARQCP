.section .data
.global ptrvec, num

.section .text
.global vec_diff

vec_diff:
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rsi
	movq ptrvec(%rip), %rsi
	movl num(%rip), %ecx
	
vec_loop:
	movw (%rsi), %bx
	pushq %rsi
	pushq %rcx
	call exists
	popq %rcx
	popq %rsi
	cmpb $1, %al
	je n_dup
	addq $2, %rsi
	loop vec_loop
	
end:
	movq %rdx, %rax
	ret
	
n_dup:
	incq %rdx
	addq $2, %rsi
	loop vec_loop
	jmp end
	
exists:
	movq $0, %rax
	movw num(%rip), %cx
	movq ptrvec(%rip), %rsi
	
vec_loop_2:
	movw (%rsi), %r8w
	cmpw %bx, %r8w
	je dup
	addq $2, %rsi
	loop vec_loop_2

end_2:
	ret

dup:
	incb %al
	addq $2, %rsi
	loop vec_loop_2
	jmp end_2
