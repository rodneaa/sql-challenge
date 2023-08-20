---Create 6 tables, one for each CSV
CREATE TABLE dept (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
	emp_no SERIAL NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (dept_no)
	REFERENCES dept (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no SERIAL NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (dept_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (dept_no) REFERENCES dept (dept_no)
	);


CREATE TABLE titles (
	title_ID VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
	);
	

CREATE TABLE salaries (
	emp_no SERIAL NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE employees (
	emp_no SERIAL NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name	VARCHAR NOT NULL,
	sex	VARCHAR NOT NULL,
	hire_date DATE NOT NULL
	);
	
	
SELECT * FROM employees LIMIT 20;


--- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
INNER JOIN salaries 
ON salaries.emp_no = employees.emp_no;

--- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'


--- List the manager of each department along with their department number, department name, 
	--- employee number, last name, and first name.



--- List the department number for each employee along with that employee’s employee number, 
	--- last name, first name, and department name.



--- List first name, last name, and sex of each employee whose first name is Hercules
   	---and whose last name begins with the letter B.



--- List each employee in the Sales department, including their employee number, last name, and first name.



--- List each employee in the Sales and Development departments, including their employee number, 
	---last name, first name, and department name.


---List the frequency counts, in descending order, of all the employee last names 
---(that is, how many employees share each last name).