SELECT * FROM employees ;

SELECT * FROM employees WHERE first_name BETWEEN 'A' AND 'C';

SELECT first_name,last_name, salary FROM employees WHERE salary >= 17000;
SELECT first_name,last_name, salary FROM employees WHERE last_name = 'King';
SELECT * FROM employees WHERE hire_date='21.SEP.05'; 

SELECT * FROM employees WHERE employee_id = manager_id+1000/10+1;

SELECT * FROM departments WHERE location_id = 1700;

SELECT * FROM departments;

SELECT * FROM job_history WHERE job_id = 'ST_CLERK';

SELECT * FROM employees WHERE first_name = last_name;

SELECT * FROM employees 
WHERE 'Dr '||first_name||' '||last_name = 'Dr David Austin';

SELECT * FROM employees 
WHERE 'Dr David Austin' = 'Dr '||first_name||' '||last_name;

SELECT * FROM job_history WHERE end_date = start_date+364;

SELECT first_name,last_name, salary FROM employees
WHERE salary BETWEEN 4000 AND 10000;

SELECT first_name,last_name, salary FROM employees
WHERE salary BETWEEN 10000 AND 4000;

SELECT first_name,last_name, salary FROM employees
WHERE salary>=4000 AND salary <= 10000;

SELECT * FROM job_history WHERE start_date BETWEEN '01.JAN.04' AND '31.DEC.06';

SELECT * FROM departments WHERE location_id IN (1700,2400,1500);

SELECT * FROM departments WHERE 
location_id = 1700 OR location_id = 24000 OR location_id = 1500;

SELECT * FROM job_history WHERE job_id IN ('IT_PROG','ST_CLERK');

SELECT * FROM job_history WHERE end_date IN('31.DEC.07', '05.MAY.05');

SELECT * FROM employees WHERE commission_pct IS NULL;



