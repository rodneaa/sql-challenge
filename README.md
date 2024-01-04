### Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files:
- departments
- dept_emp: employees of each department
- dept_manager
- employees (all employees)
- salaries (salary by employee #)
- titles (name title by title ID)


For this project, I will design tables to hold the data from the CSV files (data model), import the CSV files into a SQL database (data engineer), and then answer questions about the data, data analysis. 

![image](https://github.com/rodneaa/sql-challenge/assets/136031276/fb6eb4bd-1951-4178-aaa2-d8ecc7119fdd)

### Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

- Remember to specify the data types, primary keys, foreign keys, and other constraints.

- For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

- Be sure to create the tables in the correct order to handle the foreign keys.

- Import each CSV file into its corresponding SQL table.

### Data Analysis
--- These items each have a file in the "OUtput Files" Folder---
List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

