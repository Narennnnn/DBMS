-- UNION and NOT IN Example

-- Create a database named 'EMP'
CREATE DATABASE EMP;

-- Switch to the 'EMP' database
USE EMP;

-- Create a table 'employees'
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50)
);

-- Describe the structure of the 'employees' table
DESC employees;

-- Create a table 'contractors'
CREATE TABLE contractors (
    contractor_id INT PRIMARY KEY,
    contractor_name VARCHAR(50)
);

-- Describe the structure of the 'contractors' table
DESC contractors;

-- Insert data into the 'employees' table
INSERT INTO employees (employee_id, employee_name) VALUES
(1, 'Alice Johnson'), (2, 'Bob Smith'), (3, 'Carol Williams');

-- Retrieve all data from the 'employees' table
SELECT * FROM employees;

-- Insert data into the 'contractors' table
INSERT INTO contractors (contractor_id, contractor_name) VALUES
(101, 'David Brown'), (102, 'Eve Davis');

-- Retrieve all data from the 'contractors' table
SELECT * FROM contractors;

-- Combine data from both tables using UNION
SELECT employee_id, employee_name
FROM employees
UNION
SELECT contractor_id, contractor_name
FROM contractors;

-- Select employees who are not contractors using NOT IN
SELECT employee_id, employee_name
FROM employees
WHERE employee_id NOT IN (
    SELECT contractor_id FROM contractors
);
