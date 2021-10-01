--FORMAT -- retorna um valor formatado e a cultura opcional (especificar)
--Para dados dos tipos gerais usar CAST ou CONVERT
select convert(char, GETDATE(), 103);

/*
declare @dt datetime = getdate();

select FORMAT(@dt, 'd', 'en-US') as Americano,
	   FORMAT(@dt, 'd', 'zh-cn') as Chines_Simplificado,
	   FORMAT(@dt, 'd', 'de-de') as Alemao,
	   FORMAT(@dt, 'D', 'en-US') as Americano,
	   FORMAT(@dt, 'D', 'zh-cn') as Chines_Simplificado,
	   FORMAT(@dt, 'D', 'de-de') as Alemao;
*/

declare @dt datetime = getdate();

select FORMAT(1001500, '##-###-##') as cod_prod;

select FORMAT(at.valor, 'N', 'en-US') as Formato_Americano, 
	   FORMAT(at.valor, 'G', 'en-US') as Formato_Geral,
	   FORMAT(at.valor, 'C', 'pt-BR') as Formato_Monetario_BR,
	   FORMAT(at.valor, 'C', 'en-US') as Formato_Monetario_US,
	   FORMAT(at.valor, 'C', 'de-de') as Formato_Monetario_Al,
	   FORMAT(at.valor, 'C', 'de-at') as Formato_Monetario_Austria
	from AlunosxTurmas as at;

--LEFT (extrai caracteres a esquerda de um texto ou campo)
select LEFT('Pedro Henrique', 5);
select LEFT('Este é um curso de SQL', 18);

select distinct left(a.nome, 5)
	from Alunos a;

--RIGHT	(extrai caracteres a direita de um texto)
select RIGHT('Pedro Henrique', 5);
select RIGHT('Este é um curso de SQL', 12);

select RIGHT(a.nome, 5)
	from Alunos a;

select LEFT(a.nome, 5) + ' ' + RIGHT(a.nome, 5)
	from Alunos a;

--LEN (retorna o tamanho do campo)
select LEN('Pedro Henrique');
select LEN('Este é um curso de SQL');

select a.nome, len(a.nome) as Tamanho
	from Alunos a;

select max(len(a.nome)) as Maior_Nome
	from Alunos a;
select min(len(a.nome)) as Menor_Nome
	from Alunos a;

--UPPER (converte os caracteres para maiusculas)
select UPPER('Pedro Henrique') as nome;
select UPPER(a.nome) as nome_aluno
	from Alunos a;

--LOWER (converte os caracteres para minusculas)
select LOWER('PEDRO HENRIQUE') as nome;
select LOWER(a.nome) as nome_aluno
	from Alunos a;