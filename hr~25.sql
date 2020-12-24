SELECT * FROM employees;
UPDATE employees SET salary = 20000
WHERE employee_id = 100;

UPDATE employees SET salary = salary*2
WHERE employee_id = 100;

UPDATE employees SET salary = 27000, job_id = 'IT_PROG'
WHERE employee_id = 101;

UPDATE employees SET salary = 8000
WHERE employee_id < 105;

UPDATE employees SET salary = 100;

UPDATE employees SET employee_id = null
WHERE employee_id = 100;

UPDATE employees SET employee_id = 101
WHERE employee_id = 100;

UPDATE employees SET salary = 5000
WHERE department_id IN(SELECT department_id FROM departments WHERE department_name = 'Marketing');

UPDATE employees SET salary = (SELECT MAX(salary) FROM employees),
hire_date = (SELECT MIN(start_date) FROM job_history)
WHERE employee_id = 180;

UPDATE employees SET salary = (SELECT MAX(salary) FROM employees WHERE employee_id = 5)
WHERE employee_id = 180;


UPDATE employees SET last_name = 'Alexanderob' WHERE employee_id = 110;

UPDATE employees SET salary = (SELECT MIN(salary) FROM employees)
WHERE employee_id >= 210;
UPDATE employees SET first_name = 'James'
WHERE employee_id = 212;