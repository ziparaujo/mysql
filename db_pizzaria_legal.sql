CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_pizzas(
	idpizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(100) NOT NULL,
    ingredientes TEXT NOT NULL,
    tempopreparo INT NOT NULL,
    preco DECIMAL(5,2) NOT NULL, 
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
("Tradicional", "Pizzas clássicas."), ("Especial", "Pizzas com ingredientes especiais e gourmet."),
("Vegetariana", "Pizzas sem ingredientes de origem animal."), ("Doce", "Pizzas doces."),
("Premium", "Pizzas com ingredientes de alta qualidade e exclusivos.");

INSERT INTO tb_pizzas (sabor, ingredientes, tempopreparo, preco, categoriaid) VALUES
("Mussarela", "Molho de tomate, mussarela e orégano.", 7, 35, 1),
("Calabresa", "Molho de tomate, mussarela e calabresa.", 8, 40, 1),
("Pepperoni", "Molho de tomate, mussarela, peperoni e catupiry.", 8, 52, 2),
("Carne seca", "Molho de tomate, mussarela, carne seca e catupiry.", 10, 60, 2),
("Vegetariana", "Molho de tomate, mussarela, pimentão, cebola, azeitona e milho.", 7, 45, 3),
("Crepese", "Molho de tomate, mussarela de búfala, tomate cereja e manjericão.", 7, 45, 3),
("Brigadeiro", "Chocolate e granulado.", 10, 49, 4),
("Romeu e Julieta", "Queijo minas e goiabada.", 10, 55, 4),
("Trufada", "Molho de tomate, mussarela, trufa preta e rúcula.", 8, 75, 5),
("Lagosta", "Molho de tomate, mussarela, lagosta e ervas finas.", 12, 90, 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.id = 4;