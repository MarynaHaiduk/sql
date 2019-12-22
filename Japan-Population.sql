-- Query the sum of the populations for all Japanese cities in CITY. 

SELECT SUM(population) 
FROM city 
WHERE countrycode="JPN";