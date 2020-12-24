SELECT DECODE(3*4, 12, 'twelve') FROM dual;
SELECT DECODE(3*4, 13, 'twelve') FROM dual;
SELECT DECODE(3*4, 13, 'thirteen', 14, 'fourteen', 18, 'twelve', 
'No found comparison')
FROM dual;

SELECT DECODE(null, 5, 'ok', null, 55) FROM dual;
SELECT DECODE(2+2*2*100, 5, 'five', 12/2, 'six1', 6, 'six2', '!!!') decode FROM dual;

SELECT first_name, commission_pct,
DECODE(commission_pct, null, 'No commission', 0.1, 'Small', 0.4, 'Large', 'Middle')
FROM employees WHERE employee_id BETWEEN 140 AND 180;