#include <stdio.h>
#include "where_exists.h"

int main(){
	char str1[]={"number"};
	char str2[]={"The number must be saved"};
	
	printf("%s\n",where_exists(str1, str2));
}
