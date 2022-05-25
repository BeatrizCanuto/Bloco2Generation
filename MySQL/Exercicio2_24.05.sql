-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_pizzaria_legal;

-- Cria a tabelatb_categorias
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(255) NOT NULL,
borda BOOLEAN,
PRIMARY KEY (id)
);
-- Cria a tabela tb_pizzas
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
ovos BOOLEAN,
tipo VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (tamanho, borda) VALUES 
("P",false),
("M",true),
("M",false),
("G",true),
("G",false);

INSERT INTO tb_pizzas (sabor, preco, ovos, tipo, categoria_id) VALUES
("Marguerita", 49.90, true, "salgada", 4), 
("Portuguesa", 59.90, true, "salgada", 3), 
("4Queijos", 59.90, true, "salgada", 2), 
("Napolitana", 59.90, true, "salgada", 3), 
("Muzzarela", 29.90, true, "salgada", 1), 
("Vegana", 89.90, false, "salgada", 5), 
("Chocolate", 69.90, false, "doce", 3), 
("Goibada", 69.90, false, "doce", 3);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id WHERE categoria_id = 5;