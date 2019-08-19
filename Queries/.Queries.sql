--Data Analysis Queries--

--1. List each employee's last name, first name, gender, employee number and salary
SELECT e.emp_no, last_name, first_name, gender, salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no

--2. List employees who were hired in 1986
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986
ORDER BY hire_date ASC;

--3. List the manager of each department including department number, department name, 
--the manager's employee number, last name, first name and start and end employement dates.
SELECT de.dept_no, dept_name, de.emp_no, last_name, first_name, from_date, to_date
FROM dept_emp AS de
JOIN departments AS d
ON de.dept_no = d.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no

--4. List the department of each employee with employee number, last name, 
--first name, and department name.
SELECT de.emp_no, last_name, first_name, dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no

--5. List all employees whose first name is "Hercules" and last names begin with "B".
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List employees' number, last name, first name, and  
--department name from all employees in the Sales Department. 
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7. List employees' number, last name, first name, and department name 
--from all employees in the Sales and Development Departments. 
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names
SELECT last_name,
COUNT(last_name) AS "count"
FROM employees
GROUP BY last_name
ORDER BY "count" DESC;

COMMIT
