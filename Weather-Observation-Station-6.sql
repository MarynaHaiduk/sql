-- Query the list of distinct CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 

SELECT DISTINCT city 
FROM station 
WHERE city REGEXP "^[aouie]";