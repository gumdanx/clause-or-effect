% Exercicio #02 Regras e Inferencias:
%
% Fatos:
gosta(maria, chocolate).
gosta(joao, futebol).
gosta(ana, pizza).
gosta(ana, chocolate).
gosta(joao, sushi).
gosta(maria, salada).
gosta(carla, pizza).
gosta(joao, pizza).
gosta(joao, chocolate).
%
tem_pet(ana, cachorro).
tem_pet(joao, gato).
tem_pet(maria, peixe).
tem_pet(carla, papagaio).
%
% Regra:
amigos(X, Y) :- gosta(X, Z), gosta(Y, Z), X \= Y.
inimigos(X, Y) :- (tem_pet(X, cachorro), tem_pet(Y, gato));
    			        (tem_pet(X, gato), tem_pet(Y, cachorro)).
amizade_forte(X, Y) :- once((gosta(X, K1), gosta(Y, K1), 
							               gosta(X, K2), gosta(Y, K2),
							               K1 \= K2)).
