.section .data
.global op1
.global op2
CONST:
	.int 15
.global CONST
op3:
	.long
.global op3
op4:
	.long
.global op4

.section .text
.global sum
.global sum_v2
.global sum_v3

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

sum_v3:
	movl op3(%rip), %eax
	movl op4(%rip), %ebx
	movl op1(%rip), %ecx
	movl op2(%rip), %edx
	addl %ebx, %eax
	addl %edx, %ecx
	subl %ecx, %eax
	ret
