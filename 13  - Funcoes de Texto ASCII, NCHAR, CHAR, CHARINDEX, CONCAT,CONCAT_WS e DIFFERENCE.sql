--Funçoes de texto

--ASCII - retorna o valor numerico na correspondente ao valor na tabela ASCII
select ASCII('a');
select ASCII('A');
select ASCII('9');
select ASCII('Pedro'); --Faz a identificacao apenas do char a equerda, ignorando o resto

--NCHAR - faz o inverso da funcao ASCII
select NCHAR(65);
select NCHAR(97);
select NCHAR(57);

--CHAR faz o mesmo que a funcao NCHAR
select CHAR(65);
select CHAR(97);
select CHAR(57);

--CHARINDEX - pesquisa um caracter em uma sequencia de ate 8.000 caracteres
select CHARINDEX('a', 'Pedro Henrique Almeida');
select CHARINDEX('a', 'Pedro Henrique Almeida', 8); --3º arg. (pesquisa a partir da posicao informada)
select CHARINDEX('Pereira', 'Pedro Henrique Pereira Almeida', 1);

select a.nome, CHARINDEX('Silva', a.nome, 1)
	from Alunos a;

select a.nome, CHARINDEX('Silva', a.nome, 1) as posicao
	from Alunos a
	where CONVERT(int, CHARINDEX('Silva', a.nome)) > 0;

select a.nome, CHARINDEX('Silva', a.nome, 1) as posicao
	from Alunos a
	where CHARINDEX('Silva', a.nome) <> '0';

--CONCAT
select CONCAT('Pedro', ' ', 'Henrique') as Meu_Nome;
select CONCAT('Pedro', ' || ', 'Henrique') as Meu_Nome;
select 'Pedro' + ' ' + 'Henrique' as Meu_Nome; -- concatenar strings sem o CONCAT

select CONCAT(a.nome, ' - ', c.nome_curso) as "Nome do aluno - Curso"
	from Alunos a
		inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = at.id_curso;

--CONCAT_WS - concatenar varios campos usando um separador
select CONCAT_WS(' - ', 'Pedro', 'Henrique', 'Pereira');

select CONCAT_WS(' - ', a.nome, c.nome_curso, 
                 'Início: ' + CONVERT(char, t.data_inicio),
				 'Término: ' + CONVERT(char, t.data_termino))
	from Alunos a
		inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = at.id_curso;

select CONCAT_WS(' - ', a.nome, c.nome_curso, 
                 'Início: ' + TRIM(CONVERT(char, t.data_inicio)),
				 'Término: ' + TRIM(CONVERT(char, t.data_termino)))
	from Alunos a
		inner join AlunosxTurmas at on at.id_aluno = a.id_aluno
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = at.id_curso;

--DIFFERENCE (escala de 0 a 4) - 0 -> nada parecido 4 -> muito parecido
select DIFFERENCE('Pedro', 'Pedrada');
select DIFFERENCE('Alessandro', 'Alex');
select DIFFERENCE('Alessandro', 'Sandro');
select DIFFERENCE('Alessandro', 'Excel');
select DIFFERENCE('Alessandro', 'Youtube');