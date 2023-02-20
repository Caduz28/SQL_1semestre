create database db_pessoas;
use db_pessoas;

drop table tb_pessoa;
CREATE TABLE tb_pessoa(cod_pessoa INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(200) NOT NULL, fone varchar(9) not null, email varchar (200));

INSERT INTO tb_pessoa (nome,fone, email) VALUES ('Jose', '11223344', 'jose@email.com');
INSERT INTO tb_pessoa (nome,fone, email) VALUES ('Joao', '22334455', 'joao@email.com');
INSERT INTO tb_pessoa (nome,fone, email) VALUES ('Maria', '00117788', 'maria@email.com');

select*from tb_pessoa;

