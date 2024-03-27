CREATE DATABASE sistema_entregas;
USE sistema_entregas;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE locais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

INSERT INTO usuarios (nome, email, senha) VALUES
('Karina Sampaio', 'karinasampaio13@gmail.com', 'senha1234'),
('Izabel Sampaio', 'izabel-sampaio@hotmail.com', 'senhabel123'),
('Beyonce Knowles', 'beyoncediva@gmail,com', 'senhacrazyinlove123'),
('Taylor Swift', 'taylornation@gmail,com', 'senhatheerastour');

INSERT INTO locais (id, nome, endereco) Values
('1', 'Karina Sampaio', 'Rio de Janeiro Brasil'),
('2', 'Izabel Sampio', 'Rio de Janeiro Brasil'),
('3', 'Beyonce Knowles', 'Texas, EUA'),
('4', 'Taylor Swift', 'Nova York, Eua'); 


select *
from usuarios
join locais on usuarios.nome=locais.nome;

select nome, endereco
from locais;


