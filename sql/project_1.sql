CREATE TABLE friends (
	id INTEGER,
	name TEXT,
	birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', '1990-03-30');

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Yairo', '1995-12-14');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Ramiro', '1996-01-13');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

ALTER TABLE friends
ADD email TEXT;

UPDATE friends
SET email = 'yair0o0@gmail.com'
WHERE name = 'Yairo';

UPDATE friends
SET email = 'ramiroh@hotmail.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;
