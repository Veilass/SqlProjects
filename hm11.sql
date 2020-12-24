CREATE TABLE emp1000 AS (SELECT  first_name, last_name, salary, department_id FROM employees);

SELECT * FROM emp1000;
CREATE FORCE VIEW v1000 AS SELECT  first_name, last_name, salary,
department_name, city FROM emp1000 e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON(d.location_id = l.location_id);

SELECT * FROM emp1000;
SELECT * FROM v1000;

ALTER TABLE emp1000 ADD (city VARCHAR(15));
ALTER VIEW v1000 COMPILE ;

DROP VIEW v1000;
DROP TABLE emp1000;
SELECT * FROM employees;

CREATE SEQUENCE seq1000
START WITH 12
INCREMENT BY 4
MAXVALUE 200 
CYCLE;

DROP SEQUENCE seq1000;

ALTER SEQUENCE seq1000
NOMAXVALUE
NOCYCLE;

SELECT seq1000.currval FROM dual;
INSERT INTO employees (employee_id, first_name,last_name, email, hire_date, job_id, salary)
VALUES(seq1000.nextval, 'Alexey','Naumov', 'AleNau', '16-MAY-01', 'SA_REP', 12400);
INSERT INTO employees (employee_id, first_name,last_name, email, hire_date, job_id, salary)
VALUES(seq1000.nextval, 'Leonid','Ragonub', 'LeoRag', '25-JAN-95', 'SA_MAN', 8950);
