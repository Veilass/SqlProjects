CREATE TABLE students(
id NUMBER,
name VARCHAR2(15),
course NUMBER,
faculty_id INT
);
DROP TABLE students;
DROP TABLE faculties;

CREATE TABLE faculties(
id NUMBER PRIMARY KEY,
name VARCHAR2(15)
);

SELECT * FROM students;
SELECT * FROM faculties;

INSERT INTO students 
VALUES(1, 'Zaur', 3, 1);
INSERT INTO students
VALUES(2, 'Misha',2, 2);
INSERT INTO students
VALUES(9, 'Ivan',5, null);
INSERT INTO students (id, name, faculty_id)
VALUES(1, 'Zaur', 1);
INSERT INTO faculties VALUES (1, 'CS');
INSERT INTO faculties VALUES (2, 'Marketing');

ALTER TABLE students MODIFY(course NOT NULL);
ALTER TABLE students MODIFY(course NULL);

ALTER TABLE students MODIFY(course CONSTRAINT st_course_notnull NOT NULL);

INSERT INTO students VALUES (8, 'Pasha', 3, 7);
INSERT INTO students VALUES (7, 'Misha', null, 5);
INSERT INTO students (id, name, faculty_id) VALUES (5, 'Zaur', 3);

ALTER TABLE students MODIFY(id CONSTRAINT st_pk_id PRIMARY KEY);
ALTER TABLE students add CONSTRAINT st_pk_id PRIMARY KEY (id);

SELECT * FROM employees;
SELECT * FROM departments;

ALTER TABLE students MODIFY( CONSTRAINT fk faculty_id REFERENCES faculties(id));
ALTER TABLE students MODIFY( faculty_id CONSTRAINT fk REFERENCES faculties(id));
ALTER TABLE students MODIFY( faculty_id REFERENCES faculties(id));
ALTER TABLE students add(CONSTRAINT fk FOREIGN KEY (faculty_id)
REFERENCE faculties(id));