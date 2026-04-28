
-- 1. DEPARTMENTS 

insert into departments (dept_name, location) values
('IT', 'Mumbai'),
('HR', 'Delhi'),
('Finance', 'Bangalore'),
('Sales', 'Pune'),
('Marketing', 'Chennai'),
('Operations', 'Hyderabad'),
('Customer Support', 'Noida'),
('Legal', 'Kolkata'),
('Admin', 'Ahmedabad'),
('R&D', 'Gurgaon');

-- 2. JOB ROLES 

insert into job_roles (role_name, min_salary, max_salary) values
('Data Analyst', 40000, 90000),
('HR Executive', 30000, 70000),
('Accountant', 35000, 80000),
('Sales Manager', 45000, 100000),
('Marketing Specialist', 35000, 85000),
('Operations Manager', 50000, 110000),
('Support Executive', 25000, 60000),
('Legal Advisor', 60000, 120000),
('Admin Officer', 30000, 65000),
('Research Scientist', 70000, 150000);

-- 3. EMPLOYEES

insert into employees (first_name, last_name, email, phone, gender, hire_date, dept_id, role_id) values
('Amit','Sharma','amit1@gmail.com','9000000001','Male','2022-01-15',1,1),
('Priya','Verma','priya2@gmail.com','9000000002','Female','2021-03-10',2,2),
('Rahul','Mehta','rahul3@gmail.com','9000000003','Male','2020-07-20',3,3),
('Sneha','Patil','sneha4@gmail.com','9000000004','Female','2023-02-05',4,4),
('Karan','Singh','karan5@gmail.com','9000000005','Male','2019-11-25',5,5),
('Neha','Joshi','neha6@gmail.com','9000000006','Female','2022-06-18',1,1),
('Arjun','Kapoor','arjun7@gmail.com','9000000007','Male','2021-09-12',4,4),
('Riya','Shah','riya8@gmail.com','9000000008','Female','2020-04-30',2,2),
('Vikas','Yadav','vikas9@gmail.com','9000000009','Male','2021-12-01',6,6),
('Pooja','Nair','pooja10@gmail.com','9000000010','Female','2023-01-10',7,7),
('Sameer','Ali','sameer11@gmail.com','9000000011','Male','2022-08-22',8,8),
('Anjali','Das','anjali12@gmail.com','9000000012','Female','2021-05-15',9,9),
('Rohit','Kulkarni','rohit13@gmail.com','9000000013','Male','2020-02-11',10,10),
('Meena','Iyer','meena14@gmail.com','9000000014','Female','2023-03-19',3,3),
('Sanjay','Gupta','sanjay15@gmail.com','9000000015','Male','2021-10-05',5,5);

-- 4. SALARIES 

insert into salaries (emp_id, basic_salary, bonus, effective_from) values
(1,70000,5000,'2024-01-01'),
(2,50000,3000,'2024-01-01'),
(3,60000,4000,'2024-01-01'),
(4,85000,7000,'2024-01-01'),
(5,75000,6000,'2024-01-01'),
(6,68000,4000,'2024-01-01'),
(7,90000,8000,'2024-01-01'),
(8,52000,3500,'2024-01-01'),
(9,95000,9000,'2024-01-01'),
(10,40000,2000,'2024-01-01'),
(11,100000,10000,'2024-01-01'),
(12,45000,2500,'2024-01-01'),
(13,120000,15000,'2024-01-01'),
(14,65000,4500,'2024-01-01'),
(15,72000,5000,'2024-01-01');

-- 5. ATTENDANCE

insert into attendance (emp_id, attendance_date, status, check_in, check_out) values
(1,'2024-03-01','Present','09:00:00','18:00:00'),
(2,'2024-03-01','Present','09:30:00','18:30:00'),
(3,'2024-03-01','Work From Home','09:00:00','17:00:00'),
(4,'2024-03-01','Half Day','09:00:00','13:00:00'),
(5,'2024-03-01','Absent',null,null),
(6,'2024-03-01','Present','09:00:00','18:00:00'),
(7,'2024-03-01','Present','10:00:00','19:00:00'),
(8,'2024-03-01','Present','09:15:00','18:15:00'),
(9,'2024-03-01','Present','09:45:00','18:45:00'),
(10,'2024-03-01','Work From Home','09:00:00','17:00:00'),
(11,'2024-03-01','Present','09:00:00','18:00:00'),
(12,'2024-03-01','Absent',null,null),
(13,'2024-03-01','Present','09:00:00','18:00:00'),
(14,'2024-03-01','Half Day','09:00:00','13:00:00'),
(15,'2024-03-01','Present','09:30:00','18:30:00');

-- 6. LEAVES 

insert into leaves (emp_id, leave_type, start_date, end_date, approval_status) values
(1,'Sick Leave','2024-02-10','2024-02-12','Approved'),
(2,'Casual Leave','2024-01-15','2024-01-16','Approved'),
(3,'Paid Leave','2024-03-05','2024-03-07','Pending'),
(4,'Sick Leave','2024-02-20','2024-02-21','Approved'),
(5,'Casual Leave','2024-03-01','2024-03-02','Approved'),
(6,'Paid Leave','2024-02-25','2024-02-28','Approved'),
(7,'Sick Leave','2024-03-10','2024-03-11','Pending'),
(8,'Casual Leave','2024-01-20','2024-01-21','Approved'),
(9,'Paid Leave','2024-02-01','2024-02-03','Approved'),
(10,'Sick Leave','2024-03-15','2024-03-16','Rejected');

-- 7. PERFORMANCE REVIEWS 

insert into performance_reviews (emp_id, review_date, rating, remarks) values
(1,'2024-01-01',4,'Good performance'),
(2,'2024-01-01',3,'Average'),
(3,'2024-01-01',5,'Excellent'),
(4,'2024-01-01',4,'Very good'),
(5,'2024-01-01',2,'Needs improvement'),
(6,'2024-01-01',4,'Consistent'),
(7,'2024-01-01',5,'Outstanding'),
(8,'2024-01-01',3,'Average'),
(9,'2024-01-01',4,'Good'),
(10,'2024-01-01',2,'Below expectations');
