ex_individual: validar_limites.o fora_limites.o main.o 
	gcc validar_limites.o fora_limites.o main.o -o ex_individual

validar_limites.o: validar_limites.s validar_limites.h
	gcc -g -Wall -c validar_limites.s -o validar_limites.o
	
fora_limites.o: fora_limites.s fora_limites.h
	gcc -g -Wall -c fora_limites.s -o fora_limites.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex_individual

run: ex_individual
	./ex_individual
