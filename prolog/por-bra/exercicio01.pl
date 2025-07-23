% Exercicio #01 Fatos e Consultas:
%
% Fatos:
% Pessoas e comidas que elas gostam
gosta(maria, chocolate).
gosta(joao, futebol).
gosta(ana, pizza).
gosta(ana, chocolate).
gosta(joao, sushi).
gosta(maria, salada).
gosta(carla, pizza).
gosta(joao, pizza).
%
% Pessoas e seus pets
tem_pet(ana, cachorro).
tem_pet(joao, gato).
tem_pet(maria, peixe).
tem_pet(carla, papagaio).
%
% Consultas: 
?- gosta(ana, pizza).
% true

?- gosta(joao, lasanha).
% false

?- tem_pet(maria, peixe).
% true

?- tem_pet(joao, cachorro).
% false

?- gosta(Quem, pizza).
% Quem = ana ;
% Quem = carla ;
% Quem = joao.

?- gosta(X, pizza), tem_pet(X, cachorro).
% X = ana.
