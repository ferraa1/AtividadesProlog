%Fatos
progenitor(maria, josé).
progenitor(joão, josé).
progenitor(joão, ana).
progenitor(josé, júlia).
progenitor(josé, íris).
progenitor(íris, jorge).
feminino(maria).
feminino(ana).
feminino(júlia).
feminino(íris).

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
