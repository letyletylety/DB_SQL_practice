-- https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=select
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name
from CITY
where population > 120000
    and countrycode = 'USA';
select *
from CITY
where POPULATION > 100000
    and CountryCode = 'USA';
-- Query all columns (attributes) for every row in the CITY table.
select *
from city;
-- Query all columns for a city in CITY with the ID 1661.
select *
from city
where id = 1661;
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select *
FROM city
where countrycode = 'JPN';
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select name
from city
where countrycode = 'JPN';
-- Query a list of CITY and STATE from the STATION table.
select city,
    state
from station;
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
select distinct city
from station
where mod(id, 2) = 0;
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
select count(city) - count(DISTINCT city)
from station;
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
(
    SELECT CITY,
        LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY),
        CITY
    LIMIT 1
)
UNION
(
    SELECT CITY,
        LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC,
        CITY
    LIMIT 1
);
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiouAEIOU]$';
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
    AND CITY NOT LIKE 'E%'
    AND CITY NOT LIKE 'I%'
    AND CITY NOT LIKE 'O%'
    AND CITY NOT LIKE 'U%';
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%A'
    AND CITY NOT LIKE '%E'
    AND CITY NOT LIKE '%I'
    AND CITY NOT LIKE '%O'
    AND CITY NOT LIKE '%U';
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%A%'
    AND CITY NOT LIKE '%E%'
    AND CITY NOT LIKE '%I%'
    AND CITY NOT LIKE '%O%'
    AND CITY NOT LIKE '%U%';
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU]|[^aeiouAEIOU]$';
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU].*[^aeiouAEIOU]$';
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
select name
from students
where marks > 75
order by right(name, 3),
    id;
-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
from employee
order by name;
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
select name
from employee
where salary > 2000
    and months < 10
order by employee_id;