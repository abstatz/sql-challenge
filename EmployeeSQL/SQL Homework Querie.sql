
--Prompt 1

select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees e 
left join salaries s
on e.emp_no = s.emp_no;

--Prompt 2

select last_name,
	first_name,
	hire_date 
from employees
where hire_date >= '1/1/1986' and hire_date <= '12/31/1986';

-- prompt 3 

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dm.dept_no,
d.dept_name,
e.emp_no,
e.last_name,
e.first_name
from dept_manager dm
inner join employees e on e.emp_no = dm.emp_no
inner join departments d on d.dept_no = dm.dept_no;


--prompt 4
--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
left join dept_emp de
on e.emp_no = de.emp_no
left join departments d
on de.dept_no = d.dept_no;

--proompt 5
--#5 like function {like 'B%'} 
-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."

select 
	e.first_name,
	e.last_name,
	e.sex
from employees e 
where first_name = 'Hercules' and last_name like 'B%'


--prompt 6
--order by List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.


select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
left join dept_emp de
on e.emp_no = de.emp_no
left join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';


--prompt 7 List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
left join dept_emp de
on e.emp_no = de.emp_no
left join departments d
on de.dept_no = d.dept_no
where d.dept_name in('Sales','Development');

--prompt 8 In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

select e.last_name,
	count(last_name)
from employees e
group by last_name
order by count(last_name)desc;




