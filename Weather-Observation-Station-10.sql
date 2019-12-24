SELECT DISTINCT city 
FROM station 
WHERE city NOT REGEXP "[aeoiu]$";