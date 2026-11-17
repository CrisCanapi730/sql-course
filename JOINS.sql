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


-- LEFT ANTI JOIN ===== , only the thable of the left without matching data
-- OBTENER TODOS LOS EQUIPOS QUE NO TIENEN NINGUN COACH
SELECT * FROM teams
LEFT JOIN coaches
ON teams.id = coaches.team_id
WHERE coaches.team_id IS NULL;
-- RIGHT ANTI JOIN ===== , only the table on the right withou the matching data between the two tables
-- OBTENER LOS COACHES QUE NO PERTENECEN A NINGUN EQUIPO
SELECT * FROM teams
RIGHT JOIN coaches
ON teams.id = coaches.team_id
WHERE teams.id IS NULL;

-- FULL ANTI JOIN, THIS DONT WORKS ON MYSQL BUT it works on postgreSQL and SQL
SELECT * FROM teams
FULL JOIN coaches
ON teams.id = coaches.team_id
WHERE teams.id IS NULL 
OR coaches.team_id IS NULL;

-- FULL ANTI JOIN in MySQL
SELECT * FROM teams
LEFT JOIN coaches
ON teams.id = coaches.team_id
WHERE coaches.team_id IS NULL
UNION
SELECT * FROM teams
RIGHT JOIN coaches
ON teams.id = coaches.team_id
WHERE teams.id IS NULL;

-- OBTENER LOS COACHES QUE TIENEN UN EQUIPO SIN USAR INNER JOIN
SELECT * FROM coaches
LEFT JOIN teams
ON coaches.team_id = teams.id
WHERE coaches.team_id IS NOT NULL;
-- the same with an inner join
SELECT * FROM coaches
INNER JOIN teams
ON coaches.team_id = teams.id;

-- CROSS Join -- generate all posible combinations
SELECT * FROM coaches
CROSS JOIN teams;



