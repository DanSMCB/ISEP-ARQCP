#include <stdio.h>
#include "asm.h"

short vec[6]={1,2,8,1,7,5};
short *ptrvec=vec;
int num=sizeof(vec)/sizeof(short);

int main(){
	printf("number of elements without duplicates: %d\n",vec_diff());
	
	return 0;
}
