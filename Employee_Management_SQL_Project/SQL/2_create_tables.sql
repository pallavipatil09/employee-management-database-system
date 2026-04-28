
-- 1. DEPARTMENTS TABLE

create table departments (
dept_id int primary key auto_increment,
dept_name varchar(50) not null unique,
location varchar(50) not null
);

-- 2. JOB ROLES TABLE

create table job_roles (
role_id int primary key auto_increment,
role_name varchar(50) not null unique,
min_salary decimal(10,2)  not null,
max_salary decimal(10,2)  not null,
check (min_salary > 0),
check (max_salary >= min_salary)
);

-- 3. EMPLOYEES TABLE

create table employees (
emp_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) not null unique,
phone varchar(15) unique,
gender enum('Male', 'Female', 'Other') not null,
hire_date date not null,
dept_id int,
role_id int,
status enum('Active', 'Inactive') default 'Active',

foreign key (dept_id) references departments(dept_id),
foreign key (role_id) references job_roles(role_id)
);

-- 4. SALARIES TABLE

create table salaries (
salary_id int primary key auto_increment,
emp_id int not null,
basic_salary decimal(10,2) not null,
bonus decimal(10,2) default 0,
effective_from date not null,

foreign key(emp_id) references employees(emp_id),
check (basic_salary > 0),
check (bonus >= 0)
);

-- 5. ATTENDANCE TABLE

create table attendance (
attendance_id int primary key auto_increment,
emp_id int not null,
attendance_date date not null,
status enum('Present', 'Absent', 'Half Day', 'Work From Home') not null,
check_in time,
check_out time,

foreign key (emp_id) references employees(emp_id),
unique (emp_id, attendance_date)
);

-- 6. LEAVES TABLE

create table leaves (
leave_id int primary key auto_increment,
emp_id int not null,
leave_type enum('Sick Leave', 'Casual Leave', 'Paid Leave') not null,
start_date date not null,
end_date date not null,
approval_status enum('Pending', 'Approved', 'Rejected') default 'Pending',

foreign key (emp_id) references employees(emp_id),
check (end_date >= start_date)
);

-- 7. PERFORMANCE REVIEWS TABLE

create table performance_reviews (
review_id int primary key auto_increment,
emp_id int not null,
review_date date not null,
rating int not null,
remarks varchar(255),

foreign key (emp_id) references employees(emp_id),
check (rating between 1 and 5)
);

-- VERIFY TABLES

SHOW TABLES;
