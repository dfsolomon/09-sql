/*data analysis, question 1*/

SELECT employees.emp_no, employees.birth_date, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no =
salaries.emp_no;

/*2, doesnt work*/

SELECT * FROM employees
WHERE birth_date = '1986%';


SELECT *
FROM employees
WHERE birth_date LIKE '%1986%';

/* 3*/

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
LEFT JOIN employees
ON dept_manager.emp_no =
employees.emp_no
RIGHT JOIN departments
ON dept_manager.dept_no =
departments.dept_no;

/* 4 */

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no =
employees.emp_no
RIGHT JOIN departments
ON dept_emp.dept_no =
departments.dept_no;



/* 5 */

SELECT * FROM employees
WHERE first_name = 'Hercules';

/* doesnt work */
SELECT * FROM employees
WHERE first_name = 'Hercules'
(WHERE last_name = 'b%');

/* 6 */


SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no =
employees.emp_no
RIGHT JOIN departments
ON dept_emp.dept_no =
departments.dept_no
WHERE dept_name = 'Sales';


/* 7 */


SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, dept_emp.dept_no, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no =
employees.emp_no
RIGHT JOIN departments
ON dept_emp.dept_no =
departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name ='Development';

/* 8 */
