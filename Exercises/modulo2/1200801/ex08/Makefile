ex08: asm.o main.o
	gcc asm.o main.o -o ex08

asm.o: asm.s asm.h
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex08
	
run: ex08
	./ex08
