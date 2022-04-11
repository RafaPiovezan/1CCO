create database PraticaJogador;
use PraticaJogador;

create table clube (
idTime int primary key auto_increment,
nomeTime varchar (100),
Tecnico varchar (100),
dataFund date 
);
create table jogador (
idJogador int primary key auto_increment,
nomeJogador varchar (100),
posicao varchar (50),
salario decimal (7,2) check (salario > 0),
fkConselheiro int, foreign key(fkConselheiro) references jogador(idJogador),
fkClube int, foreign key(fkClube) references clube(idTime)
);

create table seguidores(
fkJogador int, foreign key(fkJogador) references jogador(idJogador),
idSeguidor int,
nick varchar (100),
sexo char(1) check( sexo = 'm' or sexo = 'f' or sexo ='n')
);

insert into clube values (null, 'Palmeiras','Abel Ferreira','1914-08-16'),
(null, 'Conrinthians','Vitor Pereira','1910-11-01');

insert into jogador values
(null , 'Eduardo Pereira','Atacante',15000.0, null,1),
(null , 'Maycon de Andrade','Meia',17000.0, null,2),
(null , 'Danilo dos Santos','Defensor',25000.0, 1,1),
(null , 'Robson Bambu','Defensor',60000.0, 2,2),
(null , 'Weverton Pereira','Goleiro',6000.0, 2,1);

insert into seguidores values
(1,1, 'Victor..Barbosa','m'),
(1,2 ,'patricia_Linda','f'),
(3,1, 'nick_1' ,'f'),
(2,1 ,'futebolplayer','m'),
(4,1 ,'Alencar Santos','m'),
(5,1 ,'meninoNey_ofc','m');

select * from clube;
select* from jogador;
select * from seguidores;
select nomeTime , tecnico from clube;
select nomeTime , tecnico from clube where nomeTime like 'P%';
select * from jogador order by posicao;
select * from jogador where posicao = 'meia';
select * from clube where tecnico like '%r_';
select * from clube order by tecnico;
select * from clube order by dataFund desc;
update jogador set posicao ='meia' where idJogador= 5;
select * from Jogador;
select * from jogador ,clube where fkClube = idTime;
select * from jogador,clube where nomeTime = 'Palmeiras' and idTime = fkClube ;
select nomeJogador,NomeTime  clube ,jogador  as jogador , jogador as conselheiro 
where jogador.fkConselheiro = conselheiro.idJogador 
and nome = 'Danilo dos Santos';

select * from  seguidores,jogador where fkJogador = idJogador;
select * from jogador , seguidores where idJogador = 1 and idJogador = fkJogador;
delete from jogador where idJogador = 3;
drop table clube , jogador , seguidores;


