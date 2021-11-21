CREATE DATABASE football_tournament;

/*drop table user_pick;
drop table game;
drop table pool;
drop table team;
drop table user_table;
Used to drop and restart tables if schema changes.*/

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
    user_id INT,
    pool_id INT,
    
    CONSTRAINT fk_tournament_pick_user FOREIGN KEY (user_id) REFERENCES user_table(user_id)
);

CREATE TABLE game (
    game_id SERIAL,
    game_week SMALLINT NOT NULL,
    game_year SMALLINT NOT NULL,
    home_team_id SMALLINT NOT NULL,
    away_team_id SMALLINT NOT NULL,
    home_team_score SMALLINT,
    away_team_score SMALLINT,
    
    CONSTRAINT pk_tournament_game PRIMARY KEY (game_id),
    CONSTRAINT fk_tournament_home_id FOREIGN KEY (home_team_id) REFERENCES team(team_id),
    CONSTRAINT fk_tournament_away_id FOREIGN KEY (away_team_id) REFERENCES team(team_id)
);


CREATE TABLE user_pick (
    user_id INT,
    game_id INT,
    pick_id INT,
    
    CONSTRAINT fk_tournament_pick_user FOREIGN KEY (user_id) REFERENCES user_table(user_id),
    CONSTRAINT fk_tournament_pick_game FOREIGN KEY (game_id) REFERENCES game(game_id),
    CONSTRAINT fk_tournament_pick_pick FOREIGN KEY (pick_id) REFERENCES team(team_id)
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
