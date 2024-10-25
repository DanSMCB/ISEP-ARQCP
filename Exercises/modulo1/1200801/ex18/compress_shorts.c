 void compress_shorts(short* shorts, int n_shorts, int* integers){
	short *ptr=(short *)integers;
	
	for(int i=0;i<n_shorts;i++){
		*ptr=*shorts;
		ptr++;
		shorts++;
	}
	
	
	
	
 }
