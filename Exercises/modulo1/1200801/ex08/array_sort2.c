void array_sort2(int *vec, int n){
	int *ptr=(vec+1);
	int aux;
	
	for(int i=0;i<n;i++){
	
		if(*ptr<*(ptr-1)){
			aux=*(ptr-1);
			*(ptr-1)=*ptr;
			*ptr=aux;
			
			i=0;
			ptr=vec;
		}
		ptr++;
	}
	
	
	
	
	
}
