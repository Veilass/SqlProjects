SELECT * FROM employees;
SELECT * FROM employees WHERE first_name LIKE '__n%' AND commission_pct IS NULL;
SELECT * FROM employees WHERE first_name LIKE 'A%' AND job_id = 'SA_REP';
SELECT * FROM employees
WHERE first_name LIKE '__n%' AND commission_pct IS NULL
OR
first_name LIKE 'A%' AND job_id = 'SA_REP';

SELECT * FROM employees;

SELECT first_name, last_name, salary, department_id, job_id, commission_pct
FROM employees WHERE 
last_name LIKE '%i%'
OR salary>employee_id*50 AND job_id IN ('IT_PROG','PU_CLERK')
OR commission_pct IS NULL;