CREATE DATABASE db_produtos;

USE db_produtos;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
genero varchar(255) NOT NULL,
preco decimal (4,2) NOT NULL, 
ativo boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Crepúsculo", 5, "Fantasia", 29.90, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Garota Exemplar", 20, "Suspense", 59.90, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Cartas a Theo", 0, "Autobiografia", 80.00, false);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Gossip Girl", 7, "Jovem Adulto", 13.89, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("O Morro dos Ventos Uivantes", 32, "Literatura Inglesa", 59.80, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Nada", 1, "Distopia", 15.00, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Harry Potter 3", 15, "Fantasia", 74.95, true);

INSERT INTO tb_produtos(nome, quantidade, genero, preco, ativo)
VALUES ("Dom Quixote", 23, "Clássico", 45.00, true);

SELECT nome, CONCAT('R$ ', FORMAT(preco, 'pt_BR')) AS preço FROM tb_produtos;

SELECT * FROM tb_produtos WHERE quantidade > 500;

SELECT * FROM tb_produtos WHERE quantidade < 500;

UPDATE tb_produtos SET ativo = true WHERE id = 3;
