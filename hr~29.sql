SELECT * FROM employees;

CREATE TABLE students (
student_id INT,
name VARCHAR2(15),
start_date date DEFAULT ROUND(SYSDATE),
scholarship NUMBER(6,2),
avg_score NUMBER(4,2) DEFAULT 5
);

SELECT * FROM students;


INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(1, 'Zaur', TO_DATE('18-SEP-19'), 1500.3, 7.8);
INSERT INTO students (student_id, name, start_date, scholarship, avg_score)
VALUES(2, 'Ivan', TO_DATE('19-SEP-19'), 800.356, 8);
INSERT INTO students (student_id, name, scholarship)
VALUES(2, 'Nina', 500.533);

SELECT * FROM new_emps2;

CREATE TABLE new_emps2 AS (SELECT employee_id, first_name, last_name,
salary, department_id FROM employees);

CREATE TABLE new_dep AS (SELECT department_name, MAX(salary) max_salary,
MIN(salary) min_salary FROM employees e JOIN departments d 
ON(e.department_id = d.department_id) GROUP BY department_name);

SELECT * FROM new_dep;

SELECT * FROM regions2;
CREATE TABLE regions2 AS(SELECT * FROM regions WHERE 5 = 6);




SELECT * FROM students;
ALTER TABLE students ADD(faculty_name VARCHAR2(30));
ALTER TABLE students MODIFY(avg_score NUMBER(5,3));
ALTER TABLE students MODIFY(start_date date DEFAULT null);
INSERT INTO students (student_id, name)
VALUES(4, 'Karl');
ALTER TABLE students DROP COLUMN scholarship;
ALTER TABLE departments DROP COLUMN department_id;
ALTER TABLE students SET UNUSED COLUMN start_date;
ALTER TABLE students DROP UNUSED COLUMNS;
ALTER TABLE students RENAME COLUMN student_id TO id;
ALTER TABLE students READ ONLY;

TRUNCATE TABLE students;
DROP TABLE students;

DROP TABLE departments;
