-- Create a database named 'GEU77'
CREATE DATABASE GEU77;

-- Switch to the 'GEU77' database
USE GEU77;

-- Create a sample table 'sales'
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    amount DECIMAL(10, 2)
);

-- Describe the structure of the 'sales' table
DESC sales;

-- Insert sample data into the 'sales' table
INSERT INTO sales (product_id, customer_id, amount) VALUES
(1, 101, 50.00),
(1, 102, 75.50),
(2, 101, 30.25),
(2, 103, 45.75),
(1, 104, 60.00),
(2, 102, 25.75);

-- Retrieve all data from the 'sales' table
SELECT * FROM sales;

-- Group by 'product_id' and calculate total sales amount for each product
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id;

-- Group by 'product_id' and calculate average sales amount for each product
SELECT product_id, AVG(amount) AS average_sales
FROM sales
GROUP BY product_id;

-- Group by 'product_id' and 'customer_id' to find total sales amount for each product and each customer
SELECT product_id, customer_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id, customer_id;

-- Group by 'product_id' and filter results to find products with total sales amount greater than 100
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING total_sales > 100;
