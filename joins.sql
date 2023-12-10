-- Create a database named 'GEU77'
CREATE DATABASE GEU77;

-- Switch to the 'GEU77' database
USE GEU77;

-- Create tables 'TABLEA' and 'TABLEB'
CREATE TABLE TABLEA (PK INT, Value VARCHAR(50));
CREATE TABLE TABLEB (PK INT, Value VARCHAR(50));

-- Describe the structure of 'TABLEA' and 'TABLEB'
DESC TABLEA;
DESC TABLEB;

-- Insert data into 'TABLEA'
INSERT INTO TABLEA (PK, Value) VALUES (1, 'FOX'), (2, 'COP'), (3, 'TAXI'), (6, 'WASHINGTON'), (7, 'DELL'), (5, 'ARIZONA'), (4, 'LINCOLN'), (10, 'LUCENT');

-- Insert data into 'TABLEB'
INSERT INTO TABLEB (PK, Value) VALUES (1, 'TROT'), (2, 'CAR'), (3, 'CAB'), (6, 'MONUMENT'), (7, 'PC'), (8, 'MICROSOFT'), (9, 'APPLE'), (11, 'SCOTCH');

-- Select all records from 'TABLEA' and 'TABLEB'
SELECT * FROM TABLEA;
SELECT * FROM TABLEB;

-- Inner join on 'PK' column
SELECT * FROM TABLEA INNER JOIN TABLEB ON TABLEA.PK = TABLEB.PK;

-- Another way of writing inner join
SELECT * FROM TABLEA, TABLEB WHERE TABLEA.PK = TABLEB.PK;

-- Left join on 'PK' column and filter where 'TABLEB.PK' is NULL
SELECT * FROM TABLEA LEFT JOIN TABLEB ON TABLEA.PK = TABLEB.PK WHERE TABLEB.PK IS NULL;

-- Inner join on 'PK' column with condition 'TABLEA.PK > TABLEB.PK'
SELECT * FROM TABLEA INNER JOIN TABLEB ON TABLEA.PK > TABLEB.PK;

-- Left outer join on 'PK' column
SELECT * FROM TABLEA LEFT OUTER JOIN TABLEB ON TABLEA.PK = TABLEB.PK;

-- Right outer join on 'PK' column
SELECT * FROM TABLEA RIGHT OUTER JOIN TABLEB ON TABLEA.PK = TABLEB.PK;

-- Union of left join and right join
SELECT * FROM TABLEA LEFT JOIN TABLEB ON TABLEA.PK = TABLEB.PK
UNION
SELECT * FROM TABLEA RIGHT JOIN TABLEB ON TABLEA.PK = TABLEB.PK;

-- Cross join of 'TABLEA' and 'TABLEB'
SELECT * FROM TABLEA CROSS JOIN TABLEB;

-- Another way of writing cross join
SELECT * FROM TABLEA, TABLEB;
