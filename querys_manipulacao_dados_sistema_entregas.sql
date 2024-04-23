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