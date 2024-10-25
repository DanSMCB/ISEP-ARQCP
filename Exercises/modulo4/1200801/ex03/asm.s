.section .data

.section .text
.global greatest

greatest:
	movl $0, %eax
	cmpl %edi, %esi
	jg cmp_2
	cmpl %edi, %edx
	jg edx
	movl %edi, %eax
	jmp end
	
cmp_2:
	cmpl %esi, %edx
	jg edx
	movl %esi, %eax
	jmp end

edx:
	movl %edx, %eax
	
end:
	ret
