SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT e1.first_name,  e1.last_name, e1.salary FROM employees e1
WHERE salary > (SELECT AVG(e2.salary) FROM employees e2
WHERE e2.department_id = e1.department_id);

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;
SELECT * FROM country;

SELECT first_name, last_name,salary FROM employees WHERE department_id IN 
(SELECT department_id FROM departments WHERE location_id IN 
(SELECT location_id FROM locations WHERE country_id =
(SELECT country_id FROM countries WHERE country_name = 'United States of America')));

SELECT * FROM jobs;

SELECT first_name, last_name,salary FROM employees 
WHERE job_id IN(SELECT job_id FROM jobs  WHERE UPPER(job_title) like '%MANAGER%'
AND salary > (SELECT AVG(salary) FROM employees));

SELECT first_name, last_name,salary FROM employees 
WHERE salary > (SELECT MAX(salary) FROM employees WHERE first_name = 'David');