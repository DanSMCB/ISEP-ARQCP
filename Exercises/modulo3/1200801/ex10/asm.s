.section .data
.global str1, str2, str3

.section .text
.global str_cat

str_cat:
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx
	movq ptr1(%rip), %rax
	movq ptr2(%rip), %rbx
	movq ptr3(%rip), %rcx
	
cat_str1:
	movb (%rax), %dl
	cmpb $0, %dl
	je cat_str2
	movb %dl, (%rcx)
	incq %rax
	incq %rcx
	jmp cat_str1
	
cat_str2:
	movb (%rbx), %dl
	cmpb $0, %dl
	je end
	movb %dl, (%rcx)
	incq %rbx
	incq %rcx
	jmp cat_str2
	
end:
	ret
