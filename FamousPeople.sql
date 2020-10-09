-- small set of “famous people
-- another table for things they do

CREATE TABLE computer_scientists
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

INSERT INTO computer_scientists
  (id, name)
VALUES
  (1, "Panini");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (2, "Al-Khwarizmi");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (3, "Banu Musa");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (4, "Al-Jazari");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (5, "Llull, Ramon");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (6, "Pascal, Blaise");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (92, "Pearl, Judea");

INSERT INTO computer_scientists
  (id, name)
VALUES
  (93, "LeCun, Yann");

CREATE TABLE achievements
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Achievement TEXT,
  year INTEGER
);

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (1, -500, "Ashtadhyayi Sanskrit grammar was systematised and technical, using metarules, transformations, and recursions, a forerunner to formal language theory and basis for Panini-Backus form used to describe programming languages");

INSERT INTO achievements
  (id, year, Achievement,)
VALUES
  (2, 830, "algorithm is derived from the algorism, the technique of performing arithmetic with Hindu–Arabic numerals popularised by al-Khwarizmi in his book On the Calculation with Hindu Numerals");

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (3, 850, "wrote the Book of Ingenious Devices, where they described what appears to be the first programmable machine, an automatic flute player");

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (4, 1206, "Invented programmable machines, including programmable humanoid robots, and the castle clock, an astronomical clock considered the first programmable analog computer");

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (5, 1300, "Designed multiple symbolic representations machines, and pioneered notions of symbolic representation and manipulation to produce knowledge—both of which were major influences on Leibniz");

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (6, 1642, "Invented the mechanical calculator");

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (92, 2011, "Fundamental contributions to artificial intelligence through the development of a calculus for probabilistic and causal reasoning"
);

INSERT INTO achievements
  (id, year, Achievement)
VALUES
  (93, 2018, "optical character recognition and computer vision using convolutional neural networks (CNN), and is a founding father of convolutional nets");

-- Match Up
SELECT computer_scientists.name, achievements.year, achievements.Achievement
  FROM achievements
  LEFT OUTER JOIN computer_scientists
  ON achievements.id = computer_scientists.id;

-- Counting
SELECT COUNT(*),
    CASE 
        WHEN year > 2000 THEN "recent"
        WHEN year > 1500 THEN "old"
        WHEN year > 1000 THEN "very old"
        ELSE "ancient"
    END as "ages"
FROM achievements
GROUP BY ages ORDER BY year;

-- FAILED
SELECT computer_scientists.name, achievements.year, achievements.Achievement
  FROM achievements
  LEFT OUTER JOIN computer_scientists
  ON achievements.id = computer_scientists.id;
    GROUP BY name ORDER BY name DESC;