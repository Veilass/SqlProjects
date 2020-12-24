SELECT NVL(null,null) FROM dual;
SELECT first_name, NVL(commission_pct, 0) FROM employees;
SELECT first_name, NVL(SUBSTR(first_name, 6), 'name is too short') FROM employees;
SELECT first_name, commission_pct, NVL(salary*commission_pct, 500) bonus FROM employees;
SELECT first_name, commission_pct, NVL(salary*commission_pct, 0) +500 bonus FROM employees;
SELECT first_name, commission_pct, NVL(salary*commission_pct, 500) bonus FROM employees;

SELECT NVL2(17,18,19) FROM dual;
SELECT NVL2(null,18,19) FROM dual;
SELECT first_name, NVL2(commission_pct, commission_pct, 0) FROM employees;
SELECT first_name, NVL2(commission_pct, 'There is pct', 'No pct') FROM employees;

SELECT NUllIF(17,17) FROM dual;
SELECT NUllIF(17,18) FROM dual;
SELECT NULLIF(15, 1||5) FROM dual;
SELECT NULLIF(1||5, 15) FROM dual;
SELECT NULLIF('15', 15) FROM dual;
SELECT NULLIF('18-SEP-87','18/SEP/87') FROM dual;
SELECT NULLIF(TO_DATE('18-SEP-87'),TO_DATE('18/SEP/87')) FROM dual;
SELECT country_id,country_name,
NVL2(NULLIF(country_id,UPPER(SUBSTR(country_name, 1, 2))), 'No matches', 'Found matches')comparison
FROM countries;

SELECT first_name, last_name, 
NVL2(NULLIF(UPPER(SUBSTR(first_name,1,2)),UPPER(SUBSTR(last_name,1,2))),'No matches', 'Found matches') comparison
FROM employees;

SELECT COALESCE(1, null, 'ok') FROM dual;
SELECT COALESCE(null, null, 'hello') FROM dual;
SELECT COALESCE(null, null, null) FROM dual;
SELECT COALESCE(17,18) FROM dual;

SELECT first_name, commission_pct, manager_id, salary,
COALESCE(commission_pct, manager_id, salary) info
FROM employees;