SELECT department_id, COUNT(*), MIN(salary) FROM employees GROUP BY department_id
ORDER BY 1,  2;

SELECT  job_id j, ROUND(AVG(salary)), MIN(salary) myMin,MAX(salary)
FROM employees
WHERE LENGTH(first_name) > 4 AND salary > 5000
GROUP BY job_id
ORDER BY  myMin;

SELECT MAX(hire_date), MIN(first_name), COUNT(*), ROUND(AVG(salary)), SUM(employee_id)
FROM employees GROUP BY department_id;

SELECT TO_CHAR(hire_date, 'Month'), COUNT(*)
FROM employees
GROUP BY TO_CHAR(hire_date, 'Month');

SELECT location_id, COUNT(*) FROM departments
GROUP BY location_id;
SELECT * FROM departments;

SElECT department_id,job_id, COUNT(*) FROM employees
GROUP BY department_id, job_id ORDER BY  department_id;

SElECT department_id,manager_id, COUNT(*) FROM employees
GROUP BY department_id, manager_id ORDER BY  department_id, manager_id;

SELECT job_id, TO_CHAR(hire_date, 'YYYY') year,commission_pct, COUNT(*), SUM(salary)
FROM employees
WHERE job_id IN('ST_CLERK','SA_REP','SH_CLERK') AND employee_id > 115
GROUP BY job_id, TO_CHAR(hire_date, 'YYYY'), commission_pct
ORDER BY job_id, year;

SELECT * FROM employees WHERE salary > 10000;

SELECT department_id, COUNT(*) 
FROM employees
WHERE LENGTH(first_name) > 4
GROUP BY department_id
HAVING COUNT(*) > 3
ORDER BY department_id;

SELECT department_id, COUNT(*), ROUND(AVG(salary)) AVG
FROM employees
WHERE LENGTH(first_name) > 4 AND employee_id > 10
GROUP BY department_id
HAVING COUNT(*) > 3 AND ROUND(AVG(salary)) > 5000
ORDER BY department_id;

SELECT department_id, AVG(salary) FROM employees
GROUP BY department_id;

SELECT SUM(AVG(salary)) FROM employees
GROUP BY department_id;

SELECT MAX(SUM(AVG(salary))) FROM employees
GROUP BY department_id;

SELECT ROUND(SUM(AVG(LENGTH(UPPER(last_name)))))
FROM employees GROUP BY department_id;