create database bdRevista;

use bdRevista;

create table revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
)auto_increment = 1;
drop table revista;

insert into revista (nome) values ('Louis Vitton') ,('Capricho'),('Vogue'),('Época');

select * from revista;
update revista set categoria= 'moda ' where idRevista = 1;
update revista set categoria= 'Juvenil' where idRevista = 2;
update revista set categoria= 'moda ' where idRevista = 3;
update revista set categoria= 'noticias' where idRevista = 4;
select * from revista;
 insert into revista (nome,categoria) values ('Veja','Noticias'), ('Superinteressante','ciencias'),('Placar','Esportes');
 select * from revista;
 desc revista;
 alter table revista modify categoria varchar (40);
 desc revista;
alter table revista change nome nomeRevista varchar(40);
desc revista;
alter table revista add periodicidade varchar(15);
update revista set periodicidade = 'semanal' where idRevista = '1';
update revista set periodicidade = 'mensal'where idRevista in (2, 5,7);
update revista set periodicidade = 'diario'where idRevista in (3, 4,6);
select * from revista;
insert into revista (nomeRevista ,categoria, periodicidade) values ('Gucci','moda','mensal');
select * from revista;
alter table revista drop periodicidade;
select * from revista;

create table editora(
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
)auto_increment =1000 ;



insert into editora (nomeEditora, dataFund) values ('ThomsonReuters','2010-04-05'),('Cengage','1997-11-24'),('Escala','2000-09-12'),('Abril','1980-03-18');
select * from editora;
update revista set fkEditora = '1002' where idRevista = '1';
update revista set fkEditora = '1000'where idRevista in (2, 5);
update revista set fkEditora = '1003'where idRevista in (3, 4);
update revista set fkEditora = '1001'where idRevista in (6, 7);


alter table revista add fkEditora int;