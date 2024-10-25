.section .data

.section .text
.global fora_limites

fora_limites:
	#registo em %dil
	
	movb %dil, %al
	shrb $6, %al				#shift para a direita de 6 bits
	movb $0b00000001, %bl		#máscara para ficar presente apenas o último bit
	andb %bl, %al
	ret
