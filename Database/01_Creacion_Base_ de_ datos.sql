-- Evaluación Proyecto N° 5

-- se Crea la base de datos para la Alke Wallet
CREATE DATABASE AlkeWallet;

-- evita errores en la creación de la base de datos (en caso de que ya exista).
CREATE DATABASE IF NOT EXISTS AlkeWallet;

-- Se Selecciona la base de datos que creamos
USE AlkeWallet;

-- Se Crea la tabla usuarios que almacena los datos de los usuarios del sistema
CREATE TABLE usuarios (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    saldo DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Se crea la tabla de transacciones que almacena las transacciones realizadas de los usuarios
CREATE TABLE transaccion (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_user_id INT,
    receiver_user_id INT,
    valor DECIMAL(10,2) NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_user_id) REFERENCES usuarios(user_id) ON DELETE CASCADE,
    FOREIGN KEY (receiver_user_id) REFERENCES usuarios(user_id) ON DELETE CASCADE
);

-- Se crea la tabla de monedas que almacena las monedas disponibles en la wallet
CREATE TABLE moneda (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(50) NOT NULL,
    currency_symbol VARCHAR(10) NOT NULL
);