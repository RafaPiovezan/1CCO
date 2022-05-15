
create database sptech;
use sptech;

create table aluno (
ra int primary key auto_increment,
nome varchar(100),
bairro varchar(100)
);

create table disciplina (
id int primary key auto_increment,
nomeD varchar(100)
);

create table AlunoDisciplina (
fkRa int,
foreign key(fkRa) references aluno(ra),
fkCurso int,
foreign key(fkCurso) references disciplina(id),
dataInicio date,
primary key (fkRa ,fkCurso,dataInicio),
media decimal (4,2) check (media >= 0 and media <=10),
faltas decimal (3)
);


