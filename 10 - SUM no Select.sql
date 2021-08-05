--Ganhos com turmas
--1� quanto paga cada aluno matriculado
select c.nome_curso, t.id_turma, at.valor as Valor_Bruto,
	   at.valor * at.valor_desconto as Valor_Desconto,
	   at.valor - (at.valor * at.valor_desconto) as Valor_Liquido
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso

--2� Somat�ria
select c.nome_curso, sum(at.valor) as Valor_Bruto,
	   sum(at.valor * at.valor_desconto) as Valor_Desconto,
	   sum(at.valor - (at.valor * at.valor_desconto)) as Valor_Liquido
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso

--3� Somat�ria por curso x turma
select c.nome_curso, t.id_turma, sum((at.valor)) as Valor_Bruto,
	   sum(at.valor * at.valor_desconto) as Valor_Desconto,
	   sum(at.valor - (at.valor * at.valor_desconto)) as Valor_Liquido
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma

--4� Arredondamento dos valores
select c.nome_curso, t.id_turma, sum((at.valor)) as Valor_Bruto,
	   round(sum(at.valor * at.valor_desconto), 2) as Valor_Desconto,
	   round(sum(at.valor - (at.valor * at.valor_desconto)), 2) as Valor_Liquido   --round arredonda as casas decimais para a precis�o especificada
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma

--5� Ganhos por ano
select year(t.data_inicio) as ano, 
	   sum((at.valor)) as Valor_Bruto,
	   round(sum(at.valor * at.valor_desconto), 2) as Valor_Desconto,
	   round(sum(at.valor - (at.valor * at.valor_desconto)), 2) as Valor_Liquido   --round arredonda as casas decimais para a precis�o especificada
	from Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by year(t.data_inicio)