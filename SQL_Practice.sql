/*
1. Company database

Employee table
empid	first_name	last_name	joining_date	department_name
(int)	(varchar)	(varchar)	(datetime)		(varchar)

Bonus table
empid			bonus_date		bonus_amt
(foreign_key)

Employee Designation table
empid			designation			designation_date
(foreign_key)
*/

# Creating the database
create database company;

# Using the database
use company;

# Creating employee table
create table employee(
empid int not null primary key auto_increment,
first_name varchar(25),
last_name varchar(25),
salary int,
joining_date datetime,
department_name varchar(25)
);

# Check the schema
desc employee;

# Creating bonus table
create table bonus(
emp_ref_id int,
bonus_amt int,
bonus_date datetime,
foreign key(emp_ref_id) references employee(empid)
on Delete Cascade
);

# Create employee designation table
create table designation(
emp_ref_id int,
designation varchar(25),
designation_date datetime,
foreign key(emp_ref_id) references employee(empid)
on delete cascade
);

# Inserting values into employee table
insert into employee values
(0001,'Krish','Naik',50000,'14-12-11 09.00.00','Development'),
(0002,'Sudhanshu','Kumar',60000,'14-12-11 09.00.00','Development'),
(0003,'Darius','Bengali',70000,'15-12-12 09.00.00','HR'),
(0004,'Sanket','Kumar',70000,'15-12-13 09.00.00','HR'),
(0005,'Satish','Bhansali',30000,'17-10-21 09.00.00','Accountant'),
(0006,'Shaktiman','Hero',30000,'17-10-15 09.00.00','Accountant');

#Selecting records from employee table
select * from employee;

# Inserting into bonus table
insert into bonus values
(0001,5000,'16-03-14'), # (Datetime '16-03-14' -> 'year-month-date')
(0002,5000,'16-03-13'),
(0003,5000,'16-03-15'),
(0004,3500,'16-03-17'),
(0005,7000,'16-03-19'),
(0006,8000,'16-03-20');

# Selecting records from bonus table
select * from bonus;

# Inserting into employee designation table
insert into designation values
(0001,'Manager','2016-02-05'),
(0002,'Executive','2016-06-11'),
(0003,'Executive','2016-06-11');

# Selecting records from table
select * from designation;

/*
1. Write an sql query to retrieve all details where first name from employee table which starts with 'd'.
*/
select * from employee where first_name like 'd%';

/*
2. Write an sql query to print all details of the employees whose salary between 10000 to 35000.
# Fetch employee name.
*/
select concat(first_name,' ',last_name) as Employee_name, salary from employee where empid
in
(select empid from employee where salary between 10000 and 35000);

/*
3.  SQL query to retrieve details of the employees who have joined on a date.
# Dec 2014.
*/
select * from employee where year(joining_date)=2014 and month(joining_date)=12;

/*
4. SQL query to fetch number of employees in every department.
*/
select department_name,count(*) from employee group by department_name; 

/*
5. SQL query to print details of the employee who are also Executive.
*/
select concat(employee.first_name,' ',employee.last_name) as employee_name, designation.designation from
employee inner join designation
on
employee.empid=designation.emp_ref_id
and
designation.designation='Executive';

/*
6. Write an sql query to clone a new table from another table.
*/
create table clone_employee like employee;
select * from clone_employee;
desc clone_employee;

/*
7. SQL query to show top 4 salary of employees.
*/
select * from employee order by salary desc limit 4;

/*
8. SQL query to determine 4th highest salary.
*/
select first_name,salary from employee order by salary asc limit 3,1;