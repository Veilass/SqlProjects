SELECT * FROM hr.employees@XEPDB1;
SELECT * FROM students;

CREATE SYNONYM syn1 FOR stundets;
SELECT * FROM syn1;
DELETE FROM syn1 WHERE id = 8;
DROP SYNONYM syn1;

SELECT * FROM employees; 

CREATE SEQUENCE s1;
SELECT s1.nextval FROM dual;
SELECT s1.currval FROM dual; 
DROP TABLE students;
CREATE TABLE students(
id NUMBER PRIMARY KEY,
name VARCHAR2(25)
);

CREATE TABLE faculties(
id NUMBER,
name VARCHAR2(15)
);

CREATE SEQUENCE seq_st;
CREATE SEQUENCE seq_faculty START WITH 20 INCREMENT BY 5;
INSERT INTO faculties VALUES(seq_faculty.nextval, 'IT');
INSERT INTO students VALUES(seq_st.nextval, 'Zaur', 3, seq_faculty.currval);
INSERT INTO faculties VALUES(seq_faculty.nextval, 'Marketing');
INSERT INTO faculties VALUES(seq_faculty.nextval, 'Philology');
INSERT INTO students VALUES(seq_st.nextval, 'Misha', 2, 25);
SELECT * FROM students;
SelECt * FROM faculties;

CREATE SEQUENCE s4 INCREMENT BY 2 MAXVALUE 17 cycle CACHE 3;
SELECT s4.nextval FROM dual; 

CREATE SEQUENCE s5 START WITH 7 INCREMENT BY 4 MAXVALUE 17 cycle CACHE 2;
SELECT s5.nextval FROM dual; 

CREATE SEQUENCE s10;
INSERT INTO students VALUES(s10.nextval, 'Zaur');
INSERT INTO students VALUES(s10.nextval, 'Kolya');
INSERT INTO students VALUES(s10.nextval, 'Vasya');
SELECT * FROM students;
DROP SEQUENCE s10;
CREATE TABLE seq(
n NUMBER
);
INSERT INTO seq VALUES(1);
INSERT INTO students VALUES ((SELECT n FROM seq), 'Zaur');
UPDATE seq set n = n+1;
SELECT * FROM seq;

ALTER SEQUENCE s10 INCREMENT BY 5;

CREATE SEQUENCE s20;
SELECT s20.currval FROM dual;
SELECT s20.nextval FROM dual;