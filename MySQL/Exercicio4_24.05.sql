-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_cidade_dos_vegetais;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_cidade_dos_vegetais;

-- Cria a tabela tb_categoria
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
perecivel BOOLEAN,
PRIMARY KEY (id)
);
-- Cria a tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
avisoAlergeno BOOLEAN,
quantidade VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, perecivel) VALUES 
("Fruta",true),
("Verdura",true),
("Legume",false),
("Oleoaginosas",false),
("Adega",false);

INSERT INTO tb_produtos (nome, preco, avisoAlergeno, quantidade, categoria_id) VALUES
("banana", 8.90, false, "1 kg", 1), 
("rucula", 6.90, false, "1 maço", 2), 
("batata", 3.90, false, "1 kg", 3), 
("nozes", 99.90, true, "1 kg", 4), 
("castanhaDoBrasil",99.90, true, "1 kg", 4), 
("amendoa", 99.90, true, "1 kg", 4), 
("castanhaDeCaju", 199.90, true, "1 kg", 4), 
("DomJosePorto", 189.90, false, "1 uni.", 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id =tb_produtos.categoria_id WHERE categoria_id = 4;