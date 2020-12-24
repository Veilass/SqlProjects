SELECT first_name, last_name, salary, department_name,e.manager_id empManager, d.manager_id depmanager, department_id
FROM employees e JOIN departments d USING (department_id);
SELECT * FROM regions JOIN countries USING(region_id);
SELECT first_name, last_name, jh.job_id, start_date, end_date
FROM employees JOIN job_history jh USING (employee_id, department_id);

SELECT first_name, last_name, jh.job_id, start_date, end_date, employees.employee_id, jh.employee_id
FROM employees JOIN job_history jh ON (employees.employee_id = jh.employee_id);
SELECT * FROM regions;
SELECT * FROM departments;
SELECT * FROM departments JOIN regions ON
(region_id*10 = department_id);

SELECT first_name, last_name, jh.job_id, start_date, end_date
FROM employees JOIN job_history jh USING (employee_id, department_id);

SELECT first_name, last_name, jh.job_id, start_date, end_date
FROM employees e JOIN job_history jh ON 
(e.employee_id = jh.employee_id AND e.department_id = jh.department_id)
WHERE salary > 10000;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT first_name, department_name FROM employees JOIN departments
ON(employees.employee_id = departments.manager_id);