--LTRIM
select LTRIM('       Pedro');
select LTRIM('x     Pedro');

declare @varTexto varchar(50);
	set @varTexto = '         Este é um texto para teste do Ltrim';

	select LTRIM(@varTexto) as Teste;
	select resultado = LTRIM(@varTexto);

--RTRIM
select RTRIM('Pedro      ');
select len( RTRIM('Pedro      ')) --funcao len nao conta espacos;
select len(RTRIM('Pedro      '));

declare @varTexto2 varchar(50);
	set @varTexto2 = 'Este é um texto para teste do Rtrim           ';

	select RTRIM(@varTexto2);

--PATINDEX (retorna a posicao inicial da primeira ocorrencia de um padrao)
select PATINDEX('%dro%', 'Pedro Henrique'); --em qualquer posicao
select PATINDEX('%a', 'Terça'); --no final
select PATINDEX('%a', 'Sabádo');
select PATINDEX('a%', 'Alessandro'); --no inicio

select posicao = PATINDEX('%at%', 'Alessandro Trovato');
select posicao = PATINDEX('%AT%', 'Alessandro Trovato');
select posicao = PATINDEX('%dro_Trov%', 'Alessandro Trovato');

declare @varTexto3 varchar(100);
	set @varTexto3 = 'Aqui é o canal do Alessandro Trovato no Youtube';

--substring
select SUBSTRING(@varTexto3, PATINDEX('%Trovato%', @varTexto3), 7);

--replace (substitui caracteres em um campo)
select REPLACE('Pedro Henrique', 'e', 'x');
select replace(REPLACE('Pedro Henrique', 'e', 'x'), 'o', '?');

select a.nome, a.data_nascimento, REPLACE(a.sexo, 'M', 'Masculino') as sexo 	
	from Alunos a;

declare @cpf varchar(15);
	set @cpf = '111.222.333-44';

select REPLACE(REPLACE(@cpf, '.', ''), '-', '') as cpf;

--replicate
select REPLICATE('x', 20);

--tamanho de coluna fixo em 50 posicoes
--Passo 1
select *from Alunos;
select len(nome) from Alunos;

--Passo 2
select nome + REPLICATE('x', 50 - len(nome)) as Nome
	from Alunos;

--Passo 3
select len(nome + REPLICATE('x', 50 - len(nome))) as Tamanho
	from Alunos;

--Reverse (inverte uma string)
select REVERSE('Pedro Henrique');
select REVERSE(nome) from Alunos;