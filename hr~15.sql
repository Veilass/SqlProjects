SELECT e.salary, e.first_name FROM employees e;

SELECT * FROM regions;
SELECT * FROM countries;

SELECT c.country_name, c.country_id, r.region_name, region_id
FROM regions r NATURAL JOIN countries c 
WHERE r.region_name = 'Europe'; 

SELECT * FROM employees WHERE department_id = 90 AND manager_id = 100;
SELECT * FROM departments WHERE department_id = 90 AND manager_id = 100;

SELECT first_name, last_name, salary, department_name,department_id, manager_id
FROM employees NATURAL JOIN departments;

SELECT * FROM employees NATURAL JOIN countries;

SELECT * FROM employees;
SELECT * FROM job_history;

SELECT * FROM employees NATURAL JOIN job_history;