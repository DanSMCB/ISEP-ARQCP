.section .data
.global A, B

.section .text
.global isMultiple

isMultiple:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movl B(%rip), %ebx
	movl A(%rip), %ecx
	cmpl %ecx, %ebx
	jb end
	je multiple
	
loop:
	subl %ecx, %ebx
	cmpl %ecx, %ebx
	je multiple
	jb end
	jmp loop

multiple:
	movq $1, %rax

end:
	ret
