#include <stdio.h>
#include "asm.h"

char str[20]="bacd eaa";
char *ptr1=str;

int main(){
	printf("%d\n",encrypt());
	printf("%s\n",str);
	return 0;
}
