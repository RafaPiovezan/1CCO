
create table projeto(
idProjeto int primary key auto_increment,
nomeProjeto varchar (50),
descricao varchar(100)
);
create table aluno (
ra int primary key,
nome varchar (100),
telefone char (12),
fkrepresentante int,
foreign key (fkrepresentante) references aluno(ra),
fkProjeto int , foreign key(fkProjeto) references projeto(idProjeto)
);
create table acompanhante (
fkAluno int, foreign key(fkAluno) references aluno(ra),
idAcompanhante int,
nomeAc varchar(100),
tipo varchar (30)
);




