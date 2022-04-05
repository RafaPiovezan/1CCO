create database bdpessoa; 
use bdpessoa;
create table pessoa(
 idPessoa int primary key auto_increment,
 nome varchar (50), 
 dtNasc date,
 profissao varchar (50),
idioma varchar (50)

);
create table gasto(
idGasto int primary key auto_increment,
 dia date ,
 valor decimal (6,2) check (valor>0), 
 descrição varchar (50),
 fkpessoa int, foreign key (fkpessoa) references pessoa(idPessoa)
);
drop table pessoa;
drop table gasto;
insert into pessoa values (null ,'Rafaella Piovezan Filipe','2004-07-27','Programador web','Portugues'),
(null ,'Stuart Charles Mussenden','1990-03-17','Professor','Inglês'),
(null ,'Victor Araujo Barbosa','2003-12-13','Programador Java','Portugues'),
(null ,'Hermes Barbosa Filipe','1977-11-11','Supervisor','Portugues');

insert into gasto values (null,'2020-07-27',50.0, 'Compra de Perfume',1),
(null,'2022-04-13',102.0, 'Mercado',1),
(null,'2019-06-23',1500.0, 'Celular',2),
(null,'2021-03-16',900.0, 'Cadeira gamer',3),
(null,'2019-11-24',500.0, 'Mercado',4);

select * from pessoa;
select * from gasto;
select * from pessoa where profissao like '%Programador%';
select * from gasto order by dia;
select * from gasto,pessoa where fkpessoa = idPessoa;
select * from gasto,pessoa where fkpessoa=idpessoa and nome like '%Hermes%';
select * from gasto,pessoa where fkpessoa=idpessoa and dia = '2022-04-13';
update pessoa set idioma = 'English' where idpessoa = 1;
select * from pessoa;
delete from gasto where idGasto = 2;
select * from gasto;



