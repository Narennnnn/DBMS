-- Create a new database
CREATE DATABASE mydb10;

-- Switch to the new database
USE mydb10;

-- Create the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Describe the structure of the 'employees' table
DESC employees;

-- Create the 'audit_log' table
CREATE TABLE audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    event_description VARCHAR(255),
    event_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Describe the structure of the 'audit_log' table
DESC audit_log;

-- Change delimiter to handle triggers
DELIMITER //

-- Create a trigger after an employee update
CREATE TRIGGER after_employee_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (employee_id, event_description)
    VALUES (NEW.employee_id, 'Employee information updated');
END;
//

-- Reset delimiter
DELIMITER ;

-- Insert data into the 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, salary)
VALUES (1, 'Alice', 'Johnson', 60000.00);

INSERT INTO employees (employee_id, first_name, last_name, salary)
VALUES (2, 'Bob', 'Mike', 50000.00);

-- Display all data from the 'employees' table
SELECT * FROM employees;

-- Perform an UPDATE operation
UPDATE employees
SET salary = 70000.00
WHERE employee_id = 1;

UPDATE employees
SET salary = 55000.00
WHERE employee_id = 2;

-- Check the audit log
SELECT * FROM audit_log;

-- Display updated data from the 'employees' table
SELECT * FROM employees;

-- Change delimiter for the second trigger
DELIMITER //

-- Create a trigger after an employee delete
CREATE TRIGGER after_employee_delete
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (employee_id, event_description)
    VALUES (OLD.employee_id, 'Employee deleted');
END;
//

-- Reset delimiter
DELIMITER ;

-- Perform a DELETE operation
DELETE FROM employees WHERE employee_id = 1;

-- Display updated data from the 'employees' table
SELECT * FROM employees;

-- Check the audit log after delete
SELECT * FROM audit_log;
