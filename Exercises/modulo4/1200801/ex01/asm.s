.section .data

.section .text
.global cube

cube:
	movl $0, %eax
	movl %edi, %eax
	mull %edi
	mull %edi
	ret
