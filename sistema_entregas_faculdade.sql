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
('Beyonce Knowles', 'beyoncediva@gmail.com', 'senhacrazyinlove123'),
('Taylor Swift', 'taylornation@gmail.com', 'senhatheerastour'),
('Lucas Montes', 'lucasmontes@mail.com', 'lucas123'),
('Ana Júlia', 'anajulia@mail.com', 'ana1234'),
('Carlos Eduardo', 'carloseduardo@mail.com', 'carlos123');


INSERT INTO locais (nome, endereco) VALUES
('Karina Sampaio', 'Rio de Janeiro, Brasil'),
('Izabel Sampaio', 'Rio de Janeiro, Brasil'),
('Beyonce Knowles', 'Texas, EUA'),
('Taylor Swift', 'Nova York, EUA'),
('Lucas Montes', 'Recife, Brasil'),
('Ana Júlia', 'São Paulo, Brasil'),
('Carlos Eduardo', 'Belo Horizonte, Brasil');



-- Criando tabela de veículos
CREATE TABLE veiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(255) NOT NULL,
    placa VARCHAR(255) UNIQUE NOT NULL,
    disponivel BOOLEAN NOT NULL DEFAULT TRUE
);

-- Inserindo dados na tabela de veículos
INSERT INTO veiculos (modelo, placa, disponivel) VALUES
('Fiat Fiorino', 'XYZ1234', TRUE),
('Renault Kangoo', 'ABC1122', TRUE),
('Volkswagen Saveiro', 'DEF5566', FALSE),
('Chevrolet Montana', 'GHI7890', TRUE),
('Peugeot Partner', 'JKL3456', TRUE);


-- Criando tabela de entregas
CREATE TABLE entregas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_local INT,
    id_veiculo INT,
    data_entrega DATETIME,
    status VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_local) REFERENCES locais(id),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id)
);

-- Tabela de status de entrega para melhorar a normalização e controle de estados
CREATE TABLE status_entrega (
    status VARCHAR(255) PRIMARY KEY,
    descricao TEXT
);

INSERT INTO status_entrega (status, descricao) VALUES
('Pendente', 'Entrega não iniciada'),
('Em trânsito', 'Entrega saiu para o destino'),
('Entregue', 'Entrega concluída com sucesso'),
('Cancelada', 'Entrega foi cancelada');

INSERT INTO entregas (id_usuario, id_local, id_veiculo, data_entrega, status) VALUES
(1, 1, 1, '2024-04-05 09:00:00', 'Pendente'),
(2, 2, 2, '2024-04-06 14:00:00', 'Em trânsito'),
(3, 3, 3, '2024-04-07 16:30:00', 'Entregue');


use sistema_entregas;

SELECT * FROM usuarios;


SELECT * FROM status_entrega;

select *
from usuarios
join locais on usuarios.nome=locais.nome;

select nome, endereco
from locais;

SELECT *
FROM entregas
ORDER BY status;

SELECT entregas.*, status_entrega.descricao
FROM entregas
JOIN status_entrega ON entregas.status = status_entrega.status
ORDER BY status_entrega.descricao;













