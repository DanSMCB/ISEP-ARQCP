#include <stdio.h>
#include "asm.h"

int vec[12]={3,4,7,2,8,9,6,3,4,7,8,1};
int *ptrvec=vec;
int num=(sizeof(vec)/sizeof(int))-2;

int main(){
	printf("%d\n",count_seq());
	
	return 0;
}
