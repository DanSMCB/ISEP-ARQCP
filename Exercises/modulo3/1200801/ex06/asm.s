.section .data
.global ptr1

.section .text
.global encrypt

encrypt:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rsi
	movq ptr1(%rip), %rsi
	movb (%rsi), %cl
	cmpb $0, %cl
	je end
	cmpb $97, %cl
	je str_loop
	cmpb $32, %cl
	je str_loop
	addb $2, %cl
	movb %cl, (%rsi)
	incb %al
	
str_loop:
	incq %rsi
	movb (%rsi), %cl
	cmpb $0, %cl
	je end
	cmpb $97, %cl
	je str_loop
	cmpb $32, %cl
	je str_loop
	addb $2, %cl
	movb %cl, (%rsi)
	incb %al
	jmp str_loop
	
end:
	ret
