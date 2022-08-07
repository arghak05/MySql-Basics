# Using the database
use customer;

# Drop table
drop table student;


# Create table student using primary key
create table student(
studentid int auto_increment,
first_name varchar(25),
last_name varchar(25),
age int,
primary key(studentid)
);

# Selecting the records from table
select * from student;

# Inserting the records into the table
insert into student values(1,'Krish','Naik',31),
(2,'Ram','Sharma',31),
(3,'Joe','Samuel',31);

# Creating department table using foreign key
create table department(
studentid int auto_increment,
department_name varchar(25) not null,
foreign key(studentid) references student(studentid)
);

# Describe department table
desc department;

# Inserting the records into department table
insert into department values(1,'Computer Science'),
(2,'Electronics'),
(3,'Mechanical'); 

# Selecting Data
select * from department;
select * from student;


#Using inner join
select first_name, last_name, age from student inner join department using(studentid);

# Creating view
create view student_info as
select first_name, last_name, age from student inner join department using(studentid);

# Select the records from view
select * from student_info;

# Drop view
drop view student_info;