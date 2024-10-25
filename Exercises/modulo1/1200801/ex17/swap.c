 void swap(int* vec1, int* vec2, int size){
	int aux;
	
	for(int i=0;i<size;i++){
		aux=*vec1;
		*vec1=*vec2;
		*vec2=aux;

		vec1++;
		vec2++;
	}
 }
