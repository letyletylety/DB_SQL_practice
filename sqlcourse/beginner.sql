-- # select
-- # Display the first name and age for everyone that’s in the table.
select first, age from empinfo;

-- Display the first name, last name, and city for everyone that’s not from Payson.
select first, last, city from empinfo where city <> "Payson";

-- Display all columns for everyone that is over 40 years old.
select * from empinfo where age > 40;

-- select first, last from empinfo where last LIKE "%ay"
select first, last from empinfo where last LIKE '%ay'

-- Display all columns for everyone whose first name equals “Mary”
select * from empinfo where first = 'Mary'

-- Display all columns for everyone whose first name contains “Mary”.
select * from empinfo where first LIKE '%Mary%'