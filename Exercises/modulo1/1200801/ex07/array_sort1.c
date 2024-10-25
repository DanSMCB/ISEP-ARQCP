void array_sort1(int *vec, int n){
	int aux;
	
	for(int i=0;i<n;i++){
	
		if(vec[i]>vec[i+1]){
			aux=vec[i];
			vec[i]=vec[i+1];
			vec[i+1]=aux;
			
			i=0;
		}
		
	}
	
}
