#include <stdio.h>
#include "asm.h"

int main(){
	char str1[]={"hello world"};
	char str2[]={"hello world"};
	char *a=str1;
	char *b=str2;
	
	if(test_equal(a,b)==1){
		printf("The strings are equal\n");
	}else{
		printf("The strings are not equal\n");
	}
}
