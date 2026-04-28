-- Indexing

create index idx_emp_dept on employees(dept_id);
create index idx_salary_emp on salaries(emp_id);
create index idx_attendance_emp on attendance(emp_id);