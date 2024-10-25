#include <stdio.h>
#include "asm.h"

char str[]="ab0c0a0";
char *ptr1=str;

int main(){
	printf("%d\n",zero_count());
	return 0;
}
