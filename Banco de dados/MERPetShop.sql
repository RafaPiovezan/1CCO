
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


