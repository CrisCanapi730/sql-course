-- SQL Joins

-- NO JOIN
-- only select all from two tables
SELECT * FROM coaches;
SELECT * FROM teams;

-- INNER JOIN ========================================
SELECT * FROM teams
INNER JOIN coaches 
ON teams.id = coaches.team_id;
-- the same only the order of the columns changes
SELECT * FROM coaches
INNER JOIN teams 
ON teams.id = coaches.team_id;
-- with alias in the name of tables
SELECT t.name, c.first_name, c.last_name
FROM teams as t
INNER JOIN coaches as c
ON t.id = c.team_id;

-- Left JOIN =======================================
SELECT * FROM coaches
LEFT JOIN teams
ON teams.id = coaches.team_id;

SELECT * FROM teams
LEFT JOIN coaches
ON teams.id = coaches.team_id;

-- RIGHT JOIN
SELECT * FROM coaches
RIGHT JOIN teams
ON teams.id = coaches.team_id;

-- FULL JOIN dont work on MySQL
SELECT * FROM teams
FULL JOIN coaches
ON teams.id = coaches.team_id;

-- FULL JOIN WORKING ON MySQL
SELECT * FROM teams
LEFT JOIN coaches ON teams.id = coaches.team_id
UNION
SELECT * FROM teams
RIGHT JOIN coaches ON teams.id = coaches.team_id;


-- LEFT ANTI JOIN , only the thable of the left without matching data
-- OBTENER TODOS LOS EQUIPOS QUE NO TIENEN NINGUN COACH
SELECT * FROM teams
LEFT JOIN coaches
ON teams.id = coaches.team_id
WHERE coaches.team_id IS NULL;




