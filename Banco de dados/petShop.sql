Create database petShop;
use petShop ;

create table cliente(
idCliente int primary key auto_increment,
nomeCliente varchar(50),
telefone varchar (11),
cel varchar (13),
endereco varchar (100),
bairro varchar (50),
uf char(2)
);
create table pet(
idPet int primary key auto_increment,
tipo varchar (20),
nome varchar (50),
raca varchar (40),
peso decimal (4,2) check ( peso >0),
fkDono int, foreign key (fkDono) references cliente(idCliente)
)auto_increment = 101;


drop table pet;
drop table cliente;
desc pet;

insert into cliente values 
(null , 'Rafaella Piovezan Filipe','1111-2222','11 98745-6321','rua Cristiano Cardoso','Guaianazes','SP'),
(null , 'Leticia Silva','2222-2222','11 12345-6987','rua Feliciano Mendonça','Itaquera','SP'),
(null , 'Victor Araujo','3333-3333','11 45879-6589','rua Alencar Pinheiros','Itaim Paulista','SP');

insert into pet values 
(null , 'Cachorro','Paçoca','pincher',02.25,3),
(null , 'Gato','Safira','vira-lata',03.50,3),
(null , 'Papagaio','chico','papagaio',01.35,1),
(null , 'Salamandra','Dragon','Salamandra',01.00,2),
(null , 'Gato','Cherry','Persa',5,1),
(null , 'Cachorro','Layla','Husky Siberiano',10.50,2);


select * from pet;
select * from cliente;
alter table cliente modify nomeCliente varchar(60);
desc cliente;
select * from pet where tipo = 'Gato';
select nome,peso from pet;
select * from pet order by nome;
select * from cliente order by bairro desc;
select * from pet where nome like 'C%';
select * from cliente where nomeCliente like '%Piovezan%';
update cliente set telefone = '2557-5235' where idcliente = 1;
select * from cliente;
select * from pet, cliente where fkDono = idCliente;
select * from pet, cliente where fkDono = idCliente and nomeCliente like '%Victor Araujo%';
select * from pet, cliente where fkDono = idCliente and telefone like '%2557-5235%';


delete from pet where idpet = 102;
select * from pet;

drop table pet;
drop table cliente;


