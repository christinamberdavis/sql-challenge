CREATE TABLE departments (
dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
dept_name VARCHAR NOT NULL
);

CREATE TABLE titles (
title_id VARCHAR(10) PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL
);

CREATE TABLE employees (
emp_no SERIAL PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(10) NOT NULL,
birth_date DATE NOT NULL, 
first_name VARCHAR NOT NULL, 
last_name VARCHAR NOT NULL, 
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL, 
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
emp_no SERIAL NOT NULL,	
salary INTEGER NOT NULL, 
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
dept_no	VARCHAR(10) NOT NULL,
emp_no SERIAL NOT NULL, 
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
emp_no SERIAL NOT NULL, 
dept_no	VARCHAR(10) NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


