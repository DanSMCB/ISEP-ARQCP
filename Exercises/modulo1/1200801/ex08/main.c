#include <stdio.h>
#include "array_sort2.h"

int main(){
	int vec[]={5,4,3,1,2};
				
	int n=5;
	
	array_sort2(vec,n);
	
	for(int i=0;i<n;i++){
		printf("%d\n",vec[i]);
	}
	
	return 0;
}
