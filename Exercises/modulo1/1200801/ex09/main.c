#include <stdio.h>
#include "sort_without_reps.h"

int main(){
	int src[]={7, 1, 2, 2, 3};
	int n=5;
	int dest[5];
	
	int count=sort_without_reps(src, n, dest);
	
	for(int i=0;i<count;i++){
		printf("%d\n",dest[i]);
	}
	
	return 0;
}
