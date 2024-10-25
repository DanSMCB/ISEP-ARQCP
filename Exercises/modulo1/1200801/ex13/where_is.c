 int where_is (char *str, char c, int *p){
	int count=0;
	int i=1;
	
	while(*str!='\0'){
		if(*str==c){
			*(p+count)=i;
			count++;
		} 
		i++;
		str++;
	}
	return count;
 }
