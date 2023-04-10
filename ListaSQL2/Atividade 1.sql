CREATE DATABASE db_generation_game_online;

CREATE TABLE  tb_classes(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes(descricao)
VALUES ("LENHADOR");

INSERT INTO tb_classes(descricao)
VALUES ("PESCADOR");

INSERT INTO tb_classes(descricao)
VALUES ("DONO DE TERRAS");

INSERT INTO tb_classes(descricao)
VALUES ("GUARDA");

INSERT INTO tb_classes(descricao)
VALUES ("CAVALHEIRO");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
habilidade VARCHAR(255),
ataque BIGINT ,
defesa BIGINT,
sexo VARCHAR(10),
Classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (Classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("JORGE HERREIRA","CORTE RAPIDO",2700,3000,"MASCULINO",1);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("ADENOR PERQK","DESTREZA",800,600,"MASCULINO",2);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("JOANA DARQ","LIDER NATA",1600,5000,"FEMININO",3);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("MONTESQUIE","ARMAS BRANCAS",1800,3000,"MASCULINO",5);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("JOAO FELIX","MUSCULOS",3000,3000,"MASCULINO",4);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("FERNADA SOARES","GENIO",2000,3000,"LESBICA",3);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("WILL REIS","NÃO SABE PECAR ",600,800,"MASCULINO",2);

INSERT INTO tb_personagens (nome,habilidade,ataque,defesa,sexo,Classe_id)
VALUES("JONATHAN PEDROSA","LERDO",1000,300,"MASCULINO",1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000;

SELECT * FROM tb_personagens WHERE nome LIKE "%I%";

SELECT * FROM tb_personagens inner join tb_classes
on tb_personagens.Classe_id = tb_classes.id;


