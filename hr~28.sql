SELECT object_type, count(object_type) FROM user_objects
GROUP BY object_type
ORDER BY object_type;

SELECT object_type, count(object_type) FROM all_objects
GROUP BY object_type
ORDER BY object_type;

SELECT table_name FROM user_tables;
SELECT column_name, data_type, nullable FROM user_tab_columns
WHERE table_name = 'DEPARTMENTS';