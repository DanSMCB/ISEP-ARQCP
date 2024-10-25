#include <stdio.h>
#include "asm.h"

char str1[20]="avvb";
char str2[20];
char *ptr1=str1;
char *ptr2=str2;

int main(){
	str_copy_porto();
	printf("%s, %s\n", str1, str2);
	return 0;
}
