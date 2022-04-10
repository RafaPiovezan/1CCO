create database bdAluno;
drop database bdAluno;
use bdAluno;
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
insert into projeto values (null, 'FishCaring','projeto para automatizar a medição de temperatura em criadouros de peixe'),
(null, 'TempControl','projeto para minizar perda de medicamentos em trasporte inadequado');

insert into aluno values
(02221036 , 'Rafaella Piovezan Filipe','11 941356985',null, 1),
(02221029 , 'Manuella Piovezan Filipe','11 945301547',02221036, 1),
(02221074 , 'Ricardo Teixeira','11 968352417',02221036, 1),
(02221054 , 'Gustavo Antonio','11 978456321',02221074, 2),
(02221012 , 'Gabriel Duarte','11 985632147',02221074, 2);

insert into acompanhante values
(02221036,1, 'Victor Barbosa','Namorado'),
(02221036,2 ,'Priscila Piovezan','Mãe'),
(02221029,1, 'Hermes Barbosa' ,'Pai'),
(02221074,1 ,'Debora Teixeira','Mãe'),
(02221054,1 ,'Fabricio Antonio','Pai'),
(02221012,1 ,'Miguel Duarte','Irmão');

Select * from projeto;
select * from aluno;
select * from acompanhante;
select * from aluno , projeto where idprojeto = fkProjeto;
select * from aluno,acompanhante where ra = fkAluno;
select * from aluno as aluno , aluno as representante 
where aluno.fkRepresentante  = representante.ra;

select * from aluno,projeto where nomeProjeto = 'FishCaring' and fkProjeto  =1;

select * from projeto , aluno , acompanhante where fkProjeto = idProjeto and fkAluno = ra;



