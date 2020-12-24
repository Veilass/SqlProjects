SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
UNION ALL
SELECT * FROM jobs WHERE job_id LIKE '%MAN%';

SELECT job_id, job_title FROM jobs WHERE job_id LIKE '%MAN%'
UNION ALL
SELECT job_id, job_title, min_salary FROM jobs WHERE job_id LIKE '%MAN%';

SELECT * FROM jobs;

SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
UNION ALL
SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
ORDER BY 3 DESC;

SELECT first_name, last_name, salary FROM employees WHERE employee_id > 200
UNION ALL
SELECT job_id, job_title, max_salary FROM jobs  WHERE job_id LIKE '%MAN%';

SELECT country_id FROM countries
UNION ALL
SELECT country_name FROM countries;

SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
UNION 
SELECT * FROM jobs WHERE job_id LIKE '%MAN%';

SELECT * FROM jobs WHERE min_salary BETWEEN 4500 AND 8000
UNION
SELECT * FROM jobs WHERE max_salary BETWEEN 10000 AND 15000
ORDER BY 3;

SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
INTERSECT
SELECT * FROM jobs WHERE job_id LIKE '%MAN%';

SELECT * FROM jobs WHERE min_salary BETWEEN 4500 AND 8000
INTERSECT
SELECT * FROM jobs WHERE max_salary BETWEEN 10000 AND 15000
ORDER BY 3;

SELECT first_name, last_name FROM employees
INTERSECT
SELECT street_address, city FROM locations;

SELECT job_id, job_title, max_salary FROM jobs
WHERE min_salary BETWEEN 4500 AND 8000
INTERSECT
SELECT job_id, job_title, max_salary  FROM jobs WHERE max_salary BETWEEN 10000 AND 15000
ORDER BY max_salary DESC;

SELECT * FROM jobs WHERE job_id LIKE '%MAN%'
MINUS 
SELECT * FROM jobs WHERE job_id LIKE '%MAN%';

SELECT job_id, job_title, max_salary FROM jobs
WHERE min_salary BETWEEN 4500 AND 8000
MINUS
SELECT job_id, job_title, max_salary  FROM jobs WHERE max_salary BETWEEN 10000 AND 15000;

SELECT job_id, job_title, max_salary  FROM jobs WHERE max_salary BETWEEN 10000 AND 15000
MINUS
SELECT job_id, job_title, max_salary FROM jobs
WHERE min_salary BETWEEN 4500 AND 8000;
---------------------------------------
SELECT first_name, salary FROM employees WHERE first_name LIKE '%a%'
INTERSECT
SELECT first_name, salary FROM employees WHERE first_name LIKE '%e%'
MINUS
SELECT first_name, salary FROM employees WHERE first_name LIKE '%l%';
--------------------------------------
SELECT first_name, salary FROM employees WHERE first_name LIKE '%a%'
UNION
(SELECT first_name, salary FROM employees WHERE first_name LIKE '%e%'
MINUS
SELECT first_name, salary FROM employees WHERE first_name LIKE '%l%');

SELECT manager_id FROM employees WHERE department_id = 20
INTERSECT
SELECT manager_id FROM employees WHERE department_id = 30
MINUS
SELECT manager_id FROM employees WHERE department_id = 40;

SELECT department_id ,TO_CHAR(null) job_id,sum(salary) FROM employees
GROUP BY department_id
UNION
SELECT TO_NUMBER(null) ,job_id , sum(salary) FROM employees
GROUP BY job_id;