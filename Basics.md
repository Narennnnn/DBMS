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
