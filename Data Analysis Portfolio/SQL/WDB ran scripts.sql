SHOW CREATE TABLE `city`;

CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




SELECT * FROM `city`;
SELECT * FROM `city` WHERE ID = 61;


SELECT
	`Population`, 
    COUNT(1)
FROM `country`
GROUP BY `Population`;

SELECT 
	COUNT(1),
    `CountryCode`
FROM 
	`city`
GROUP BY
	`CountryCode`
ORDER BY
	COUNT(1) DESC;
    
    
    # which country has the highest life expectancy?
    
    SELECT 
    Name,
    Continent, 
    Population, 
    LifeExpectancy 
    FROM country 
		ORDER BY LifeExpectancy DESC LIMIT 1;
    
    SELECT * FROM city
		ORDER BY Population;
        
        
SELECT Name, COUNT(1) AS Occurrences
FROM city
	GROUP BY Name
		ORDER BY Occurrences DESC;


SELECT COUNT(1) AS `Total Cities`, CountryCode as `Country`
FROM city
	WHERE CountryCode = "USA";

SELECT Name, CountryCode, Population 
	FROM city
    ORDER BY Population 
    ASC LIMIT 1;
    
SELECT Name, Continent, Region, Population
	FROM country
    ORDER BY Population
    DESC LIMIT 1;

SELECT 
country.Name AS Country,
city.Name AS Capital
FROM country
	INNER JOIN city
	ON country.Capital = city.ID
        WHERE country.Name = "Spain";
        
SELECT
city.Name AS City, country.Continent, country.Code AS `Country Code`
FROM country
	INNER JOIN city
	ON country.Code = city.CountryCode
	WHERE Continent = "Europe";
    
    
SELECT
city.Name AS City, country.Continent, country.Name AS `Country` ,country.Code AS `Country Code`
FROM country
	INNER JOIN city
	ON country.Code = city.CountryCode;

SELECT country.Name AS Country, 
AVG(city.Population) AS `Avg. City Population`, 
city.CountryCode AS `Country Code`
FROM city
	INNER JOIN country
    ON country.Code = city.CountryCode
	GROUP BY city.CountryCode;

SELECT 
Name AS `Most populous city`, 
Population 
FROM city
	WHERE Population = (SELECT MAX(Population) FROM city);
    
    Select
    city.Name AS `Capital city`,
	city.Population AS `Population`,
    country.Name AS `Country`,
    country.Region AS `Region`
    FROM city
		INNER JOIN country
        ON country.Code = city.CountryCode 
			ORDER BY city.Population DESC;
            
            
SELECT 
Name AS `Country`, 
Population AS `Population`, 
SurfaceArea AS `Surface Area`,
Population / SurfaceArea AS `People per sq.km.`
	FROM country
		WHERE SurfaceArea > 100000
		ORDER BY `People per sq.km.` ASC;
        
        

SELECT 
city.Name AS `City`,
country.Name AS `Country`,
country.GNP / country.Population*1000 AS `Gross National Product per Capita in Thousands`,
(country.GNP / country.Population) * city.Population/1000 AS `Gross City Product in Billions`,
    PERCENT_RANK() OVER (ORDER BY (country.GNP / country.Population) * city.Population DESC) AS `Precentile - less than 0.5 is above average`
	FROM country
		INNER JOIN city
        ON city.CountryCode=country.Code;
    





