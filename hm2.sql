SELECT * FROM employees WHERE LENGTH(first_name) > 10;
SELECT * FROM employees WHERE MOD(salary, 1000) = 0;
SELECT phone_number, SUBSTR(phone_number, 1, 3) FROM employees
WHERE phone_number LIKE '___.___.____';
SELECT * FROM employees WHERE SUBSTR(first_name, -1) = 'm' 
AND LENGTH(first_name)>5;
SELECT NEXT_DAY(SYSDATE, 'ος') FROM dual;
SELECT * FROM employees 
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) > 150;

SELECT phone_number, REPLACE(phone_number, '.', '-') FROM employees;
SELECT UPPER(first_name), LOWER(email), INITCAP(job_id) FROM employees;
SELECT CONCAT(first_name, salary) FROM employees;
SELECT hire_date, ROUND(hire_date, 'MM'),TRUNC(hire_date, 'YYYY') FROM employees;
SELECT RPAD(first_name, 10, '$') , LPAD(last_name,15,'!') FROM employees;
SELECT first_name,INSTR(first_name, 'a',2,2) FROM employees
WHERE first_name LIKE '%a%a%';
SELECT ('!!!HELLO!! MY FRIEND!!!!!!!!') text ,TRIM('!' FROM '!!!HELLO!! MY FRIEND!!!!!!!!') text2 FROM dual;
SELECT salary, salary*3.1415,ROUND( salary*3.1415), TRUNC(salary*3.1415, -3)/1000 FROM employees;
SELECT hire_date, ADD_MONTHS(hire_date, 6), LAST_DAY(hire_date) FROM employees;
