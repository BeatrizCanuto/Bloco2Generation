-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_farmacia_bem_estar;

-- Cria a tabela tb_categoria
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
receita BOOLEAN,
PRIMARY KEY (id)
);
-- Cria a tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
gotas BOOLEAN,
quantidade VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, receita) VALUES 
("homeopático",false),
("antinflamatório",false),
("antibiótico",true),
("controlado",true),
("psiquiatrico",true);

INSERT INTO tb_produtos (nome, preco, gotas, quantidade, categoria_id) VALUES
("VitaminaC", 14.90, false, "10 uni.", 1), 
("Paracetamol", 16.90, true, "15 ml", 2), 
("Dipirona", 29.90, false, "10 uni.", 2), 
("Amoxilina", 39.90, false, "20 uni.", 3), 
("Capitopril", 29.90, false, "30 uni.", 4), 
("Seroquel", 99.90, false, "20 uni.", 5), 
("Desvenlafaxina", 89.90, false, "20 uni", 5), 
("Zolpidem", 129.90, false, "10 uni.", 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id =tb_produtos.categoria_id WHERE categoria_id = 5;