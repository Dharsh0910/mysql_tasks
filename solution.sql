/* =========================================
   MySQL Practice Tasks
   Database: employment
   ========================================= */

/* ---------- Task 1: Create Database ---------- */
CREATE DATABASE employment;
USE employment;

/* ---------- Task 2: Create Tables ---------- */
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20) UNIQUE NOT NULL,
    location VARCHAR(30) DEFAULT 'Chennai'
);

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

/* ---------- Task 3: Insert Records ---------- */
INSERT INTO department VALUES
(101,'HR','Trichy'),
(102,'Developer','Chennai'),
(103,'Consultancy','Bangalore'),
(104,'Assistance','Chennai'),
(105,'Accountancy','Chennai');

INSERT INTO employee VALUES
(1001,'Kaviya',19,12000,'12-Jan-2025','Consultancy','active'),
(1002,'Dharshini',21,90000,'12-Jan-2026','HR','active'),
(1003,'Aiswariya',21,50000,'06-Feb-2025','Developer','not active'),
(1004,'Akshaya',21,90000,'07-Jan-2026','HR','not active'),
(1005,'Bharathi',20,40000,'09-Feb-2026','Assistance','active'),
(1006,'Abinaiya',21,80000,'30-Feb-2026','HR','active'),
(1007,'Gayathri',21,80000,'12-Jan-2026','Accountancy','not active'),
(1008,'Dhivakar',20,10000,'12-Jan-2026','HR','active'),
(1009,'Sabarish',19,70000,'06-Feb-2025','Accountancy','active');

/* ---------- Task 4: Basic SELECT ---------- */
SELECT * FROM employee;
SELECT emp_id FROM employee;

/* ---------- Task 5: Salary Between Range ---------- */
SELECT * FROM employee
WHERE salary BETWEEN 25000 AND 60000;

/* ---------- Task 6: Names Starting With 'A' ---------- */
SELECT emp_name FROM employee
WHERE emp_name LIKE 'A%';

/* ---------- Task 7: ORDER BY & LIMIT ---------- */
SELECT emp_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

/* ---------- Task 8: Group By & Aggregate ---------- */
SELECT dept_name, COUNT(*) AS emp_count
FROM employee
GROUP BY dept_name;

SELECT dept_name, AVG(salary) AS avg_salary
FROM employee
GROUP BY dept_name;

/* ---------- Task 9: HAVING Clause ---------- */
SELECT dept_name, COUNT(*) AS emp_count
FROM employee
GROUP BY dept_name
HAVING COUNT(*) >= 2;

/* ---------- Task 10: Maximum Salary Department-wise ---------- */
SELECT dept_name, MAX(salary) AS max_salary
FROM employee
GROUP BY dept_name;

/* ---------- Task 11: Employees Earning More Than Average Salary ---------- */
SELECT * FROM employee
WHERE salary > (
    SELECT AVG(salary) FROM employee
);

/* ---------- Task 12: Department With Highest Average Salary ---------- */
SELECT dept_name
FROM employee
GROUP BY dept_name
ORDER BY AVG(salary) DESC
LIMIT 1;

/* ---------- Task 13: IN, AND, NOT ---------- */
SELECT * FROM employee WHERE dept_name IN ('HR','Developer');
SELECT * FROM employee WHERE age > 20 AND salary > 70000;
SELECT * FROM employee WHERE dept_name NOT IN ('HR');

/* ---------- Task 14: UNION vs UNION ALL ---------- */
SELECT * FROM employee WHERE dept_name = 'Consultancy'
UNION
SELECT * FROM employee WHERE salary > 50000;

SELECT * FROM employee WHERE dept_name = 'Consultancy'
UNION ALL
SELECT * FROM employee WHERE salary > 50000;

/* ---------- Task 15: UPDATE ---------- */
UPDATE employee
SET salary = salary + (salary * 10 / 100);

/* ---------- Task 16: DELETE ---------- */
DELETE FROM employee WHERE estatus = 'not active';

/* ---------- Task 17: TRUNCATE ---------- */
CREATE TABLE dummy (
    id INT,
    dname VARCHAR(20)
);
INSERT INTO dummy VALUES (101,'hdg'),(102,'gsdf');
TRUNCATE TABLE dummy;

/* ---------- Task 18: ALTER TABLE ---------- */
ALTER TABLE employee ADD email VARCHAR(30);
ALTER TABLE employee MODIFY salary FLOAT;
