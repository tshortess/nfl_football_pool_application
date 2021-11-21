INSERT INTO user_table (username, email, password_hash) 
VALUES ('first_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'), 
       ('second_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('qwemlkm', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('qwe;lm_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('dkeo_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('fpow_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('qweqwed_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('poakd_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('ppwqoie_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('clnasdl_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('lmdpok_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe'),
       ('wmdpodm_person', 'first_person@madeup.com', 'qoiwjeoiqjweojqe');

INSERT INTO pool (user_id, pool_id)
VALUES ((SELECT user_id FROM user_table WHERE username = 'first_person'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'second_person'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'qwemlkm'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'qwe;lm_person'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'dkeo_person'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'fpow_person'), 1),
       ((SELECT user_id FROM user_table WHERE username = 'qweqwed_person'), 2),
       ((SELECT user_id FROM user_table WHERE username = 'poakd_person'), 2),
       ((SELECT user_id FROM user_table WHERE username = 'ppwqoie_person'), 2),
       ((SELECT user_id FROM user_table WHERE username = 'clnasdl_person'), 2),
       ((SELECT user_id FROM user_table WHERE username = 'lmdpok_person'), 2),
       ((SELECT user_id FROM user_table WHERE username = 'wmdpodm_person'), 2);

INSERT INTO game (game_week, game_year, home_team_id, away_team_id)
VALUES (7, 2021, 22, 1),
       (7, 2021, 33, 2),
       (7, 2021, 29, 3),
       (7, 2021, 4, 5),
       (7, 2021, 6, 7),
       (7, 2021, 8, 9),
       (7, 2021, 34, 11),
       (7, 2021, 30, 12);
       
INSERT INTO user_pick (user_id, game_id, pick_id)
VALUES (1, 1, 1),
       (2, 1, 1),
       (3, 1, 1),
       (4, 1, 1),
       (5, 1, 1),
       (6, 1, 1),
       (7, 1, 1),
       (8, 1, 1),
       (9, 1, 1),
       (10, 1, 1),
       (11, 1, 1),
       (12, 1, 1),
       (1, 2, 2),
       (2, 2, 2),
       (3, 2, 33),
       (4, 2, 33),
       (5, 2, 2),
       (6, 2, 33),
       (7, 2, 2),
       (8, 2, 33),
       (9, 2, 2),
       (10, 2, 33),
       (11, 2, 33),
       (12, 2, 33),
       (1, 3, 29),
       (2, 3, 29),
       (3, 3, 29),
       (4, 3, 29),
       (5, 3, 3),
       (6, 3, 3),
       (7, 3, 3),
       (8, 3, 3),
       (9, 3, 3),
       (10, 3, 3),
       (11, 3, 3),
       (12, 3, 3),
       (1, 4, 4),
       (2, 4, 4),
       (3, 4, 4),
       (4, 4, 4),
       (5, 4, 4),
       (6, 4, 5),
       (7, 4, 5),
       (8, 4, 4),
       (9, 4, 5),
       (10, 4, 4),
       (11, 4, 5),
       (12, 4, 4),
       (1, 5, 6),
       (2, 5, 6),
       (3, 5, 6),
       (4, 5, 6),
       (5, 5, 6),
       (6, 5, 6),
       (7, 5, 6),
       (8, 5, 6),
       (9, 5, 6),
       (10, 5, 7),
       (11, 5, 7),
       (12, 5, 7),
       (1, 6, 8),
       (2, 6, 9),
       (3, 6, 9),
       (4, 6, 9),
       (5, 6, 9),
       (6, 6, 9),
       (7, 6, 9),
       (8, 6, 8),
       (9, 6, 9),
       (10, 6, 8),
       (11, 6, 8),
       (12, 6, 8),
       (1, 7, 34),
       (2, 7, 34),
       (3, 7, 34),
       (4, 7, 11),
       (5, 7, 11),
       (6, 7, 11),
       (7, 7, 11),
       (8, 7, 11),
       (9, 7, 11),
       (10, 7, 11),
       (11, 7, 11),
       (12, 7, 11),
       (1, 8, 12),
       (2, 8, 12),
       (3, 8, 12),
       (4, 8, 12),
       (5, 8, 30),
       (6, 8, 30),
       (7, 8, 30),
       (8, 8, 12),
       (9, 8, 12),
       (10, 8, 12),
       (11, 8, 12),
       (12, 8, 12);
       
UPDATE game SET home_team_score = 2, away_team_score = 0 WHERE game_id = 1;
UPDATE game SET home_team_score = 0, away_team_score = 21 WHERE game_id = 2;
UPDATE game SET home_team_score = 3, away_team_score = 3 WHERE game_id = 3;


--The following will be services in server that run after game days

--update winner for games with scores
UPDATE game 
SET winning_team_id = CASE WHEN away_team_score < home_team_score THEN home_team_id WHEN away_team_score > home_team_score THEN away_team_id ELSE NULL END
WHERE winning_team_id IS NULL AND home_team_score IS NOT NULL AND away_team_score IS NOT NULL;

--update user records
UPDATE pool 
SET wins = 
        (SELECT COUNT(*) FROM user_pick 
        INNER JOIN game ON game.game_id = user_pick.game_id
        WHERE pick_id = game.winning_team_id AND game.winning_team_id IS NOT NULL AND pool.user_id = user_pick.user_id) + 
        (0.5 * (SELECT COUNT(*) FROM user_pick 
        INNER JOIN game ON game.game_id = user_pick.game_id
        WHERE home_team_score IS NOT NULL AND away_team_score IS NOT NULL AND game.winning_team_id IS NULL AND pool.user_id = user_pick.user_id AND (user_pick.pick_id = home_team_id OR user_pick.pick_id = away_team_id))), 
    losses = 
        (SELECT COUNT(*) FROM user_pick 
        INNER JOIN game ON game.game_id = user_pick.game_id
        WHERE pick_id != game.winning_team_id AND game.winning_team_id IS NOT NULL AND pool.user_id = user_pick.user_id);