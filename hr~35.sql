SELECT * FROM employees;
CREATE VIEW fin_emp AS 
SELECT employee_id, job_id, salary FROM employees;
CREATE VIEW fin_emp2 AS 
SELECT department_name, SUM(salary) sum FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
GROUP BY department_name;

SELECT * FROM fin_emp;
SELECT department_name FROM fin_emp2 WHERE sum > 10000;

SELECT * FROM employees;

CREATE VIEW emps_with_high_salary2 AS
SELECT first_name, last_name FROM employees
WHERE salary >= 12000;
SELECT * FROM emps_with_high_salary2;
UPDATE employees SET salary = 15000 WHERE employee_id = 103;

SELECT * FROM students;
INSERT INTO students VALUES(3, 'Masha', 1, 1);
CREATE VIEW v101 AS SELECT name, course FROM students;
SELECT * FROM v101;
DELETE FROM v101 WHERE name = 'Ivan';
INSERT INTO v101 VALUES('Ivan', 4);
ALTER TABLE students MODIFY(id NULL);

SELECT * FROM fin_emp2;
INSERT INTO fin_emp2 VALUES('abra-kadabra', 100000);
DELETE FROM fin_emp2;
UPDATE fin_emp2 SET department_name = abra-kadabra WHERE SUM > 5000;

CREATE VIEW v105 AS
SELECT SUBSTR(name, 2) name, course FROM students;
SELECT * FROM v105;
INSERT INTO v105 VALUES('Kolya', 3);
DELETE FROM v105 WHERE name = 'aur';

CREATE VIEW v106 AS SELECT DISTINCT name, course FROM students;
SELECT * FROM v108;
INSERT INTO v108 VALUES(3,'Petya', 3);
DELETE FROM v108 WHERE r = 1;

CREATE VIEW v107 AS SELECT name n, course c FROM students;
CREATE VIEW v108 AS SELECT ROWNUM r, name, course FROM students;