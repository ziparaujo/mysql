CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionarios(
	cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    datanascimento DATE,
    email VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (cpf)
);

INSERT INTO tb_funcionarios(cpf, nome, datanascimento, email, salario) VALUES
("02454658912", "João Silva", "1985-11-18", "joao.silva@gmail.com", 2952.35),
("16548598571", "Maria dos Santos", "1974-12-04", "maria@hotmail.com", 3529.56),
("15445898565", "Francisco Bento", "1997-04-26", "chicobento@gmail.com", 1970.10),
("04658958741", "Paulo Roberto", "1968-04-01", "paulorob@gmail.com", 4596.00),
("14525635415", "Ana Maria", "1996-11-18", "mariaana@hotmail.com", 1541.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;
UPDATE tb_funcionarios SET salario = 1970.10 WHERE cpf = "14525635415";