-- Query the names of all American cities in CITY with populations larger than 120000. 

select name 
from city 
where population>=120000 
and countrycode="USA";