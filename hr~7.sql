SELECT * FROM employees;
SELECT first_name, LOWER(first_name) FROM employees;
SELECT LOWER('EponA mAMT') from dual;
SELECT LOWER('Privet' || ' Kak dela?') from dual;
SELECT * FROM employees WHERE LOWER(first_name) = 'david';
SELECT * FROM employees WHERE LOWER(first_name) LIKE '%en%';
SELECT LOWER(2+2*2) FROM dual;
SELECT LOWER('PRIVET' || ' Skolko tebbe LET?' || ' 32') FROM DUAL;


SELECT first_name, UPPER(first_name) FROM employees;
SELECT UPPER('Privet' || ' Kak dela?') from dual;
SELECT * FROM employees WHERE UPPER(first_name) = 'DAVID';
SELECT * FROM employees WHERE UPPER(first_name) LIKE '%EN%';
SELECT UPPER('PRIVET' || ' Skolko tebbe LET?' || ' 32') FROM DUAL;

SELECT first_name, INITCAP(first_name) FROM employees;
SELECT INITCAP('Privet' || ' Kak dela?') from dual;
SELECT * FROM employees WHERE INITCAP(first_name) = 'David';
SELECT * FROM employees WHERE INITCAP(first_name) LIKE '%en%';
SELECT INITCAP('PRIVET' || ' Skolko tebbe LET?' || ' 32') FROM DUAL;
SELECT INITCAP('Name is ' || first_name ||' and surname is ' || last_name) full_name
FROM employees;

SELECT LPAD('Zaur', 7, '#') FROM DUAL;
SELECT RPAD('Zaur', 7, '#') FROM DUAL;
SELECT first_name, LPAD(first_name, 25, '$') FROM employees;
SELECT first_name, LPAD(first_name, 25, '$'), RPAD(first_name, 25, '$') FROM employees;
SELECT first_name, LPAD(first_name, 25, 'ABC') FROM employees;
SELECT SYSDATE, LPAD(SYSDATE, 5, '!') FROM dual;
SELECT RPAD(first_name, 15, ' ')|| LPAD(salary, 8, ' ') FROM employees;

SELECT TRIM(TRAILING 'q' FROM 'Zaurqqqq') FROM DUAL;
SELECT TRIM(LEADING '*' FROM '***Zaur****') FROM DUAL;
SELECT TRIM(BOTH '*' FROM '***Zaur****') FROM DUAL;
SELECT TRIM('*' FROM '***Zaur****') FROM DUAL;
SELECT TRIM(' ' FROM '  Zaur Tregulov    ') FROM DUAL;
SELECT TRIM('  Zaur Tregulov    ') FROM DUAL;

SELECT INSTR('Zaur Tregulov', 'u' , 2, 2) "lel" FROM DUAL;
SELECT * FROM employees;
SELECT * FROM employees WHERE INSTR(job_id, 'PROG') = 4;
SELECT * FROM employees WHERE INSTR(hire_date, '05') = 1;
SELECT * FROM employees WHERE INSTR(salary, '2') = 2;

SELECT * FROM employees;
SELECT email, SUBSTR(email, 6, 2) FROM employees;
SELECT SUBSTR('privet, kak dela?', 4, 7) "lel" FROM DUAL;
SELECT salary, SUBSTR(salary, 2, 3) FROM employees;
SELECT hire_date, SUBSTR(hire_date, 2, 3) FROM employees;
SELECT SUBSTR('privet, kak dela?', -4, 10) "lel" FROM DUAL;

SELECT REPLACE('Privet, kak dela? Chto xoroshego', 'o') FROM dual;
SELECT salary, REPLACE(salary, '1', '9') FROM employees;
SELECT hire_date, REPLACE(hire_date, '-', '/') FROM employees;

