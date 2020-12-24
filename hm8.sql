CREATE TABLE locations2 AS
(SELECT * FROM locations WHERE 1 = 2);
select * from locations2;
SELECT * FROM locations;
INSERT INTO locations2 (location_id, street_address,city,country_id) 
VALUES (5000, '1853 Vie de Rie Loms', 'Neapol', 'IT');
INSERT INTO locations2 (location_id, street_address,city,country_id) 
VALUES (5100, '2386 Vie Sie Jone Musie', 'Venice', 'IT');
COMMIT;

INSERT INTO locations2
VALUES(7021, '3511 Le Jor De Kori', 1254412, 'Paris', null, 'FR');
INSERT INTO locations2
VALUES(9151, '6491 Jenere Fure Lapes', 1697034, 'Vishy', null, 'FR');
COMMIT;

SELECT * FROM locations2;
SELECT * FROM countries;


INSERT INTO locations2 (SELECT * FROM locations
WHERE LENGTH(state_province) > 9);
COMMIT;

CREATE TABLE locations4europe AS (SELECT * FROM locations WHERE 1 = 2);
SELECT * FROM locations4europe;


INSERT ALL
WHEN 5=5 THEN
INTO locations2
VALUES(location_id, street_address,postal_code, city, state_province, country_id)
WHEN country_id IN
(SELECT country_id FROM countries WHERE region_id = 1) THEN
INTO locations4europe  (location_id, street_address, city, country_id )
VALUES(location_id, street_address, city, country_id )
SELECT * FROM locations;
COMMIT;
SELECT * FROM locations2;
UPDATE locations2 SET postal_code = 1251024 WHERE postal_code IS null;
ROLLBACK;

SELECT * FROM locations;
SELECT * FROM locations2;
UPDATE locations2 SET postal_code = (SELECT postal_code FROM locations WHERE location_id = 2600)
WHERE postal_code IS NULL;
COMMIT;
DELETE locations2 WHERE country_id = 'IT';
SAVEPOINT s1;
UPDATE locations2 SET street_address = 'Sezam st. 18' WHERE location_id > 2500;
SAVEPOINT s2;
DELETE locations2 WHERE street_address = 'Sezam st. 18';
ROLLBACK s1;
COMMIT;