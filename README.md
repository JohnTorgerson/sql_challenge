# SQL Employee Database
### Database of Managers and Staff across 9 Departments

##### Authors:
* John Torgerson (JohnTorgerson)
---
##### Tools
* Database using 6 tables to track deparments, department managers, employees, employees varied departments, salaries, hire dates, and genders

* PostgreSQL, SQAlchemy, Pandas, Matplotlib were all used for this project

* Schemata and Queries were run using PostgreSQL
* Schemata was designed and exported from Quick DBD
* Quick DBD website: https://app.quickdatabasediagrams.com/

---

### Guide to Repo Contents:

* `EmployeeQueries.sql` is the sql code used to make queries from the database
    -- you'll notice Question 6 has two answers, this was an effort to deliver results along two different paths
* `EmployeeSchemata.sql` is the original schemata directly exported from Quick DBD
* `EmployeeSqlalchemy.ipynb` is jupyter notebook file that uses pandas to plot visualizations
* `EmployeeSchemataERD.jpg` is a visualization of the ERD created on Quick DBD
* `HistogramOfSalaries.png` is a histogram of all employees and how much they make broken into 25 bins
* `AverageSalariesBar.png` is a bar chart showing the average salary by job title
---
* In folder `data` are the following 6 tables
    1. `departments.csv` is a table of the Departments
    2. `dept_emp.csv` is a junction table between Departments and Employees
    3. `dept_manager.csv` is a junction table specific to Management
    4. `employees.csv` is a table of all Employees
    5. `salaries.csv` is a table of employees' Salaries
    6. `titles.csv` is a table of employee job titles
    
---

### Observations:
* Most frequently, employees make a starting salary of 40,000, and very few employees make more than 100,000.
* The relationship is inverse.
* Engineer, Asst Engineer, Senior Engineer have similar AVG Salaries, with Senior Engineers making the least of the group. Meanwhile Senior Staff as well as general Staff, both AVG nearly 12,000 more. Also, from our previous examples, there are an awful lot of women named Hercules B____, which seems improbable.
* Either something is wrong, or this company data is fictional.



### Credits and Special Thanks

* Tom Lenzmeier for sharing a name concatenation technique
* Thanks to Sanoo Singh for inspiring me to practice subquery method
