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

## 🛠 Tools Used
- MySQL
- SQL (DDL, DML, Constraints, Aggregate Functions)

---

## ✅ Outcome
Successfully implemented a basic Employee Management System using MySQL.
