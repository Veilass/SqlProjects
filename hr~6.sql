SELECT first_name, salary FROM employees WHERE job_id =('IT_PROG') ORDER BY salary DESC;
SELECT * FROM employees;
SELECT first_name, salary, hire_date FROM employees
WHERE job_id =('IT_PROG') ORDER BY hire_date DESC;

SELECT first_name, salary, hire_date FROM employees
WHERE job_id =('IT_PROG') ORDER BY first_name DESC;

SELECT last_name, salary, hire_date, hire_date+salary*2 expr
FROM employees
WHERE employee_id>120
ORDER BY expr;

SELECT * FROM employees ORDER BY commission_pct ;
SELECT * FROM employees ORDER BY 1 DESC;

SELECT first_name, salary FROM employees ORDER BY 2;




SELECT job_id,first_name, last_name, salary, hire_date 
FROM employees
ORDER BY job_id DESC, last_name, 4 DESC ;


SELECT job_id, first_name 
FROM employees ORDER BY job_id, first_name;