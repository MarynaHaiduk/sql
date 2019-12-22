-- Query the names of all American cities in CITY with populations larger than 120000. 

SELECT name 
FROM city 
WHERE population>=120000 
AND countrycode="USA";