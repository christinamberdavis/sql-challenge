# sql-challenge
This project is divided into three parts: data modeling, data engineering, and data analysis.

1. Data Modeling
The included png file is an ERD of the database and models the following relationships: 
    *dept_manager to departments and vice versa: 
    This is a 1-to-many relationship. That is, each department may have one or more managers.
   
    *departments to dept_emp and vice versa: 
    dept_emp is a pivot table containing department IDs and employee IDs. There is a 1-to-many relationship between the departments table and the dept_emp table. That is, each department has 1 or more employees, and each employee works for 1 or more departments. 
   
    *employees to dept_emp and vice versa: 
    dept_emp is a pivot table containing department IDs and employee IDs. There is a 1-to-many relationship between the employees table and the dept_emp table. That is, each employee works for at least 1 or more departments. 

    *employees to dept_manager: 
    This relationship is 1:1. That is, each employee that is a manager is the manager of only 1 department. 

    *dept_manager to employees: 
    This relationship is 1-to-many. That is, each department has 1 or more managers .

    *employees to titles: 
    There is a 1 to 1 relationship betweeen employees and titles. That is, for each emp_no in the employees table, there will be only 1 title_id that corresponds to the emp_no. Put another way, each employee has exactly 1 title. 

    *titles to employees
    There is a 1-to-many relationship between titles and employees. That is, for each title_id in the titles table, 1 or more emp_nos will have that title_id. Put another way, one or more employees may have the same job title. While logically the orgnaization could have a job title that isn't currently filled (meaning the relationship between titles and employees is 0 to many), the dataset does not have any titles that do not have a corresponding emp_no. 

    *employees to salaries and vice versa: 
    There is a 1 to 1 relationship betweeen employees and salaries. The salaries table does not have its own Key. Instead, it only has a foreign key that references the emp_no. This table exists to document the salary for each employee. Because each employee has only 1 salary, the relationship between these two tables is 1 to 1.  

2. Data Engineering
The schema is found in /EmployeeSQl/sql_challenge_schema.sql. 

The data imported into the tables is found in /data. 

3. Data Analysis
The /EmployeeSQL/sql_challenge_queries.sql file contains the queries made for the data analysis. The results of the queries are found in /query results as csv files. The results align with the following queries: 
    *What is the employee number, last name, first name, sex, and salary of each employee?
    *What is the first name, last name, and hire date for the employees who were hired in 1986?
    *What is the manager of each department along with their department number, department name, employee number, last name, and first name?
    *What is the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    *What is the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B?
    *Who is the each employee in the Sales department, including their employee number, last name, and first name?
    *Who is the each employee in the Sales and Development departments, including their employee number, last name, first name, and department name?
    *What are the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)?