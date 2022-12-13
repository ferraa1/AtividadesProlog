%Quest�o 1:
maior(X,Y,Z,A):-
    X>Y,
    X>Z,
    A is X.
maior(X,Y,Z,A):-
    Y>X,
    Y>Z,
    A is Y.
maior(X,Y,Z,A):-
    Z>X,
    Z>Y,
    A is Z.
menor(X,Y,Z,A):-
    X<Y,
    X<Z,
    A is X.
menor(X,Y,Z,A):-
    Y<X,
    Y<Z,
    A is Y.
menor(X,Y,Z,A):-
    Z<X,
    Z<Y,
    A is Z.
maior_menor(X,Y,Z,A,B):-
    maior(X,Y,Z,C),
    menor(X,Y,Z,D),
    A is C,
    B is D,
    write('Maior = '),write(A),write('\n'),
    write('Menor = '),write(B),write('\n').
%Quest�o 2:
entre50e100(X):-
    between(50,100,X).
%Quest�o 3:
crian�a(X):-
    X=<12,
    write('CRIAN�A').
adolescente(X):-
    X>12,X=<18,
    write('ADOLESCENTE').
adulto(X):-
    X>18,X=<65,
    write('ADULTO').
idoso(X):-
    X>65,
    write('IDOSO').
classifique_idade(X):-
    crian�a(X);
    adolescente(X);
    adulto(X);
    idoso(X).
%Quest�o 4:
cubo(X):-
    forall(between(1,X,I),
           (R is I*I*I,write(I),write('^'),write(3),write(' = '),write(R),write('\n'))).
%Quest�o 5:
entre(X,Y):-
    forall(between(X,Y,Z),(write(Z),write('\n'))).
%Quest�o 6:
fatorial(0,1).
fatorial(X,Y):-
    X>0,
    Z is X-1,
    fatorial(Z,A),
    Y is X*A.
%Quest�o 7:
fibonacci(0,0).
fibonacci(1,1).
fibonacci(X,Y):-
    X>1,
    A is X-1,
    B is X-2,
    fibonacci(A,C),
    fibonacci(B,D),
    Y is C+D.
%Quest�o 8:
potencia(_,0,1).
potencia(X,1,Z):-
    Z is X.
potencia(X,Y,Z):-
    Y>1,
    A is Y-1,
    potencia(X,A,B),
    Z is X*B.
%Quest�o 9:
distancia((X1,Y1),(X2,Y2),Z):-
    Z is sqrt(((X2-X1)*(X2-X1))+((Y2-Y1)*(Y2-Y1))).
%Quest�o 10:
estrelas(X):-
    forall(between(1,X,_),(write('*'))).
%Quest�o 11:
quadrado(X,Y):-
    forall(between(1,X,_),((forall(between(1,X,_),(write(Y)))),write('\n'))).
