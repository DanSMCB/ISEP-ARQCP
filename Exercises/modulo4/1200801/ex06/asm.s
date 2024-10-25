.section .data

.section .text
.global test_equal

test_equal:
	movq $1, %rax
	
str_loop:
	movb (%rdi), %bl
	movb (%rsi), %cl
	
	cmpb $0, %bl
	je str1_end
	cmpb $0, %cl
	je n_equal
	
	cmpb %bl, %cl
	jne n_equal
	incq %rdi
	incq %rsi
	
	jmp str_loop

n_equal:
	movl $0, %eax
	jmp end
	
str1_end:
	cmpb $0, %cl
	jne n_equal
	
end:
	ret
