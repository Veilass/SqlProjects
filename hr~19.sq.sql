SELECT * FROM countries;
SELECT * FROM jobs;
SELECT * FROM regions;

SELECT * FROM countries CROSS JOIN regions
WHERE countries.region_id >=2
ORDER BY country_id;

SELECT * FROM countries NATURAL JOIN jobs;