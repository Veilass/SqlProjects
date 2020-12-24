SELECT end_date, ADD_MONTHS(end_date, 4.5) FROM job_history;
SELECT ADD_MONTHS('30.09.19',1) FROM dual;
SELECT ADD_MONTHS('31.12.19',2) FROM dual;
SELECT * FROM employees
WHERE MONTHS_BETWEEN('01.01.10', hire_date) > 60;

SELECT NEXT_DAY(SYSDATE, 1) FROM dual;
SELECT * FROM sys.nls_session_parameters;
SELECT NEXT_DAY(SYSDATE, 'пн') FROM dual;
SELECT NEXT_DAY('31.12.19', 'ѕн')-7 FROM dual;
SELECT LAST_DAY(SYSDATE) FROM dual;
SELECT LAST_DAY('01.04.13') FROM dual;

SELECT hire_date, LAST_DAY(hire_date)-hire_date worked FROM employees;
SELECT hire_date, ROUND(hire_date,'MM') FROM employees
WHERE employee_id IN(120,121);


SELECT hire_date, TRUNC(hire_date,'MM') FROM employees
WHERE employee_id IN(120,121);