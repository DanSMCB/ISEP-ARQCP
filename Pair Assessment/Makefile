avaliacao: classificacao.o pontuacao.o main.o 
	gcc classificacao.o pontuacao.o main.o -o avaliacao

classificacao.o: classificacao.c classificacao.h
	gcc -g -Wall -c classificacao.c -o classificacao.o
	
pontuacao.o: pontuacao.s pontuacao.h
	gcc -g -Wall -c pontuacao.s -o pontuacao.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o avaliacao

run: avaliacao
	./avaliacao
