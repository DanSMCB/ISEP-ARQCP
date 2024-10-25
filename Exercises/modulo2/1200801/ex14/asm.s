.section .data
base:
	.int 3
height:
	.int 4
.global base, height

.section .text
.global getArea

getArea:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movl base(%rip), %eax
	movl base(%rip), %ebx
	movl height(%rip), %ecx
	
loop:
	addl %ebx, %eax
	subl $1, %ecx
	cmpl $1, %ecx
	je end
	jmp loop

end:
	ret
