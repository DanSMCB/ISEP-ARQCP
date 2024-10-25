#include <stdio.h>
#include "asm.h"

char str1[]="hello world";
char str2[]="world hello";
char *ptr1=str1;
char *ptr2=str2;
int num=sizeof(str1);

int main(){
	swap();
	printf("string 1: %s\n",str1);
	printf("string 2: %s\n",str2);
	
	return 0;
}
