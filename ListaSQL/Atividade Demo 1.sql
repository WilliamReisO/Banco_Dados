-- comando de criação de bancos de dados 
-- passo 1 : criar banco de dados
-- criar tabela 
-- inserir atributos na tabela 
CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (50),
    idade INT ,
    salario DECIMAL(6,2) ,
    Cargo VARCHAR (50),
    
     PRIMARY KEY (id)
    );
INSERT INTO tb_colaboradores(nome , idade , salario , cargo)
VALUE("Caio" ,23 ,700.99,"Desenvolvedora java fullstack ");

SELECT *  FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000 ;

SELECT * FROM tb_colaboradores WHERE salario < 2000 ;

-- BONUS 
ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL (10,2);

UPDATE tb_colaboradores
SET salario = 7000.00
WHERE id = 5 



