
-- SELECT queries

-- select database
USE football_league;

-- select all records from any table, in this case teams
SELECT * FROM teams;

-- select spscific colums from a table
SELECT * FROM players; -- this selects all collumns
SELECT first_name, last_name FROM players; -- this select only first_name and las_name

-- WHERE QUERIES
SELECT * FROM players;
SELECT last_name, age FROM players WHERE age < 25;
SELECT first_name, age FROM players WHERE age = 26;
SELECT last_name, age, position FROM players WHERE age<25 AND position = 'Forward';
SELECT last_name, position FROM players WHERE position = 'Goalkeeper' OR position = 'Forward';
SELECT last_name, position FROM players WHERE NOT position = 'Forward';
SELECT last_name, age FROM players WHERE age BETWEEN 17 AND 21;
SELECT last_name, age FROM players WHERE age IN (17,21);
SELECT last_name, age FROM players WHERE age NOT IN (17,21);

-- faltan repasar lagunos de NOTION







