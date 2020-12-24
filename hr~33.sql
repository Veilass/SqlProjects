CREATE TABLE students(
id NUMBER,
name VARCHAR2(15),
course NUMBER,
email VARCHAR(15) CHECK (INSTR(email, '@') > 0) CONSTRAINT un UNIQUE,
faculty_id INT
);
DROP TABLE students;
DROP TABLE faculties;

CREATE TABLE faculties(
id NUMBER PRIMARY KEY,
name VARCHAR2(15)
);

INSERT INTO faculties VALUES
(1, 'CS');
INSERT INTO faculties VALUES
(2, 'Marketing');
INSERT INTO faculties VALUES
(3, 'Philology');

INSERT INTO students
VALUES (1, 'Zaur', 3, '@aksofkaops.com', 1);
INSERT INTO students
VALUES (2, 'Ivan', -1, 2);
INSERT INTO students
VALUES (3, 'Misha', 6, 1);

SELECT * FROM students;
SELECT * FROM faculties;
CREATE TABLE new_emps10 AS SELECT * FROM employees;


ALTER TABLE students MODIFY(id CONSTRAINT ch CHECK (id >= 1));
ALTER TABLE students ADD CONSTRAINT ch2 CHECK (couser > 0);