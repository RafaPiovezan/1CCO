create database bdRevista;

use bdRevista;

create table revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
)auto_increment = 1;
drop table revista;

insert into revista (nome) values ('Louis Vitton') ,('Capricho'),('Vogue'),('Época');

 insert into revista (nome,categoria) values ('Veja','Noticias'), ('Superinteressante','ciencias'),('Placar','Esportes');


create table editora(
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
)auto_increment =1000 ;



insert into editora (nomeEditora, dataFund) values ('ThomsonReuters','2010-04-05'),('Cengage','1997-11-24'),('Escala','2000-09-12'),('Abril','1980-03-18');
select * from editora;


alter table revista add fkEditora int;
update revista set fkEditora = '1002' where idRevista = '1';
update revista set fkEditora = '1000' where idRevista in (2, 5);
update revista set fkEditora = '1003' where idRevista in (3, 4);
update revista set fkEditora = '1001' where idRevista in (6, 7, 8);
select * from revista;
select * from revista, editora where fkEditora = idEditora;
select * from revista, editora where fkEditora = idEditora and Editora.nomeEditora = 'Cengage';
