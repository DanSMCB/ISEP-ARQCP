#include <stdio.h>
#include "sum.h"
#include "avg.h"

int vec[4]={3,2,6,4};
int *ptrvec=vec;
short num=sizeof(vec)/sizeof(int);
int sum=0;

int main(){
	sum=vec_sum();
	printf("sum: %d\n",sum);
	printf("average: %d\n",vec_avg());
	return 0;
}
