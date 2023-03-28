%% CHATBOT - MONTE SUA PIZZA - PizzaVirtual
:-include(base_dados).
pizzaria:-
nl, format('Bem vindo a PizzaVirtual'), nl,
format('Para comecar digite seu nome: '),
read(Nome), nl,
format('Bem vindo '), format(Nome), format(', favor inserir seu cpf: '),
read(Cpf), nl, format('Favor inserir endereco: '),
read(Endereco), nl,
nl, format('------MONTE SUA PIZZA------'),
nl,

repeat,
format('Selecione a massa desejado:'), nl,
consulta([lista, massa|_], A1),
format(A1),
nl, read(Massa),
opcao_massa(Massa),

repeat,
nl, format('Selecione o molho desejado:'),
nl,
consulta([lista, molho|_], A2),
format(A2),
nl, read(Molho),
opcao_molho(Molho),

repeat,
nl, format('Selecione o recheio desejado:'),
nl,
consulta([lista, recheio|_], A3),
format(A3),
nl, read(Recheio),
opcao_recheio(Recheio),

repeat,
nl, format('Selecione o queijo desejado:'),
nl,
consulta([lista, queijo|_], A4),
format(A4),
nl, read(Queijo),
opcao_queijo(Queijo),

repeat,
nl, format('Selecione o complemento desejado:'), nl,
consulta([lista, complemento|_], A5),
format(A5),
nl, read(Complemento),
opcao_complemento(Complemento),

repeat,
nl, format('Selecione se deseja a borda recheada:'), nl,
consulta([lista, borda|_], A6),
format(A6),
nl, read(Borda),
opcao_borda(Borda),


repeat,
nl, format('Selecione uma bebida:'),
nl,
consulta([lista, bebida|_], A7),
format(A7),
nl, read(Bebida),
opcao_bebida(Bebida),

%%pizza(Massa, Molho, Recheio, Queijo, Complemento, Borda, Bebida),
nl, nl, format('Pedido finalizado!'),
encerra_sessao('sim', Nome).
consulta_base_dados(Entrada, Resposta) :-
consulta(Entrada, Resposta), !.
encerra_sessao('sim', Nome):-
nl, nl, format('Obrigado, '), format(Nome),
format(' dentro do prazo de 1 hora seu pedido estara chegando!!!'), nl, nl, !.

%%pizza(Massa, Molho, Recheio, Queijo, Complemento, Borda, Bebida), :-
%%consulta([Massa|_], Mtxt),
%%consulta([Molho|_], Mltxt),
%%consulta([Recheio|_], Rtxt),
%%consulta([Queijo|_], Qtxt),
%%consulta([Complemento|_], Ctxt),
%%consulta([Borda|_], Btxt),
%%consulta([Bebida|_], Bbtxt),
%%nl, nl, format('Sua pizza:'),
%%nl, format(Mtxt),
%%nl, format(Mltxt),
%%nl, format(Rtxt),
%%nl, format(Qtxt),
%%nl, format(Ctxt),
%%nl, format(Btxt),
%%nl, format(Bbtxt).