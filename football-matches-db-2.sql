
-- seleccionar football matches db
USE football_matches;
-- creamos la tabla de arbitros
CREATE TABLE referees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100)
    );
    
-- creamos la tabla para partidos
CREATE TABLE matches(
	id INT AUTO_INCREMENT PRIMARY KEY,
    match_date DATETIME NOT NULL,
    home_team_id INT NOT NULL,
    away_team_id INT NOT NULL,
    competition_id INT NOT NULL,
    referee_id INT,
    home_score INT DEFAULT 0,
    away_score INT DEFAULT 0,
    
    FOREIGN KEY (home_team_id)
    REFERENCES football_league.teams(id),
    
    FOREIGN KEY (away_team_id)
    REFERENCES football_league.teams(id),
    
    FOREIGN KEY (competition_id)
    REFERENCES football_league.competitions(id),
    
    FOREIGN KEY (referee_id)
    REFERENCES referees(id)
    );
    
-- creamos la tabla goles
CREATE TABLE goals(
	id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    minute INT NOT NULL,
    
    FOREIGN KEY (match_id)
    REFERENCES matches(id),
    
    FOREIGN KEY (player_id)
    REFERENCES football_league.players(id)
    );
    
-- crearemos la tabla para las estadisticas de jugador 
CREATE TABLE player_statistics(
	id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    minutes_played INT DEFAULT 0,
    shots INT DEFAULT 0,
    assists INT DEFAULT 0,
    yellow_cards INT DEFAULT 0,
    red_cards INT DEFAULT 0,
    
    UNIQUE(match_id, player_id),
    
    FOREIGN KEY (match_id)
    REFERENCES matches(id),

    FOREIGN KEY (player_id)
    REFERENCES football_league.players(id)
    );
    
    
    
    
    
    