int sort_without_reps(int *src, int n, int *dest){
	int num=2147283647;
	int aux=-2147283647;
	int count=0;
	
	do{
		for(int j=0;j<n;j++){
			if(*(src+j)<num && *(src+j)>aux){
				num=*(src+j);
			}
		}
		if(num!=2147283647){
			*(dest+count)=num;
			count++;
		}
		aux=num;
		num=2147283647;
		
	}while(num!=aux);
	
	return count;
}
