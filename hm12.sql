CREATE TABLE test200 (
id INT,
name1 VARCHAR2(20),
name2 VARCHAR2(20),
address1 VARCHAR2(30),
address2 VARCHAR2(30)
);

UPDATE test200 SET &col = &val WHERE id = &ID; 

SELECT * FROM test200 
WHERE name1 = '&&val1' AND name2 = 'val1'
AND address1 = '&&val2' AND address2 = 'val2';

UNDEFINE val1; 
UNDEFINE val2;