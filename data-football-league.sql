USE football_league;
-- insertamos stadiums 
INSERT INTO stadiums (name, city, capacity)
VALUES
('Santiago Bernabeu', 'Madrid', 83186),
('Spotify Camp Nou', 'Barcelona', 99354),
('Riyadh Air Metropolitano', 'Madrid', 70692);

-- insertamos equipos
INSERT INTO teams
(name, country, founded_year, stadium_id)
VALUES
('Real Madrid', 'Spain', 1902, 1),
('FC Barcelona', 'Spain', 1899, 2),
('Atletico Madrid', 'Spain', 1903, 3);

-- insertamos jugadores
INSERT INTO players
(first_name, last_name, age, position, shirt_number, team_id)
VALUES

-- REAL MADRID
('Kylian', 'Mbappe', 26, 'Forward', 9, 1),
('Vinicius', 'Junior', 24, 'Forward', 7, 1),
('Jude', 'Bellingham', 21, 'Midfielder', 5, 1),
('Federico', 'Valverde', 26, 'Midfielder', 8, 1),
('Thibaut', 'Courtois', 32, 'Goalkeeper', 1, 1),

-- FC BARCELONA
('Robert', 'Lewandowski', 36, 'Forward', 9, 2),
('Lamine', 'Yamal', 17, 'Forward', 19, 2),
('Pedri', 'Gonzalez', 22, 'Midfielder', 8, 2),
('Raphinha', 'Dias', 28, 'Forward', 11, 2),
('Pablo', 'Gavi', 20, 'Midfielder', 6, 2),

-- ATLETICO MADRID
('Antoine', 'Griezmann', 33, 'Forward', 7, 3),
('Julian', 'Alvarez', 25, 'Forward', 19, 3),
('Koke', 'Resurreccion', 32, 'Midfielder', 6, 3),
('Jan', 'Oblak', 32, 'Goalkeeper', 13, 3),
('Rodrigo', 'De Paul', 30, 'Midfielder', 5, 3);

-- insertamos competiciones
INSERT INTO competitions (name, country, season)
VALUES ('UEFA Champions League', 'Europe', '2025/2026');


