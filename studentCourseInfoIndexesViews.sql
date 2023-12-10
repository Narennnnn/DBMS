-- Creating a database and switching to it
CREATE DATABASE mydb2;
USE mydb2;

-- Creating the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE
);
DESC students;

-- Creating the courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
DESC courses;

-- Inserting data into the students table
INSERT INTO students (student_id, first_name, last_name, birthdate)
VALUES (101, 'Alice', 'Johnson', '2000-01-15'),
       (102, 'Bob', 'Smith', '2001-02-20'),
       (103, 'Carol', 'Williams', '2002-03-25');
SELECT * FROM students;

-- Inserting data into the courses table
INSERT INTO courses (course_id, course_name)
VALUES (103, 'Math'), (104, 'Science'), (105, 'History');
SELECT * FROM courses;

-- Creating a view (student_course_info) that combines data from students and courses
CREATE VIEW student_course_info AS
SELECT students.first_name, students.last_name, courses.course_name
FROM students
JOIN courses ON students.student_id = courses.course_id;

-- Retrieving data from the view
SELECT * FROM student_course_info;
