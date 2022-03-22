create database bdMusico;

use bdMusico;

create table tbMusica(
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);
create table album (
idAlbum int primary key auto_increment,
nome varchar(40),
gravadora varchar (40)
);



insert into tbMusica values 
('1','Shape off you', 'Edd sheran','pop'),
('2','one', 'metallica','rock'),
('3','vai malandra', 'anitta','funk'),
('4','indrutry baby', 'lil nas','pop'),
('5','master of puppets', 'metallica','rock'),
('6','montero', 'lil nas','pop'),
('7','the unforggiven','metallica','rock'),
('8','poderosas','anitta','funk');


insert into album (nome,gravadora) values ('FirstAlbum', 'Biten Records'),('sucess', 'New Music'),('MOnteiro','VMA');




alter table tbMusica add fkAlbun int;


update tbMusica set fkAlbun = '1' where idMusica in (1,2,3);
update tbMusica set fkAlbun = '2' where idMusica in (5, 7, 8);
update tbMusica set fkAlbun = '3' where idMusica in (4, 6);

select * from tbMusica;
select * from album;
select * from tbMusica, Album where fkAlbun = idAlbum;
select * from tbMusica, Album where fkAlbun = idAlbum and Album.nome = 'MOnteiro';
select * from tbMusica, Album where fkAlbun = idAlbum and Album.gravadora = 'New Music';
