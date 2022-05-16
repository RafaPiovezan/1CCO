create database Fishcaring;
use Fishcaring;
create table Empresa(
	idEmpresa int primary key auto_increment,
    Nome varchar(45) not null,
    CNPJ char(14) not null
);

create table Usuario(
	idUsuario int primary key auto_increment,
    Nome varchar(40) not null,
    cpf char(14),
    Telefone char(13),
    Email varchar(60) not null,
    Login varchar(40) not null,
    Senha varchar(30) not null,
    Cargo varchar(45) not null,
    fkEmpresa int not null,
    foreign key (fkEmpresa) references Empresa(idEmpresa)
);

create table Peixe(
	idPeixe int primary key auto_increment,
    Especie varchar(80),
    tempMax decimal(5,2) not null,
    tempMin decimal(5,2) not null
);

create table Tanque(
	idTanque int primary key auto_increment,
    Identificador varchar(255),
    fkEmpresa int not null,
    foreign key (fkEmpresa) references Empresa(idEmpresa),
    fkPeixe int not null,
    foreign key (fkPeixe) references Peixe(idPeixe)
);

create table Sensor(
	idSensor int primary key auto_increment,
    fkTanque int not null,
    foreign key (fkTanque) references Tanque(idTanque),
    Descricao varchar(80)
);

create table Monitoramento(
	idMonitoramento int not null,
    fkSensor int not null,
    foreign key (fkSensor) references Sensor(idSensor),
    primary key (idMonitoramento, fkSensor),
    Temperatura decimal (5,2) not null,
    dataHora datetime not null
);