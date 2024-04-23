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
('Carlos Eduardo', 'carloseduardo@mail.com', 'carlos123'),
('João Silva', 'joao.silva@example.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha456'),
('Pedro Santos', 'pedro.santos@example.com', 'senha789'),
('Ana Souza', 'ana.souza@example.com', 'senha101'),
('Carlos Ferreira', 'carlos.ferreira@example.com', 'senha202'),
('Fernanda Lima', 'fernanda.lima@example.com', 'senha303'),
('Rafaela Mendes', 'rafaela.mendes@example.com', 'senha404'),
('Lucas Rodrigues', 'lucas.rodrigues@example.com', 'senha505'),
('Patrícia Almeida', 'patricia.almeida@example.com', 'senha606'),
('Rodrigo Costa', 'rodrigo.costa@example.com', 'senha707'),
('Juliana Pereira', 'juliana.pereira@example.com', 'senha808'),
('Gustavo Silva', 'gustavo.silva@example.com', 'senha909'),
('Mariana Oliveira', 'mariana.oliveira@example.com', 'senha010'),
('Ricardo Santos', 'ricardo.santos@example.com', 'senha111'),
('Amanda Souza', 'amanda.souza@example.com', 'senha212'),
('Diego Ferreira', 'diego.ferreira@example.com', 'senha313'),
('Carla Lima', 'carla.lima@example.com', 'senha414'),
('Fabiana Mendes', 'fabiana.mendes@example.com', 'senha515'),
('Paulo Rodrigues', 'paulo.rodrigues@example.com', 'senha616'),
('Camila Almeida', 'camila.almeida@example.com', 'senha717'),
('Luciana Costa', 'luciana.costa@example.com', 'senha818'),
('Fábio Pereira', 'fabio.pereira@example.com', 'senha919'),
('Vanessa Silva', 'vanessa.silva@example.com', 'senha020'),
('Daniel Oliveira', 'daniel.oliveira@example.com', 'senha121'),
('Tatiane Santos', 'tatiane.santos@example.com', 'senha222'),
('Marcos Souza', 'marcos.souza@example.com', 'senha323'),
('Luiza Ferreira', 'luiza.ferreira@example.com', 'senha424'),
('André Lima', 'andre.lima@example.com', 'senha525'),
('Renata Mendes', 'renata.mendes@example.com', 'senha626'),
('Thiago Rodrigues', 'thiago.rodrigues@example.com', 'senha727'),
('Bianca Almeida', 'bianca.almeida@example.com', 'senha828'),
('Roberto Costa', 'roberto.costa@example.com', 'senha929'),
('Natália Pereira', 'natalia.pereira@example.com', 'senha030'),
('Lucas Silva', 'lucas.silva@example.com', 'senha131'),
('Caroline Oliveira', 'caroline.oliveira@example.com', 'senha232'),
('Bruno Santos', 'bruno.santos@example.com', 'senha333'),
('Mariana Souza', 'mariana.souza@example.com', 'senha434'),
('Pedro Ferreira', 'pedro.ferreira@example.com', 'senha535'),
('Ana Lima', 'ana.lima@example.com', 'senha636'),
('Guilherme Mendes', 'guilherme.mendes@example.com', 'senha737'),
('Isabela Rodrigues', 'isabela.rodrigues@example.com', 'senha838'),
('Felipe Almeida', 'felipe.almeida@example.com', 'senha939'),
('Larissa Costa', 'larissa.costa@example.com', 'senha040'),
('Gabriel Pereira', 'gabriel.pereira@example.com', 'senha141'),
('Beatriz Silva', 'beatriz.silva@example.com', 'senha242');


INSERT INTO locais (nome, endereco) VALUES
('Karina Sampaio', 'Rio de Janeiro, Brasil'),
('Izabel Sampaio', 'Rio de Janeiro, Brasil'),
('Beyonce Knowles', 'Texas, EUA'),
('Taylor Swift', 'Nova York, EUA'),
('Lucas Montes', 'Recife, Brasil'),
('Ana Júlia', 'São Paulo, Brasil'),
('Carlos Eduardo', 'Belo Horizonte, Brasil'),
('João Silva', 'Rio de Janeiro, Brasil'),
('Maria Oliveira', 'São Paulo, Brasil'),
('Pedro Santos', 'Belo Horizonte, Brasil'),
('Ana Souza', 'Salvador, Brasil'),
('Carlos Ferreira', 'Porto Alegre, Brasil'),
('Fernanda Lima', 'Brasília, Brasil'),
('Rafaela Mendes', 'Curitiba, Brasil'),
('Lucas Rodrigues', 'Fortaleza, Brasil'),
('Patrícia Almeida', 'Recife, Brasil'),
('Rodrigo Costa', 'Manaus, Brasil'),
('Juliana Pereira', 'Rio de Janeiro, Brasil'),
('Gustavo Silva', 'São Paulo, Brasil'),
('Mariana Oliveira', 'Belo Horizonte, Brasil'),
('Ricardo Santos', 'Salvador, Brasil'),
('Amanda Souza', 'Porto Alegre, Brasil'),
('Diego Ferreira', 'Brasília, Brasil'),
('Carla Lima', 'Curitiba, Brasil'),
('Fabiana Mendes', 'Fortaleza, Brasil'),
('Paulo Rodrigues', 'Recife, Brasil'),
('Camila Almeida', 'Manaus, Brasil'),
('Luciana Costa', 'Rio de Janeiro, Brasil'),
('Fábio Pereira', 'São Paulo, Brasil'),
('Vanessa Silva', 'Belo Horizonte, Brasil'),
('Daniel Oliveira', 'Salvador, Brasil'),
('Tatiane Santos', 'Porto Alegre, Brasil'),
('Marcos Souza', 'Brasília, Brasil'),
('Luiza Ferreira', 'Curitiba, Brasil'),
('André Lima', 'Fortaleza, Brasil'),
('Renata Mendes', 'Recife, Brasil'),
('Thiago Rodrigues', 'Manaus, Brasil'),
('Bianca Almeida', 'Rio de Janeiro, Brasil'),
('Roberto Costa', 'São Paulo, Brasil'),
('Natália Pereira', 'Belo Horizonte, Brasil'),
('Lucas Silva', 'Salvador, Brasil'),
('Caroline Oliveira', 'Porto Alegre, Brasil'),
('Bruno Santos', 'Brasília, Brasil'),
('Mariana Souza', 'Curitiba, Brasil'),
('Pedro Ferreira', 'Fortaleza, Brasil'),
('Ana Lima', 'Recife, Brasil'),
('Guilherme Mendes', 'Manaus, Brasil'),
('Isabela Rodrigues', 'Rio de Janeiro, Brasil'),
('Felipe Almeida', 'São Paulo, Brasil'),
('Larissa Costa', 'Belo Horizonte, Brasil'),
('Gabriel Pereira', 'Salvador, Brasil'),
('Beatriz Silva', 'Porto Alegre, Brasil');

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
    status_type VARCHAR(255) PRIMARY KEY,
    descricao TEXT
);

INSERT INTO status_entrega (status_type, descricao) VALUES
('Pendente', 'Entrega não iniciada'),
('Em trânsito', 'Entrega saiu para o destino'),
('Entregue', 'Entrega concluída com sucesso'),
('Cancelada', 'Entrega foi cancelada');


INSERT INTO entregas (id_usuario, id_local, id_veiculo, data_entrega, status) VALUES
(1, 1, 1, '2024-04-05 09:00:00', 'Pendente'),
(2, 2, 2, '2024-04-06 14:00:00', 'Em trânsito'),
(3, 3, 3, '2024-04-07 16:30:00', 'Entregue'),
(4, 4, 4, '2024-04-08 17:00:00', 'Entregue'),
(5, 5, 5, '2024-04-09 15:25:00', 'Em trânsito');

INSERT INTO entregas (id_usuario, id_local, id_veiculo, data_entrega, status)
SELECT 
    id_usuario,
    id_local,
    id_veiculo,
    TIMESTAMPADD(HOUR, FLOOR(RAND() * 24), '2024-01-06 14:00:00' ) AS data_entrega,
    CASE ROUND(RAND() * 3)
        WHEN 0 THEN 'Pendente'
        WHEN 1 THEN 'Em trânsito'
        WHEN 2 THEN 'Entregue'
        ELSE 'Cancelado'
    END AS status
FROM (
    SELECT
        2 AS id_usuario,
        2 AS id_local,
        2 AS id_veiculo
    FROM
        DUAL
    UNION ALL
    SELECT
        FLOOR(RAND() * 50) + 1 AS id_usuario,
        FLOOR(RAND() * 50) + 1 AS id_local,
        FLOOR(RAND() * 5) + 1 AS id_veiculo
    FROM
        information_schema.tables AS t1,
        information_schema.tables AS t2
    LIMIT 49
) AS subquery;

INSERT INTO entregas (id_usuario, id_local, id_veiculo, data_entrega, status)
SELECT 
    id_usuario,
    id_local,
    id_veiculo,
    TIMESTAMPADD(HOUR, FLOOR(RAND() * 24), '2024-02-06 14:00:00' ) AS data_entrega,
    CASE ROUND(RAND() * 3)
        WHEN 0 THEN 'Pendente'
        WHEN 1 THEN 'Em trânsito'
        WHEN 2 THEN 'Entregue'
        ELSE 'Cancelado'
    END AS status
FROM (
    SELECT
        2 AS id_usuario,
        2 AS id_local,
        2 AS id_veiculo
    FROM
        DUAL
    UNION ALL
    SELECT
        FLOOR(RAND() * 50) + 1 AS id_usuario,
        FLOOR(RAND() * 50) + 1 AS id_local,
        FLOOR(RAND() * 5) + 1 AS id_veiculo
    FROM
        information_schema.tables AS t1,
        information_schema.tables AS t2
    LIMIT 49
) AS subquery;

INSERT INTO entregas (id_usuario, id_local, id_veiculo, data_entrega, status)
SELECT 
    id_usuario,
    id_local,
    id_veiculo,
    TIMESTAMPADD(HOUR, FLOOR(RAND() * 24), '2024-03-06 14:00:00' ) AS data_entrega,
    CASE ROUND(RAND() * 3)
        WHEN 0 THEN 'Pendente'
        WHEN 1 THEN 'Em trânsito'
        WHEN 2 THEN 'Entregue'
        ELSE 'Cancelado'
    END AS status
FROM (
    SELECT
        2 AS id_usuario,
        2 AS id_local,
        2 AS id_veiculo
    FROM
        DUAL
    UNION ALL
    SELECT
        FLOOR(RAND() * 50) + 1 AS id_usuario,
        FLOOR(RAND() * 50) + 1 AS id_local,
        FLOOR(RAND() * 5) + 1 AS id_veiculo
    FROM
        information_schema.tables AS t1,
        information_schema.tables AS t2
    LIMIT 49
) AS subquery;


-- Querys de uso de banco de dados

use sistema_entregas;

SELECT * FROM usuarios;

-- Listar todos os usuários com seus emails
SELECT nome, email 
FROM usuarios;

-- Selecionar os status de entregas
SELECT * 
FROM status_entrega;

-- Listar os locais e nomes de usuários
select *
from usuarios
join locais on usuarios.nome=locais.nome;

-- Listar os nomes e enderecos de usuarios
select nome, endereco
from locais;

-- Listar as entregas concluidas
SELECT *
FROM status_entrega
where status_type='Entregue'; 

-- Encontrar veículos disponíveis
SELECT modelo, placa 
FROM veiculos 
WHERE disponivel = TRUE;

-- Listar entregas com informações detalhadas (incluindo nome do usuário, local de entrega, e veículo utilizado)
SELECT 
    e.id,
    u.nome AS Usuario,
    l.nome AS Local,
    l.endereco AS Endereco,
    v.modelo AS Veiculo,
    e.data_entrega,
    e.status
FROM entregas e
JOIN usuarios u ON e.id_usuario = u.id
JOIN locais l ON e.id_local = l.id
JOIN veiculos v ON e.id_veiculo = v.id
ORDER BY e.data_entrega;

-- Contar o número de entregas por status
SELECT status, COUNT(*) AS Total
FROM entregas
GROUP BY status;

-- Encontrar usuários que fizeram mais de uma entrega
SELECT u.nome, COUNT(e.id) AS TotalEntregas
FROM entregas e
JOIN usuarios u ON e.id_usuario = u.id
GROUP BY e.id_usuario
HAVING COUNT(e.id) > 1;

-- Listar todas as entregas feitas em um determinado local
SELECT e.id, u.nome AS Usuario, v.modelo AS Veiculo, e.data_entrega, e.status
FROM entregas e
JOIN usuarios u ON e.id_usuario = u.id
JOIN locais l ON e.id_local = l.id
JOIN veiculos v ON e.id_veiculo = v.id
WHERE l.endereco = 'Rio de Janeiro, Brasil';

--  Mostrar usuários que ainda não tiveram entregas atribuídas
SELECT u.nome, u.email
FROM usuarios u
LEFT JOIN entregas e ON u.id = e.id_usuario
WHERE e.id_usuario IS NULL;

-- Usuários por Quantidade de Entregas
SELECT usuarios.nome, COUNT(entregas.id) AS quantidade_de_entregas
FROM usuarios
LEFT JOIN entregas ON usuarios.id = entregas.id_usuario
GROUP BY usuarios.id
ORDER BY quantidade_de_entregas DESC;

-- Entregas por Veículo e Status
SELECT veiculos.modelo, entregas.status, COUNT(entregas.id) AS total_entregas
FROM veiculos
JOIN entregas ON veiculos.id = entregas.id_veiculo
GROUP BY veiculos.modelo, entregas.status
ORDER BY veiculos.modelo, entregas.status;

-- Usuários Sem Entregas
SELECT nome, email
FROM usuarios
WHERE id NOT IN (SELECT DISTINCT id_usuario FROM entregas);

-- Detalhes das Entregas Por Local
SELECT locais.nome AS Local, locais.endereco, COUNT(entregas.id) AS TotalEntregas
FROM locais
JOIN entregas ON locais.id = entregas.id_local
GROUP BY locais.id
ORDER BY TotalEntregas DESC;







