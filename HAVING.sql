
-- HAVING STATEMENT

SELECT * FROM players;
-- ejemplo usando having
SELECT position, ROUND(AVG(age), 0) AS edad_promedio
FROM players
GROUP BY position
HAVING AVG(age)<30;

-- ejemplo con where mas
SELECT position, ROUND(AVG(shirt_number), 0) AS numero_promedio
FROM players
WHERE shirt_number < 10
GROUP BY position
HAVING AVG(shirt_number) < 8