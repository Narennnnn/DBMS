-- Creating a database and switching to it
CREATE DATABASE bank1;
USE bank1;

-- Creating the accounts table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10, 2)
);
DESC accounts;

-- Inserting data into the accounts table
INSERT INTO accounts (account_id, account_name, balance)
VALUES (1, 'Account A', 1000.00),
       (2, 'Account B', 2000.00);
SELECT * FROM accounts;

-- Starting the transaction
START TRANSACTION;

-- Debit from Account A
UPDATE accounts SET balance = balance - 500.00 WHERE account_id = 1;

-- Credit to Account B
UPDATE accounts SET balance = balance + 500.00 WHERE account_id = 2;

-- Selecting data to view changes within the transaction
SELECT * FROM accounts;

-- Committing the transaction if both updates were successful
COMMIT;

-- Starting a new transaction
START TRANSACTION;

-- Debit from Account A
UPDATE accounts SET balance = balance - 1500.00 WHERE account_id = 1;

-- Credit to Account B
UPDATE accounts SET balance = balance + 1500.00 WHERE account_id = 2;

-- Rolling back the transaction due to an error (insufficient balance)
ROLLBACK;
