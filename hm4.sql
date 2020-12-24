SELECT department_id,
        MIN(salary),
        MAX(salary),
        MIN(hire_date), 
        MAX(hire_date),
        COUNT(*)
FROM employees
GROUP BY department_id
ORDER BY COUNT(*) DESC;

SELECT SUBSTR(first_name, 1, 1) oneLetter, COUNT(*) names
FROM employees
GROUP BY SUBSTR(first_name, 1, 1)
HAVING COUNT(*) > 1
ORDER BY 2;

SELECT department_id, salary, COUNT(salary)
FROM employees 
GROUP BY department_id, salary
ORDER BY department_id;

SELECT DISTINCT TO_CHAR(hire_date, 'Day'), COUNT(*)
FROM employees
GROUP BY TO_CHAR(hire_date, 'Day');

SELECT * FROM employees;

SELECT department_id
FROM employees  
GROUP BY department_id
HAVING COUNT(*) > 30 AND SUM(salary) >  300000
ORDER BY department_id;

SELECT * FROM countries;

SELECT region_id, SUM(LENGTH(country_name))
FROM countries
GROUP BY region_id 
HAVING SUM(LENGTH(country_name)) > 50
ORDER BY region_id;

SELECT job_id, ROUND(SUM(salary))
FROM employees
GROUP BY job_id
ORDER BY job_id;

SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(DISTINCT job_id) > 1
ORDER BY department_id;

SELECT department_id, job_id, MAX(salary), MIN(salary)
FROM employees
GROUP BY department_id, job_
HAVING AVG(salary) > 10000
ORDER BY department_id;

SElECT manager_id, AVG(salary)
FROM employees
WHERE commission_pct IS NULL
GROUP BY manager_id
HAVING AVG(salary) BETWEEN 6000 AND 9000;

SELECT ROUND(MAX(AVG(salary)), -3)
FROM employees
GROUP BY department_id
ORDER BY department_id;
