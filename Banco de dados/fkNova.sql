create database exemplo_tipo_relacionamento;
use exemplo_tipo_relacionamento;

create table funcionario(
idFuncionario int primary key auto_increment,
nome varchar(45),
salario decimal (7,2),
sexo char (1) check (sexo ='m' or sexo = 'f'),
 -- sexo enum ('m','f')
fkSupervisor int, 
foreign key (fkSupervisor) references funcionario(idFuncionario)
)auto_increment=1000;

create table dependente (
fkFuncionario int, foreign key (fkFuncionario) references funcionario(idFuncionario),
idDependente int, primary key(fkFuncionario,idDependente),
nome varchar(150),
dataNasc date,
tipoRel varchar (45)
);



insert into funcionario values  (null, 'João Nunes', 50000,'m',null),
(null, 'Roberto Carlos', 30000,'m',1000),
(null ,'Renata Garcia', 15000,'f',1000),
(null, 'Paulo Silva', 40000,'m',1001),
(null, 'Carol Teixera', 10000,'f',1002);
select * from funcionario;

insert into dependente values
(1000,1, 'Joana Nunes','1990-03-13','conjuge'),
(1000,2, 'Joaquim Nunes','2004-12-13','filho'),
(1001,1, 'Roberta Carlos', '1960-04-25','conjuge'),
(1002,1, 'Paulinha Silva','2015-12-12','filho'),
(1003,1, 'Jose alencar','1990-03-13','conjuge');
select * from dependente;

select * from funcionario, dependente where fkFuncionario = idFuncionario;

select * from funcionario, dependente where fkFuncionario = idFuncionario and idFuncionario = 1001;

select * from funcionario, funcionario as supervisor  where funcionario.fksupervisor = supervisor.idFuncionario;

