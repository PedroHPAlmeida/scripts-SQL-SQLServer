--Total de turmas por curso
select c.id_curso, c.nome_curso, count(t.id_turma) as Total_Turmas
	from Turmas t
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.id_curso, c.nome_curso;

select c.nome_curso, count(t.id_turma) as Total_Turmas
	from Turmas t, Cursos c
	where c.id_curso = t.id_curso
	group by c.nome_curso;

--Todos os cursos, independente se há ou não turmas
--ANSI
select c.nome_curso, count(t.id_turma) as Total_Turmas
	from Turmas t
		right join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso;

--Lista completa de alunos
select a.nome, a.sexo, c.nome_curso as curso, at.valor, at.valor_desconto as desconto, t.data_inicio as inicio, t.data_termino as termino
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
		inner join Alunos a on a.id_aluno = at.id_aluno;

--Quantidade de turmas com alunos
select c.nome_curso as Curso, t.id_turma, count(1) as Total --Eu que fiz
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;

select c.nome_curso, t.id_turma, COUNT(1) as Total --Alessandro que fez
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;