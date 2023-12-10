-- Create a database named 'GEU77'
CREATE DATABASE GEU77;

-- Switch to the 'GEU77' database
USE GEU77;

-- Create a table 'employee' with specified columns
CREATE TABLE employee (
    EMPLOYEE_ID NUMERIC(6) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(20) DEFAULT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    EMAIL VARCHAR(25) NOT NULL,
    PHONE_NUMBER VARCHAR(20) DEFAULT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY DECIMAL(8,2) DEFAULT NULL,
    COMMISSION_PCT DECIMAL(2,2) DEFAULT NULL,
    MANAGER_ID NUMERIC(6) DEFAULT NULL,
    DEPARTMENT_ID NUMERIC(4) DEFAULT NULL
);

-- Describe the structure of the 'employee' table
DESC employee;

-- Insert data into the 'employee' table
INSERT INTO employee (employee_id, first_name, last_name, email, phone_number, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    (100, 'Steven', 'King', 'SKING', '515.123.4567', 'AD_PRES', 24000.00, 0.00, 0, 90),
    (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', 'AD_VP', 17000.00, 0.00, 100, 90),
    (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', 'AD_VP', 17000.00, 0.00, 100, 90),
    (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', 'IT_PROG', 9000.00, 0.00, 102, 60);

-- Select all records from the 'employee' table
SELECT * FROM employee;

-- Aggregation functions on 'salary' column
SELECT SUM(salary) FROM employee;
SELECT MAX(salary), MIN(salary) FROM employee;

-- Select specific columns from 'employee' ordered by 'salary' in descending order
SELECT first_name, last_name, salary FROM employee ORDER BY salary DESC;

-- Select specific columns from 'employee' ordered by 'first_name' in ascending order
SELECT first_name, last_name FROM employee ORDER BY first_name;

-- Select 'first_name' and 'salary*12' from 'employee' ordered by 'salary' in descending order
SELECT first_name, salary*12 FROM employee ORDER BY salary DESC;

-- Grouping by 'department_id' and counting records
SELECT department_id, COUNT(department_id) FROM employee GROUP BY department_id;

-- Grouping by 'job_id' and counting records
SELECT job_id, COUNT(job_id) FROM employee GROUP BY job_id;

-- Grouping by 'department_id' and calculating the sum of 'salary'
SELECT department_id, SUM(salary) FROM employee GROUP BY department_id;
