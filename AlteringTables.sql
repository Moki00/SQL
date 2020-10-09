CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
/* After user submits a diary log */
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "OhNoesGuy and I made up and now we're best friends forever and we celebrated with a tub of ice cream.");
    
ALTER TABLE diary_logs ADD emotion TEXT default "unknown";

INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2015-04-03",
    "We went to Disneyland!", "happy");
    
SELECT * FROM diary_logs;

DROP TABLE diary_logs;

-- We've created a database of clothes,
-- Use ALTER to add a 'price' column to the table.
-- Then select all the columns in each row 

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

ALTER TABLE clothes ADD price INTEGER default 0;

SELECT * FROM clothes;

-- UPDATE customers SET age = 33 WHERE id = 73;

UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

SELECT * FROM clothes;

INSERT INTO clothes (type, design, price) VALUES ("smart-watch",
    "007 Bond", 9999);

SELECT * FROM clothes;