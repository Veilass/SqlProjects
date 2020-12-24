SELECT ROWID FROM employees WHERE first_name = 'John'; 
SELECT * FROM employees WHERE ROWID = 'AAAR6dAAEAAALBtAAK';
SELECT * FROM employees;
DROP TABLE students;
CREATE TABLE students(
id NUMBER,
name VARCHAR2(15),
course NUMBER,
faculty_id NUMBER
);

CREATE TABLE faculties(
id NUMBER,
name VARCHAR2(15)
);
DROP TABLE faculties;

CREATE INDEX in1 ON students(id);
INSERT INTO students VALUES (1, 'Zaur', 3);
INSERT INTO students VALUES (2, 'Misha', 2);
INSERT INTO students VALUES (2, 'Lesha', 5);
INSERT INTO students VALUES (3, 'Lesha', 3);
SELECT * FROM students;
DELETE FROM students WHERE id = 3;
CREATE UNIQUE INDEX in2 ON students(name);
CREATE  INDEX in3 ON students(name, id);

CREATE UNIQUE INDEX st_in1 ON students(id);
CREATE UNIQUE INDEX f_in1 ON faculties(id);
CREATE UNIQUE INDEX st_in2 ON students(course);
CREATE INDEX st_in3 ON students(name);

ALTER TABLE students ADD CONSTRAINT st_pk PRIMARY KEY (id);
ALTER TABLE faculties ADD CONSTRAINT f_pk PRIMARY KEY (id);
ALTER TABLE students ADD CONSTRAINT st_un UNIQUE (course);
ALTER TABLE students ADD CONSTRAINT st_fk FOREIGN KEY (faculty_id)
REFERENCES faculties(id);

DROP INDEX st_in1;

CREATE BITMAP INDEX b_ind1 ON students(faculty_id);
SELECT * FROM v$version;