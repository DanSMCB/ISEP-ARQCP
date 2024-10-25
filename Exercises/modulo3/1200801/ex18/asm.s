.section .data
.global ptrsrc, num, ptrdest

.section .text
.global sort_without_reps

sort_without_reps:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rsi
	movq $0, %rdi
	movq ptrsrc(%rip), %rsi
	movq ptrdest(%rip), %rdi
	movl num(%rip), %ecx
	movl (%rsi), %rdx
	
vec_loop:
	movl (%rsi), %rbx
	pushq %rax
	pushq %rcx
	call lowest
	cmpb $0, %al
	jne placed
	popq %rcx
	popq %rax
	addq $4, %rsi
	loop vec_loop

placed:
	movl %rax, (%rdi)
	popq %rcx
	popq %rax
	incq %rax
	addq $4, %rsi
	addq $4, %rdi
	loop vec_loop

end:
	ret

lowest:
	movq ptrsrc(%rip), %rsi
	movl num(%rip), %ecx
	movl %rdx, %rbp
	
vec_loop_2:
	movl (%rsi), %rbx
	cmpl %rdx, %rbx
	jge skip
	movq %rbx, %rdx
	cmpl %rbp, %rdx
	jge skip
	
end_2:
	ret

skip:
	addq $4, %rsi
	loop vec_loop_2
	jmp end_2
