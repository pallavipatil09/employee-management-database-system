# Employee Management Database System

## 📌 Project Overview

The **Employee Management Database System** is an advanced SQL project designed to manage and analyze employee operations in an organization. It centralizes employee records, departments, job roles, salaries, attendance, leaves, and performance reviews in one structured relational database.

This project demonstrates practical skills in:

* SQL Development
* Database Design
* Normalization
* Query Writing
* Reporting & Analytics
* Query Optimization
* Business Problem Solving

---

## 🎯 Business Problem

Many organizations store employee data in multiple files or disconnected systems, making reporting difficult and time-consuming.

This project solves that problem by creating a single database system that can answer questions like:

* How many employees are in each department?
* Which department has the highest salary cost?
* Who are the top-paid employees?
* Which employees have low attendance?
* Who took the most leaves?
* Which employees are top performers?

---

## 🎯 Objectives

* Manage employee master data efficiently
* Track departments and job roles
* Store salary and compensation details
* Monitor attendance records
* Manage leave requests and approvals
* Evaluate employee performance
* Generate reports for management decisions

---

## 🛠️ Tools & Technologies

* MySQL
* MySQL Workbench
* SQL
* Excel / CSV (for exported reports)
* GitHub

---

## 🗂️ Database Modules

The system includes these core modules:

1. Employees
2. Departments
3. Job Roles
4. Salaries
5. Attendance
6. Leaves
7. Performance Reviews

---

## 🏗️ Database Design Features

* Relational database with multiple connected tables
* Primary Key / Foreign Key relationships
* Constraints and validation rules
* Normalized schema design
* Reusable reporting structure
* Optimized querying with indexes

---

## 🔗 Table Relationships

* One department can have many employees
* One job role can have many employees
* One employee can have salary records
* One employee can have multiple attendance records
* One employee can have multiple leave records
* One employee can have multiple performance reviews

---

## 📂 Project Structure

```text
employee-management-database-system/
│── sql/
│   ├── 1_create_database.sql
│   ├── 2_create_tables.sql
│   ├── 3_insert_data.sql
│   ├── 4_queries.sql
│   ├── 5_views.sql
│   ├── 6_procedures.sql
│   └── 7_indexes.sql
│   └── 8_reports.sql

│── outputs/
│   ├── employee_report.csv
│   ├── salary_summary.csv
│   ├── attendance_report.csv
│   ├── performance_report.csv
│   └── top_paid_employees.csv
│
│── docs/
│   └── er_diagram.png
│
│── README.md
```

---

## 🧱 Database Schema Summary

### departments

Stores department names and locations.

Columns:

* dept_id
* dept_name
* location

### job_roles

Stores role names and salary ranges.

Columns:

* role_id
* role_name
* min_salary
* max_salary

### employees

Stores employee personal and job information.

Columns:

* emp_id
* first_name
* last_name
* email
* phone
* gender
* hire_date
* dept_id
* role_id
* status

### salaries

Stores compensation details.

Columns:

* salary_id
* emp_id
* basic_salary
* bonus
* effective_from

### attendance

Stores daily attendance records.

Columns:

* attendance_id
* emp_id
* attendance_date
* status
* check_in
* check_out

### leaves

Stores leave requests.

Columns:

* leave_id
* emp_id
* leave_type
* start_date
* end_date
* approval_status

### performance_reviews

Stores employee review ratings and remarks.

Columns:

* review_id
* emp_id
* review_date
* rating
* remarks

---

## 📊 Key SQL Features Used

This project uses beginner to advanced SQL concepts:

* CREATE DATABASE / CREATE TABLE
* INSERT / UPDATE / DELETE
* Constraints (PK, FK, UNIQUE, CHECK, DEFAULT)
* INNER JOIN / LEFT JOIN
* GROUP BY / HAVING
* ORDER BY / LIMIT
* Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)
* CASE Statements
* Subqueries
* Common Table Expressions (CTE)
* Window Functions
* Views
* Stored Procedures
* Indexing

---

## 📈 Reports Generated

### 1. Employee Details Report

Displays employee name, department, role, salary, and hire date.

### 2. Department Salary Summary

Shows:

* Total employees
* Total salary cost
* Average salary

### 3. Attendance Report

Tracks:

* Present days
* Absent days
* Work from home records
* Half days

### 4. Top Paid Employees

Shows highest earning employees in the company.

### 5. Performance Report

Displays ratings and remarks for employee reviews.

---

## 👁️ Views Used

### employee_summary

A reusable reporting view combining employee, department, role, and salary details.

Example:

```sql
SELECT * FROM employee_summary;
```

---

## ⚙️ Stored Procedures

### get_employees_by_department

Returns employees for a selected department.

Example:

```sql
CALL get_employees_by_department('IT');
```

### department_salary_report

Returns department-wise salary totals.

Example:

```sql
CALL department_salary_report();
```

---

## ⚡ Indexing Used

Indexes were added to improve performance:

* employees(dept_id)
* salaries(emp_id)
* attendance(emp_id)



