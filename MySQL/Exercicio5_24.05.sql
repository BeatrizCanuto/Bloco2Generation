-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_construindo_vidas;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_construindo_vidas;

-- Cria a tabela tb_categoria
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
parcela BOOLEAN,
PRIMARY KEY (id)
);
-- Cria a tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
formaPagamento VARCHAR(255) NOT NULL,
quantidade VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, parcela) VALUES 
("hidraulica",false),
("eletrica",false),
("revestimento",true),
("acabamento",true),
("construção",true);

INSERT INTO tb_produtos (nome, preco, formaPagamento, quantidade, categoria_id) VALUES
("cano 50pol", 8.90, "credito", "1 m", 1), 
("parafuso", 6.90, "debito", "1 kg", 5), 
("prego", 3.90, "debito", "1 kg", 5), 
("fio", 99.90, "boleto", "10 m", 2), 
("luminaria",99.90, "credito", "1 uni.", 4), 
("lampada", 9.90, "debito", "1 uni", 2), 
("tijolo", 199.90, "credito", "1000 uni.", 5), 
("tinta", 189.90, "boleto", "20 l", 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id =tb_produtos.categoria_id WHERE categoria_id = 5;