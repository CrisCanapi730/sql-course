-- Crear las bases de datos
CREATE DATABASE football_league;
CREATE DATABASE football_matches;
-- Mostrar las bases de datos actuales
SHOW DATABASES;
-- Seleccionar una base de datos para usar
USE football_league;
-- Crear tabla stadiums
CREATE TABLE stadiums(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    capacity INT 
    );
-- Crear tabla teams
CREATE TABLE teams(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    founded_year INT,
    stadium_id INT,
    
    FOREIGN KEY(stadium_id)
    REFERENCES stadiums(id)
    );
    
-- tabla para entrenadores
CREATE TABLE coaches(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    team_id INT UNIQUE, -- unique relacion (1:1)
    
    FOREIGN KEY(team_id)
    REFERENCES teams(id)
    );
-- tabla para jugadores
CREATE TABLE players(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT,
    position VARCHAR(50),
    shirt_number INT,
    team_id INT, -- relacion 1 a muchos (1:N)
    -- un equipo puede tener muchos jugadores
    
    FOREIGN KEY (team_id)
    REFERENCES teams(id)
    );
-- tabla para competiciones
CREATE TABLE competitions(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100),
    season VARCHAR(20)
    );
    

    
    
    
    







    
    