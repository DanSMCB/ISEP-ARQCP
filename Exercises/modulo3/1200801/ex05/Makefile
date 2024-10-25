ex05: sum.o avg.o main.o
	gcc sum.o avg.o main.o -o ex05

sum.o: sum.s sum.h
	gcc -g -Wall -c sum.s -o sum.o
	
avg.o: avg.s avg.h
	gcc -g -Wall -c avg.s -o avg.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
