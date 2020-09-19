PostGres SQL
----------

psql -U postgres
p/w=A15h1t3ru,demo 3ig0 de

postgres=# \c facewho
You are now connected to database "test" as user "postgres"

\c "data base name"

SELECT * FROM users;
SELECT * FROM "table name";

SELECT * FROM users JOIN login ON users.name = login.name;

CREATE TABLE users (
 ID serial PRIMARY KEY,
 name VARCHAR (100),
 email text UNIQUE NOT NULL,
 entries BIGINT DEFAULT 0,
 joined TIMESTAMP NOT NULL
);

CREATE TABLE login (
 ID serial NOT NULL PRIMARY KEY,
 hash VARCHAR (100) NOT NULL,
 email text UNIQUE NOT NULL
);

DROP TABLE login;

DELETE FROM users WHERE name='Suki';

INSERT INTO login (secret, name) VALUES ('ABC', 'Moki');

CREATE DATABASE test;
always end with semicolon --> ;

CREATE TABLE table_name (column1_datatype, column2_datatype);
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
INSERT INTO users (name, age, birthday) VALUES ('John', 44, '1999-08-27');

ALTER TABLE users ADD score smallint;
UPDATE table_name
SET some_column = some_value
WHERE some_column = some_value;^C
UPDATE users SET score = 50 WHERE name='Moki';
UPDATE 1

SELECT * FROM users;
see all data

SELECT * FROM users WHERE name LIKE 'A%';
selects names that start with "A"

SELECT * FROM users WHERE name LIKE '%i';
selects names that end with "i"

SELECT * FROM users ORDER BY score DESC;
see high to low scores

SELECT * FROM users ORDER BY score ASC;
see low to high scores

SELECT AVG(score) FROM users;
SELECT SUM(age) FROM users;
SELECT COUNT(name) FROM users;

\d
for a List of relations


sudo -i -u postgres
psql

adduser moki

\q
exit

visudo

vi /etc/ssh/ss

CREATE TABLE users (
	id serial PRIMARY KEY,
	name VARCHAR(100),
	email text UNIQUE NOT NULL,
	entries BIGINT DEFAULT 0,
	joined TIMESTAMP NOT NULL
);

