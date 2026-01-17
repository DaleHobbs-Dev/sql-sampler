DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    role TEXT,
    name TEXT,
    building TEXT,
    years_employed INTEGER
);

INSERT INTO employees (role, name, building, years_employed) VALUES
('Engineer', 'Becky A.', '1e', 4),
('Engineer', 'Dan B.', '1e', 2),
('Engineer', 'Sharon F.', '1e', 6),
('Engineer', 'Dan M.', '1e', 4),
('Engineer', 'Malcom S.', '1e', 1),
('Artist', 'Tylar S.', '2w', 2),
('Artist', 'Sherman D.', '2w', 8),
('Artist', 'Jakob J.', '2w', 6),
('Artist', 'Lillia A.', '2w', 7),
('Artist', 'Brandon J.', '2w', 7),
('Manager', 'Scott K.', '1e', 9),
('Manager', 'Shirlee M.', '1e', 3),
('Manager', 'Daria O.', '2w', 6);

-- Find the Longest Employed Employee
SELECT name, MAX(years_employed) AS longest_employed FROM employees;

-- For each role, find the average years employed
SELECT role, AVG(years_employed) AS average_years_employed FROM employees GROUP BY role;

-- Find total number of emmployee years worked in each building
SELECT building, SUM(years_employed) AS total_years_worked FROM employees GROUP BY building;

-- Find total number of years worked by Engineers
SELECT role, SUM(years_employed) FROM employees GROUP BY role HAVING role = "Engineer";

-- Complete SELECT Query
-- SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
-- FROM mytable
--     JOIN another_table
--       ON mytable.column = another_table.column
--     WHERE constraint_expression
--     GROUP BY column
--     HAVING constraint_expression
--     ORDER BY column ASC/DESC
--     LIMIT count OFFSET COUNT;