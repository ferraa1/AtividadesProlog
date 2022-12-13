%Fatos
aluno(joao, algoritmos).
aluno(pedro, algoritmos).
aluno(maria, paradigmas).
aluno(rui, paradigmas).
aluno(manuel, paradigmas).
aluno(pedro, paradigmas).
aluno(rui, cálculo).
estuda(joao).
estuda(maria).
estuda(manuel).

%Regras
fazparadigmas(X):-aluno(X,paradigmas),estuda(X).
