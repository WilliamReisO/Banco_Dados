CREATE DATABASE db_Resgitro_Escolar;

CREATE TABLE db_aluno(
id BIGINT AUTO_INCREMENT,

nome varchar(255) ,
nota decimal(10,0) ,
serie int ,
idade int ,
professor varchar(255),
PRIMARY KEY (id)
);

INSERT INTO db_aluno (nome,nota,serie,idade,professor)
VALUES("FERNADO HENRIQUE",7,8,13,"RENATO SILVA");

SELECT * FROM db_aluno ;

SELECT * FROM db_aluno WHERE nota > 7;

SELECT * FROM db_aluno WHERE nota < 7;

UPDATE db_aluno 
SET nome = "FERNANDA CABRITO"
WHERE id = 7;

UPDATE db_aluno 
SET nome = "SANDRA ESPINOSA"
WHERE id = 10