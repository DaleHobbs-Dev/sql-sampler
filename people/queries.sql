DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS hobbies;
DROP TABLE IF EXISTS friends;

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);

SELECT * FROM persons;
SELECT * FROM hobbies;
SELECT * FROM friends;

-- Query to retrieve each person's name along with their hobbies
SELECT fullname, hobbies.name FROM persons JOIN hobbies ON hobbies.person_id = persons.id;

-- Query to retrieve each person's name along with their friends' names
SELECT persons.fullname AS student, partner.fullname AS partner
FROM friends 
JOIN persons ON friends.person1_id = persons.id 
JOIN persons partner ON friends.person2_id = partner.id;

-- Query to retrieve each person's name along with their friends' names, including those without friends
SELECT persons.fullname AS student, partner.fullname AS partner
FROM persons
LEFT JOIN friends ON persons.id = friends.person1_id
LEFT JOIN persons partner ON friends.person2_id = partner.id;

-- Query to retrieve each person's name along with their friends' names, excluding those without friends
SELECT persons.fullname AS student, partner.fullname AS partner
FROM persons
JOIN friends ON persons.id = friends.person1_id
JOIN persons partner ON friends.person2_id = partner.id;

-- Add a nickname column to the persons table and set a nickname for Bobby McBobbyFace
ALTER TABLE persons ADD COLUMN nickname TEXT default "";
UPDATE persons SET nickname = "Bobby" WHERE fullname = "Bobby McBobbyFace";

-- Add a new person with a nickname
INSERT INTO persons (fullname, age, nickname) VALUES ("Puffy McPufferson", "8", "Puff");

SELECT * FROM persons;