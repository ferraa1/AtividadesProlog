%Fatos
progenitor(maria, jos�).
progenitor(jo�o, jos�).
progenitor(jo�o, ana).
progenitor(jos�, j�lia).
progenitor(jos�, �ris).
progenitor(�ris, jorge).
feminino(maria).
feminino(ana).
feminino(j�lia).
feminino(�ris).

%Regras
filho(Y,X):-progenitor(X,Y).
mae(X,Y):-
    progenitor(X,Y),
    feminino(X).
avo(X,Z):-
    progenitor(X,Y),
    progenitor(Y,Z).
irmao(X,Y):-
    progenitor(Z,X),
    progenitor(Z,Y),
    X\=Y.
tio(X,Y):-
    progenitor(Z,Y),
    irmao(X,Z).

%Regras Recursivas
antepassado(X,Z):-
    progenitor(X,Z).
antepassado(X,Z):-
    progenitor(X,Y),
    antepassado(Y,Z).
