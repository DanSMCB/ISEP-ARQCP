#include <stdio.h>
#include "populate.h"

int main(){
	int vec[100];
	int num=100;
	int limit=20;
	
	populate(vec, num, limit);
	extern int nsets;
	
	printf("%d\n",nsets);
	
}
