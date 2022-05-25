-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_generation_game_online;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_generation_game_online;

-- Cria a tabela tb_classes
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
poder VARCHAR(255),
PRIMARY KEY (id)
);
-- Cria a tabela tb_personagens
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ataque INT,
defesa INT,
vida INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, poder) VALUES 
("Humano","manipulação de decisão"),
("Cavaleiro","forte em batalhas"),
("Mago","pode fazer porções para restaurar vida"),
("Pirata","rouba vida"),
("Orc","muita força, pouca vida");

INSERT INTO tb_personagens (nome, ataque, defesa, vida, classe_id) VALUES
("Vicent", 500, 2000, 1000, 3), 
("Dalí", 3000, 2000, 100, 2), 
("Portinari", 4000, 2000, 50, 5), 
("DaVinci", 100, 1000, 500, 1), 
("Renoir",100, 1000, 500, 1), 
("Degas", 100, 1000, 500, 1), 
("Monet",  3000, 2000, 100, 2), 
("Klimt", 1000, 1000, 800, 4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe_id = 1;