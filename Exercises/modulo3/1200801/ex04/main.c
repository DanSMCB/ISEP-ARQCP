#include <stdio.h>
#include "asm.h"

long vec[4]={12,31,78,45};
long *ptrvec=vec;
int num=sizeof(vec)/sizeof(long);

int main(){
	vec_add_one();
	for(int i=0;i<num;i++){
		printf("%ld\n",vec[i]);
	}
	return 0;
}
