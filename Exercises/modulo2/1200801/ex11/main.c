#include <stdio.h>
#include "asm.h"

int op1=0xFFFFFFFF, op2=0x0001;

int main(){
	printf("%hd\n",test_flags());
}
