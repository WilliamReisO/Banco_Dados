CREATE DATABASE db_amazuu;

CREATE TABLE db_eletronicos(
id BIGINT AUTO_INCREMENT,
marca VARCHAR(200),
nome VARCHAR(200),
preco DECIMAL(9,2),
cabo BOOLEAN ,
bateria INT,

PRIMARY KEY (id)
);

INSERT INTO db_eletronicos(marca,nome,preco,cabo,bateria)
VALUES("Sony","Dual Sense 4 ",340.00,TRUE,50);

SELECT * FROM db_eletronicos;

SELECT * FROM db_eletronicos WHERE preco > 500;

SELECT * FROM db_eletronicos WHERE preco < 500;

UPDATE db_eletronicos 
SET preco = 250.00
where id = 2;
 
