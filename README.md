# 🗄️ SQL Database Project — Employee Management System

![MySQL](https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Beginner--Intermediate-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Tables](https://img.shields.io/badge/Tables-3-orange?style=for-the-badge)

A hands-on SQL project that demonstrates the core concepts of relational database design and querying using MySQL. Built around an **Employee Management System** with 3 related tables and 15 records each.

---

## 📁 Project Structure

```
sql-employee-database/
│
├── Select_statements_1.sql          # Basic SELECT queries
├── Where_Clause_1.sql               # Filtering with WHERE
├── inserting_addtional_values_in_columns.sql  # INSERT INTO
├── Group_by_Order_by.sql            # GROUP BY & ORDER BY
├── Having_clause.sql                # HAVING clause
├── limit___alias.sql                # LIMIT & ALIAS (AS)
└── logical_operators.sql            # AND, OR, NOT, LIKE
```

---

## 🗂️ Database Schema

### Table 1: `employee_demographics`
| Column | Type |
|---|---|
| employee_id | INT (PK) |
| first_name | VARCHAR |
| last_name | VARCHAR |
| age | INT |
| gender | VARCHAR |
| birth_date | DATE |

### Table 2: `employee_salary`
| Column | Type |
|---|---|
| employee_id | INT (PK) |
| first_name | VARCHAR |
| last_name | VARCHAR |
| occupation | VARCHAR |
| salary | INT |
| dept_id | INT (FK) |

### Table 3: `parks_departments`
| Column | Type |
|---|---|
| department_id | INT (PK) |
| department_name | VARCHAR |

---

## 🚀 SQL Concepts Covered

### 1. 🔍 SELECT Statements
Retrieve all columns or specific columns from tables. Used `DISTINCT` to return unique values.

```sql
SELECT * FROM employee_demographics;
SELECT first_name, last_name, birth_date FROM employee_demographics;
SELECT DISTINCT gender FROM employee_demographics;
```

---

### 2. 🔎 WHERE Clause
Filter rows based on conditions — exact match, comparison operators, and date filtering.

```sql
SELECT * FROM employee_demographics WHERE first_name = 'Akhil';
SELECT * FROM employee_demographics WHERE age > 25;
SELECT * FROM employee_salary WHERE salary > 40000;
SELECT * FROM employee_demographics WHERE birth_date = '2000-02-25';
```

---

### 3. ➕ INSERT INTO
Inserted 5 additional records (IDs 11–15) into both `employee_demographics` and `employee_salary`.

```sql
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
  (11, 'Aman', 'Agrwal', 'Data Analyst', 30000, 1),
  (12, 'Rohini', 'Naik', 'Devops Engineer', 50000, 1),
  (13, 'Ramya', 'Reddy', 'Fullstack Developer', 55000, 1),
  (14, 'Karthik', 'Goud', 'Manager', 60000, 3),
  (15, 'Kriti', 'Kaur', 'Executive', 40000, 2);
```

---

### 4. 📊 GROUP BY & ORDER BY
Grouped rows to apply aggregate functions (`AVG`, `MAX`, `MIN`, `COUNT`). Sorted results using `ORDER BY` with `ASC`/`DESC`.

```sql
-- Aggregate by gender
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- Sort by age descending
SELECT age, birth_date FROM employee_demographics
ORDER BY age DESC, birth_date;
```

---

### 5. 🎯 HAVING Clause
Filters grouped results using aggregate conditions — unlike `WHERE`, which filters before grouping.

```sql
-- Only genders where avg age > 25
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 25;

-- Occupations with avg salary > 30,000
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) > 30000;
```

---

### 6. 🔢 LIMIT & ALIAS (AS)
`LIMIT` restricts rows returned. `AS` renames columns in output for readability.

```sql
-- Top 5 highest paid employees
SELECT first_name, occupation, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 5;

-- Alias on aggregated column
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender;
```

---

### 7. 🔗 Logical Operators (AND, OR, NOT, LIKE)
Combine multiple conditions and perform pattern matching with wildcards.

```sql
-- AND: both conditions must be true
SELECT * FROM employee_demographics
WHERE gender = 'male' AND age > 26;

-- LIKE: pattern matching
SELECT * FROM employee_salary WHERE occupation LIKE '%a%';
SELECT * FROM employee_salary WHERE salary LIKE '4____';

-- Combined conditions
SELECT * FROM employee_demographics
WHERE (age < 29 AND gender = 'male') OR birth_date = '1996-02-25';
```

---

## 💡 Key Learnings

- Structuring a relational database with multiple linked tables
- Filtering rows with `WHERE` using `=`, `>`, `<`, and date matching
- Grouping and aggregating data with `GROUP BY` + `AVG/MAX/MIN/COUNT`
- Difference between `WHERE` (pre-aggregation) and `HAVING` (post-aggregation)
- Sorting results with `ORDER BY ASC/DESC`
- Limiting output rows and aliasing columns with `AS`
- Pattern matching with `LIKE` using `%` and `_` wildcards
- Combining conditions with `AND`, `OR`, `NOT`

---

## 🛠️ How to Run

1. Install [MySQL](https://dev.mysql.com/downloads/) or use [MySQL Workbench](https://www.mysql.com/products/workbench/)
2. Create a new database:
   ```sql
   CREATE DATABASE employee_db;
   USE employee_db;
   ```
3. Create the 3 tables and insert initial data
4. Run each `.sql` file in order to explore each concept

---

## 📌 Tools Used

- **MySQL** — Relational database engine
- **MySQL Workbench** — GUI for writing and executing SQL queries

---

## 👤 Author

> Feel free to connect and share feedback!

---

⭐ *If this helped you learn SQL, consider giving this repo a star!*
