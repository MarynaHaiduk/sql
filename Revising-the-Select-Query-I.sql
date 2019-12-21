-- Query all columns for all American cities in CITY with populations larger than 100000. 

select * 
from city 
where population >= 100000 
and countrycode = 'USA';