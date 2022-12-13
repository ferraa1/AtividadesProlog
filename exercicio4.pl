%Questão 4 Fatos:
direcao(lages,florianópolis).
direcao(lages,rio_do_sul).
direcao(rio_do_sul,alfredo_vagner).
direcao(rio_do_sul,blumenau).
direcao(alfredo_vagner,florianópolis).
direcao(blumenau,itajaí).
direcao(itajaí,florianópolis).
%Questão 4 Regras:
%a)
existeligacao(X,Y):-
    direcao(X,Y).
existeligacao(X,Y):-
    direcao(X,Z),
    existeligacao(Z,Y).
