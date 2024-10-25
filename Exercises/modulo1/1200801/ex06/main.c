#include <stdio.h>
#include "power_ref.h"

int main(){
	int x=0,y=0;
	int *ptr=&x;
	
	printf("Type x:");
	scanf("%d",&x);
	
	printf("Type y:");
	scanf("%d",&y);
	
	
	power_ref(ptr,y);
	
	printf("x^y= %d\n",x);
	
	return 0;
}
