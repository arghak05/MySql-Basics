# Show databases
show databases;

# Create database
create database customers;

# Use database
use customers;

# Create table
create table customer_info(id integer, first_name varchar(10), last_name varchar(10));

# Selecting data from the table
select * from customer_info;

# Insert values into table
insert into customer_info (id,first_name,last_name) values (1,'Argha','Karmakar');
insert into customer_info (id,first_name,last_name) values (1,'Deepak','Sharma');

# Drop table
drop table customer_info;

# Show table
show tables;

# Drop database
drop database customers;

