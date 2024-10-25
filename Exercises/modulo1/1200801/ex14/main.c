#include <stdio.h>
#include "frequencies.h"

int main(){
	float grades[]={12.2, 15.9, 9.21, 18.45, 7.86};
	int n=5;
	int freq[20];
	
	frequencies(grades, n, freq);
	
	for(int i=0;i<20;i++){
		printf("%d\n",freq[i]);
	}
	
}
