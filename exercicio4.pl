%Quest�o 4 Fatos:
direcao(lages,florian�polis).
direcao(lages,rio_do_sul).
direcao(rio_do_sul,alfredo_vagner).
direcao(rio_do_sul,blumenau).
direcao(alfredo_vagner,florian�polis).
direcao(blumenau,itaja�).
direcao(itaja�,florian�polis).
%Quest�o 4 Regras:
%a)
existeligacao(X,Y):-
    direcao(X,Y).
existeligacao(X,Y):-
    direcao(X,Z),
    existeligacao(Z,Y).
