SELECT
CASE 3*4
WHEN 12 THEN 100
END
FROM dual;

SELECT
CASE 3*4
WHEN 12 THEN 'twelve'
END
FROM dual;

SELECT
CASE 3*4
WHEN 11 THEN 'eleven'
WHEN 12 THEN 'twelve1'
WHEN 24/2 THEN 'twelve2'
END
FROM dual;

SELECT
CASE 3*5
WHEN 11 THEN 'eleven'
WHEN 12 THEN 'twelve1'
WHEN 24/2 THEN 'twelve2'
ELSE 'million'
END
FROM dual;

SELECT
CASE 3*5
WHEN 11 THEN 80
WHEN 12 THEN 'twelve1'
WHEN 24/2 THEN 'twelve2'
ELSE 'million'
END
FROM dual;

SELECT
CASE 3*5
WHEN 11 THEN 80
WHEN 'ok' THEN 'twelve1'
WHEN 24/2 THEN 'twelve2'
ELSE 'million'
END
FROM dual;

SELECT first_name,
CASE LENGTH(first_name)
WHEN 4 THEN 'very small name'
WHEN 5 THEN 'small name'
WHEN 6 THEN 'middle name'
WHEN 7 THEN 'long name'
WHEN 8 THEN 'very long name'
ELSE 'lenght not known'
END AS "Simple case Statment"
FROM employees;


SELECT
CASE 
WHEN 3*4=12 THEN 'twelve'
END
FROM dual;

SELECT
CASE
WHEN 3*4 = 11 THEN 'eleven'
WHEN 'ok' = 'OK' THEN 'twelve1'
WHEN 50/2*3=24/2 THEN 'twelve2'
ELSE '!!!'
END AS "Case Statment"
FROM dual;

SELECT first_name, salary, commission_pct,
CASE 
WHEN LENGTH(first_name)<= 5 THEN 'Is worked condition #1'
WHEN salary*10> 100000 THEN 'Is worked condition #2'
WHEN commission_pct IS NOT NULL THEN 'Is worked condition #3'
ELSE 'None of the conditions worked'
END AS "Case search Statment"
FROM employees;