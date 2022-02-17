-- Retirement eligibility
SELECT 
	emp_no,first_name, last_name
FROM 
	employees
WHERE 
	(birth_date BETWEEN '1952-01-01' AND '1955-12-31')AND
	(hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY emp_no asc;

SELECT
	emp_no, title, from_date, to_date
FROM titles;

SELECT 
	e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO 
	retirement_titles
FROM 
	employees e
INNER JOIN
	titles t
ON 
	e.emp_no = t.emp_no
WHERE 
	(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY 
	emp_no asc;

SELECT * FROM retirement_titles

---DISTINCT ON to identify most recent title.
SELECT 
	DISTINCT ON(emp_no) emp_no, first_name,last_name,title,from_date,to_date 
FROM retirement_titles
WHERE
	to_date='9999-01-01'
ORDER BY
	emp_no,from_date asc
	
--- CReate table of unique retiring emp-title

SELECT 
	DISTINCT ON(emp_no) emp_no, first_name,last_name,title,from_date,to_date 
INTO emp_title_retiring
FROM retirement_titles
WHERE
	to_date='9999-01-01'
ORDER BY
	emp_no,from_date asc
	
SELECT * FROM emp_title_retiring
ORDER BY emp_no asc, to_date desc


---Write another query in the Employee_Database_challenge.sql file to retrieve the 
--number of employees by their most recent job title who are about to retire.

SELECT title,count(1) count_of_employees_retiring
--into retirement_title_count
FROM 
	emp_title_retiring
GROUP BY title
ORDER by 1 ASC


--Challenge 2

--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT 
	DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,de.from_date,de.to_date,t.title
FROM 
	employees e
INNER JOIN 
	dept_emp de
ON e.emp_no=de.emp_no
INNER JOIN 
	titles t
ON 
	t.emp_no=e.emp_no
ORDER by e.emp_no


SELECT 
	DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,de.from_date,de.to_date,t.title
INTO emp_title_mentor
FROM 
	employees e
INNER JOIN 
	dept_emp de
ON e.emp_no=de.emp_no
INNER JOIN 
	titles t
ON 
	t.emp_no=e.emp_no
ORDER by e.emp_no

--Join the Employees and the Department Employee tables on the primary key.
----Join the Employees and the Titles tables on the primary key.
SELECT * FROM 
	employees e
INNER JOIN 
	dept_emp de
ON e.emp_no=de.emp_no
INNER JOIN 
	titles t
ON e.emp_no=t.emp_no


--Filter the data on the to_date column to all the current employees, 
--then filter the data on the birth_date columns to get all the employees whose birth dates are 
--between January 1, 1965 and December 31, 1965.
SELECT 
	DISTINCT ON(e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,t.from_date,t.to_date,
FROM 
	employees e
INNER JOIN 
	dept_emp de
ON e.emp_no=de.emp_no
INNER JOIN 
	titles t
ON e.emp_no=t.emp_no
WHERE
	de.to_date='9999-01-01' AND
	e.birth_date between '1965-01-01' and '1965-12-31'
ORDER BY e.emp_no ASC
