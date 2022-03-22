create database bdAtleta;

use bdAtleta;

create table tbAtleta(
idAtleta int primary key auto_increment,
nomeAtleta varchar(40),
modalidade varchar(40),
qtdMedalhas int
);

insert into tbAtleta values 
('1','Victor Araujo', 'natação','4'),
('2','Robson Hood', 'atletismo','1'),
('3','Nicole Freitas', 'Ginastica ritmica','2'),
('4','Wanderley Santos', 'natação','2'),
('5','Milkes Yone', 'Ginastica ritmica','1'),
('6','Mikey Sano', 'Atletismo','3'),
('7','Andreia Lima','atletismo','3'),
('8','Pedro Henrique','natação','2');


create table tbPais(
idPais int primary key auto_increment,
nome varchar(40),
capital varchar (40)
);
insert into tbPais (nome,capital) values ('Brasil','São Paulo'), ('Portugal','Lisboa'), ('Canada','ottawa') , ('Japão','Tóquio');
select * from tbPais;
select * from tbAtleta;

alter table tbAtleta add fkPais int;


update tbAtleta set fkPais = '1' where idAtleta = '1';
update tbAtleta set fkPais = '2' where idAtleta in (2, 3);
update tbAtleta set fkPais = '3' where idAtleta in (4, 5);
update tbAtleta set fkPais = '4' where idAtleta in (6, 7, 8);

select * from tbAtleta, tbPais where fkPais = idPais;
select * from tbAtleta, tbPais where fkPais = idPais and tbPais.nome = 'Brasil';