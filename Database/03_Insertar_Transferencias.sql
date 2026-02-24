-- Insertar transacciones manualmente en la tabla 'transaccion'
-- Cada transacción incluye: 
-- sender_user_id (ID del usuario que envía el dinero), 
-- receiver_user_id (ID del usuario que recibe el dinero), 
-- valor (monto transferido)

USE AlkeWallet;
INSERT INTO transaccion (sender_user_id, receiver_user_id, valor)
VALUES
(1, 2, 200),  -- El usuario 1 transfiere 200 al usuario 2
(2, 3, 300),  -- El usuario 2 transfiere 300 al usuario 3
(1, 3, 150);  -- El usuario 1 transfiere 150 al usuario 3


