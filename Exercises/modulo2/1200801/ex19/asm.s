.section .data
.global cur, des

.section .text
.global needed_time

needed_time:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movw cur(%rip), %bx
	movw des(%rip), %cx
	cmpw %cx, %bx
	je end
	jl more
	
less:				#cur > des
	addw $3, %ax
	subw $1, %bx
	cmpw %cx, %bx
	je end
	jmp less
	
more:				#cur < des
	addw $2, %ax
	addw $1, %bx
	cmpw %cx, %bx
	je end
	jmp more

end:
	movq $0, %rbx
	movq $60, %rbx
	mull %ebx
	ret
