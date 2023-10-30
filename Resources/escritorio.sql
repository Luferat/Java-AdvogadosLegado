-- (Re)Cria banco de dados de desenvolvimento.

-- Apagar o banco de dados caso ele exista.
DROP DATABASE IF EXISTS escritorio;

-- Criar o banco de dados.
CREATE DATABASE escritorio CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Selecionar o banco de dados.
USE escritorio;

-- Criar tabela advogado.
CREATE TABLE advogado (
	idadv INT PRIMARY KEY AUTO_INCREMENT,
    dataadv TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    oab VARCHAR(15) UNIQUE NOT NULL,
	nome VARCHAR(127) NOT NULL,
    telefone VARCHAR(31) NOT NULL,
    statusadv ENUM("on", "off") DEFAULT "on"
);

-- Criar tabela cliente.
CREATE TABLE cliente (
	idcliente INT PRIMARY KEY AUTO_INCREMENT,
    datacliente TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nome VARCHAR(127) NOT NULL,
    telefone VARCHAR(31) NOT NULL,
    statuscliente ENUM("on", "off") DEFAULT "on"
);

-- Insere alguns advogados fake para testes.
INSERT INTO advogado (oab, nome, telefone) VALUES 
('9y4y043y7t', 'Joca da Silva', '(21) 9876-54321'),
('oab2', 'Setembrino Trocatapas', '(21) 99887-7665'),
('oab3', 'Marineuza Siriliano', '(21) 98999-8877');

-- Insere alguns clientes fake para testes.
INSERT INTO cliente (nome, telefone) VALUES 
('Maria', '(21) 99889-9889'),
('João', '(21) 99998-8887'),
('Edicleuza', '(21) 89998-8899');
