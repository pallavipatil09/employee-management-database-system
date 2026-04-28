-- Show complete employee details with department and role

select
e.emp_id,
concat(e.first_name, ' ', e.last_name) as employee_name,
d.dept_name,
j.role_name,
e.hire_date
from employees e
join departments d on e.dept_id = d.dept_id
join job_roles j on e.role_id = j.role_id;

-- Which department has most employees?

select 
d.dept_name,
count(e.emp_id) as total_employees
from departments d
left join employees e on d.dept_id = e.dept_id
group by d.dept_name
order by total_employees desc;

-- Which department costs most?

select
d.dept_name,
sum(s.basic_salary + s.bonus) as total_salary
from employees e
join departments d on e.dept_id = d.dept_id
join salaries s on e.emp_id = s.emp_id
group by d.dept_name
order by total_salary desc;

-- Top 5 Highest Paid Employees

select
concat(e.first_name, ' ', e.last_name) as employee_name,
j.role_name,
d.dept_name,
(s.basic_salary + s.bonus) as total_salary
from employees e
join job_roles j on e.role_id = j.role_id
join departments d on e.dept_id = d.dept_id
join salaries s on e.emp_id = s.emp_id
order by total_salary desc
limit 5;

-- Employees with Most Leaves

select
e.first_name,
count(l.leave_id) as total_leaves
from employees e
join leaves l on e.emp_id = l.emp_id
group by e.first_name
order by total_leaves desc;

-- Attendance Summary (CASE)

select
emp_id,
sum(case when status = 'Present' then 1 else 0 end) as present_days,
sum(case when status = 'Absent' then 1 else 0 end) as absent_days
from attendance
group by emp_id;

-- Performance Rating Analysis

select
e.first_name,
avg(p.rating) as avg_rating
from employees e
join performance_reviews p on e.emp_id = p.emp_id
group by e.first_name
order by avg_rating desc;

-- Ranking Employees by Salary (Window Function)

select
e.first_name,
s.basic_salary,
rank() over (order by s.basic_salary desc) as salary_rank
from employees e
join salaries s on e.emp_id = s.emp_id;

-- Department-wise Salary Rank

select
e.first_name,
d.dept_name,
s.basic_salary,
rank() over (partition by d.dept_name order by s.basic_salary desc) as dept_rank
from employees e
join departments d on e.dept_id = d.dept_id
join salaries s on e.emp_id = s.emp_id;

-- Employees Above Average Salary (Subquery)

select 
e.first_name,
s.basic_salary
from employees e
join salaries s on e.emp_id = s.emp_id
where s.basic_salary > (
select avg(basic_salary) from salaries
);

-- CTE (Common Table Expression)

with avg_salary_cte as (select avg(basic_salary) as avg_salary from salaries)
select e.first_name, s.basic_salary
from employees e
join salaries s on e.emp_id = s.emp_id
join avg_salary_cte a
where s.basic_salary > a.avg_salary;

