CREATE TABLE employees(
	emp_no BIGINT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(10),
	hire_date DATE
);

CREATE TABLE departments(
	dept_no VARCHAR(24) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (24)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(24),
	emp_no BIGINT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no BIGINT,
	dept_no VARCHAR(24),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no BIGINT,
	salaries INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no,salaries),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	emp_no BIGINT,
	title VARCHAR (30),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, title, from_date),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
