% Saida
consulta([sim|_], '').
% Validar
opcao_massa(1).
opcao_massa(2).
opcao_massa(3).
opcao_massa(4).
opcao_recheio(5).
opcao_recheio(6).
opcao_recheio(7).
opcao_queijo(8).
opcao_queijo(9).
opcao_queijo(10).
opcao_queijo(11).
opcao_complemento(12).
opcao_complemento(13).
opcao_complemento(14).
opcao_complemento(15).
opcao_complemento(16).
opcao_complemento(17).
opcao_bebida(18).
opcao_bebida(19).
opcao_bebida(20).
% Listagem
consulta([lista, massa|_],
'
1 - Tradicional
2 - Integral
3 - Especial
4 - Fermantecao Natural').
consulta([lista, recheio|_],
'
5 - Surpresa
6 - Moda Casa
7 - Vegetariana').
consulta([lista, queijo|_],
'
8 - Mussarela
9 - Cheddar
10 - Parmesao
11 - Brie').
consulta([lista, complemento|_],
'
12 - Oregano
13 - Tomate
14 - Cebola
15 - Azeitona
16 - Brocolis
17 - Nenhum').

consulta([lista, bebida|_],
'
18 - Refrigerante
19 - Suco
20 - Agua').

% Consulta das respostas
consulta( [1|_],
'Tradicional').
consulta( [2|_],
'Integral').
consulta( [3|_],
'Especial').
consulta( [4|_],
'Fermantecao Natural').
consulta( [5|_],
'Surpresa').
consulta( [6|_],
'Moda Casa').
consulta( [7|_],
'Vegetariana').
consulta( [8|_],
'Mussarela').
consulta( [9|_],
'Cheddar').
consulta( [10|_],
'Parmesao').
consulta( [11|_],
'Brie').
consulta( [12|_],
'Oregano').
consulta( [13|_],
'Tomate').
consulta( [14|_],
'Cebola').
consulta( [15|_],
'Azeitona').
consulta( [16|_],
'Brocolis').
consulta( [17|_],
'Nenhum').
consulta( [18|_],
'Refrigerante').
consulta( [19|_],
'Suco').
consulta( [20|_],
'Agua').