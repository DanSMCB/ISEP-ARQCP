void power_ref(int* x, int y){
	int aux=*x;
	
	if(y!=0){
		if(y>0){
			for(int i=1;i<y;i++){
				*x=aux*(*x);
				
			}
		}else (*x=0);
	}else(*x=1);
}
