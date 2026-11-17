-- where clause 
-- COMPARISION OPERATORS ================================
USE football_league;

SELECT * FROM players;

-- WHERE con igual, equal = 
SELECT * FROM players WHERE position = 'Forward';

-- WHERE con diferente o NOT EQUAL <> !=
SELECT * FROM players WHERE position <> 'Midfielder' AND position != 'Forward'; -- uso los dos distinto de

-- WHERE con greather than or equal to > y >=
SELECT * FROM players WHERE age < 21;
-- ahora tomando en cuenta el 21
SELECT * FROM players WHERE age <=21;

-- LOGICAL OPERATORS ===================================
-- AND 
SELECT last_name, age, position FROM players WHERE position = 'Goalkeeper' AND age > 30;
SELECT last_name, position FROM players WHERE position = 'Goalkeeper' OR position = 'Midfielder';
-- OR 
SELECT * FROM players WHERE position = 'Goalkeeper' OR age < 20;

-- NOT 
SELECT * FROM players WHERE NOT position = 'Forward' AND position='Goalkeeper';

SELECT * FROM players WHERE NOT(position = 'Forward' OR position='Goalkeeper');

SELECT * FROM players WHERE (NOT position = 'Forward' AND NOT position='Midfielder') AND NOT age <30;

-- RANGE ===================================
SELECT * FROM players WHERE age BETWEEN 17 AND 24;
SELECT * FROM players WHERE age NOT BETWEEN 17 AND 24; -- con not

-- IN =========================
SELECT * FROM players WHERE position IN ('Forward', 'Goalkeeper');
SELECT * FROM players WHERE position NOT IN ('Forward', 'Goalkeeper');

SELECT * FROM players WHERE last_name LIKE 'G%';
SELECT * FROM players WHERE first_name LIKE 'P____';
SELECT * FROM players WHERE last_name LIKE '__n%';



