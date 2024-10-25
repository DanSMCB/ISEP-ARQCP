void find_all_words(char* str, char* word, char** addrs){
	int exists, aux, index;
	
	while(*str!='\0'){
		if(*word==*str || *word==*str+32 || *word==*str-32){
			aux=0;
			while(*(word+aux)!='\0'){
				if(*(word+aux)==*(str+aux) || *(word+aux)==*(str+aux)+32 || *word==*(str+aux)-32){
					exists=1;
				}else{
					exists=0;
				}
				aux++;
			}
			if(exists==1){
				*(addrs+index)=str;
				index++;
				exists=0;
			}
		}
		
		str++;
	}
	
}
