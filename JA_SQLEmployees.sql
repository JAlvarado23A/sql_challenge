-- 1) Employee query for employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees as e
join salaries as s
on (e.emp_no = s.emp_no);

-- 2) Query for: Employees hired in 1986 (frist, last, and hire date)
select last_name, first_name, hire_date
from employees 
where hire_date between  '1986-01-01' and '1986-12-31';

-- 3) Query for List for manegers of each department with: department number, department name, maneger's id, last name, and first name
select mang.emp_no, mang.dept_no, emp.first_name, emp.last_name, dept.dept_name
from dept_manager as mang
join employees as emp
	on (mang.emp_no = emp.emp_no)
join departments as dept
	on (mang.dept_no = dept.dept_no);

-- 4)Department of each employee: employee number, last name, first name, department name
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join dept_emp as de
	on emp.emp_no = de.emp_no
join departments as dept
	on de.dept_no = dept.dept_no;
	
-- 5) Query for all employees with the name Hercules and last name starts with a B
select first_name, last_name, gender 
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6) List all info for employees in sales department (number, last, first, and department)
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join dept_emp as de
	on emp.emp_no = de.emp_no
join departments as dept
	on de.dept_no = dept.dept_no
where dept.dept_name = 'Sales';

-- 7) List all info for employees in sales and development department 
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join dept_emp as de
	on emp.emp_no = de.emp_no
join departments as dept
	on de.dept_no = dept.dept_no
where dept.dept_name = 'Sales' or dept.dept_name ='Development';

-- 8) Query for employees that share the same last name
select last_name, count(last_name)
from employees
group by last_name
order by last_name desc;

