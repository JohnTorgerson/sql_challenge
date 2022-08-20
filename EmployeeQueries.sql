-- 1. List [Employee ID, Last Name, First Name, Gender, & Salary].
-- Tables: Salaries; Employees
select e.emp_no, concat(e.last_name, ', ', e.first_name), e.sex, s.salary
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
-- d.dept_no is PK ; e.emp_no is PK ; dm.(dept_no, emp_no) are PKs
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from "Departments" as d
left join "DeptManager" as dm
on d.dept_no = dm.dept_no
left join "Employees" as e
on e.emp_no = dm.emp_no;


-- 4. List Employee Departments by [Employee ID, Last Name, First Name, Department Name].
-- Tables: Departments; DeptEmployee; Employees
select e.emp_no, e.first_name, e.last_name, d.dept_name
from "Employees" as e
left join "DeptEmployee" as de
on e.emp_no = de.emp_no
left join "Departments" as d
on d.dept_no = de.dept_no;


-- 5. List [[First Name, Last Name] where 1st is Hercules, & last begins with "B"].
-- Tables: Employee .where
-- < where city like 'Q%' > for cities that start with "Q"
select e.first_name, e.last_name, e.hire_date
from "Employees" as e
where e.first_name = 'Hercules'
and e.last_name like 'B%';


-- 6. List Employees in Sales by [Employee ID, Last Name, First Name, & Department Name].
-- Tables: Departments; DeptEmployee; Employees
-- 1st Using Join Method
select e.emp_no, concat(e.first_name, ' ', e.last_name)
from "Employees" as e
left join "DeptEmployee" as de
on e.emp_no = de.emp_no
left join "Departments" as d
on d.dept_no = de.dept_no
where d.dept_name in ('Sales');

--6. Again but different
-- 2nd Using Subquery Method
select e.emp_no, concat(e.first_name, ' ', e.last_name)
from "Employees" as e
where emp_title_id in
	(select emp_title_id
	from "DeptEmployee" as de
	where dept_no in
		(select dept_no
		from "Departments" as d
		where dept_name = 'Sales'
	)
);


-- 7. List Employees in Sales and Development by [Employee ID, Last Name, First Name, & Department Name].
-- Tables: Departments; DebtEmployee; Employees
select e.emp_no, concat(e.first_name, ' ', e.last_name) as fname, d.dept_name
from "Employees" as e
left join "DeptEmployee" as de
on e.emp_no = de.emp_no
left join "Departments" as d
on d.dept_no = de.dept_no
where d.dept_name in ('Sales', 'Development')
order by e.emp_no;


-- 8. list last name frequency by most common [Last name, counts], descending.
-- Tables: Employees .sort func.count()
select e.last_name, count(last_name) as "name count"
from "Employees" as e
group by e.last_name
order by "name count" desc;


-- BONUS import to pandas for modeling
-- ***code***
-- from sqlalchemy import create_engine
-- engine = create_engine('postgresql://localhost:5432/<your_db_name>')
-- connection = engine.connect()

-- ** Be sure to consult password security documentation