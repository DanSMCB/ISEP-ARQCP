.section .data

.section .text
.global validar_limites

validar_limites:
	#*temperaturas em %rdi, n em %esi
	
	movq $0, %rax
	movl %esi, %ecx				#por n em %ecx para fazer o loop
	
temperaturas_loop:
	movb $4, %dl				#nº de registos num dia
	movl (%rdi), %r8d
	movl $0, %r9d				#registo para contar os FLs do dia
	
	loop_dia:
		pushq %rax
		pushq %rdi
		
		movb %r8b, %dil			#mover para %dil os 8 bits menos significativos do registo
		call fora_limites		#devolve 0 se estiver dentro dos limites e 1 se estiver fora dos limites
		cmpb $1, %al
		je fora_lim
		popq %rdi
		popq %rax
		jmp check_fim_dia
	
	loop temperaturas_loop
	jmp end
	
	
fora_lim:
	popq %rdi
	popq %rax
	incb %al					#contador global dos FLs
	incb %r9b					#contador dos FLs apenas do dia que está a ser analisado no momento
	
check_fim_dia:
	subb $1, %dl				#subtrair 1 valor ao registo %dl(registo que guarda o número de loops num dia)
	cmpb $0, %dl
	je fls_dia					#se o registo %dl for 0, saltar para a função que vai preencher os 4 bits mais significativos do int
	shrl $7, %r8d				#shift para a direita de 7 bits, para ficar nos 8 bits menos significativos a temperatura do registo seguinte
	jmp loop_dia
	
fls_dia:
	movl (%rdi), %r10d
	rorl $4, %r9d				#posicionar os fls do dia nos 4 bits mais significativos de r9d
	orl %r9d, %r10d				#como os 4 bits mais significativos de %r10d são 0 inicialmente, estes irão passar a ser iguais aos 4 bits mais significativos de %r9d
	movl %r10d, (%rdi)
	addq $4, (%rdi)				#próximo valor no vetor temperaturas
	loop temperaturas_loop
	
end:
	ret
