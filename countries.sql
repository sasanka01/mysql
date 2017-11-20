SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE language = 'Slovene'
ORDER BY percentage DESC;
--

SELECT countries.name, count(cities.id) as cities
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC;

SELECT cities.name, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Mexico'
ORDER BY population DESC;

SELECT countries.name, languages.language,languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE percentage > 89
ORDER BY percentage DESC;

SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501
AND population > 100000;


SELECT name,government_form, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy'
AND capital > 200
AND life_expectancy > 75;


SELECT countries.name, cities.name as name, cities.district, cities.population as population
FROM countries
JOIN cities on countries.id = cities.country_id
WHERE countries.name = 'Argentina'
AND cities.district = 'Buenos Aires'
AND cities.population > 500000;


SELECT region, count(id) as countries
FROM countries
GROUP by region
ORDER by countries desc
