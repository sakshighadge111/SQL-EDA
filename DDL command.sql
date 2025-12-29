show databases;

create database studentinfo;
use studentinfo;

create table students(
Id int primary key,
name varchar(100),
age int);

alter table students add column email varchar(100);
select * from students;

alter table students add constraint unique_email unique(email);

alter table students drop constraint unique_email;

alter table students modify column  name varchar(100) not null;

alter table students modify column name varchar(100);

select * from students;

CREATE TABLE departments (
    ID INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE students_det (
    student_id INT PRIMARY KEY,                 -- Primary Key
    name VARCHAR(100) NOT NULL,                 -- Not Null
    email VARCHAR(100) UNIQUE,                  -- Unique
    ID INT,                                -- Foreign key
    FOREIGN KEY (ID) REFERENCES departments(ID)
);

CREATE TABLE students_details (
    student_id INT PRIMARY KEY,                 -- Primary Key
    name VARCHAR(100) NOT NULL,                 -- Not Null
    email VARCHAR(100) UNIQUE,                  -- Unique
    ID INT, 									-- Foreign key
    constraint fk_departments_ID
    FOREIGN KEY (ID) REFERENCES departments(ID)
);

truncate table students;
drop table students;
drop table student_dept;

create database company;
use company;
create table Departments(
dept_id int Primary key,
dept_name varchar(100));

create table Employees(
emp_name varchar(100) not null,
email varchar(100) unique,
age int,
dept_id int,
constraint foreign_dept_id foreign key(dept_id) references Departments (dept_id) );

show tables;

select * from Departments;

insert into Departments(dept_id,dept_name)
values(1,'Hr'),
(2,'Finence'),
(3,'Engineering'),
(4,'Medical'),
(5,'Marketing');

show tables;

select * from Departments;
select * from employees;
insert into employees(emp_name, email, age, dept_id)
values('Rajeev', 'rajeev@gmail.com', 23, 3),
('Vishwas', 'vishwas@yahoo.com', 29, 1),
('Shankey', 'shankey128@gmail.com', 22, 1),
('Dhruv', 'dhruve@gmail.com', 33, 2),
('Roopali','roopali23@gmail.com', 26, 5),
('Namrata', 'nam@gmail.com', 28, 4);

select * from employees;
# update employees table
update employees set emp_name = 'Alicia' where dept_id = 3;

update employees set emp_name = 'Rajeev' where dept_id = 3; # revert the change

# use of select command to view the table
select * from employees;

# Add new column emp_id in employees table
alter table employees add column emp_id int;


select * from employees;

# update employees table as well as use where clause
update employees set emp_id = 101 where email = 'rajeev@gmail.com';
update employees set emp_id = 102 where email = 'vishwas@yahoo.com';
update employees set emp_id = 103 where email = 'shankey128@gmail.com';
update employees set emp_id = 104 where email = 'dhruve@gmail.com';
update employees set emp_id = 105 where email = 'roopali23@gmail.com';
update employees set emp_id = 106 where email = 'nam@gmail.com';


select * from employees;

# use of AND query
SELECT * FROM employees
WHERE dept_id = 3 AND emp_name = 'Rajeev';

# ue of or command
SELECT * FROM employees
WHERE emp_id = 103 OR emp_name = 'Bob';

SELECT * FROM employees
WHERE emp_id = 103 OR emp_name = 'Shankey';

# use of not
SELECT * FROM employees
WHERE NOT dept_id = 2;

# combine all and, or and not
SELECT * FROM employees
WHERE (dept_id = 1 OR dept_id = 2) AND NOT emp_name = 'Bob';

# merge --- in mysql--- "insert into ------ on duplicate key update" is used in place of merge
INSERT INTO employees (emp_id, emp_name, email, dept_id, age)
VALUES (102, 'Vishwas', 'vishwas@yahoo.com', 1, 29)
ON DUPLICATE KEY UPDATE
    emp_name = VALUES(emp_name),
    email = VALUES(email),
    dept_id = VALUES(dept_id),
    age = values(age);


select * from employees;


# delete any record from a table by using delete command
delete from employees where email = 'robert@example.com';

select * from employees;


