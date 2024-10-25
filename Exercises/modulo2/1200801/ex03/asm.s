.section .data
.global op1
.global op2
CONST:
	.int 15
.global CONST

.section .text
.global sum
.global sum_v2

sum:
	movl op1(%rip), %ecx 	#place op1 in ecx
	movl op2(%rip), %eax 	#place op2 in eax
	addl %ecx, %eax 		#add ecx to eax. Result is in eax
	ret
	
sum_v2:
	movl CONST(%rip), %eax
	movl CONST(%rip), %ebx
	movl op1(%rip), %ecx
	movl op2(%rip), %edx
	subl %ecx, %eax
	subl %edx, %ebx
	subl %ebx, %eax
	ret
	
