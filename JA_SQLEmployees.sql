-- Employee query for employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees as e
join salaries as s
on (e.emp_no = s.emp_no);

--Query for: Employees hired in 1986 (frist, last, and hire date)
select last_name, first_name, hire_date
from employees 
where hire_date between  '1986-01-01' and '1986-12-31'

