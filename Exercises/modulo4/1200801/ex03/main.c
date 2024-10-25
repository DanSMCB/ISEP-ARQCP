#include <stdio.h>
#include "asm.h"

int main(){
	int a=5;
	int b=7;
	int c=3;
	int res = greatest(a,b,c);
	printf("greatest: %d\n",res);
}
