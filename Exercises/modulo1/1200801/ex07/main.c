#include <stdio.h>
#include "array_sort1.h"

int main(){
	int vec[]={6,2,8,4,5,1,3,9,4};
	
	array_sort1(vec,9);
	
	for(int i=0;i<9;i++){
		printf("%d\n",vec[i]);
	}
	
	return 0;
}
