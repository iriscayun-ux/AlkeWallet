-- Consultas:

USE AlkeWallet;
-- 1. Consulta para obtener el nombre de la moneda elegida por un usuario específico
SELECT m.currency_name
FROM transaccion t
JOIN moneda m ON t.transaction_id = m.currency_id
WHERE t.sender_user_id = 1  
OR t.receiver_user_id = 1;   -- (El usuario 1 puede ser tanto el remitente como el receptor)

-- 2. Ver todas las transacciones
SELECT * FROM transaccion;

-- 3. Ver las transacciones de un usuario específico
SELECT * 
FROM transaccion
WHERE sender_user_id = 1;

-- 4. Modificar el correo electrónico de un usuario específico
UPDATE usuarios
SET correo_electronico = 'nuevo@email.com'
WHERE user_id = 1;

-- 5. Eliminar una transacción específica (por ID de transacción)
DELETE FROM transaccion
WHERE transaction_id = 1;

-- 6. Mostrar todas las transacciones de un usuario específico a través de un JOIN
SELECT t.transaction_id, u.nombre AS sender_name, u2.nombre AS receiver_name, t.valor, t.transaction_date,
       (SELECT SUM(valor) FROM transaccion WHERE sender_user_id = u.user_id) AS total_sent
FROM transaccion t
JOIN usuarios u ON t.sender_user_id = u.user_id  
JOIN usuarios u2 ON t.receiver_user_id = u2.user_id  
WHERE u.user_id = 1;  


-- 7. Consulta con función de agregación: Ver el total de dinero transferido por cada usuario
-- Solo se muestran los usuarios que han transferido más de 500.
SELECT sender_user_id, SUM(valor) AS total_transferido
FROM transaccion
GROUP BY sender_user_id
HAVING total_transferido > 500;

-- 8. Consulta con subconsulta: Obtener el nombre del usuario que ha realizado la mayor transacción
-- Además, mostramos el valor de la transacción más grande realizada por el usuario
SELECT nombre, valor
FROM usuarios
WHERE user_id = (
    SELECT sender_user_id
    FROM transaccion
    ORDER BY valor DESC
    LIMIT 1
);

