-- a game that stores scores
-- the app stores your data in a SQL database 
-- write SQL statements that might look like their own SQL.

-- CREATE a table to store the data.
-- INSERT a few example rows in the table.
-- Use an UPDATE to emulate what happens when you edit data in the app.
-- Use a DELETE to emulate what happens when you delete data in the app.

CREATE table game (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player TEXT,
    score INTEGER,
    skill TEXT);
    
INSERT INTO game (player, score, skill)
    VALUES ("Moki", 999, "lightsaber");
INSERT INTO game (player, score, skill)
    VALUES ("Moe", 875, "gun");
INSERT INTO game (player, score, skill)
    VALUES ("Killer", 66, "knife");
INSERT INTO game (player, score, skill)
    VALUES ("imposter", 23, "claws");
INSERT INTO game (player, score, skill)
    VALUES ("friend", 777, "staff");
INSERT INTO game (player, score, skill)
    VALUES ("foe", 111, "spear");

SELECT * FROM game;

UPDATE game SET skill = "lightsaber" WHERE skill = "sword";

SELECT * FROM game;

DELETE FROM game WHERE player = "imposter";

ALTER TABLE game ADD health INTEGER default 10;

SELECT * FROM game;

UPDATE game SET health = 99 WHERE id = 1;
UPDATE game SET health = 80 WHERE id = 2;
UPDATE game SET health = 50 WHERE id = 3;

SELECT * FROM game;

INSERT INTO game (player, score, skill, health) VALUES ("zombie",
    9999, "teeth", 9999);

SELECT * FROM game;