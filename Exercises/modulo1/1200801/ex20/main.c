#include <stdio.h>
#include "find_all_words.h"

int main(){
	char str[]={"abababc"};
	char word[]={"b"};
	char addrs[20];
	
	find_all_words(str, word, addrs);
	
	return 0;
}
