-- employee_report

select
e.emp_id,
concat(e.first_name, ' ', e.last_name) as employee_name,
d.dept_name,
j.role_name,
s.basic_salary,
s.bonus,
(s.basic_salary + s.bonus) as total_salary,
e.hire_date,
e.status
from employees e
join departments d on e.dept_id = d.dept_id
join job_roles j on e.role_id = j.role_id
join salaries s on e.emp_id = s.emp_id;

-- salary_summary

select
d.dept_name,
count(e.emp_id) as total_employees,
sum(s.basic_salary + s.bonus) as total_salary,
avg(s.basic_salary + s.bonus) as avg_salary
from employees e
join departments d on e.dept_id = d.dept_id
join salaries s on e.emp_id = s.emp_id
group by d.dept_name
order by total_salary desc;

-- attendance_report

select
emp_id,
sum(status='Present') as present_days,
sum(status='Absent') as absent_days
from attendance
group by emp_id;

-- performance_report

select 
p.review_id,
p.emp_id,
concat(e.first_name, ' ', e.last_name) as employee_name,
year(p.review_date) as review_year,
p.rating,
p.remarks
from performance_reviews p
join employees e on p.emp_id = e.emp_id;