create database dbescola;
use dbescola;
show databases;
create table Professor (idProfessor integer not null, nomeProfessor char(30) not null, cpf char(14) not null, emailProfessor char(30) not null, primary key (idProfessor));
select*from professor;

insert into Professor values (1000, 'Paulo de Souza Alves', '234.876.855-10', 'paulo@gmail.com');
insert into Professor values (1001, 'Ana da Silva', '666.876.855-10', 'ana@gmail.com');
insert into Professor values (1002, 'Pedro Candido', '444.876.855-10', 'pedro@hotmail.com');
insert into Professor values (1010, 'Antonio Alves', '269.876.855-45', 'antonio@gmail.com');
insert into Professor values (1021, 'Henrique Souza Alves', '903.876.855-42', 'henrique@gmail.com');
insert into Professor values (1032, 'Beatriz Silva Santos', '084,457,123-42', 'beatriz@gmail.com');
insert into Professor values (1034, 'Fernando Xavier Santos', '991.670.120-77', 'fernando@gmail.com');
insert into Professor values (1045, 'Pedro Diógenes Santos', '042.668.234-22', 'pedro1@hotmail.com');
insert into Professor values (1056, 'Sandro Gimenez', '816.803.129-33', 'sandro@gmail.com');
insert into Professor values (1067, 'Carlos Eduardo Bognar', '775.662.127-33', 'carlos@gmail.com');
insert into Professor values (1068, 'Mauro Favoretto', '225.662.127-33', 'mauro@gmail.com');
insert into Professor values (1078, 'Maria Aparecida Flores', '388.800.120-49', 'maria@gmail.com');
insert into Professor values (1081, 'Saulo de Souza', '691.389.114-91', 'saulo@hotmail.com');
insert into Professor values (1098, 'Ivo de Alcantara', '892.339.966-66', 'ivo@gmail.com');
insert into Professor values (1099, 'Carlos Alberto de Macedo', '447.100.590-19', 'carlosalberto@gmail.com');
insert into Professor values (1101, 'Renato Carioca', '778.124.801-17', 'renato@gmail.com');


create table Disciplina (idDisciplina integer not null, nomeDisciplina char(30) not null, primary key (idDisciplina));
select*from Disciplina;

insert into Disciplina values (10,'Matemática - 1');
insert into Disciplina values (11,'Matemática - 2');
insert into Disciplina values (20,'Álgebra Linear - 1');
insert into Disciplina values (21,'Álgebra Linear - 2');
insert into Disciplina values (30,'Estatística - 1');
insert into Disciplina values (31,'Estatística- 2');
insert into Disciplina values (40,'Rede de Computadores');
insert into Disciplina values (50,'Arquitetura de Computadores');
insert into Disciplina values (60,'Algoritmos - 1');
insert into Disciplina values (62,'Algoritmos - 2');
insert into Disciplina values (70,'Teoria da Computação');
insert into Disciplina values (80,'Cálculo Numérico');
insert into Disciplina values (90,'Inteligência Artificial');
insert into Disciplina values (100,'Sistemas Operacionais - 1');
insert into Disciplina values (101,'Sistemas Operacionais - 2');

create table Leciona (idProfessor integer not null, idDisciplina integer not null, foreign key (idDisciplina) references Disciplina (idDisciplina),foreign key (idProfessor) references Professor (idProfessor), primary key (idProfessor, idDisciplina));
INSERT INTO Leciona VALUES
(1000, 10),
(1000, 11),
(1000, 20),
(1000, 21),
(1001, 30),
(1001, 31),
(1002, 40),
(1010, 40),
(1002, 50),
(1010, 50),
(1045, 62),
(1101, 62),
(1021, 70),
(1034, 90),
(1032, 100),
(1067, 100),
(1032, 101),
(1067, 101);
drop table Livro_Texto;
create table Livro_Texto (idLivro integer not null, nomeLivro varchar(100) not null, anopublicacao char(14) not null, idEditora char(14) not null, primary key (idLivro));
INSERT INTO Livro_Texto VALUES
(9101, 'Álgebra Linear', 2010, 101),
(9201, 'Estatística Básica', 2018, 101),
(9301, 'Matemática Básica', 1999, 201),
(9401, 'Redes de Computadores e Internet', 2001, 301),
(9501, 'Redes de Computadores', 2004, 301),
(9502, 'Projeto de Redes de Computadores', 2015,301),
(9503, 'Algoritmos', 2015, 401),
(9504, 'Algoritmos e Estrutura de Dados', 2021, 401),
(9505, 'Sistemas Operacionais Modernos', 2021, 401),
(9506, 'Conceitos de Sistemas Operacionais', 2020, 401),
(9507, 'Teoria da Computação', 2021, 501),
(9508, 'Linguagens Formais', 2021, 501);
select*from Livro_Texto;

create table Usa (idDisciplina integer not null, idLivro integer not null, foreign key (idDisciplina) references Disciplina (idDisciplina),foreign key (idLivro) references Livro_Texto (idLivro), primary key (idLivro, idDisciplina));
INSERT INTO Usa VALUES
(10, 9301),
(11, 9301),
(20, 9101),
(21, 9101),
(30, 9201),
(31, 9301),
(40, 9401),
(40, 9501),
(40, 9502),
(60, 9503),
(60, 9504),
(62, 9503),
(70, 9507),
(70, 9508),
(100, 9505),
(100, 9506);
select*from usa;

drop table Editora;
create table Editora (idEditora integer not null, nomeEditora varchar(100) not null, foneEditora varchar(14) not null, primary key (idEditora));
INSERT INTO Editora VALUES
(101, 'Editora Campus', '(21) 3459-9877'),
(201, 'Pearson', '(11) 2379-1289'),
(301, 'Editora do Brasil', '(11) 4590-0012'),
(401, 'Editora USP', '(11) 3390-1277'),
(501, 'Editora SP', '(21) 8733-0911');
select*from Editora;








