#include <stdio.h>
#include "asm.h"

int main(){
	int num1=2;
	int num2=1;
	int *smaller=&num1;
	
	int res = sum_smaller(num1, num2, smaller);
	printf("sum: %d\n",res);
	printf("smaller: %d\n",*smaller);
}
