SHOW DATABASES;/*Mostra dos bancos de dados no meu sistema*/
CREATE SCHEMA db_teste; /*Cria um banco de dados*/
USE db_dio;

CREATE TABLE aluno (/*Criando uma tabela*/
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    idade INTEGER NOT NULL,
    estado CHARACTER(2) NOT NULL
);

SHOW TABLES;/*Mostra as tabelas no banco de dados*/

INSERT INTO aluno(nome, idade, estado) VALUES ('Pedro', 20, 'RJ');/*Inserindo os dados na tabela*/
INSERT INTO aluno(nome, idade, estado) VALUES ('Maria', 35, 'AC');
INSERT INTO aluno(nome, idade, estado) VALUES ('Joao', 10, 'SC');
INSERT INTO aluno(nome, idade, estado) VALUES ('Ana', 51, 'GO');

SELECT * FROM aluno;/*Exibe os registro na tabela alunos*/
