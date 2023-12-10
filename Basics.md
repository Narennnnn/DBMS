# MySQL Documentation

## DDL (Data Definition Language)

The MYSQL DDL provides commands for defining relation schemas, deleting relations, and modifying relation schemas.

## DML (Data Manipulation Language)

It includes commands to insert tuples into, delete tuples from, and modify tuples in the database.

## View Definition

The MYSQL DDL includes commands for defining views.

## Transaction Control

MYSQL includes commands for specifying the beginning and ending of transactions.

## Embedded MYSQL and Dynamic MYSQL

Embedded and Dynamic MYSQL define how MYSQL statements can be embedded within general-purpose programming languages, such as C, C++, JAVA, COBOL, Pascal, and Fortran.

## Integrity

The MYSQL DDL includes commands for specifying integrity constraints that the data stored in the database must satisfy. Updates that violate integrity constraints are not allowed.

## Authorization

The MYSQL DDL includes commands for specifying access rights to relations and views.

## Data Definition Language

The MYSQL DDL allows the specification of not only a set of relations but also information about each relation, including:

- Schema for each relation
- The domain of values associated with each attribute
- The integrity constraints
- The set of indices to be maintained for each relation
- The physical storage structure of each relation on disk

## Domain Types in MYSQL

The MYSQL standard supports a variety of built-in domain types, including:

- Char (n): A fixed-length character string with a user-specified length.
- Varchar (n): A variable character length string with a user-specified maximum length n.
- Int: An integer.
- Small integer: A small integer.
- Numeric (p, d): A fixed-point number with user-defined precision.
- Real, double precision: Floating point and double precision floating-point numbers with machine-dependent precision.
- Float (n): A floating-point number, with precision of at least n digits.
- Date: A calendar date containing a (four-digit) year, month, and day of the month.
- Time: The time of day, in hours, minutes, and seconds. (e.g., Time '09:30:00').
- Number: Number is used to store numbers (fixed or floating point).

## DDL Statement for Creating a Table

**Syntax:**
```sql
CREATE TABLE tablename (
    columnname datatype(size),
    columnname datatype(size)
);

-- Creating the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    hire_date DATE,
    department_id INT,
    salary DECIMAL(10,2)
);

-- Displaying the table structure
DESCRIBE employees;

-- Adding a new column 'gender' to the 'employees' table
ALTER TABLE employees
ADD COLUMN gender VARCHAR(10);

-- Displaying the updated table structure
DESCRIBE employees;

-- Modifying the 'salary' column in the 'employees' table
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);

-- Displaying the updated table structure
DESCRIBE employees;

-- Dropping the 'department_id' column from the 'employees' table
ALTER TABLE employees
DROP COLUMN department_id;

-- Displaying the final table structure
DESCRIBE employees;

-- Dropping the 'employees' table
DROP TABLE employees;

-- Creating the 'products' table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category VARCHAR(50)
);

-- Displaying the table structure
DESCRIBE products;

-- Inserting data into the 'products' table
INSERT INTO products (product_id, product_name, price, category)
VALUES
    (1, 'Laptop', 1200.00, 'Electronics'),
    (2, 'Bookshelf', 150.00, 'Furniture'),
    (3, 'Coffee Maker', 50.00, 'Appliances');

-- Retrieving data from the 'products' table
SELECT * FROM products;

-- Updating data in the 'products' table
UPDATE products
SET price = 1300.00
WHERE product_id = 1;

-- Retrieving updated data
SELECT * FROM products;

-- Deleting data from the 'products' table
DELETE FROM products
WHERE product_id = 2;

-- Retrieving remaining data
SELECT * FROM products;

-- Creating a view based on 'products' table
CREATE VIEW expensive_products AS
SELECT * FROM products
WHERE price > 1000.00;

-- Retrieving data from the view
SELECT * FROM expensive_products;

-- Starting a transaction
START TRANSACTION;

-- Performing multiple operations within the transaction
INSERT INTO products (product_id, product_name, price, category)
VALUES
    (4, 'Smartphone', 800.00, 'Electronics');

UPDATE products
SET price = 160.00
WHERE product_id = 3;

-- Committing the transaction
COMMIT;

-- Rolling back the transaction
ROLLBACK;

-- Granting privileges to a user
GRANT SELECT, INSERT, UPDATE, DELETE ON products TO 'your_username'@'localhost';

-- Revoking privileges from a user
REVOKE SELECT ON products FROM 'unauthorized_user'@'localhost';

-- Adding a foreign key constraint
ALTER TABLE orders
ADD CONSTRAINT fk_product_id
FOREIGN KEY (product_id) REFERENCES products(product_id);
