SELECT COUNT(*) FROM employees;

--there are 300,024

--- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.last_name, e.first_name, e.sex, s.emp_no, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
LIMIT 300025;

--- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'


--- List the manager of each department along with their department number, department name, 
	--- employee number, last name, and first name. (title ID for manager is m0001)
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager dm
JOIN employees e ON e.emp_no = dm.emp_no
JOIN dept d	ON dm.dept_no = d.dept_no
WHERE emp_title_id = 'm0001';
	
	
--- List the department number for each employee along with that employee’s employee number, 
	--- last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN dept d	ON de.dept_no = d.dept_no
LIMIT 300025;


--- List first name, last name, and sex of each employee whose first name is Hercules
   	---and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
from employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


--- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN dept d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
LIMIT 300000;


--- List each employee in the Sales and Development departments, including their employee number, 
	---last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN dept d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name ='Development'
LIMIT 300000;

---List the frequency counts, in descending order, of all the employee last names 
---(that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


---SELECT column, COUNT(*) AS frequency
---FROM table
--GROUP BY column
--ORDER BY frequency DESC;


















