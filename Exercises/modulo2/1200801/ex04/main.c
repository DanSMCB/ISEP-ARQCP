#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) {
	int res=0;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	extern long op3, op4;
	printf("Valor op3:");
	scanf("%ld",&op3);
	printf("Valor op4:");
	scanf("%ld",&op4);
	res=sum_v3();
	
	printf("sum_v3 = %d:0x%x\n", res,res);
	return 0;
}
