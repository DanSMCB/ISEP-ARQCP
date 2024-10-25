ex15: nsets.o check.o populate.o main.o
	gcc nsets.o check.o populate.o main.o -o ex15
	
nsets.o: nsets.c nsets.h
	gcc -g -Wall -c nsets.c -o nsets.o
	
check.o: check.c check.h
	gcc -g -Wall -c check.c -o check.o

populate.o: populate.c populate.h
	gcc -g -Wall -c populate.c -o populate.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15
	
run: ex15
	./ex15
