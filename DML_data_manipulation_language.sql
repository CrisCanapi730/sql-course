-- DML 
-- crear una bd de prueba
CREATE DATABASE prueba;
-- seleccionar bd prueba
USE prueba;
-- crear una tabla de prueba
CREATE TABLE personas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50)
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phone INT,
    address VARCHAR(50)
);

-- INSERTAMOS DATOS
INSERT INTO personas (name, age, email)
VALUES ('Cristian', 24, 'cristian@gmail.com');

INSERT INTO personas
VALUES (3, 'Ana', 23, 'ana@gmail');

INSERT INTO personas (name, age, email) VALUES ('Fernando', 58, 'fercanapi@gmail.com');

INSERT INTO personas
VALUES 
(2, 'Eliana', 59, 'eliana@'),
(5, 'Thaira', 25, 'thaira@gmail');

-- Insertamos en tabla customers
INSERT INTO customers (name, phone, address)
VALUES
('Cris', 4543, NULL),
('Eliana', 5934, 'pacheco'),
('Thaira', 2534, 'cleomedes');

-- insertamos datos en personas a partir de customers
INSERT INTO personas (name, age, email)
SELECT name, NULL, 'unknown'
FROM customers;

-- UPDATE 
-- editar solo una columna de un registro
UPDATE customers
SET phone = 4444
WHERE id = 1;

-- editar dos columnas de un registro
UPDATE customers
SET phone = 5555,
	address = 'cleomedes blanco'
WHERE id = 2;

-- actualizar cuando una columna es null
SET SQL_SAFE_UPDATES = 0; -- PARA DESACTIVAR MODO SEGURO
UPDATE customers SET address = 'SC' WHERE address IS NULL;
SET SQL_SAFE_UPDATES = 1; -- VOLVEMOS A ACTIVAR 

-- ==== DELETE QUERIES ====
DELETE FROM customers
WHERE id > 1; -- podemos poner una condicion o un id con =

-- podemos eliminar o vaciar la tabla sin eliminar la estructura
DELETE FROM personas;
TRUNCATE TABLE personas;

-- observamos los datos insertados
SELECT * FROM personas;
SELECT * FROM customers;

-- eliminamos la tabla
DROP TABLE personas;
DROP TABLE customers;

-- eliminamos la base de datos
DROP DATABASE prueba;


