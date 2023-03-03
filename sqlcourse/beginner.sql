-- DON'T RUN THESE CODES

-- # select
-- # Display the first name and age for everyone that’s in the table.
select first, age from empinfo;

-- Display the first name, last name, and city for everyone that’s not from Payson.
select first, last, city from empinfo where city <> "Payson";

-- Display all columns for everyone that is over 40 years old.
select * from empinfo where age > 40;

-- select first, last from empinfo where last LIKE "%ay"
select first, last from empinfo where last LIKE '%ay';

-- Display all columns for everyone whose first name equals “Mary”
select * from empinfo where first = 'Mary';

-- Display all columns for everyone whose first name contains “Mary”.
select * from empinfo where first LIKE '%Mary%';

-- # create

create table myemployees (
  firstname varchar(15),
  lastname varchar(20),
  title varchar(20), 
  age number(3), -- number(digit)
  salary number(100) -- no last semicolon
);

-- # insert
-- Your first three employees are the following:

-- Jonie Weber, Secretary, 28, 19500.00
-- Potsy Weber, Programmer, 32, 45300.00
-- Dirk Smith, Programmer II, 45, 75020.00

-- Enter these employees into your table first, and then insert at least 5 more of your own list of employees in the table.

insert into myemployees (firstname, lastname, title, age, salary) VALUES ('Jonie', 'Weber', 'Secretary', 28, 19500.00);
insert into myemployees (firstname, lastname, title, age, salary) VALUES ('Potsy', 'Weber', 'Programmer', 32, 45300.00);
insert into myemployees (firstname, lastname, title, age, salary) VALUES ('Dirk', 'Smith', 'Programmer II', 45, 75020.00);

-- Select all columns for everyone in your employee table.
select * from myemployees;

-- Select all columns for everyone with a salary over 30000.
select * from myemployees where salary > 30000;

-- Select first and last names for everyone that’s under 30 years old.
select firstname, lastname from myemployees where age < 30;

-- Select first name, last name, and salary for anyone with “Programmer” in their title.
select firstname, lastname, salary from myemployees where title LIKE "%Programmer%";

-- Select all columns for everyone whose last name contains “ebe”.
select * from myemployees where lastname LIKE "%ebe%";

-- Select the first name for everyone whose first name equals “Potsy”.
select firstname FROM myemployees where firstname = 'Potsy';

-- Select all columns for everyone over 80 years old.
select * FROM myemployees WHERE age > 80;

-- Select all columns for everyone whose last name ends in “ith”.
select * from myemployees where lastname LIKE "%ith";