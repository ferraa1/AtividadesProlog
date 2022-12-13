soma(X,Y):-
    S is X+Y,
    write(S).

par_impar(X):-
    R is mod(X,2),
    R = 0-> write('Par');
    write('Ímpar').

prog:-
    ler(Dado),
    calcular(Dado,Resultado),
    mostrar(Resultado).

ler(Dado):-
    write('Digite um valor '),
    read(Dado).

calcular(Dado,Resultado):-
    Resultado is Dado*Dado.

mostrar(Resultado):-
    write('O quadrado é: '),
    write(Resultado).

quadrados:-
    forall(between(1,5,I),
           (R is I*I,write(I),write('*'),write(I),write('='),write(R),write(' '))).
