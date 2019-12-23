-- Query the list of distinct CITY names from STATION that either do not start or do not end with vowels. 

SELECT DISTINCT city 
FROM station 
WHERE city NOT REGEXP "^[aeoiu].*[aeoiu]$";