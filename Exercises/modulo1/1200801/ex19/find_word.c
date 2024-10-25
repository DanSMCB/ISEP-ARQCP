#include <stddef.h>
char* find_word(char* word, char* initial_addr){
	char *ptr;
	int exists, aux;
	
	while(*initial_addr!='\0' && exists==0){
		if(*word==*initial_addr || *word==*initial_addr+32 || *word==*initial_addr-32){
			aux=0;
			while(*(word+aux)!='\0'){
				if(*(word+aux)==*(initial_addr+aux) || *(word+aux)==*(initial_addr+aux)+32 || *word==*(initial_addr+aux)-32){
					exists=1;
				}else{
					exists=0;
				}
				aux++;
			}
			if(exists==1){
				ptr=initial_addr;
			}
		}
		
		initial_addr++;
	}
	
	if(exists==1){
		return ptr;
	}else return NULL;
	
}
