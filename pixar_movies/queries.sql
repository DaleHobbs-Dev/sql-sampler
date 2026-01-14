DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS boxoffice;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER
);

CREATE TABLE boxoffice (
    movie_id INTEGER PRIMARY KEY,
    rating REAL,
    domestic_sales INTEGER,
    international_sales INTEGER
);

INSERT INTO movies VALUES (1, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO movies VALUES (2, 'A Bug''s Life', 'John Lasseter', 1998, 95);
INSERT INTO movies VALUES (3, 'Toy Story 2', 'John Lasseter', 1999, 93);
INSERT INTO movies VALUES (4, 'Monsters, Inc.', 'Pete Docter', 2001, 92);
INSERT INTO movies VALUES (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107);
INSERT INTO movies VALUES (6, 'The Incredibles', 'Brad Bird', 2004, 116);
INSERT INTO movies VALUES (7, 'Cars', 'John Lasseter', 2006, 117);
INSERT INTO movies VALUES (8, 'Ratatouille', 'Brad Bird', 2007, 115);
INSERT INTO movies VALUES (9, 'WALL-E', 'Andrew Stanton', 2008, 104);
INSERT INTO movies VALUES (10, 'Up', 'Pete Docter', 2009, 101);
INSERT INTO movies VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103);
INSERT INTO movies VALUES (12, 'Cars 2', 'John Lasseter', 2011, 120);
INSERT INTO movies VALUES (13, 'Brave', 'Brenda Chapman', 2012, 102);
INSERT INTO movies VALUES (14, 'Monsters University', 'Dan Scanlon', 2013, 110);

INSERT INTO boxoffice VALUES (5, 8.2, 380843261, 555900000);
INSERT INTO boxoffice VALUES (14, 7.4, 268492764, 475066843);
INSERT INTO boxoffice VALUES (8, 8.0, 206445654, 417277164);
INSERT INTO boxoffice VALUES (12, 6.4, 191452396, 368400000);
INSERT INTO boxoffice VALUES (3, 7.9, 245852179, 239163000);
INSERT INTO boxoffice VALUES (6, 8.0, 261441092, 370001000);
INSERT INTO boxoffice VALUES (9, 8.4, 223808164, 297503696);
INSERT INTO boxoffice VALUES (11, 8.4, 415004880, 648167030);
INSERT INTO boxoffice VALUES (1, 8.3, 191796233, 170162503);
INSERT INTO boxoffice VALUES (7, 7.2, 244082982, 217900167);
INSERT INTO boxoffice VALUES (10, 8.3, 293004164, 438338580);
INSERT INTO boxoffice VALUES (4, 8.1, 289916256, 272900000);
INSERT INTO boxoffice VALUES (2, 7.2, 162798565, 200600000);
INSERT INTO boxoffice VALUES (13, 7.2, 237283207, 301700000);

-- Query to retrieve movie titles along with their domestic and international sales
SELECT title, domestic_sales, international_sales FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id;

-- Query to show sales numbers for each movie that did better internationally than domestically
SELECT title, domestic_sales, international_sales FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id WHERE international_sales > domestic_sales;

-- Query to list all movies along with their ratings, ordered from highest to lowest rating
SELECT title, rating FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id ORDER BY rating DESC;