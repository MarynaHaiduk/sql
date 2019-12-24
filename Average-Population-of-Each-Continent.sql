SELECT country.continent, FlOOR(AVG(city.population)) 
FROM country 
INNER JOIN city 
ON city.countrycode=country.code 
GROUP BY country.continent;