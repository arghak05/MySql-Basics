# Using the database
use customer;

# Show tables in the database
show tables;

# Selecting from the table
select * from person;

# Creating the index
create index index_city_name on person(city_name);

# Describe table
desc person;

# Drop table student
drop table student;

# Create table student
create table student(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int
);

# Describe table student
desc student; 

# Create index
create index index_age on student(age);

# Creating multiple index
create index index_age_first_name on student(age,first_name);

# Dropping the index using alter table
alter table student drop index index_age_first_name;
alter table student drop index index_age;