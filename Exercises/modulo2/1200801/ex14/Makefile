ex14: asm.o main.o
	gcc asm.o main.o -o ex14

asm.o: asm.s asm.h
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex14
	
run: ex14
	./ex14
