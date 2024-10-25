#include <stdio.h>
#include "compress_shorts.h"

int main(){
	short shorts[]={1, 2, 3, 4};
	int n_shorts=4;
	int integers[n_shorts];
	
	compress_shorts(sorts, n_shorts, integers);
	
	for(int i=0;i<n_shorts;i++){
		printf("%d\n",integers[i]);
	}
	
	return 0;
}
