-- 1. Procedure: Get Employee Details by Department

delimiter //

create procedure get_employees_by_department(in dept_name_input varchar(50))
begin
select
e.emp_id,
concat(e.first_name, ' ', e.last_name) as employee_name,
d.dept_name,
j.role_name
from employees e
join departments d on e.dept_id = d.dept_id
join job_roles j on e.role_id = j.role_id
where d.dept_name = dept_name_input;
end //

delimiter ;

call get_employees_by_department('IT');

-- 2. Procedure: Total Salary by Department

delimiter //

create procedure department_salary_report()
begin
select
d.dept_name,
sum(s.basic_salary + s.bonus) as total_salary
from employees e
join departments d on e.dept_id = d.dept_id
join salaries s on e.emp_id = s.emp_id
group by d.dept_name;
end //

delimiter  ;

call department_salary_report();

