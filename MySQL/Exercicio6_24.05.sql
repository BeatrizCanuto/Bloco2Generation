-- Cria o Banco de dados db_generation_game_online
CREATE DATABASE db_curso_da_minha_vida;

-- Seleciona o Banco de Dados db_generation_game_online
USE db_curso_da_minha_vida;

-- Cria a tabela tb_categoria
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
gratuito BOOLEAN,
PRIMARY KEY (id)
);
-- Cria a tabela tb_cursos
CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
formaPagamento VARCHAR(255) ,
duracao VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, gratuito) VALUES 
("artes",true),
("fisica",false),
("programacao",true),
("saude",false),
("linguas",false);

INSERT INTO tb_cursos (nome, preco, formaPagamento, duracao, categoria_id) VALUES
("tecnicas de Van Gogh", 0.00, NULL , "6 meses", 1), 
("mecanica classica", 550.00, "debito", "10 dias", 2), 
("filosofia da fisica quantica", 2000.00, "debito", "18 meses", 2), 
("Java POO", 0.00, NULL, "10 meses", 3), 
("introducao a banco de dados",0.00, NULL, "12 meses", 3), 
("primeiros socorros", 3000.00, "debito", "3 meses", 4), 
("libras", 800.00, "credito", "6 meses", 5), 
("elfico", 950.00, "boleto", "6 meses", 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_categoria.id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_categoria.id =tb_cursos.categoria_id WHERE categoria_id = 1;