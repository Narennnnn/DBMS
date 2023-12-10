-- Create a database named 'GEU1'
CREATE DATABASE GEU1;

-- Switch to the 'GEU1' database
USE GEU1;

-- Show tables in the 'GEU1' database
SHOW TABLES;

-- Create a table named 'customer'
CREATE TABLE customer (
    ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

-- Create a table named 'contact'
CREATE TABLE contact (
    ID INT,
    Customer_Id INT,
    Customer_Info VARCHAR(50) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    INDEX par_ind (Customer_Id),
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id)
    REFERENCES customer(ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Describe the 'contact' table
DESCRIBE contact;
