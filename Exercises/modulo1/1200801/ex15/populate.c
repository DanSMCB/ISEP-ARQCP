#include <stdlib.h>
#include "check.h"
#include "nsets.h"
#include <stdio.h>
void populate( int *vec , int num, int limit){
	
	for (int i=0; i<100; i++) {
		*vec=(rand() % limit);
		vec++;
	}
	vec-=100;
	
	for(int i=0;i<100;i++){
		printf("%d\n",*vec);
		vec++;
	}
	
	vec-=100;
	for (int i=0; i<100; i++){
		if(check(*vec, *(vec+1), *(vec+2))==1) inc_nsets();
		vec++;
	}
}
