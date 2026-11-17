-- DML
-- Crear base de datos de prueba
CREATE DATABASE prueba;
-- Usar base de datos de prueba
USE prueba;
-- Crear una tabla
CREATE TABLE personas(
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    number INT,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);
-- Modificar una tabla o añadirle una nueva columna 
ALTER TABLE personas
ADD email VARCHAR(50) NOT NULL; -- Añadimos una nueva columna
-- modificar el tipo de dato y que sea not null number
ALTER TABLE personas
MODIFY COLUMN number VARCHAR(50) NOT NULL;
-- MODIFICAR UNA COLUMNA y tambien el nombre de ella
ALTER TABLE personas
CHANGE COLUMN number telefono INT NULL;

-- observamos que se haya creado correctamente
SELECT * FROM personas;

-- Eliminamos una columna por ejemplo number
ALTER TABLE personas
DROP COLUMN number;

-- observamos que se haya eliminado correctamente
SELECT * FROM personas;

-- eliminamos una tabla
DROP TABLE personas;
-- eliminamos la base de datos
DROP DATABASE prueba;


-- ==========================================
-- TEMAS PENDIENTES PARA COMPLETAR MIS APUNTES
-- ==========================================

-- 1. INSERT (DML - Manipulación de datos)
-- TODO: Inserción simple de un solo registro (INSERT INTO tabla (cols) VALUES (vals))
-- TODO: Inserción masiva de múltiples registros en una sola sentencia
-- TODO: Inserción omitiendo columnas opcionales (que permiten NULL o tienen DEFAULT)
-- TODO: Copiar datos de una tabla a otra (INSERT INTO ... SELECT ...)

-- 2. ALTER TABLE AVANZADO (DDL - Estructura)
-- TODO: Añadir restricciones a una tabla existente (ADD CONSTRAINT UNIQUE / FOREIGN KEY)
-- TODO: Eliminar una restricción específica (DROP FOREIGN KEY / DROP INDEX)
-- TODO: Renombrar una tabla completa (RENAME TABLE viejo TO nuevo)
-- TODO: Reordenar la posición visual de una columna (MODIFY ... AFTER columna / FIRST)

-- 3. BORRADOS Y LIMPIEZA (DDL y DML)
-- TODO: TRUNCATE TABLE (vaciar todos los registros rápido y reiniciar el AUTO_INCREMENT)
-- TODO: DELETE FROM con WHERE (eliminar registros específicos sin borrar la tabla)
-- TODO: DROP DATABASE (eliminar una base de datos completa)

-- 4. SIGUIENTE NIVEL (DML Y CONSULTAS)
-- TODO: UPDATE con SET y WHERE (actualizar datos existentes)
-- TODO: SELECT con filtros y orden (WHERE, ORDER BY, LIMIT, GROUP BY)
-- TODO: JOINS (unir tablas relacionadas mediante PRIMARY KEY y FOREIGN KEY)



