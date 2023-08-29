-- Crear base de datos
CREATE DATABASE mydatabase;

-- Crear usuario administrador
CREATE USER 'dcruz-na'@'%' IDENTIFIED BY 'dcruzpassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'dcruz-na'@'%';

-- Crear usuario no administrador
CREATE USER 'johndoe'@'%' IDENTIFIED BY 'johndoepassword';
GRANT SELECT, INSERT, UPDATE, DELETE ON mydatabase.* TO 'johndoe'@'%';
