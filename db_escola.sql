CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
	matricula VARCHAR(6) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    datanascimento DATE NOT NULL,
    nomeresponsavel VARCHAR(100) NOT NULL,
    numeroresponsavel VARCHAR(11) NOT NULL,
    media DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_alunos(matricula, nome, datanascimento, nomeresponsavel, numeroresponsavel, media) VALUES
("202145", "João da Silva", "2008-05-15", "Maria da Silva", "999999999", 8.75),
("202165", "Ana Souza", "2007-09-22", "Pedro Souza", "888888888", 6.90),
("202010", "Pedro Oliveira", "2009-02-10", "Fernanda Oliveira", "777777777", 5.20),
("202265", "Mariana Santos", "2008-11-30", "Carlos Santos", "666666666", 8.00),
("202301", "Lucas Pereira", "2010-04-05", "Juliana Pereira", "555555555", 7.50),
("202359", "Carla Lima", "2007-12-18", "Ricardo Lima", "444444444", 8.90),
("202305", "Mateus Costa", "2009-07-20", "Patrícia Costa", "333333333", 9.75),
("202154", "Larissa Fernandes", "2008-08-03", "André Fernandes", "222222222", 6.00);

SELECT * FROM tb_alunos WHERE media > 7;
SELECT * FROM tb_alunos WHERE media < 7;
UPDATE tb_alunos SET numeroresponsavel = "111111111" WHERE matricula = "202154";