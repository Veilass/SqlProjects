SELECT * FROM regions;
SELECT * FROM employees;
SELECT * FROM job_history;
SELECT * FROM countries;
SELECT * FROM departments;
--1

--2

--3
SELECT emp1.first_name, emp2.manager_id, COUNT(*) 
FROM employees emp1 JOIN employees emp2 ON (emp1.employee_id = emp2.manager_id)
GROUP BY  emp1.first_name, emp2.manager_id
HAVING COUNT(*) > 6;
--4
SELECT DISTINCT department_name , first_name, COUNT(*) 
FROM employees e JOIN departments d ON(e.department_id = d.department_id)
GROUP BY first_name, department_name ;