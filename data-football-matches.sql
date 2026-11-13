USE football_matches;
-- insertamos datos en los arbitros
INSERT INTO referees
(first_name, last_name, nationality)
VALUES
('Szymon', 'Marciniak', 'Polish'),
('Clement', 'Turpin', 'French'),
('Daniele', 'Orsato', 'Italian');


-- insertamos partidos
INSERT INTO matches
(match_date, home_team_id, away_team_id,
 competition_id, referee_id, home_score, away_score)
VALUES
-- Partido 1: Real Madrid vs Barcelona
('2025-02-12 21:00:00', 1, 2, 1, 1, 2, 1),
-- Partido 2: Atletico vs Real Madrid
('2025-03-05 21:00:00', 3, 1, 1, 2, 1, 2),
-- Partido 3: Barcelona vs Atletico
('2025-04-09 21:00:00', 2, 3, 1, 3, 3, 2);


INSERT INTO goals (match_id, player_id, minute)
VALUES
-- Real Madrid 2 - 1 Barcelona
(1, 1, 25),
(1, 2, 67),
(1, 9, 80),
-- Atletico 1 - 2 Real Madrid
(2, 12, 30),
(2, 3, 55),
(2, 1, 88),
-- Barcelona 3 - 2 Atletico
(3, 6, 15),
(3, 7, 35),
(3, 9, 60),
(3, 11, 72),
(3, 12, 85);

-- insertamos estadisticas de jugador
INSERT INTO player_statistics
(match_id, player_id, minutes_played,
 shots, assists, yellow_cards, red_cards)
VALUES
-- Partido 1
(1, 1, 90, 5, 0, 0, 0),
(1, 2, 90, 4, 0, 1, 0),
(1, 9, 90, 3, 0, 0, 0),
-- Partido 2
(2, 12, 90, 3, 0, 0, 0),
(2, 3, 90, 2, 1, 0, 0),
(2, 1, 90, 4, 0, 0, 0),
-- Partido 3
(3, 6, 90, 4, 0, 0, 0),
(3, 7, 90, 3, 1, 0, 0),
(3, 12, 90, 3, 0, 1, 0);