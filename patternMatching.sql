-- Creating a database named 'GEU1'
CREATE DATABASE GEU1;

-- Switching to the 'GEU1' database
USE GEU1;

-- Creating a table 'Employee' with columns (name_emp, post_emp, email, age, salary)
CREATE TABLE Employee (
    name_emp VARCHAR(50),
    post_emp VARCHAR(50),
    email VARCHAR(50),
    age INT,
    salary INT
);

-- Describing the structure of the 'Employee' table
DESCRIBE Employee;

-- Inserting data into the 'Employee' table
INSERT INTO Employee (name_emp, post_emp, email, age, salary)
VALUES ('Salman', 'Intern', 'Salman@geu.ac.in', 50, 5000);

-- Inserting more data into the 'Employee' table
INSERT INTO Employee VALUES
    ('Shahrukh', 'Manager', 'Shah@geu.ac.in', 51, 25000),
    ('Aamir', 'Analyst', 'aamir@geu.ac.in', 52, 21000),
    ('Amitabh', 'Senior Analyst', 'Amitabh@geu.ac.in', 65, 27500),
    ('Vicky', 'Database Operator', 'Vicky@geu.ac.in', 30, 24000);

-- Selecting all records from the 'Employee' table
SELECT * FROM Employee;

-- Inserting more data into the 'Employee' table
INSERT INTO Employee (name_emp, post_emp, email, age, salary)
VALUES ('Saif', 'Intern', 'Saif@geu.ac.in', 49, 7000),
       ('*Saif*', 'Intern', 'Saif@geu.ac.in', 49, 7000),
       ('Sachin', 'Intern', NULL, NULL, 4000);

-- Selecting all records from the 'Employee' table
SELECT * FROM Employee;

-- Deleting records from the 'Employee' table
DELETE FROM Employee WHERE name_emp = 'Vicky';
DELETE FROM Employee WHERE post_emp = 'Intern';

-- Selecting all records from the 'Employee' table
SELECT * FROM Employee;

-- Aggregation functions on 'Salary' column
SELECT SUM(salary) FROM Employee;
SELECT MIN(salary) FROM Employee;
SELECT MAX(salary) FROM Employee;
SELECT AVG(salary) FROM Employee;

-- Selecting the current date and time
SELECT NOW();

-- String-related searches on 'name_emp' and 'post_emp' columns
SELECT * FROM Employee WHERE name_emp LIKE 's%';
SELECT * FROM Employee WHERE name_emp LIKE '%n';
SELECT * FROM Employee WHERE name_emp LIKE 'am%';
SELECT * FROM Employee WHERE name_emp LIKE '%an';
SELECT * FROM Employee WHERE name_emp LIKE '%h%';
SELECT * FROM Employee WHERE name_emp LIKE 'Shah%';
SELECT * FROM Employee WHERE name_emp NOT LIKE 'salman';
SELECT * FROM Employee WHERE name_emp REGEXP 'Salman';
SELECT * FROM Employee WHERE post_emp LIKE 'Senior Analyst';
SELECT * FROM Employee WHERE post_emp LIKE 'Senior';
SELECT * FROM Employee WHERE post_emp RLIKE 'intern';

-- Creating a table 'cities' with a single column 'name'
CREATE TABLE cities (name VARCHAR(80));

-- Describing the structure of the 'cities' table
DESCRIBE cities;

-- Inserting data into the 'cities' table
INSERT INTO cities VALUES ('London'), ('Paris'), ('Rome');

-- Selecting all records from the 'cities' table
SELECT * FROM cities;

-- Finding cities containing characters A, B, or R at any position
SELECT name FROM cities WHERE name RLIKE 'A|B|R';
SELECT name FROM cities WHERE name REGEXP 'A|B|R';
SELECT name FROM cities WHERE name LIKE '%A%' OR name LIKE '%B%' OR name LIKE '%R%';

-- Finding cities starting with characters A, B, or R
SELECT name FROM cities WHERE name RLIKE '^A|^B|^R';
SELECT name FROM cities WHERE name REGEXP '^A|^B|^R';
SELECT name FROM cities WHERE name LIKE 'A%' OR name LIKE 'B%' OR name LIKE 'R%';
