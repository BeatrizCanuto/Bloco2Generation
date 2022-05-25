CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade varchar(255) NOT NULL, 
atividadeextra varchar(255) NOT NULL,
nota decimal (4,2) NOT NULL, 
ativo boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Ana", 12, "piano", 8,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Miguel", 15, "xadrez", 9,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Nicolas", 10, "equitação", 10,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Julia", 6, "balé", 9,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Ravi", 12, "boxe", 6,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Valentina", 5, "teatro", 9,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("André", 1, "gastronomia", 7,true);

INSERT INTO tb_estudantes(nome, idade, atividadeextra, nota,ativo)
VALUES ("Nicole", 8, "artista", 4,true);

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET atividadeextra = "balé" WHERE id = 8;


