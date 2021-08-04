--Total de turmas por curso
select c.id_curso, c.nome_curso, COUNT(t.id_turma) as Total_turma
	from Turmas t
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.id_curso, c.nome_curso;

--Tirar a prova da quantidade de turmas por curso
select * 
	from Turmas t
	where t.id_curso = 1;

select * 
	from Turmas t
	where t.id_curso = 5;

--Utilizar a cláusula IN
select *
	from Turmas
	where id_curso in (1, 5);

--Utilizar a cláusula IN
select *
	from Turmas
	where id_curso not in (1, 5);

--Ano de nascimento dos alunos --Distinct
select distinct DATEPART(year, data_nascimento) as ano --datepart traz apenas parte de uma data
	from Alunos
	order by 1; --número da coluna a ser classificada
				--order by por padrão organiza em ordem crescente (asc)

select distinct DATEPART(year, data_nascimento) as ano
	from Alunos
	order by 1 desc; --desc para classificar em ordem decrescente

--Lista completa de alunos
select c.nome_curso, c.id_curso,
	   axt.valor, axt.valor_desconto,
	   t.data_inicio, t.data_termino,
	   a.nome, a.sexo
	from AlunosxTurmas axt
		inner join Turmas t on t.id_turma = axt.id_turma
		inner join Cursos c on c.id_curso = axt.id_curso
		inner join Alunos a on a.id_aluno = axt.id_aluno;