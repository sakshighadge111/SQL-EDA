create database stud;
use stud;

#Table Creation
/* Q1: Write an SQL command to create a table students with the following columns:
student_id (INTEGER, primary key), name (VARCHAR), age (INTEGER), grade (VARCHAR), email (VARCHAR).*/

create table students(
student_id int primary key,
name varchar(100),
age int,
grade varchar(20),
email varchar(50)
);

/*Q2: Create a table courses with columns:
course_id (INTEGER, primary key), course_name (VARCHAR), instructor (VARCHAR).*/

create table courses (
    course_id int primary key,
    course_name varchar(100),
    instructor varchar(100)
);

/*Alter Table

Q3: Write a query to add a new column gender (VARCHAR) to the students table.

*/

alter table students
add column gender varchar(10);

/*Add Constraints

Q4: Add a UNIQUE constraint to the email column in the students table.*/

alter table students
add constraint unique_email unique (email);

/*Q5: Add a FOREIGN KEY in a new table enrollments(student_id, course_id) linking to students(student_id) and courses(course_id).
*/

create table enrollments (
    student_id int,
    course_id int,
    primary key (student_id, course_id),
    foreign key (student_id) references students(student_id),
    foreign key (course_id) references courses(course_id)
);

/*Insert Records

Q6: Insert 5 different student records into the students table.
*/

insert into students (student_id, name, age, grade, email, gender)
values
(1, 'Shri sankpal', 20, 'A', 'shri.sankpal@example.com', 'Male'),
(2, 'sakshi ghadge', 21, 'B+', 'sakshi.ghad@example.com', 'Female'),
(3, 'Rohan', 19, 'A-', 'rohan.desai@example.com', 'Male'),
(4, 'Sneha Patil', 22, 'B', 'sneha.patil@example.com', 'Female'),
(5, 'Vikram Singh', 20, 'A', 'vikram.singh@example.com', 'Male');

/*Q7: Insert 3 courses into the courses table.
*/

insert into courses (course_id, course_name, instructor)
values
(101, 'Database Management Systems', 'Shrikant'),
(102, 'Python Programming', 'Sakshi'),
(103, 'Cloud Computing', 'Shravani');

/*Update Records 
Q8: Update the grade of the student whose student_id is 2 to 'A'.

*/

update students
set grade = 'A'
where student_id = 2;

/*Delete Records

Q9: Delete the record of the student whose student_id is 4.*/

delete from students
where student_id = 4;

/*Select Queries

Q10: Write a query to select all columns from the students table.
*/

select * from students;

/*Q11: Select only the names of students who have a grade 'A'.
*/

select name
from students
where grade = 'A';

/*Q12: List the names of students who are older than 20.*/

select name
from students
where age > 20;


