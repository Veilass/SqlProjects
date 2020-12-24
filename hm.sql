SELECT * FROM employees;
SELECT * FROM employees WHERE 
first_name IN('David');

SELECT * FROM employees
WHERE job_id = ('FI_ACCOUNT');

SELECT first_name,last_name,salary, department_id FROM employees
WHERE department_id = 50 AND salary > 4000 ORDER BY salary;

SELECT * FROM employees
WHERE department_id = 30 OR department_id = 20;

SELECT * FROM employees
WHERE first_name LIKE '_a%a';

SELECT * FROM employees 
WHERE department_id  IN (50,80) AND commission_pct IS NOT NULL
ORDER BY 4;

SELECT * FROM employees
WHERE first_name LIKE '%n%n%';

SELECT * FROM employees WHERE first_name LIKE '%____%' 
ORDER BY department_id DESC NULLS LAST;

SELECT * FROM employees
WHERE salary Between 3000 AND 7000 AND commission_pct IS NULL
AND job_id IN('PU_CLERK','ST_MAN','ST_CLERK');

SELECT * FROM employees
WHERE first_name LIKE ('%/%') ESCAPE '/';

SELECT job_id,first_name, salary, employee_id FROM employees 
WHERE employee_id >= 120 AND job_id != 'IT_PROG'
ORDER BY job_id, first_name DESC;
