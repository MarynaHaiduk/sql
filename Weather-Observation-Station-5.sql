/* Query the two cities and city length in STATION with the shortest and longest CITY names. 
If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically. */

SELECT city, LENGTH(city) 
FROM station 
ORDER BY LENGTH(city) ASC, 
city ASC LIMIT 1;

SELECT city, LENGTH(city) 
FROM station 
ORDER BY LENGTH(city) DESC, 
city ASC LIMIT 1;