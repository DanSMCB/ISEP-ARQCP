.section .data
.global ptr1, ptr2, num

.section .text
.global swap

swap:
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rsi
	movq $0, %rdi
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi
	movl num(%rip), %ecx
	
str_loop:
	movb (%rsi), %bl
	movb (%rdi), %dl
	movb %bl, (%rdi)
	movb %dl, (%rsi)
	incq %rsi
	incq %rdi
	loop str_loop
	ret
