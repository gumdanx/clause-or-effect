% Exercicio #04 Recursao e Relacoes Familiares:
%
% Fatos:
pai(vava, vih).
pai(vava, tih).
pai(toin, vava).
pai(mig, norma).
mae(norma, vih).
mae(norma, tih).
mae(lulu, vava).
mae(lena, norma).
%
% Regras:
irmaos(X, Y) :- pai(P, X), pai(P, Y),
                mae(M, X), mae(M, Y),
                X \= Y.
% avo(Avo, Neto) :- 
%    (pai(Avo, X), pai(X, Neto)), !;
%    (pai(Avo, X), mae(X, Neto)), !;
%    (mae(Avo, X), pai(X, Neto)), !;
%    (mae(Avo, X), mae(X, Neto)).
% Essa versao de cima eh elegante e interessante
% mas nao funciona bem para Consultas Genericas
avo(Avo, Neto) :- pai(Avo, X), pai(X, Neto).
avo(Avo, Neto) :- pai(Avo, X), mae(X, Neto).
avo(Avo, Neto) :- mae(Avo, X), pai(X, Neto).
avo(Avo, Neto) :- mae(Avo, X), mae(X, Neto).
ancestral(X, Y) :- pai(X, Y).
ancestral(X, Y) :- mae(X, Y).
ancestral(X, Y) :- pai(X, Z), ancestral(Z, Y).
ancestral(X, Y) :- mae(X, Z), ancestral(Z, Y).
%
%
% Consultas:
