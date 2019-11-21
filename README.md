# Employee Database: A Mystery in Two Parts
USC Data Analytics SQL


### Overview
Conducted a research project on employees of the Pewlett Hackard corporation from the 1980s and 1990s. Designed the tables to hold data in the CSVs, imported six CSVs files into a SQL database, and answered questions about the data to complete data analysis.



### Queries Used
- Data Definition Language Statements:
  - ALTER
  - DROP
  - CREATE VIEW
  - CONSTRAINT 
  - PRIMARY KEY
  - FOREIGN KEY
- Data Manipulation Language Statements:
  - SELECT
  - FROM 
  - APPEND
  - DELETE
  - UPDATE
  - JOIN
  - COMMIT
- Aggregate Functions:
  - SUM
  - COUNT
  - GROUP BY
  - WHERE
  - ORDER BY
  
-----------------------------------------------------------------------------------------------------

#### Data Modeling
Inspected the Employees' CSVs and sketch an ERD of the tables. Utilized the following tool to sketch the EDR: http://www.quickdatabasediagrams.com.


### Data Engineering

- Created a table schema for each of the six CSV files specifying data types, primary keys, foreign keys, and other constraints.


- Imported each CSV file into the corresponding SQL table.



### Data Analysis
Ran multiple SQL queries to answered the below questions by joining tables on indexes, and utilizing WHERE, GROUP BY, and ORDER BY clauses 
  
1. List the following details of each employee: employee number, last name, first name, gender, and salary.


2. List employees who were hired in 1986.


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.


4. List the department of each employee with the following information: employee number, last name, first name, and department name.


5. List all employees whose first name is "Hercules" and last names begin with "B."


6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
