%Questão 1 Fatos:
homem(pedro).
homem(marcos).
homem(ze).
mulher(maria).
mulher(joana).
idade(ze,30).
idade(maria,40).
idade(marcos,20).
idade(pedro,25).
idade(joana,28).
gosta(ze,aventura).
gosta(maria,comedia).
gosta(joana,romance).
gosta(marcos,terror).
gosta(marcos,romance).
gosta(pedro,romance).
gosta(maria,romance).
opcao(ze,20,40).%significa que o zé gostaria de se relacionar com pessoas 20 a 40 anos
opcao(maria,25,55).
%Questão 1 Regras:
%a)
afinidade_filme(X,Y):-
    gosta(X,Z),
    gosta(Y,Z),
    X\=Y.
%b)
casal(X,Y):-
    (homem(X),mulher(Y));
    (homem(Y),mulher(X)),
    X\=Y.
%c)
casal_afinidade_filme(X,Y):-
    casal(X,Y),
    afinidade_filme(X,Y).
%d)
casal_afinidade_idade(X,Y):-
    casal(X,Y),
    idade(X,A),
    idade(Y,B),
    opcao(X,C,D),
    opcao(Y,E,F),
    A>=E,A=<F,
    B>=C,B=<D.
%e)
casal_total(X,Y):-
    casal(X,Y),
    afinidade_filme(X,Y),
    (idade(X,A),
    idade(Y,B),
    opcao(X,C,D),
    opcao(Y,E,F),
    A>=E,A=<F,
    B>=C,B=<D).










