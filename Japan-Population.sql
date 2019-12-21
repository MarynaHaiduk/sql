-- Query the sum of the populations for all Japanese cities in CITY. 

select sum(population) 
from city 
where countrycode="JPN";