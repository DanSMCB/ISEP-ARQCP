#include <stdio.h>
#include "validar_limites.h"
#include "fora_limites.h"

int main(void) {
	int temperaturas[4]={0x00209F3F, 0x0040DFBD, 0x06C01060, 0x03F7CE18};
	int n=sizeof(temperaturas)/sizeof(int);
	
	printf("Nº de registos fora dos limites do sensor: %d\n",validar_limites(&temperaturas[0],n));
	
	return 0;
}
