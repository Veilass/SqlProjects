SELECT country_name, DECODE(
region_id,
1, 'Europe',
    2, 'America',
    3, 'Asia',
    4, 'Africa',
    'Unknown')
region
FROM countries;

SELECT country_name,
CASE region_id
WHEN 1 THEN 'Europe'
WHEN 2 THEN 'America'
WHEN 3 THEN 'Asia'
WHEN 4 THEN 'Africa'
ELSE 'UNKNOWN'
END
FROM countries;