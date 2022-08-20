-- 1. List [Employee ID, Last Name, First Name, Gender, & Salary].
-- Tables: Salaries; Employees
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" as e
join "Salaries" as s
on e.emp_no = s.emp_no

-- 2. List [[First Name, Last Name, & Hire Date] of employees hired in 1986].
-- Tables: Employees .where 
select e.first_name, e.last_name, e.hire_date
from "Employees" as e
where e.hire_date > '1985-12-31'
and e.hire_date < '1987-01-01';


-- 3. List Managers by [Department Number, Department Name, Employee Id, Last Name, & First Name].
-- Tables: Departments; DeptManager; Employees
-- Join using Subqueries
-- Here Some Sample Code from 2-06
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Employees" as e, "Departments" as d
inner join "DeptManager" as dm;


-- Here is 1st Query
select title, film_id
from film
where title = 'EARLY HOME';

-- Here is 2nd Query
select * from inventory
where film_id = 268;

-- Combine using a join
select i.inventory_id, i.film_id, i.store_id, i.last_update
from inventory as i
join film as f
on i.film_id = f.film_id
where f.title = 'EARLY HOME';

-- Combine Using Subquery
-- Start w/ Query1
select * from inventory
where film_id = 268;
-- AKA
select * from inventory
where film_id in (268);
-- Now replace Query2 which returned 268 for the number 268 as select (select2)
select * from inventory
where film_id in (select film_id
	from film
	where title = 'EARLY HOME'
);


-- 4. List Employee Departments by [Employee ID, Last Name, First Name, Department Name].
-- Tables: Departments; DeptEmployee; Employees


-- 5. List [[First Name, Last Name] where 1st is Hercules, & last begins with "B"].
-- Tables: Employee .where
-- < where city like 'Q%' > for cities that start with "Q"


-- 6. List Employees in Sales by [Employee ID, Last Name, First Name, & Department Name].
-- Tables: Departments; DeptEmployee; Employees


-- 7. List Employees in Sales and Development by [Employee ID, Last Name, First Name, & Department Name].
-- Tables: Departments; DebtEmployee; Employees


-- list last name frequency by most common [Last name, counts], descending.
-- Tables: Employees .sort func.count()


-- BONUS import to pandas for modeling
-- ***code***
-- from sqlalchemy import create_engine
-- engine = create_engine('postgresql://localhost:5432/<your_db_name>')
-- connection = engine.connect()

-- ** Be sure to consult password security documentation