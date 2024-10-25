.section .data
.global byte1, byte2

.section .text
.global concatBytes

concatBytes:
	movq $0, %rax
	movq $0, %rbx
	movb byte1(%rip), %al
	movb byte2(%rip), %ah
	ret
