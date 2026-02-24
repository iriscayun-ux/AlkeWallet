 Evaluación Módulo 5 - Proyecto AlkeWallet

Este es el proyecto AlkeWallet, un sistema de gestión de billetera virtual.  
El proyecto está compuesto por un conjunto de archivos SQL para crear y gestionar la base de datos, procedimientos almacenados y consultas SQL para manejar las transacciones y usuarios.

 1. Estructura del Proyecto

El proyecto está organizado en las siguientes carpetas y archivos:

 Archivos SQL

- 01_Creacion_Base_de_datos.sql 
  Crea la base de datos AlkeWallet y las tablas necesarias (usuarios, transaccion, moneda).

- 02_Insertar_Datos.sql 
  Inserta datos de ejemplo en las tablas usuarios y moneda.

- 03_Insertar_Transferencias.sql 
  Inserta transacciones entre usuarios.

- 04_Procedimientos.sql
  Crea el procedimiento almacenado `transferir_fondos` para realizar transacciones entre usuarios.

- 05_Consultas.sql
  Contiene consultas SQL para obtener información de transacciones, usuarios y movimientos.

 2. Imágenes

 Diagrama Relacional

![Diagrama Relacional](Docs/Diagrama_realacional.png)

Transacciones de un Usuario

![Transacciones de un Usuario](Docs/transacciones_de_un_usuario.png)

 Autora

Iris Cayun