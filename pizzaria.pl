%% CHATBOT - MONTE SUA PIZZA - PizzaVirtual
:-include(base_dados).
pizzaria:-
nl, format('Bem vindo a PizzaVirtual'), nl,
format('Para comecar digite seu nome: '),
read(Nome), nl,
format('Bem vindo '), format(Nome), format(',
favor inserir seu cpf: '),
read(Cpf), nl, format(',
favor inserir endereco: '),
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
nl, format('Selecione o recheio desejado:'),
nl,
consulta([lista, recheio|_], A2),
format(A2),
nl, read(Recheio),
opcao_recheio(Recheio),
repeat,
nl, format('Selecione o queijo desejado:'),
nl,
consulta([lista, queijo|_], A3),
format(A3),
nl, read(Queijo),
opcao_queijo(Queijo),
repeat,
nl, format('Selecione o complemento desejado:'), nl,
consulta([lista, complemento|_], A4),
format(A4),
nl, read(Complemento),
opcao_complemento(Complemento),
nl, format('Selecione uma bebida:'),
nl,
consulta([lista, bebida|_], A2),
format(A2),
nl, read(Bebida),
opcao_bebida(Bebida),
pizza1(Massa, Recheio, Queijo, Complemento, Bebida),
nl, nl, format('Pedido finalizado!'),
encerra_sessao('sim', Nome).
consulta_base_dados(Entrada, Resposta) :-
consulta(Entrada, Resposta), !.
encerra_sessao('sim', Nome):-
nl, nl, format('Obrigado, '), format(Nome),
format(' Dentro do prazo de 1 hora seu pedido estara chegando!!!'), nl, nl, !.
pizza1(Massa, Recheio, Queijo, Complemento, Bebida), :-
consulta([Massa|_], Mtxt),
consulta([Recheio|_], Rtxt),
consulta([Queijo|_], Qtxt),
consulta([Complemento|_], Ctxt),
consulta([Bebida|_], Btxt),
nl, nl, format('Sua pizza:'),
nl, format(Mtxt),
nl, format(Rtxt),
nl, format(Qtxt),
nl, format(Ctxt),
nl, format(Btxt).