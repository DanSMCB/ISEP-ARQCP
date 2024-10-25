#include <stdio.h>
#include "asm.h"

int vec[5]={3,6,4,7,2};
int num=sizeof(vec)/sizeof(int);
int *ptrvec=vec;

int main(){
	printf("%d\n",vec_sum_even());
	return 0;
}
