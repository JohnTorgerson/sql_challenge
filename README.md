# SQL Employee Database
### Database of Managers and Staff across 9 Departments
Authors:
* John Torgerson (JohnTorgerson)
---  
Database using 6 tables to track deparments, department managers, employees, different deparments employees work for, salaries, hire dates and genders

Schemata and Queries were run using PostgreSQL
Schemata was designed and exported from Quick DBD
Quick DBD website: https://app.quickdatabasediagrams.com/

---

### Guide to Repo Contents:
* `EmployeeQueries.sql` is the sql code used to make queries from the database
    -- you'll notice Question 6 has two answers, this was an effort to deliver results along two different paths
* `EmployeeSchemata.sql` is the original schemata directly exported from Quick DBD 
* `EmployeeSchemataERD.jpg` is a visualization of the ERD created on Quick DBD
* In folder `data` are 6 tables
    1. `departments.csv` is a table of the Departments
    2. `data` is a junction table between Departments and Employees
    3. `data` is a junction table specific to Management
    4. `data` is a table of all Employees
    5. `data` is a table of employees' Salaries
    6. `data` is a table of employee job titles
    
---

### Credits and Special Thanks
Tom Lenzmeier for sharing a name concatenation
Thanks to Sanoo Singh for inspiring me to practice subquery method
