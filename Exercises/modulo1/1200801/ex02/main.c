#include <stdio.h>
#include "copy_vec.h"

int main(){
	int vec1[]={1,2,3,4,5};
	int vec2[]={6,7,8,9,10};
	int n=2;
	
	copy_vec(vec1,vec2,n);
	
	for(int i=0;i<5;i++) printf("%d\n", vec2[i]);
	
}
