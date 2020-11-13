SELECT "Employees".emp_no, "Employees".first_name, "Employees".last_name, 
"Employees".gender, "Salaries".salary 
FROM "Employees"
INNER JOIN "Salaries" ON
"Employees".emp_no = "Salaries".emp_no;

SELECT * FROM "Employees"
WHERE DATE_PART('year', hire_date) = 1986
ORDER by emp_no;

SELECT "Department_Manager".dept_no, "Department_Manager".emp_no, "Employees".first_name, 
"Employees".last_name, "Departments".dept_name
FROM "Department_Manager"
	INNER JOIN "Departments" 
	ON "Department_Manager".dept_no = "Departments".dept_no
LEFT JOIN "Employees"
	ON "Department_Manager".emp_no = "Employees".emp_no;
	