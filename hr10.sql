SELECT LENGTH(UPPER(SYSDATE)) FROM dual;
SELECT SUBSTR(SYSDATE, ADD_MONTHS('18-SEP-87',3)) FROM dual;
SELECT first_name, LENGTH(first_name), ROUND(123.4567894534,LENGTH(first_name))
FROM employees;
SELECT first_name, employee_id, LENGTH(employee_id),
SUBSTR(first_name, LENGTH(employee_id)),
LENGTH(SUBSTR(first_name, LENGTH(employee_id)))
FROM employees;

SELECT TO_DATE('18-09-87','DD-MM-RR'),
(TO_CHAR(TO_DATE('18-09-87','DD-MM-RR'), 'DAY'))
FROM dual;

SELECT * FROM employees;
SELECT first_name,last_name,phone_number,
TO_NUMBER(SUBSTR(phone_number, INSTR(phone_number, '.')+1), '999.9999')* 10000
FORM_NUMB
FROM employees WHERE employee_id < 130;