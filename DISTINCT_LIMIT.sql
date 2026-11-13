
-- DISTINCT STATEMENT

SELECT * FROM players;
-- seleccionamos positions sin repetir
SELECT DISTINCT position
FROM players;
-- distinto pero con dos columnas
SELECT DISTINCT position, shirt_number
FROM players;

-- TOP, LIMIT(en mysql) STATEMENT
-- OBTENEMOS los 3 primeros
SELECT * FROM players LIMIT 3;

-- OBTENEMOS LOS 3 ULTIMOS
SELECT * FROM players ORDER BY id DESC LIMIT 3;