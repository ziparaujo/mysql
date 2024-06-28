CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    habilidade_especial VARCHAR(100) 
);

CREATE TABLE tb_personagens(
	personagemid BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    inteligencia INT NOT NULL,
    classeid BIGINT,
    FOREIGN KEY (classeid) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (nome, descricao, habilidade_especial) VALUES
("Guerreiro", "Um verdadeiro combatente corpo a corpo.", "Fúria de batalha"),
("Mago", "Um mestre das artes arcanas.", "Bola de gelo"),
("Arqueiro", "Um atirador de elite.", "Tiro preciso"),
("Ladino", "Um mestre da furtividade.", "Ataque furtivo"),
("Paladino", "Um defensor da justiça.", "Luz sagrada");

INSERT INTO tb_personagens (nome, ataque, defesa, inteligencia, classeid) VALUES
("Atlas", 2950, 2100, 1200, 1),
("Relic", 2100, 1900, 2980, 2),
("Oskar", 2200, 1700, 2300, 3),
("Joker", 1700, 1800, 2100, 4),
("Fisk", 1800, 2050, 2400, 5),
("Harry", 2300, 1950, 2800, 2),
("Jarvis", 1800, 2150, 2200, 3),
("Hilda", 2500, 2200, 1800, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id;
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE tb_personagens.classeid = 3;
