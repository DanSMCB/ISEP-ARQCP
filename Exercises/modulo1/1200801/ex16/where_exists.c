#include <stddef.h>
#include <stdio.h>

char* where_exists(char* str1, char* str2){
	int aux=0, exists=0;
	char *ptr;
	
	while(*str2!='\0' && exists==0){
		
		if(*str1==*str2){
			aux=0;
			while(*str1!='\0'){
				if(*(str1+aux)==*(str2+aux)){
					exists=1;
					aux++;
				}else exists=0;
			}
			if(exists==1){
				ptr=str2;
			}
		}
		str2++;
	}
	if(exists==0){
		return NULL;
	}else return ptr;
	
}
