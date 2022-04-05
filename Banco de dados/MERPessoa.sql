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


