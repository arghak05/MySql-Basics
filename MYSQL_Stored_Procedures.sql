# Use database
use customer;

# Selecting the records from the table
select * from student;


#Stored Procedure
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_info`()
BEGIN
select * from student where student.age=31;
END$$
DELIMITER ;

# Calling the stored procedure
call get_student_info;


# Stored Procedure
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_info_in_params`(in age int)
BEGIN
select * from student where student.age=age;
END$$
DELIMITER ;

# Calling stored procedure using in params
call get_student_info_in_params(27);


# Stored Procedure
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_info_out_params`(out records int)
BEGIN
select count(*) into records from student where student.age=31;
END$$
DELIMITER ;

# Calling stored procedure using out params
call get_student_info_out_params(@records);
select @records as TotalRecords;


# Stored Procedure
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_info_in_out_params`(inout records int, in age int)
BEGIN
select count(*) into records from student where student.age=age;
END$$
DELIMITER ;

# Calling stored procedure using inout params
call get_student_info_in_out_params(@records,27);
select @records as TotalRecords;