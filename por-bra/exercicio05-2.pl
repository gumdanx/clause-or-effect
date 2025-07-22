% Exercicio #05-2 Desafio Logico: refinamento
%
% Quem matou o Sr_X
%
% O Sr_X foi assassinado. Ha 3 suspeitos: Maria, Joao e Ana
% Sabemos o seguinte:
%
% 1. Quem odeia o Sr_X e tinha motivo (ciumes) pode ser culpado
%
% 2. Maria odeia o Sr_X
%
% 3. Joao tambem odeia o Sr_X
%
% 4. Ana nao odeia o Sr_X
%
% 5. Maria tem ciumes de Joao
% 
% 6. Joao tem ciumes de Ana
%
% 7. Ana nao tem ciumes de ninguem
%
% 8. Sr_X gostava de Ana e de Maria
%
% Fatos:
pessoa(maria).
pessoa(joao).
pessoa(ana).
pessoa(sr_x).
% 2, 3 e 4 (pontos)
odeia(maria,sr_x).
odeia(joao,sr_x).
% 5, 6 e 7 (pontos)
ciumes(maria,joao).
ciumes(joao,ana).
% 8 (ponto)
gosta(sr_x,ana).
gosta(sr_x,maria).
% Regras:
% 1 (ponto)
tem_motivo(X) :- ciumes(X, Y), gosta(sr_x, Y).
suspeito(X) :- pessoa(X), odeia(X, sr_x), tem_motivo(X).
inocente(X) :- pessoa(X), \+ suspeito(X).
%
% Consultas:
% ?- suspeito(Quem).
% Quem = joao.
% ?- inocente(joao).
% false
% ?- inocente(Quem).
% Quem = maria ;
% Quem = ana ;
% Quem = sr_x.
