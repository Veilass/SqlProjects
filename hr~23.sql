SELECT * FROM employees;
SELECT * FROM countries;

INSERT INTO countries VALUES('SW', 'Sweden', 1);

INSERT INTO countries (region_id, country_id, country_name)
VALUES(1, 'GR', 'Greece');

INSERT INTO countries(country_id, country_name, region_id)
VALUES('NR', 'Norway',1);

INSERT INTO countries(country_id, country_name)
VALUES('PR', 'Portugal');

INSERT INTO countries  VALUES('FL','Finland', null);

INSERT INTO countries(country_id, country_name, region_id)
VALUES('CR', 'Croatia',5);

SELECT * FROM employees;
INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES (210, 'Trigulov', 'TRIG', '18-SEP-2019', 'IT_PROG');

INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES (211, INITCAP('Tregulov'), UPPER('treg'), TO_DATE('18-SEP-2019', 'DD-MON-YYYY'), UPPER('IT_PROg'));

INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES (200+12, INITCAP('Tregulov'), UPPER('treg2'), SYSDATE, UPPER('IT_PROg'));

CREATE TABLE new_emps
(
emp_id INTEGER,
name VARCHAR2(20),
start_date DATE,
job VARCHAR2(10)
);
SELECT * FROM new_emps;
INSERT INTO new_emps (emp_id, name, start_date)
(SELECT employee_id, first_name, hire_date FROM employees
WHERE employee_id > 200);

SELECT * FROM new_emps;
INSERT INTO new_emps
(SELECT employee_id, first_name, hire_date, job_id FROM employees
WHERE employee_id > 200);

SELECT * FROM new_emps;
INSERT INTO new_emps (emp_id, name, start_date) VALUES
(SELECT employee_id, first_name, hire_date FROM employees
WHERE employee_id > 200);

CREATE TABLE emps_with_high_salary(
name VARCHAR2(20),
salary INTEGER
);

CREATE TABLE emps_with_dept100(
name VARCHAR2(20),
salary INTEGER
);

CREATE TABLE some_emps(
name VARCHAR2(20),
salary INTEGER
);

INSERT ALL 
WHEN department_id = 100 THEN
INTO emps_with_dept100 VALUES(first_name, salary)
WHEN salary > 15000 THEN
INTO emps_with_high_salary (name) VALUES(first_name)
WHEN 5 = 5 THEN
INTO some_emps (name,salary) VALUES(first_name, salary)
SELECT first_name, last_name, salary, department_id
FROM employees WHERE LENGTH(first_name) > 5;

SELECT * FROM some_emps;