SELECT first_name, last_name,salary 
FROM employees;

SELECT job_id FROM job_history;

SELECT * FROM job_history;

SElECT DISTINCT commission_pct FROM employees;

SELECT salary FROM employees;

SELECT salary*2+employee_id from employees;

SELECT first_name, salary*1.5/4, salary from employees;

SELECT salary, salary*5/2/10-5, salary*5/2/(10-5) from employees;

SELECT commission_pct, commission_pct/2 from employees;

SELECT * FROM job_history;

SELECT start_date, start_date+7 FROM job_history;

SELECT 'My name is '||first_name||', my surname is '||last_name AS name FROM employees;

SELECT * FROM employees;

SELECT 'A'||commission_pct||'B' FROM employees;

SELECT first_name AS fn, last_name, commission_pct AS pct FROM employees;

SELECT start_date, end_date, (end_date-start_date)+1 AS "Count of Days" FROM job_history;



