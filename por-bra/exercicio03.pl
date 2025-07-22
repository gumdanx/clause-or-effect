% Exercicio #03 Variaveis, Listas e Consultas Genericas:
%
% Fatos:
tem(joao, bicicleta).
tem(ana, [livro, celular, caneta]).
tem(carla, bicicleta).
tem(maria, [celular, caneta, mochila]).
%
% Regras:
% 
% operacoes basicas
% cabeça e cauda
cabeca_e_cauda([Cabeca|Cauda], Cabeca, Cauda).
% verificar se um elemento pertence à lista
membro(X, [X|_]).
membro(X, [_|T]) :- membro(X, T).
%
possui_item(Pessoa, Item) :- tem(Pessoa, Lista), membro(Item, Lista).
%
tem_em_comum(P1, P2, Item) :- possui_item(P1, Item), possui_item(P2, Item).
compartilham_algum(P1, P2) :- once((P1 \= P2, tem_em_comum(P1, P2, _))).
%
%
% Consultas:
% ?- tem(joao, Oque).
%   Oque = bicicleta.
% ?- tem(Quem, bicicleta).
%   Quem = joao ;
%   Quem = carla.
% ?- tem(Quem, Oque).
%   Retorna todas as combinações possíveis.
% ?- tem(Quem, celular).
%   false
% ?- possui_item(Quem, celular).
%   Quem = ana ;
%   Quem = maria.
% ?- possui_item(Quem, bicicleta).
%   false
% ?- tem_em_comum(ana, maria, Oque).
%   Oque = celular ;
%   Oque = caneta.
% ?- compartilham_algum(ana, maria).
%   true
% ?- compartilham_algum(joao, carla).
%   false
% Importante lembrar que o tipo das lista `[]` eh diferente
% do tipo das variaveis, as regras levam em consideração
% esse tipo da entrada
