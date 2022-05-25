CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cpf varchar(255) NOT NULL, 
setor varchar(255) NOT NULL,
salario decimal(4,2) NOT NULL, 
ativo boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, cpf, setor, salario,ativo)
VALUES ("José da Silva","12345", "Administrativo", 2500.00,true);

INSERT INTO tb_funcionarios(nome, cpf, setor, salario,ativo)
VALUES ("José de Souza","123456", "Refeitório", 1900.00, true);

INSERT INTO tb_funcionarios(nome, cpf, setor, salario,ativo)
VALUES ("Maria de Souza","1234567", "Refeitório", 1800.00, false);

INSERT INTO tb_funcionarios(nome, cpf, setor, salario,ativo)
VALUES ("Abadias Silva","12345678", "Diretoia", 5200.00, true);

INSERT INTO tb_funcionarios(nome, cpf, setor, salario,ativo)
VALUES ("Valdir Souza","123456789", "TI", 3000.00, false);

SELECT nome, CONCAT('R$ ', FORMAT(salario, 'pt_BR')) AS preço FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET ativo = true WHERE id = 3;
