select * from AlunosxTurmas;

--SUM
select t.id_turma, sum(at.Valor) as Total 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
	group by t.id_turma;


select t.id_turma, c.nome_curso, sum(at.Valor) as Total 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;

--SubQuery (aulas futuras)
select sum(v.total) as Total
	from(select t.id_turma, c.nome_curso, sum(at.Valor) as Total 
			from AlunosxTurmas at
				inner join Turmas t on t.id_turma = at.id_turma
				inner join Cursos c on c.id_curso = t.id_curso
			group by c.nome_curso, t.id_turma) as v;

--COUNT
select t.id_turma, count(at.id_aluno) as Total_Alunos, sum(at.valor) as Valor_Total
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
	group by t.id_turma;

select t.id_turma, count(1) as Total_Alunos
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
	group by t.id_turma;

--AVG (média)
select t.id_turma, c.nome_curso, avg(at.Valor) as Media 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;

--MAX
select t.id_turma, c.nome_curso, max(at.Valor) as Maximo 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;

--MIN
select t.id_turma, c.nome_curso, min(at.Valor) as Minimo 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;

select t.id_turma, c.nome_curso, min(at.Valor) as Minimo, max(at.valor) as Maximo 
	from AlunosxTurmas at
		inner join Turmas t on t.id_turma = at.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma;