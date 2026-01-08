# MySQL Practice Task – Employee Management System

## Objective
To design and query a simple **Employee–Department database** using **MySQL**, covering  
DDL, DML, constraints, subqueries, and aggregate queries.

---

##  Tasks

###  Task 1: Database & Tables
- Create a database named `employment`
- Create `department` table with:
  - `dept_id` (PRIMARY KEY)
  - `dept_name` (UNIQUE, NOT NULL)
  - `location` (DEFAULT: Chennai)
- Create `employee` table with:
  - `emp_id` (PRIMARY KEY)
  - `emp_name` (NOT NULL)
  - `age` (CHECK age ≥ 18)
  - `salary`
  - `join_date`
  - `dept_name` (FOREIGN KEY)
  - `estatus` (DEFAULT: active)

---

###  Task 2: Insert Data
- Insert at least **5 department records**
- Insert **multiple employee records**
- Use **default values** where applicable

---

###  Task 3: Select Queries
- Display all employees
- Display employee IDs only
- Find employees with salary between **25,000 and 60,000**
- Find employees whose name starts with **‘A’**
- Display **Top 5 highest paid employees**

---

###  Task 4: Aggregate Queries
- Count employees **department-wise**
- Find **average salary** per department
- Find departments with **at least 2 employees**
- Find **maximum salary** department-wise

---

###  Task 5: Subqueries
- Find employees earning **more than average salary**
- Find employees working in the **IT department** using subquery
- Find department with **highest average salary**

---

###  Task 6: IN / AND / OR / NOT
- Display employees working in `dept_id IN (1, 2, 3)`
- Find employees whose **age > 25 AND salary > 40,000**
- Display employees **not working in HR department**

---

###  Task 7: UNION
- Display employee names who are:
  - From **IT department** OR
  - Having salary **> 50,000**
- Use **UNION ALL** and observe the difference

---

###  Task 8: UPDATE
- Increase salary by **10%** for IT department employees
- Update status to **‘Inactive’** for employees older than **55**
- Update salary using a **subquery**

---

###  Task 9: DELETE & TRUNCATE
- Delete employees whose status is **‘Inactive’**
- Delete employees who do not belong to any department
- Truncate a **temporary table**

---

###  Task 10: ALTER
- Add column `email` to `employee` table
- Modify salary datatype
- Drop `age` column from employee table

---

##  Tools Used
- MySQL
- SQL (DDL, DML, Constraints, Aggregate Functions)

---

## Outcome
Successfully implemented a **basic Employee Management System** using MySQL.  
This project helped in understanding:
- Database design
- Constraints
- Subqueries
- Set operations
- Interview-oriented SQL queries

---

##  Author
**Dharshini Annadurai**  
B.Tech – Artificial Intelligence & Data Science

---

*This project is created for learning and interview preparation.*
