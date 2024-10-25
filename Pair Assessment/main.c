#include <stdio.h>
#include "classificacao.h"

unsigned char *vitorias;
unsigned char *empates;
unsigned char *id;

int main(){
	unsigned long equipas[10]={0x4000050001000000, 0X4100010203000000, 0x4200040101000000, 0x4300030201000000, 0x5000040101000000, 0x5100020202000000, 0x5200020103000000, 0x6000000105000000, 0x6100010104000000, 0x6200020103000000};
	int n=sizeof(equipas)/sizeof(long);
	
	classificacao(equipas, n);
	
	extern char melhor_pontuacao;
	extern char id_melhor_equipa;
	printf("%d, %d\n",melhor_pontuacao, id_melhor_equipa);
	
	
	
}
