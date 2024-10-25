ex15: asm.o main.o
	gcc asm.o main.o -o ex15

asm.o: asm.s asm.h
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15
	
run: ex15
	./ex15
