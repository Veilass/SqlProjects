SELECT employee_id, first_name, manager_id FROM employees;

SELECT emp2.first_name manager_name, COUNT(*)
FROM employees emp1 JOIN employees emp2 ON(emp1.manager_id = emp2.employee_id)
GROUP BY emp2.first_name
ORDER BY COUNT(*);

SELECT * FROM employees;
SELECT * FROM departments;

SELECT first_name, last_name, salary, department_name
FROM employees e JOIN departments d ON (e.department_id = d.department_id);

SELECT first_name, last_name, salary, department_name
FROM employees e LEFT OUTER JOIN departments d ON (e.department_id = d.department_id);

SELECT first_name, last_name, salary, department_name
FROM departments d LEFT OUTER JOIN employees e ON (e.department_id = d.department_id)
WHERE department_name LIKE '%i%';

SELECT first_name, last_name, salary, min_salary, max_salary
FROM employees e LEFT OUTER JOIN jobs j 
ON(e.job_id = j.job_id AND salary*2<max_salary);

SELECT postal_code, city, department_name, d.location_id
FROM locations l LEFT OUTER JOIN departments d ON (d.location_id = l.location_id);

SELECT department_name, d.department_id, first_name
FROM departments d LEFT OUTER JOIN employees e
ON(e.department_id = d.department_id)
WHERE e.first_name IS NULL;

SELECT first_name, last_name, salary, department_name, department_id
FROM employees e RIGHT OUTER JOIN departments d 
USING (department_id);

SELECT * FROM countries;
SELECT * FROM locations;

SELECT country_name, city, street_address
FROM locations l  RIGHT OUTER JOIN countries c 
ON (l.country_id = c.country_id);

SELECT NVL(first_name, 'no employee'), NVL(last_name,'no employee'),
NVL(salary, 0), NVL(department_name, 'no department')
FROM employees e FULL OUTER JOIN departments d
ON (e.department_id = d.department_id);