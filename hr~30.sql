CREATE TABLE students(
id NUMBER,
name VARCHAR2(15),
course NUMBER,
faculty_id INT,
avg_score NUMBER(5,2),
start_date date,
scholarship integer
);
DROP TABLE students;
DROP TABLE faculties;

CREATE TABLE faculties(
id NUMBER,
name VARCHAR2(15)
);

SELECT * FROM students;
SELECT * FROM faculties;

INSERT INTO students VALUES
(1,'Zaur',2, 5, 8.7, TO_DATE('15-SEP-17'), 1500);
INSERT INTO students VALUES
(1,'Kolya',2, 5, 8.7, TO_DATE('15-SEP-17'), 1500);
INSERT INTO students VALUES
(null,'Vasya',2, 5, 8.7, TO_DATE('15-SEP-17'), 1500);
INSERT INTO students VALUES
(2,'Misha',3, 3, 7.7, TO_DATE('15-SEP-16'), 800);

ALTER TABLE students ADD(CONSTRAINT st_id_unique UNIQUE(id));
INSERT INTO faculties VALUES (1, 'CS');
INSERT INTO faculties VALUES (2, 'Economics');
INSERT INTO faculties VALUES (2, 'Philology');
ALTER TABLE faculties add UNIQUE(id);
UPDATE faculties set id = 3 WHERE name = 'Philology';

ALTER TABLE students MODIFY (id CONSTRAINT abc UNIQUE);
ALTER TABLE faculties MODIFY (id UNIQUE);

ALTER TABLE students DROP CONSTRAINT abc;

SELECT * FROM employees;