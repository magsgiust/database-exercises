-- Use the employees database. Write the SQL code necessary to do this.
USE employees;

-- List all the tables in the database. Write the SQL code necessary to accomplish this.
SHOW tables;

-- Explore the employees table. What different data types are present on this table?
DESCRIBE employees;

-- Show the SQL that created the dept_manager table. Write the SQL it takes to show this as your exercise solution.
SHOW CREATE TABLE employees;

/* CREATE TABLE `employees` (
  `emp_no` int NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) 
*/
