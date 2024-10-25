#include <stdio.h>
#include "swap.h"

int main(){
	int vec1[]={1, 2, 3, 4, 5};
	int vec2[]={5, 4, 3, 2, 1};
	int size=5;
	
	swap(vec1, vec2, size);
	
	printf("vec1 vec2\n");
	for(int i=0;i<size;i++){
		printf("%d    %d\n",vec1[i], vec2[i]);
	}
}
