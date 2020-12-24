SELECT * FROM employees;
SELECT * FROM new_emps;
INSERT INTO new_emps
(SELECT employee_id, first_name, hire_date, job_id FROM employees
WHERE employee_id < 110);

MERGE INTO new_emps ne
USING employees e
ON(ne.emp_id = e.employee_id)
WHEN MATCHED THEN
UPDATE SET ne.start_date = SYSDATE
DELETE WHERE ne.job LIKE '%IT%'
WHEN NOT MATCHED THEN 
INSERT (emp_id, name, start_date, job) 
VALUES (employee_id, last_name, hire_date, job_id);

commit;

SELECT * FROM new_emps;
DELETE FROM new_emps WHERE name = 'Tregulov';
commit;

INSERT INTO new_emps VALUES(1000, 'Igor', SYSDATE, 'IT_PROG');
UPDATE new_emps SET emp_id = 300 WHERE emp_id = 100;
DELETE FROM new_emps WHERE emp_id = 101;
commit;
commit;
SELECT * FROM new_emps;
DELETE FROM new_emps;
INSERT INTO new_emps
(SELECT employee_id, last_name, hire_date, job_id FROM employees);
commit;
DELETE FROM new_emps WHERE name = 'Tregulov';

INSERT INTO new_emps VALUES(1000, 'Igor', SYSDATE, 'IT_PROG');
UPDATE new_emps SET emp_id = 300 WHERE emp_id = 100;
DELETE FROM new_emps WHERE emp_id = 101;
commit;
ROLLBACK;


SELECT * FROM new_emps;

INSERT INTO new_emps VALUES(1000, 'Igor', SYSDATE, 'IT_PROG');
SAVEPOINT s1;
UPDATE new_emps SET emp_id = 300 WHERE emp_id = 100;
SAVEPOINT s2;
DELETE FROM new_emps WHERE emp_id = 101;
ROLLBACK TO SAVEPOINT s1;
COMMIT;
ROLLBACK;




SELECT * FROM new_emps;

DELETE FROM new_emps WHERE emp_id = 101;

UPDATE new_emps SET emp_id = 300 WHERE emp_id = 100;

SELECT * FROM new_emps;
UPDATE new_emps SET emp_id = 1000 WHERE emp_id = 103;

SELECT * FROM new_emps FOR UPDATE;
UPDATE new_emps SET emp_id = 1500 WHERE emp_id = 104;
commit;


SELECT * FROM new_emps;  
UPDATE new_emps SET emp_id = 400 WHERE emp_id = 106;
commit;
UPDATE new_emps SET emp_id = 250 WHERE name = 'Igor';
commit;