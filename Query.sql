--Query 1
SELECT employees.emp_no, last_name, first_name, gender, salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

--Query 2
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date < '1987-1-1'
	AND hire_date >= '1986-1-1';

--Query 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, em.last_name, em.first_name, from_date, to_date
FROM dept_manager as dm
INNER JOIN departments as d on dm.dept_no=d.dept_no
INNER JOIN employees as em on dm.emp_no=em.emp_no;

--Query 4
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp on dept_emp.emp_no=employees.emp_no
INNER JOIN departments on departments.dept_no=dept_emp.dept_no;

--Query 5
SELECT * 
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--Query 6	
SELECT em.emp_no, last_name, first_name, d.dept_name
FROM employees AS em
INNER JOIN dept_emp AS dem ON dem.emp_no=em.emp_no
INNER JOIN departments AS d ON d.dept_no=dem.dept_no
WHERE d.dept_name='Sales';

--Query 7
SELECT em.emp_no, last_name, first_name, d.dept_name
FROM employees AS em
INNER JOIN dept_emp AS dem ON dem.emp_no=em.emp_no
INNER JOIN departments AS d ON d.dept_no=dem.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--Query 8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC;