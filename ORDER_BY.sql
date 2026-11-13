
-- Order by statements
USE football_league;

SELECT * FROM players;
SELECT last_name, age FROM players WHERE age<30 ORDER BY age DESC;
SELECT id, last_name, age FROM players WHERE age<25 ORDER BY age;
SELECT id, last_name, age FROM players ORDER BY age ASC;
SELECT last_name, age, position FROM players ORDER BY position ASC, age DESC;

-- faltan repasar algunos casos NOTION