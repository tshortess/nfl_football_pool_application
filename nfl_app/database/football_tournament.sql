CREATE DATABASE football_tournament;

/*Use to drop and restart tables if schema changes.

DROP TABLE IF EXISTS user_pick;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS user_pool;
DROP TABLE IF EXISTS pool;
DROP TABLE IF EXISTS team;
DROP TABLE IF EXISTS user_table;

*/

CREATE TABLE user_table (
    user_id SERIAL,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(64) NOT NULL CHECK (email LIKE '%@%.%'),
    wants_reminder BOOLEAN DEFAULT false,
    password_hash varchar(200) NOT NULL,
    
    CONSTRAINT pk_tournament_user PRIMARY KEY (user_id)
);

CREATE TABLE team (
    team_id SMALLINT,
    team_name VARCHAR(32) NOT NULL UNIQUE,
    
    CONSTRAINT pk_tournament_team PRIMARY KEY (team_id)
);

CREATE TABLE pool (
    pool_id SERIAL,
    pool_name VARCHAR(50) NOT NULL UNIQUE,
    
    CONSTRAINT pk_tournament_pool PRIMARY KEY (pool_id)
);

CREATE TABLE user_pool (
    user_id INT,
    pool_id INT,
    wins DECIMAL(10, 1),
    losses INT,
    
    CONSTRAINT fk_tournament_pick_user FOREIGN KEY (user_id) REFERENCES user_table(user_id),
    CONSTRAINT fk_tournament_pool_id FOREIGN KEY (pool_id) REFERENCES pool(pool_id),
    CONSTRAINT pk_tournament_user_pool PRIMARY KEY (pool_id, user_id)

);

CREATE TABLE game (
    game_id SERIAL,
    game_week SMALLINT NOT NULL,
    game_year SMALLINT NOT NULL,
    home_team_id SMALLINT NOT NULL,
    away_team_id SMALLINT NOT NULL,
    home_team_score SMALLINT,
    away_team_score SMALLINT,
    winning_team_id SMALLINT,
    
    CONSTRAINT pk_tournament_game PRIMARY KEY (game_id),
    CONSTRAINT fk_tournament_home_id FOREIGN KEY (home_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_tournament_away_id FOREIGN KEY (away_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_tournament_winning_id FOREIGN KEY (winning_team_id) REFERENCES team(team_id)
);


CREATE TABLE user_pick (
    user_id INT,
    game_id INT,
    --although a constraint will be implemented on the client, technically a user could select a team that isn't in the game being played
    --in which case, they would get a "loss" for that pick; they also will not get credit for a half win if there is a tie and they selected
    --a team that wasn't playing
    pick_id INT,
    
    CONSTRAINT fk_tournament_pick_user FOREIGN KEY (user_id) REFERENCES user_table(user_id),
    CONSTRAINT fk_tournament_pick_game FOREIGN KEY (game_id) REFERENCES game(game_id),    
    CONSTRAINT fk_tournament_pick_pick FOREIGN KEY (pick_id) REFERENCES team(team_id),
    CONSTRAINT pk_tournament_pick PRIMARY KEY (user_id, game_id)
);

INSERT INTO team (team_id, team_name) 
VALUES (22, 'Arizona Cardinals'), 
       (1, 'Atlanta Falcons'),
       (33, 'Baltimore Ravens'),
       (2, 'Buffalo Bills'),
       (29, 'Carolina Panthers'),
       (3, 'Chicago Bears'),
       (4, 'Cincinnati Bengals'),
       (5, 'Cleveland Browns'),
       (6, 'Dallas Cowboys'),
       (7, 'Denver Broncos'),
       (8, 'Detroit Lions'),
       (9, 'Green Bay Packers'),
       (34, 'Houston Texans'),
       (11, 'Indianapolis Colts'),
       (30, 'Jacksonville Jaguars'),
       (12, 'Kansas City Chiefs'),
       (13, 'Las Vegas Raiders'),
       (24, 'Los Angeles Chargers'),
       (14, 'Los Angeles Rams'),
       (15, 'Miami Dolphins'),
       (16, 'Minnesota Vikings'),
       (17, 'New England Patriots'),
       (18, 'New Orleans Saints'),
       (19, 'New York Giants'),
       (20, 'New York Jets'),
       (21, 'Philadelphia Eagles'),
       (23, 'Pittsburgh Steelers'),
       (25, 'San Francisco 49ers'),
       (26, 'Seattle Seahawks'),
       (27, 'Tampa Bay Buccaneers'),
       (10, 'Tennessee Titans'),
       (28, 'Washington');
