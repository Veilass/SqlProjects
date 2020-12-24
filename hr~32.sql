CREATE TABLE students(
id NUMBER,
name VARCHAR2(15),
course NUMBER,
faculty_id INT,
CONSTRAINT fk FOREIGN KEY (faculty_id)
REFERENCES faculties ON DELETE SET NULL
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
VALUES (1, 'Zaur', 3, 1);
INSERT INTO students
VALUES (2, 'Ivan', 2, 2);
INSERT INTO students
VALUES (3, 'Misha', 1, 1);

SELECT * FROM students;
SELECT * FROM faculties;

TRUNCATE TABLE faculties;
DELETE FROM faculties WHERE id = 1;