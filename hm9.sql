CREATE TABLE friends AS (SELECT employee_id id, first_name name, last_name surname
FROM employees WHERE commission_pct IS NOT NULL);
SELECT * FROM friends;
DROP TABLE friends;

ALTER TABLE friends ADD (email VARCHAR2(20));
ALTER TABLE friends MODIFY(email VARCHAR(20) DEFAULT 'no email');
INSERT INTO friends (id, name, surname) VALUES(35, 'Valera', 'Klocke');
ALTER TABLE friends RENAME COLUMN id TO friends_id;
DROP TABLE friends;

CREATE TABLE friends(
id INT,
name VARCHAR2(30),
surname VARCHAR2(30),
email VARCHAR2(20),
salary NUMBER(6,2) DEFAULT 1000,
city VARCHAR2(15),
birthday date DEFAULT SYSDATE
);

INSERT INTO friends (id,name,surname,email,salary,city,birthday)
VALUES (1,'Zaur','Tregulov','ZAUR@mail.ru',1205.12,'Baku',TO_DATE('15-OCT-87'));
INSERT INTO friends (id,name,surname,email,city)
VALUES (2,'Ivan','Leonov','LEONE','Leon');
ALTER TABLE friends DROP COLUMN salary; 
ALTER TABLE friends SET UNUSED COLUMN email; 
ALTER TABLE friends SET UNUSED COLUMN birthday; 
ALTER TABLE friends DROP UNUSED COLUMNS;
ALTER TABLE friends READ ONLY;

TRUNCATE TABLE friens;
DROP TABLE friends;