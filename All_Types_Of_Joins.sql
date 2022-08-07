# Use database
use customer;

# Selecting the records from the table
select * from student;
select * from department;

# Inserting the records into the table
insert into student values (5,'Ramesh','Singh',27);
insert into student values (4,'Ankit','Kumar',27);

# Inner join
select student.first_name,student.last_name,student.age,department.department_name 
from student inner join department
on student.studentid=department.studentid;

# Left Join
select student.first_name,student.last_name,student.age,department.department_name 
from student left join department
on student.studentid=department.studentid;

# Right Join
select student.first_name,student.last_name,student.age,department.department_name 
from student right join department
on student.studentid=department.studentid;

# Full Outer Join
select student.first_name,student.last_name,student.age,department.department_name 
from student left join department
on student.studentid=department.studentid
union
select student.first_name,student.last_name,student.age,department.department_name 
from student right join department
on student.studentid=department.studentid;

# Cross Join
select student.first_name,student.last_name,student.age,department.department_name 
from student cross join department;

# Natural join
select student.first_name,student.last_name,student.age,department.department_name 
from student natural join department;
