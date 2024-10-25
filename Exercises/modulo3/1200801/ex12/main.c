#include <stdio.h>
#include "asm.h"

short vec[5]={100,6,1,8,4};
short *ptrvec=vec;
int num=sizeof(vec)/sizeof(short);

int main(){
	printf("number of changed elements: %ud\n",vec_zero());
	return 0;
}
