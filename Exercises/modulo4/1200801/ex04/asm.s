.section .data

.section .text
.global sum_smaller

sum_smaller:
	movq $0, %rax
	addl %edi, %eax
	addl %esi, %eax
	
cmp:
	cmpl %edi, %esi
	jg edi
	movl %esi, (%rdx)
	jmp end
	
edi:
	movl %edi, (%rdx)
	
end:
	ret
