USE AlkeWallet;
INSERT INTO usuarios (nombre, correo_electronico, contrasena, saldo)
VALUES
('Esteban Manzano', 'emanzano@gmail.com', 'eman123', 10000.00),
('Jose Lopez', 'jlopez@gmail.com', 'jlop456', 50000.00),
('Joaquin Gajardo', 'jgajardo@gmail.com', 'jgaj789', 10000.00);

INSERT INTO moneda (currency_name, currency_symbol)
VALUES
('Peso Chileno', '$'),
('Dolar', 'USD'),
('Yen', '¥');

