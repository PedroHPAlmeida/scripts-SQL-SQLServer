--Select para todos os registros de uma tabela 
select * from Turmas;
select * from Cursos;

--Exemplo de Query utilizando o nome da tabela
select Turmas. * from Turmas;

--Selecionar apenas alguns campos da tabela
select id_turma, id_curso, data_inicio
	from Turmas;

--Utilizar Alias(apelido) para Nome da Tabela
select * from dbo.Turmas T;
select T.* from dbo.Turmas T;

select T.id_turma, T.id_curso, T.data_inicio
	from dbo.Turmas T;

--Utilizar Nomes Personalizados para nossos campos
select T.id_curso as IDC, t.id_turma as IDT, t.data_inicio as COMEÇO 
	from dbo.Turmas T;

--Segunda forma
select tt.id_curso IDC, tt.id_turma IDT, tt.data_inicio COMEÇO
	from dbo.Turmas TT;

