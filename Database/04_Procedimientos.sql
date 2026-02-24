
-- Creación y ejecución del procedimiento para transferir fondos

USE AlkeWallet;

-- Elimina el procedimiento si ya existe
DROP PROCEDURE IF EXISTS transferir_fondos;

-- Cambiamos delimitador
DELIMITER $$

-- Creamos el procedimiento
CREATE PROCEDURE transferir_fondos(
    IN sender_id INT,
    IN receiver_id INT,
    IN amount DECIMAL(10,2)
)
BEGIN
    START TRANSACTION;

    UPDATE usuarios
    SET saldo = saldo - amount
    WHERE user_id = sender_id
    AND saldo >= amount;

    IF ROW_COUNT() = 1 THEN

        UPDATE usuarios
        SET saldo = saldo + amount
        WHERE user_id = receiver_id;

        INSERT INTO transaccion (sender_user_id, receiver_user_id, valor)
        VALUES (sender_id, receiver_id, amount);

        COMMIT;

    ELSE
        ROLLBACK;

    END IF;

END$$

DELIMITER ;

-- Ejecución del procedimiento

CALL transferir_fondos(1, 2, 200.00);
CALL transferir_fondos(1, 2, 1000.00);