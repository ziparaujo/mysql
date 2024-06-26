CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(100),
    marca VARCHAR(100),
    valor DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL
);

INSERT INTO tb_produtos(nome, categoria, marca, valor, quantidade) VALUES
("Samsung Galaxy A12", "Celular", "Samsung", 1250.00, 15),
("Notebook Dell Inspiron", "Notebook", "Dell", 4500.00, 20),
("Fone de Ouvido JBL T110BT", "Fone de Ouvido", "JBL", 150.00, 30),
("Caixa de Som Bluetooth JBL Flip 5", "Caixa de Som Bluetooth", "JBL", 450.00, 25),
("Tablet Samsung Galaxy Tab A7", "Tablet", "Samsung", 499.90, 18),
("Xiaomi Redmi 9A", "Celular", "Xiaomi", 700.00, 40),
("Notebook Lenovo Ideapad", "Notebook", "Lenovo", 3800.00, 12),
("Fone de Ouvido Sony WH-CH510", "Fone de Ouvido", "Sony", 399.99, 50);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;
UPDATE tb_produtos SET nome = "Dell Inspirion 15 Intel Core" WHERE id = 2;