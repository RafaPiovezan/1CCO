create database Ex12;
use Ex12;
create table grupo (
idGrupo int primary key auto_increment,
nomeG varchar (250),
projeto varchar(250)
);
create table aluno (
ra int primary key ,
nome varchar (250),
email varchar(250),
fkGrupo int , foreign key (fkGrupo) references grupo(idGrupo)
);

create table professor (
idProfessor int primary key auto_increment,
nomeP varchar(250),
disciplina varchar(250)
)auto_increment = 10000;

create table GrupoProfessor (
fkProfessor int ,
fkGrupo int,
foreign key (fkProfessor) references professor(idProfessor),
foreign key (fkGrupo) references grupo(idGrupo),
dataA datetime,
nota decimal (3,1)
);

insert into grupo values 
(null, 'fishcaring' , 'Controle de temperatura em tanques de peixe'),
(null, 'greentech', 'Controle de temperatura em estufas de tomate');

insert into aluno values 
(02221036, 'Rafaella Piovezan Filipe' , 'rafa@gmail.com',1),
(02221035, 'Ricardo Teixeira' , 'ricardo@gmail.com',1),
(02221034, 'Igor Tarquini' , 'Igor@gmail.com',1),
(02221033, 'Julia Maria' , 'Julia@gmail.com',2),
(02221032, 'Maria Paula' , 'MariaP@gmail.com',2),
(02221031, 'Maria Eduarda' , 'MariaE@gmail.com',2);

insert into Professor values
(null, 'Fernando Brandão','PI'),
(null, 'Kaline Ferreira' , 'Socioemocional');

insert into GrupoProfessor values 
(10000,1,'2022-06-06 9:30:00',9.5),
(10001,2,'2022-06-10 11:30:00',9);


