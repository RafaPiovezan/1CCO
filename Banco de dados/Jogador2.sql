
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



