/* create tables to import data into */

CREATE TABLE departments(
dept_no character varying(5) PRIMARY KEY,
dept_name character varying(30)
)


CREATE TABLE employees(
emp_no int PRIMARY KEY,
birth_date character varying(20),
first_name character varying(20),
last_name character varying(20),
gender character varying(15),
hire_date character varying(20)
)

CREATE TABLE dept_manager(
dept_no character varying(5),
emp_no int,
from_date character varying (15),
to_date character varying (15),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
    
CREATE TABLE salaries(
emp_no int,
salary int,
from_date character varying(20),
to_date character varying(15),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    
)
    
CREATE TABLE titles(
emp_no int,
title character varying(25),
from_date character varying(12),
to_date character varying(12),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

)

CREATE TABLE dept_emp(
emp_no int,
dept_no character varying(5),
from_date character varying(12),
to_date character varying(12),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
