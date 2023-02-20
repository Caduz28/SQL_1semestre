create database db_login;
use db_login;

CREATE TABLE tb_jogador(
cod_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
idade INT NOT NULL);

INSERT INTO tb_jogador (nome, idade) VALUES ('Pedro', 17), ('João', 22);

select*from tb_jogador;

