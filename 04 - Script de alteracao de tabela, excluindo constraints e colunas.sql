--Alterando a tabela, excluindo constraints e colunas
alter table Turmas
drop constraint fk_alunos;

alter table Turmas
drop column id_aluno;

alter table Turmas
drop column valor_turma;

alter table Turmas
drop column desconto;

--Criando tabela auxiliar
create table AlunosxTurmas
(
	id_turma int not null,
	id_aluno int not null,
	valor numeric(13,2) not null,
	valor_desconto numeric(3,2),
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

alter table AlunosxTurmas
	add constraint fk_aluno foreign key (id_aluno) references Alunos(id_aluno);

alter table AlunosxTurmas
	add constraint fk_turma foreign key (id_turma) references Turmas(id_turma);

--Inserindo uma turma
insert into Turmas
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values
(1, 1, '28/06/2021', '28/07/2021', GETDATE(), 'Pedro Henrique');


--Inserindo registros em AlunosxTurmas
insert into AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values
(1, 10, 1200, 0.1, GETDATE(), 'Pedro Henrique');
	