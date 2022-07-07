/* In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file. */

DESCRIBE titles;
SELECT DISTINCT title FROM titles;

/* Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY. */
SELECT last_name FROM employees WHERE last_name LIKE 'E%e' group by last_name ;

/* Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'. */
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' group by first_name, last_name;

/* Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code. */
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

/* Add a COUNT() to your results (the query above) to find the number of employees with the same last name. */
SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

/* Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names. */

SELECT first_name, count(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY first_name;

/* Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there? */
SELECT lower(concat(substr(first_name, 1, 1), substr(last_name, 1, 4), '_', month(birth_date), substr(year(birth_date), 3, 4))) AS username, 
	count(*) AS total_count
FROM employees
GROUP BY lower(concat(substr(first_name, 1, 1), substr(last_name, 1, 4), '_', month(birth_date), substr(year(birth_date), 3, 4)))
HAVING total_count > 1
ORDER BY total_count desc;

/* Determine the historic average salary for each employee.  */
SELECT emp_no, avg(salary) FROM salaries GROUP BY emp_no;

/* Using the dept_emp table, count how many current employees work in each department.  */
SELECT dept_no, count(emp_no) AS employee_count FROM dept_emp
WHERE to_date = '9999-01-01'
GROUP BY dept_no;

/* Determine how many different salaries each employee has had. This includes both historic and current. */
SELECT emp_no, count(distinct(salary)) FROM salaries GROUP BY emp_no;

/* Find the maximum salary for each employee. */
SELECT emp_no, MAX(salary) FROM salaries GROUP BY emp_no;

/* Find the minimum salary for each employee. */
SELECT emp_no, MIN(salary) FROM salaries GROUP BY emp_no;

/* Find the standard deviation of salaries for each employee. */
SELECT emp_no, STD(salary) FROM salaries GROUP BY emp_no;

/* Now find the max salary for each employee where that max salary is greater than $150,000. */
SELECT emp_no, MAX(salary) FROM salaries GROUP BY emp_no HAVING max(salary) > 150000;

/* Find the average salary for each employee where that average salary is between $80k and $90k. */
SELECT emp_no, avg(salary) FROM salaries GROUP BY emp_no HAVING avg(salary) >= 80000 and avg(salary) <= 90000;