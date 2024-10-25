.section .data
.global ptr1, ptr2

.section .text
.global str_copy_porto

str_copy_porto:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rdx
	movq $0, %rsi
	movq $0, %rdi
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi
	
str_loop:
	movb (%rsi), %cl
	cmpb $0, %cl
	je end
	cmpb $118, %cl
	je v
	movb %cl, (%rdi)
	incq %rsi
	incq %rdi
	jmp str_loop
	
v:
	movb $98, %bl
	movb %bl, (%rdi)
	incq %rsi
	incq %rdi
	jmp str_loop
	
end:
	ret