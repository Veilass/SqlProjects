SELECT * FROM employees;
SELECT * FROM new_emps;

DELETE FROM new_emps; 
INSERT INTO new_emps (SELECT employee_id, first_name, hire_date, job_id FROM employees);
DELETE FROM new_emps;
DELETE FROM new_emps WHERE emp_id = 210;
DELETE FROM new_emps WHERE emp_id = 210;

DELETE FROM new_emps WHERE job LIKE '%CLERK' OR name IS NULL;

DELETE FROM new_emps WHERE job IN
(SELECT DISTINCT job_id FROM employees WHERE department_id IN
(SELECT department_id FROM departments WHERE manager_id = 100))