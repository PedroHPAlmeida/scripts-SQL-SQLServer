--Alterando a tabela Turmas
alter table Turmas
	add constraint fk_alunos foreign key (id_aluno) references Alunos (id_aluno);

alter table Turmas
	add constraint fk_cursos foreign key (id_curso) references Cursos (id_curso);

--Alterando a tabela Registro_Presenca
alter table Registro_Presenca
	add constraint fk_TurmasRP foreign key (id_turma) references Turmas (id_turma);

alter table Registro_Presenca
	add constraint fk_AlunoRP foreign key (id_aluno) references Alunos (id_aluno);

alter table Registro_Presenca
	add constraint fk_SituacaoRP foreign key (id_situacao) references Situacao (id_situacao);

/*alter table Alunos
	drop fk_Turmas;*/ --Excluir constraint
