SELECT * FROM employees
WHERE LENGTH(first_name) = (SELECT MAX(LENGTH(first_name)) FROM employees);
--2
SELECT * FROM employees WHERE
salary > (SELECT AVG(salary) FROM employees);
--3
SELECT city, SUM(salary) FROM employees e 
JOIN departments d ON(e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id)
GROUP BY city
HAVING SUM(salary) = 
    (SELECT MIN(SUM(salary))
        FROM employees e 
            JOIN departments d ON(e.department_id = d.department_id)
            JOIN locations l ON(d.location_id = l.location_id)
GROUP BY city);
--4
SELECT * FROM employees
WHERE manager_id IN(SELECT employee_id FROM employees WHERE salary > 15000);
--5
SELECT * FROM departments WHERE
department_id NOT IN(SELECT DISTINCT department_id FROM employees WHERE department_id IS NOT NULL);
--6
SELECT * FROM employees WHERE  
employee_id NOT IN(SELECT DISTINCT manager_id FROM employees WHERE manager_id IS NOT NULL);
--7
SELECT * FROM employees e
WHERE (SELECT COUNT(*) FROM employees WHERE manager_id = e.employee_id) > 6;

--8 
SELECT * FROM employees
WHERE department_id IN(SELECT department_id FROM departments WHERE department_name = 'IT');
--9
SELECT * FROM employees WHERE
manager_id IN(SELECT employee_id FROM employees WHERE TO_CHAR(hire_date, 'YYYY') = '2005')
AND hire_date < TO_DATE('01012005', 'DDMMYYYY');
--10
SELECT * FROM employees e WHERE
manager_id IN(SELECT employee_id FROM employees WHERE TO_CHAR(hire_date, 'MM') = '01') 
AND (SELECT LENGTH(job_title) FROM jobs WHERE job_id = e.job_id) > 15;
