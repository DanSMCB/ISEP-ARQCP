.section .data
.global op1, op2

.section .text
.global test_flags

test_flags:
	movq $0, %rax
	movq $0, %rbx
	movl op1(%rip), %eax
	movl op2(%rip), %ebx
	addl %ebx, %eax
	jc carry
	jo overflow
	movq $0, %rax
	jmp end
	
carry:
	movq $1, %rax
	jmp end
	
overflow:
	movq $1, %rax
	
end:
	ret
	
