void capitalize (char *str){
	
	while(*str!='\0'){
		if(*str==' '){
			str++;
			*str-=32;
		}
		str++;
	}
}
