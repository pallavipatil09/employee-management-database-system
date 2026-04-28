-- Create reusable report 

create view employee_summary as
select
e.emp_id,
concat(e.first_name, ' ', e.last_name) as name,
d.dept_name,
j.role_name,
s.basic_salary
from employees e
join departments d on e.dept_id = d.dept_id
join job_roles j on e.role_id = j.role_id
join salaries s on e.emp_id = s.emp_id;

select * from employee_summary;