.section .data
.global ptr1

.section .text
.global zero_count

zero_count:
	movq $0, %rax
	movq $0, %rcx
	movq $0, %rsi
	movq ptr1(%rip), %rsi
	
loop:
	movb (%rsi), %cl
	cmpb $0, %cl
	je end
	cmpb $48, %cl
	je count
	incq %rsi
	jmp loop
	
count:
	incb %al
	incq %rsi
	jmp loop

end:
	ret
