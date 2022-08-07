# Show Databases
show databases;

# Use database
use customer;

# Create a table student
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

# Describe the table
desc student;

# Alter the table
alter table student modify age int not null; 

# Create table person
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

# Inserting record
insert into person values(1,'Krish', 'Naik',31);
insert into person values(2,'Krish2', 'Naik2',32);

# Selecting the record
select * from person;

# Alter table to add unique constraint
alter table person add unique (first_name);

# Describe table
desc person;

# Combining 2 features and making a unique constraint
alter table person add constraint uc_person unique(age,first_name);

# Drop unique constraint
alter table person drop index uc_person;

-- Primary key
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id,last_name)
);

# Describe table person1
desc person1;

# Drop  all primary key
alter table person1 drop primary key;

# Add primary key to single column
alter table person1 add primary key(id);