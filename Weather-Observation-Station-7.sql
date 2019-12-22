-- Query the list of distinct CITY names ending with vowels (a, e, i, o, u) from STATION. 

SELECT DISTINCT city 
FROM station 
WHERE city 
LIKE '%a' OR city 
LIKE '%e' OR city 
LIKE '%o' OR city 
LIKE '%i' OR city 
LIKE '%u';