SELECT * FROM (SELECT salary FROM employees);

SELECT department_name, MIN(salary), MAX(salary) FROM
(SELECT salary, department_name FROM employees e JOIN departments d
ON (e.department_id = d.department_id))
GROUP BY department_name;

SELECT department_name, MIN(salary), MAX(salary) FROM
(SELECT salary, department_name FROM employees e JOIN departments d
ON (e.department_id = d.department_id))
GROUP BY department_name
HAVING MAX(salary) > (SELECT 2*5000 FROM dual)
AND MIN(salary) < (SELECT salary FROM employees WHERE employee_id = 113);

SELECT MAX(salary) FROM employees;
SELECT first_name, last_name, salary FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)/5;

SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT first_name, last_name, salary FROM employees
WHERE salary >= (SELECT salary FROM employees WHERE employee_id = 180);

SELECT first_name, last_name, salary FROM employees
WHERE salary >= (SELECT salary FROM employees WHERE employee_id = 180);

SELECT first_name, last_name, salary FROM employees
WHERE salary >= (SELECT salary FROM employees WHERE employee_id = 180);

SELECT job_title FROM jobs j JOIN employees e ON(j.job_id = e.job_id)
GROUP BY job_title
HAVING AVG(salary) =
(SELECT MAX(AVG(salary)) FROM employees GROUP BY job_id);

SELECT job_id, AVG(salary) FROM employees
GROUP BY job_id;

SELECT * FROM jobs;

SELECT first_name, last_name, salary FROM employees
WHERE job_id IN (SELECT job_id FROM jobs WHERE min_salary > 8000);

SELECT first_name, last_name, salary FROM employees
WHERE job_id IN (SELECT job_id FROM jobs WHERE job_id = 'AD_VP');

SELECT first_name, last_name, salary FROM employees
WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 100);

SELECT first_name, last_name, salary FROM employees
WHERE salary > ALL (SELECT salary FROM employees WHERE department_id = 100);

SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT MAX(salary) FROM employees WHERE department_id = 100);

SELECT DISTINCT department_name FROM employees e JOIN departments d
ON e.department_id = d.department_id;

SELECT department_name FROM departments 
WHERE department_id IN (SELECT DISTINCT de partment_id FROM employees);