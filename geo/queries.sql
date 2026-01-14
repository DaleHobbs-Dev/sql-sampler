DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    id INTEGER PRIMARY KEY,
    city TEXT,
    country TEXT,
    population INTEGER,
    latitude REAL,
    longitude REAL
);

INSERT INTO cities VALUES (1, 'Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609);
INSERT INTO cities VALUES (2, 'Toronto', 'Canada', 2795060, 43.653226, -79.383184);
INSERT INTO cities VALUES (3, 'Houston', 'United States', 2195914, 29.760427, -95.369803);
INSERT INTO cities VALUES (4, 'New York', 'United States', 8405837, 40.712784, -74.005941);
INSERT INTO cities VALUES (5, 'Philadelphia', 'United States', 1553165, 39.952584, -75.165222);
INSERT INTO cities VALUES (6, 'Havana', 'Cuba', 2106146, 23.05407, -82.345189);
INSERT INTO cities VALUES (7, 'Mexico City', 'Mexico', 8555500, 19.432608, -99.133208);
INSERT INTO cities VALUES (8, 'Phoenix', 'United States', 1513367, 33.448377, -112.074037);
INSERT INTO cities VALUES (9, 'Los Angeles', 'United States', 3884307, 34.052234, -118.243685);
INSERT INTO cities VALUES (10, 'Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674);
INSERT INTO cities VALUES (11, 'Montreal', 'Canada', 1717767, 45.501689, -73.567256);
INSERT INTO cities VALUES (12, 'Chicago', 'United States', 2718782, 41.878114, -87.629798);

-- Query 1: Retrieve all cities in Canada along with their populations.
SELECT city, population FROM cities WHERE country = "Canada";
-- Query 2: Retrieve all cities in the United States ordered by latitude in descending order.
SELECT city, population FROM cities WHERE country = "United States" ORDER BY latitude DESC;
-- Query 3: Retrieve cities west of Chicago ordered from west to east.
SELECT city, longitude FROM cities WHERE longitude < (SELECT longitude FROM cities WHERE city = 'Chicago') ORDER BY longitude ASC;
-- Query 4: Retrieve two most populated cities in Mexico.
SELECT city, population FROM cities WHERE country = "Mexico" ORDER BY population DESC LIMIT 2;
-- Query 5: Retrieve the third and fourth largest cities in the United States by population.
SELECT city, population FROM cities WHERE country = "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;