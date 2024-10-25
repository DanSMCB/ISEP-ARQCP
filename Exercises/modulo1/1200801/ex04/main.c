#include <stdio.h>
#include "upper1.h"

int main(){
	char str[100];
	
	printf("Enter a string:");
	scanf("%[^\n]s",str);
	
	upper1(str);
	printf("String after: %s\n",str);
	
	return 0;
}
