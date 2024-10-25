.section .data
.global ptrvec, num

.section .text
.global count_seq

count_seq:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rsi
	movq $0, %rdi
	movq $0, %rsp
	movq $0, %rbp
	movq ptrvec(%rip), %rsi
	movl num(%rip), %ecx
	movb $1, %dl
	movb $2, %dil
	
vec_loop:
	movl (%rsi), %ebx
	movl (%rsi,%rdx,4), %esp
	movl (%rsi,%rdi,4), %ebp
	cmpl %ebx, %esp
	jle skip
	cmpl %esp, %ebp
	jle skip
	incb %al
	addq $4, %rsi
	loop vec_loop
	jmp end

skip:
	addq $4, %rsi
	loop vec_loop

end:
	ret
