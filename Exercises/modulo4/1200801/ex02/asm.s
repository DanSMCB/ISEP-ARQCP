.section .data

.section .text
.global sum_n

sum_n:
	movl %edi, %ecx
	movl $0, %eax
	movl $0, %ebx
	cmpl %eax, %edi
	jle end
	
sum_loop:
	incl %ebx
	addl %ebx, %eax
	loop sum_loop
	
end:
	ret
