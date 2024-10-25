.section .data
melhor_pontuacao:
	.byte 0
id_melhor_equipa:
	.byte 0
.global melhor_pontuacao
.global id_melhor_equipa
.global vitorias
.global empates
.global id

.section .text
 .global pontuacao
 
 pontuacao:
    movq $0, %rax
    movq $0, %rdi
    movq $0, %rbx
    movq $0, %rcx
    movq melhor_pontuacao(%rip), %rsi
    movq id(%rip), %rdi 
    movb vitorias(%rip), %al
    movb empates(%rip), %bl
    movb $3, %cl
    mulb %cl
    addb %bl, %al
    cmpq %rsi, %rax
    ja update_melhor_pontuacao
    jmp end

update_melhor_pontuacao:
    movq %rax, melhor_pontuacao(%rip)
    movq %rdi, id_melhor_equipa(%rip)

end:
    ret
