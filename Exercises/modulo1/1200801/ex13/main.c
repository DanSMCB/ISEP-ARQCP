#include <stdio.h>
#include "where_is.h"

int main(){
	char str[]={"The number must be saved"};
	char c='u';
	int vec[100];
	
	for(int i=0;i<where_is(str,c,vec);i++){
		printf("%d\n",vec[i]);
	}
	
	
}
