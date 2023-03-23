% These are the possible responses for each input

%Deve conter pelo menos 10 perguntas.

response(oi, ['Olá! Para acessar o menu digite Tema', 'Oi! Para acessar o menu digite Tema', 'Hey! Para acessar o menu digite Tema']).
response(Tema, ['Digite o qual informção deseja mais informações: hora_complementar, relatorio, data_entrega, total_de_horas']).
response(hora_complementar, ['Hora complementar também chamadas de atividades extracurriculares, têm como principal objetivo ampliar a visão escolar do estudante sobre sua área de atuação e fazem parte da carga horária obrigatória do curso. Para retornar ao menu digite "Tema" ou "Tchau" para finalizar.']).
response(relatorio, ['O relatório deve conter uma capa com identificação do aluno, professor orientador, seguida de um indice e uma tabela com a descrição e quantia de horas por atividade e logo em seguida uma breve descrição de cada uma das atividades realizadas.Para retornar ao menu digite "Tema" ou "Tchau" para finalizar.']).
response(data_entrega, ['O relatório de horas complementares pode ser entregue a qulquer momento durante o peíodo da graduação, mas não pode passar da data final que  se dá no último peírodo da graduação. Para retornar ao menu digite "Tema" ou "Tchau" para finalizar.']).
response(total_de_horas, ['Para cursos de engenharia da Univap é necessário o cumprimento de 400 horas. Para retornar ao menu digite "Tema" ou "Tchau" para finalizar.']).
response(obrigada, ['Não há de que! Caso possa te ajudar em mais algo "Tema" ou "Tchau" para finalizar.', 'Sem problema!Caso possa te ajudar em mais algo "Tema" ou "Tchau" para finalizar.']).
response(Tchau, ['Tchau!', 'Até a próxima!']).
response(test, ['Goodbye!', 'See you later!', 'Until next time!']).
response(test1, ['Goodbye!', 'See you later!', 'Until next time!']).
response(test2, ['Goodbye!', 'See you later!', 'Until next time!']).


% This is the main function to process user input and generate a response
chatbot :-
    write('Bem vindo(a) ao chatbot de Horas Complementares!'), nl,
    repeat,
    write('> '),
    read(Input),
    process_input(Input),
    Input = quit.

% This function matches the user input with a possible response
% If there is a match, the chatbot will randomly choose one of the possible responses
% If there is no match, the chatbot will respond with a default message
process_input(Input) :-
    response(Input, Response),
    random_member(Reply, Response),
    write(Reply), nl.

process_input(_Input) :-
    response(_Input, []),
    write('I do not have an answer for that. Please ask me something else.'), nl.

process_input(quit) :-
    write('Thank you for chatting with me!'), nl.

process_input(_Input) :-
    write('I did not understand that. Please ask me something else.'), nl.
