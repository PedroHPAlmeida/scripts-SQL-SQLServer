--Insert de alunos
insert into Alunos
(id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
values
(2, 'Alessandro Henrique Peres Porfirio', '04/10/1989', 'M', '26/06/2021 16:00:00', 'PEDRO');

--Insert de Cursos
insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(1, 'VBA I', '26/06/2021 16:00:00', 'PEDRO');

insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(2, 'VBA II', '26/06/2021 17:00:00', 'PEDRO HENRIQUE');

insert into Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values
(3, 'VBA III', '26/06/2021 17:00:00', 'PEDRO HENRIQUE');

--Insert de Situacao
insert into Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(1, 'Presença confirmada', '26/06/2021 16:00:00', 'PEDRO');

insert into Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(2, 'Ausente sem justificativa', '26/06/2021 16:00:00', 'PEDRO');

insert into Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(3, 'Ausente com justificativa', '26/06/2021 16:00:00', 'PEDRO');


--Selects
SELECT *FROM Alunos
SELECT *FROM Cursos
SELECT *FROM Situacao