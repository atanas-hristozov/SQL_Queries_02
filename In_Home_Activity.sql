SELECT * FROM company.company_database;
SELECT * FROM company.addresses;
SELECT * FROM company.departments;
SELECT name FROM company.departments;
SELECT first_name, last_name, salary FROM company.employees;
SELECT first_name, last_name FROM company.employees;
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM company.employees;
SELECT CONCAT(first_name, '.', last_name, '@company.com') AS "FULL Email Address" FROM company.employees;
SELECT DISTINCT salary FROM company.employees;
SELECT * FROM company.employees WHERE job_title = 'Sales Representative';
SELECT CONCAT(first_name, ' ', last_name) FROM company.employees WHERE job_title = 'Sales Representative';
SELECT e.employee_id, e.first_name, e.salary FROM company.employees e INNER JOIN company.employees m ON e.manager_id = m.employee_id WHERE e.salary > m.salary;
SELECT * FROM company.employees WHERE first_name LIKE 'SA%';
SELECT * FROM company.employees WHERE last_name LIKE '%ei%';
SELECT * FROM company.employees WHERE salary >= 20000 AND salary <= 30000;
SELECT CONCAT(first_name, ' ', last_name, ' ', salary) FROM company.employees WHERE salary >= 20000 AND salary <= 30000;
SELECT company.employees.last_name FROM company.employees WHERE salary IN (25000, 14000, 12500, 23600);
SELECT * FROM company.employees WHERE manager_id IS NULL;
SELECT e.first_name FROM company.employees e JOIN company.employees m ON e.manager_id = m.employee_id WHERE e.hire_date < m.hire_date;
SELECT * FROM company.employees WHERE salary>50000 ORDER BY salary DESC;
SELECT * FROM company.employees WHERE salary>50000 ORDER BY salary DESC LIMIT 5;
SELECT e1.first_name AS employee_first_name,
       e1.last_name AS employee_last_name,
       e2.first_name AS manager_first_name,
       e2.last_name AS manager_last_name
FROM company.employees e1 JOIN company.employees e2 ON e1.manager_id = e2.employee_id;
SELECT e1.first_name AS employee_name, COALESCE(e2.first_name, 'n/a') AS manager_name
FROM company.employees e1 LEFT JOIN company.employees e2 ON e1.manager_id = e2.employee_id;
SELECT * FROM company.departments;
SELECT CONCAT(first_name, ' ', last_name) FROM company.employees WHERE department_id = 3 OR department_id = 10 AND YEAR(hire_date) BETWEEN 1995 AND 2005;
