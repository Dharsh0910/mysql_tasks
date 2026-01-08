-- Create database
CREATE DATABASE employment;
USE employment;

-- Create department table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20) UNIQUE NOT NULL,
    location VARCHAR(30) DEFAULT 'chennai'
);

-- Create employee table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    age INT CHECK (age >= 18),
    salary FLOAT,
    join_date VARCHAR(20),
    dept_name VARCHAR(20) NOT NULL,
    estatus VARCHAR(20) DEFAULT 'active',
    FOREIGN KEY (dept_name) REFERENCES department(dept_name)
);

-- Insert into department
INSERT INTO department VALUES
(101,'HR','trichy'),
(102,'developer','chennai'),
(103,'consultancy','Bangalore');

INSERT INTO department(dept_id,dept_name) VALUES
(104,'assistance'),
(105,'accountancy');

-- Insert into employee
INSERT INTO employee VALUES
(1001,'kaviya',19,12000,'12th jan 2025','consultancy','active'),
(1002,'Dharshini',21,90000,'12th jan 2026','HR','active'),
(1003,'aiswariya',21,50000,'6th feb 2025','developer','not active'),
(1004,'akshaya',21,90000,'7th jan 2026','HR','not active'),
(1005,'bharathi',20,40000,'9th feb 2026','assistance','active'),
(1006,'abinaiya',21,80000,'30th feb 2026','HR','active'),
(1007,'gayathri',21,80000,'12th jan 2026','accountancy','not active'),
(1008,'Dhivakar',20,10000,'12th jan 2026','HR','active'),
(1009,'sabarish',19,70000,'6th feb 2025','accountancy','active');

INSERT INTO employee(emp_id,emp_name,age,dept_name)
VALUES (1012,'fathima',18,'consultancy');

-- Select queries
SELECT * FROM employee;
SELECT emp_id FROM employee;
SELECT * FROM employee WHERE salary BETWEEN 25000 AND 60000;
SELECT emp_name FROM employee WHERE emp_name LIKE 'a%';
SELECT emp_name, salary FROM employee ORDER BY salary DESC LIMIT 5;

-- Aggregate queries
SELECT dept_name, COUNT(dept_name) AS emp_count
FROM employee
GROUP BY dept_name;

SELECT dept_name, AVG(salary) AS avg_salary
FROM employee
GROUP BY dept_name;

SELECT dept_name, COUNT(dept_name) AS result
FROM employee
GROUP BY dept_name
HAVING COUNT(dept_name) >= 2;

SELECT dept_name, MAX(salary) AS max_salary
FROM employee
GROUP BY dept_name;
