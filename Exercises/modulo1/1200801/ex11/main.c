#include <stdio.h>
#include "palindrome.h"

int main(){
	char str[]={"Never odd or even"};
	
	if(palindrome(str)==1){
		printf("The string is a palindrome");
	}else printf("The string isn't a palindrome");
	
	return 0;
}
