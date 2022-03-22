create database bdAluno;

use bdAluno;

create table Aluno ( 
idAluno int primary key auto_increment,
 RA int,
 Nome varchar (150),
 Hobby varchar (150)
);
create table inst(
idInst int primary key auto_increment,
 InstEns varchar (150),
 BairroInst varchar (150)
 );
 create table empresa (
 idEmpresa int primary key auto_increment,
  EmpInt varchar (150),
 RepEmp varchar (150)
 );
 
 insert into aluno (RA, nome , hobby) values 
 ('02227085','Maria Paula','Pintar'),
 ('02221041','Gustavo Antonio','Ler'),
 ('02221036','Rafaella Piovezan','Jogar'),
 ('02221064','Gabriel Duarte','Jogar'),
 ('02221032','Julia Maria','Fotografia');
 
 insert into inst (InstEns, BairroInst) values ('Etec de Guaianazes','Guaianazes'),('Etec Tirandentes','Tirandentes'), ('Etec joão Francisco','São Francisco');
 
 insert into empresa (EmpInt,RepEmp) values ('Delloite', 'Ademar'), ('C6 Bank', 'Claudia'), ('Safra', 'Renata');
 
 alter table aluno add fkEmpresa int;
 alter table aluno add fkInst int;
 
 
 update Aluno set fkInst = '1' where idAluno in (2,3,4);
  update Aluno set fkInst = '2' where idAluno = '1';
    update Aluno set fkInst = '3' where idAluno = '5';
    select * from Aluno;
 update Aluno set fkEmpresa = '1' where idAluno in (1,2);
  update Aluno set fkEmpresa = '2' where idAluno = '3';
    update Aluno set fkEmpresa = '3' where idAluno in (4,5);
    
    select * from Aluno, inst where fkInst = idInst;
     select * from Aluno, empresa where fkEmpresa = idEmpresa;
      select * from Aluno, inst,empresa where fkInst = idInst and fkEmpresa = idEmpresa;
 