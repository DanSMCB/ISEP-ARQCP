int palindrome(char *str){
	int j=0;
	char str2[100];
	
	for(int i=0;str[i]!='\0';i++){
		if((str[i]<=122 && str[i]>=97) || (str[i]>=65 && str[i]<=90)){
			str2[j]=str[i];
			j++;
		}
	}
	if(j==0){
		return 0;
	}
	
	j--;
	for(int i=0;i<(j/2);i++){
		if(str2[i]!=str2[j-i] && str2[i]!=(str2[j-i]-32) && str2[i]!=(str2[j-i]+32)) return 0;
	}
	
	return 1;
}
