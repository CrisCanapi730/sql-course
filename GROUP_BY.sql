
-- GROUP BY SENTENCE

USE football_league;

SELECT * FROM players;
-- using group by
-- obtenemos el promedio de edad por posicion
SELECT position, AVG(age) FROM players GROUP BY position;
-- lo mismo pero le agregamos un alias a una columna
SELECT position, AVG(age) AS edad_promedio FROM players GROUP BY position; -- con alias
-- CON DOS COLUMNAS NUEVAS AGRUPANDO
SELECT position, AVG(age), SUM(shirt_number) FROM players GROUP BY position;

--  3 formas de redondear
-- REDONDEANDO DOS DECIMALES
SELECT position, ROUND(AVG(age), 2) FROM players GROUP BY position; 
-- CONVIERTE A ENTERO CON CAST
SELECT position, CAST(AVG(age) AS SIGNED) FROM players GROUP BY position;
-- CORTA LOS DECIMALES SIN REDONDEAR
SELECT position, TRUNCATE(AVG(age),0) FROM players GROUP BY position; -- puede escribirse solo TRUNC 




