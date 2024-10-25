#include <stdio.h>
#include "asm.h"

int vec1[6]={1,8,3,5,5,1};
int vec2[6];
int *ptrsrc=vec1;
int *ptrdest=vec2;
int num=sizeof(vec1)/sizeof(int);

int main(){
	printf("number of items placed in the second array: %d\n",sort_without_reps());
	
	return 0;
}
