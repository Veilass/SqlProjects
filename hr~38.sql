SELECT first_name, last_name, salary
FROM employees
WHERE employee_id = &ID;

SELECT first_name, last_name, salary
FROM employees
WHERE first_name = '&name'
AND salary > &sal;

SELECT first_name, last_name, salary
FROM employees
WHERE first_name LIKE '%&&bukva%'
AND last_name LIKE '%&bukva%';
UNDEFINE bukva;
DEFINE bukva = a;
SET DEFINE ON; -- OFF

SELECT first_name, last_name, &col FROM employees;

SELECT first_name, last_name, &&col FROM employees
ORDER by &col;



SELECT * FROM students;

SELECT &select_list
FROM &table_name
WHERE &conditions
ORDER BY &col5;

UPDATE students SET &co2 = &value WHERE &condition