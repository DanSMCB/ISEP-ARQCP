#include <stdio.h>
#include "upper2.h"

int main(){
	char str[100];
	
	printf("Enter a string:");
	scanf("%[^\n]s",str);
	
	upper2(str);
	printf("String after: %s\n",str);
	
	return 0;
}
