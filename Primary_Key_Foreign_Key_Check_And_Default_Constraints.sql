# Use database
use customer;

# Create table person2 adding primary key
create table person2(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(id)
);

# Describe table person2
desc person2;

#Drop table person2
drop table person2;

# Create table person2 also combining primary key
create table person2(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person2 primary key(id,last_name)
);

# Create table person2 without adding primary key
create table person2(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

# Adding primary key on single column using alter table
alter table person2 add primary key(id);

# Adding primary key on multiple columns using alter table
alter table person2 add constraint pk_person primary key(id,age);

# Drop table person
drop table person1;

-- Foreign key

# Create table person
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);

# Describe table person
desc person;

# Show tables in database
show tables;

# Create table department using primary and foreign key
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id),
constraint fk_persondepartment foreign key(id) references person(id)
);

# Describe department table
desc department;

# Drop department table
drop table department;

# Create table department using only primary key
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);

# Alter table department for adding a foreign key i.e id
alter table department add foreign key(id) references person(id);

# Drop tables department and person
drop table department;
drop table person;


-- Check constraints

# Create table person using check constraint
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check (salary<50000)
);

# Describe person table
desc person;

# Inserting the records
insert into person values(1,'Krish','Naik',31,40000);

# Selecting the records from table person
select * from person;

-- Default constraint

# Dropping table person
drop table person;

# Creating a table using the default constraint
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25) default 'Bangalore'
); 

# Describe person table
desc person;

# Drop default constraint using alter table
alter table person alter city_name drop default;