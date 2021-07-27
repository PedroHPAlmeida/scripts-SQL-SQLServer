--Filtrando os dados por nome
select a.* from Alunos a
	where a.nome = 'Alvaro Caroline';

--Filtrando os dados por data de nascimento
select a.* from Alunos a
	where a.data_nascimento >= '01/01/2003';

--to_date('10122003', 'ddmmyyyy') -- ORACLE
-- > maior
-- < menor
-- >= maior ou igual
-- <= menor ou igual
-- <> diferente
-- = igual

--Filtrando os dados por sexo
select a.* from Alunos a
	where a.sexo = 'F';

select a.* from Alunos a
	where a.sexo = 'M';

--Filtrando mais de um campo
select a.* from Alunos a
	where a.sexo = 'M'
		and a.data_nascimento >= '01/01/2003'
		and a.id_aluno > 500;

select a.nome, a.sexo, YEAR(a.data_nascimento) as ano
	from Alunos a
	where a.data_nascimento >= '01/01/2003';

--Fazendo cálculos nos selects
select at.* from AlunosxTurmas at
	where at.valor > 500;

select at.id_aluno, at.valor * at.valor_desconto as desconto 
	from AlunosxTurmas at;

select at.id_aluno, at.valor * at.valor_desconto as desconto
	from AlunosxTurmas at
	where at.valor > 500;

--Exibir valores sem casas decimais (formatando) - Função floor
select floor(at.valor * at.valor_desconto) as Desconto
	from AlunosxTurmas at
	where at.valor_desconto > 0
	and at.valor > 500;

--Extra (joins - unir tabelas)
select c.nome_curso, t.data_inicio, t.data_termino,
	   at.valor as valor_bruto, floor((at.valor * at.valor_desconto)) as desconto,
	   floor((at.valor - (at.valor * at.valor_desconto))) as valor_liquido
	from AlunosxTurmas at, Turmas t, Cursos c
	where at.id_turma = t.id_turma
	and t.id_curso = c.id_curso
	and t.id_turma = 6;
	








