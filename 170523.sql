CREATE DATABASE aulateste;

USE aulateste;

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    CHECK (Idade>=18));

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25')
        (2, 'Berisvaldo', 'Oliveira', '15');

        ---------------------------------------------------------- CHECK faz a validação da regra e por exemplo n deixa ninguem com menos de 18 se cadastrar*/

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    CHECK (Idade BETWEEN 18 AND 60));

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25')
        (2, 'Berisvaldo', 'Oliveira', '25')
        (3, 'Gumercindo', 'Pereira', '60');

        ----------------------------------------------------------

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    Estado CHAR(2) NOT NULL,
    CHECK (Idade BETWEEN>= 18 AND Estado='SP'));

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25', 'BA')
        (2, 'Berisvaldo', 'Oliveira', '25', 'ES')
        (3, 'Gumercindo', 'Pereira', '60', 'SP')
        (4, 'Tiburcio', 'Salgueira', '17', 'SP');

        ----------------------------------------------------------

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    Estado CHAR(2) NOT NULL);

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25', 'BA')
        (2, 'Berisvaldo', 'Oliveira', '25', 'ES')
        (3, 'Gumercindo', 'Pereira', '60', 'SP')
        (4, 'Tiburcio', 'Salgueira', '17', 'SP');

ALTER TABLE pessoas
ADD CHECK (Idade>=18);

        ----------------------------------------------------------Possibilidade de adc regra depois da tabela criada e da remoção da regra

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    Estado CHAR(2) NOT NULL);

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25', 'BA')
        (2, 'Berisvaldo', 'Oliveira', '25', 'ES')
        (3, 'Gumercindo', 'Pereira', '60', 'SP')
        (4, 'Tiburcio', 'Salgueira', '17', 'SP');

ALTER TABLE pessoas 
ADD CONSTRAINT CHK_Pessoas 
CHECK (Idade>=18 AND Estado='SP');

ALTER TABLE pessoas
DROP CONSTRAINT CHK_Pessoas; 

         ----------------------------------------------------------

CREATE TABLE pessoas(
    ID INT NOT NULL PRIMARY KEY,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    Estado CHAR(2) NOT NULL DEFAULT 'SP');

INSERT INTO pessoas
VALUES (1, 'Astrogildo', 'Planetário' '25', 'BA')
        (2, 'Berisvaldo', 'Oliveira', '25', 'ES')
        (3, 'Gumercindo', 'Pereira', '60', 'SP')
        (4, 'Tiburcio', 'Salgueira', '17', 'SP');

ALTER TABLE pessoas 
ADD CONSTRAINT CHK_Pessoas 
CHECK (Idade>=18 AND Estado='SP');

        ----------------------------------------------------------

CREATE TABLE pedidos(
    IDPedido INT NOT NULL PRIMARY KEY,
    DataPedido DATE NOT NULL DEFAULT CURRENT_DATE());

INSERT INTO pedidos (IDPedido)
VALUES (1), (2), (3);


/* 2 opcao */ 

CREATE TABLE pedidos(
    IDPedido INT NOT NULL PRIMARY KEY,
    DataPedido TIMESTAMP NOT NULL);

INSERT INTO pedidos (IDPedido)
VALUES (1), (2), (3);

        ----------------------------------------------------------



CREATE TABLE pedidos(
    IDPedido INT NOT NULL PRIMARY KEY,
    DataPedido DATE NOT NULL);

INSERT INTO pedidos (IDPedido)
VALUES (1), (2), (3);

ALTER TABLE pedidos
ALTER DataPedido SET DEFAULT CURRENT_DATE();

ALTER TABLE pedidos
ALTER DataPedido DROP DEFAULT;

        ----------------------------------------------------------

CREATE TABLE pessoas(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    Sobrenome varchar (255) NOT NULL,
    Idade INT NOT NULL,
    PRIMARY KEY (ID));

ALTER TABLE pessoas AUTO_INCREMENT=100;

INSERT INTO pessoas
VALUES ('Astrogildo', 'Planetário')
        ('Berisvaldo', 'Oliveira')
        ('Gumercindo', 'Pereira');


------------------------------------------------------------------

CREATE DATABASE Nentendo;

USE Nentendo;

CREATE TABLE pokemon(
    POKEID INT NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    Tipo varchar (5) NOT NULL DEFAULT 'Fogo',
    Tamanho INT NOT NULL,
    PRIMARY KEY (POKEID));


ALTER TABLE pokemon AUTO_INCREMENT=150;

ALTER TABLE pokemon 
ALTER Tipo SET DEFAULT 'FOGO';

ALTER TABLE pokemon 
ADD CHECK (Tipo != 'Fogo' AND 'Terra' AND 'Gelo' AND 'Vento');

ALTER TABLE pokemon
ADD CHECK (Tamanho BETWEEN 50 AND 150);





