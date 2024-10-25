#include "pontuacao.h"

void classificacao(unsigned long *equipas, int n){
	extern unsigned char *vitorias;
	extern unsigned char *empates;
	extern unsigned char *id;
		
	for(int i=0;i<n;i++){
		vitorias=(unsigned char*)equipas+5;
		empates=(unsigned char*)equipas+4;
		id=(unsigned char*)equipas+7;
		*equipas+=pontuacao();
		equipas++;
	}

}
