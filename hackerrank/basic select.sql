-- https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=select

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name from CITY where population > 120000 and countrycode = 'USA';

select * from CITY where POPULATION > 100000 and CountryCode = 'USA';

-- Query all columns (attributes) for every row in the CITY table.
select * from city;

-- Query all columns for a city in CITY with the ID 1661.
select * from city where id = 1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * FROM city where countrycode = 'JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select name from city where countrycode = 'JPN';

-- Query a list of CITY and STATE from the STATION table.
