void frequencies(float *grades, int n, int *freq){
	
	for(int i=0;i<20;i++){
		*freq=0;
		freq++;
	}
	freq-=20;
	for(int i=0;i<=20;i++){
		for(int j=0;j<n;j++){
			if((int)*grades==i) *freq+=1;
			grades++;
		}
		grades-=n;
		freq++;
	}
}
