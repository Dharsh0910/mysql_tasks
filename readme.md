# MySQL Practice Task – Employee Management System

##  Objective
To design and query a simple Employee–Department database using MySQL, covering
DDL, DML, constraints, and aggregate queries.

---

##  Tasks

### Task 1: Database & Tables
- Create a database named `employment`
- Create `department` table with:
  - dept_id (Primary Key)
  - dept_name (Unique, Not Null)
  - location (Default: Chennai)
- Create `employee` table with:
  - emp_id (Primary Key)
  - emp_name (Not Null)
  - age (CHECK age ≥ 18)
  - salary
  - join_date
  - dept_name (Foreign Key)
  - estatus (Default: active)

---

### Task 2: Insert Data
- Insert at least 5 departments
- Insert multiple employee records
- Use default values where applicable

---

### Task 3: Select Queries
- Display all employees
- Display employee IDs
- Employees with salary between 25,000 and 60,000
- Employees whose name starts with ‘A’
- Top 5 highest paid employees

---

### Task 4: Aggregate Queries
- Count employees department-wise
- Find average salary per department
- Departments with at least 2 employees
- Find maximum salary department-wise

---
###TASK 5: SUBQUERY
-Find employees earning more than average salary.
-Find employees working in the ‘IT’ department using subquery.
-Find department with highest average salary.
---

###TASK 6: IN / AND / OR / NOT
-Display employees working in dept_id IN (1, 2, 3).
-Employees whose age > 25 AND salary > 40,000.
-Employees not working in HR department.
---

 ###TASK 7: UNION
-Display employee names who are:
 From IT department
 OR salary > 50,000
-Use UNION ALL and observe difference.
---

###TASK 8: UPDATE
-Increase salary by 10% for IT department employees.
-Update status to ‘Inactive’ for employees older than 55.
-Update salary using a subquery.
---

###TASK 9: DELETE & TRUNCATE
-Delete employees whose status is ‘Inactive’.
-Delete employees who do not belong to any department.
-Truncate a temporary table.
---

###TASK 10: ALTER
-Add column email to Employee table.
-Modify salary datatype.
-Drop age column.
---

##  Tools Used
- MySQL
- SQL (DDL, DML, Constraints, Aggregate Functions)

---

##  Outcome
Successfully implemented a basic Employee Management System using MySQL.
