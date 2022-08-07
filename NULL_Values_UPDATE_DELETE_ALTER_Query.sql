# To show databases
show databases;

# To create database
create database customer;

# Use database
use customer;

# Create customer_info table
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);

# Selecting the data from the table
select * from customer_info;

# Insert records in table
insert into customer_info(first_name,last_name,salary)
values
('John','Daniel',50000),
('Krish','Naik',60000),
('Darius','Bengali',70000),
('Chandan','Kumar',40000),
('Ankit','Sharma',null);

# To check whether the salray is null
select * from customer_info where salary is null;

# To check whether the salray is not null
select * from customer_info where salary is not null;

#SQL update statements to replace null values
update customer_info set salary=50000 where id=5;

# Delete statement
delete from customer_info where id=5;

# SQL alter table
# Add columns in existing table
alter table customer_info add email varchar(25);
alter table customer_info add dob date;

#Alter table modify column
alter table customer_info modify dob year;

#See the schema
desc customer_info;

#Alter table to drop column
alter table customer_info drop column email;
