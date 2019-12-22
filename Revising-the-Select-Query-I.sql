-- Query all columns for all American cities in CITY with populations larger than 100000. 

SELECT * 
FROM city 
WHERE population>=100000 
AND countrycode='USA';