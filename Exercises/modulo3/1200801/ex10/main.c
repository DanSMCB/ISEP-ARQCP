#include <stdio.h>
#include "asm.h"

char str1[40]="hello ";
char str2[40]="world";
char str3[40];
char *ptr1=str1;
char *ptr2=str2;
char *ptr3=str3;

int main(){
	str_cat();
	printf("%s\n",str3);
	return 0;
}
