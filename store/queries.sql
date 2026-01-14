DROP TABLE IF EXISTS store;
CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, aisle INTEGER, quantity INTEGER, description TEXT, price REAL);

INSERT INTO store VALUES (1, 'apple', 5, 100, 'fresh red apples', 0.50);
INSERT INTO store VALUES (2, 'banana', 3, 150, 'ripe yellow bananas', 0.30);
INSERT INTO store VALUES (3, 'carrot', 7, 200, 'organic carrots', 0.20);
INSERT INTO store VALUES (4, 'detergent', 10, 50, 'liquid laundry detergent', 5.00);
INSERT INTO store VALUES (5, 'eggs', 2, 80, 'free-range eggs', 2.50);
INSERT INTO store VALUES (6, 'flour', 8, 60, 'all-purpose flour', 1.20);
INSERT INTO store VALUES (7, 'grape', 5, 90, 'seedless grapes', 2.00);
INSERT INTO store VALUES (8, 'honey', 12, 40, 'natural honey', 6.00);
INSERT INTO store VALUES (9, 'ice cream', 15, 70, 'vanilla ice cream', 3.50);
INSERT INTO store VALUES (10, 'jam', 11, 30, 'strawberry jam', 4.00);
INSERT INTO store VALUES (11, 'kiwi', 5, 120, 'fresh kiwifruit', 1.00);
INSERT INTO store VALUES (12, 'lettuce', 4, 110, 'crisp lettuce', 0.80);
INSERT INTO store VALUES (13, 'milk', 1, 90, 'whole milk', 2.00);
INSERT INTO store VALUES (14, 'nuts', 9, 70, 'mixed nuts', 5.50);
INSERT INTO store VALUES (15, 'oranges', 3, 130, 'juicy oranges', 0.60);

-- SELECT * FROM store;
SELECT aisle, SUM(quantity) FROM store GROUP BY aisle;
SELECT name, price FROM store WHERE price < 2.00;
SELECT COUNT(*) AS high_quantity_items FROM store WHERE quantity >= 100;
SELECT name, quantity FROM store WHERE quantity >= 100;
SELECT AVG(price) FROM store;
SELECT name FROM store WHERE id IN (3, 7, 12);
SELECT name FROM store WHERE name LIKE "%AP%";
SELECT name AS ordered_names FROM store ORDER BY name DESC;
-- Limit results to 5 entries, skipping the first 5
SELECT id, name FROM store ORDER BY name ASC LIMIT 5 OFFSET 5;