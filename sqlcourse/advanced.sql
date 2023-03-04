-- DISTINCT
-- From the items_ordered table, select a list of all items purchased for customerid 10449. Display the customerid, item, and price for this customer.
SELECT customerid, item, price FROM items_ordered WHERE customerid = 10449;

-- Select all columns from the items_ordered table for whoever purchased a Tent.
SELECT * FROM items_ordered WHERE item='Tent';

-- Select the customerid, order_date, and item values from the items_ordered table for any items in the item column that start with the letter “S”.
SELECT customerid, order_date, item FROM items_ordered WHERE item LIKE "S%";

-- Select the distinct items in the items_ordered table. In other words, display a listing of each of the unique items from the items_ordered table.
SELECT DISTINCT item FROM items_ordered;

-- AGGREGATE
-- Select the maximum price of any item ordered in the items_ordered table. Hint: Select the maximum price only.
SELECT MAX(price) FROM items_ordered;

-- Select the average price of all of the items ordered that were purchased in the month of Dec.
select avg(price) from items_ordered where order_date LIKE "%Dec%";

-- What are the total number of rows in the items_ordered table?
select count(*) FROM items_ordered;

-- For all of the tents that were ordered in the items_ordered table, what is the price of the lowest tent? Hint: Your query should return the price only.
select min(price) FROM items_ordered where item = 'Tent';

-- GROUP BY
-- How many people are in each unique state in the customers table? Select the state and display the number of people in each. Hint: count is used to count rows in a column, sum works on numeric data only.
SELECT state, count(*) from customers GROUP BY state;

-- From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table. Hint: The items will need to be broken up into separate groups.
SELECT item, max(price), min(price) from items_ordered GROUP BY item;

-- How many orders did each customer make? Use the items_ordered table. Select the customerid, number of orders they made, and the sum of their orders. Click the Group By answers link below if you have any problems.
select customerid, count(customerid), sum(price) from items_ordered GROUP BY customerid;

-- HAving
-- How many people are in each unique state in the customers table that have more than one person in the state? Select the state and display the number of how many people are in each if it’s greater than 1.
SELECT state, count(state) from customers group by state having count(state) > 1;

-- From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table. Only display the results if the maximum price for one of the items is greater than 190.00.
select item, max(price), min(price) from items_ordered GROUP BY item having max(price) > 190.00;

-- How many orders did each customer make? Use the items_ordered table. Select the customerid, number of orders they made, and the sum of their orders if they purchased more than 1 item.
SELECT customerid, count(customerid), sum(price) from items_ordered GROUP BY customerid HAVING sum(quantity) > 1;

-- order by 
-- Select the lastname, firstname, and city for all customers in the customers table. Display the results in Ascending Order based on the lastname.
SELECT lastname, firstname, city from customers ORDER BY lastname;

-- Same thing as exercise #1, but display the results in Descending order.
SELECT lastname, firstname, city from customers ORDER BY lastname DESC;

-- Select the item and price for all of the items in the items_ordered table that the price is greater than 10.00. Display the results in Ascending order based on the price.
SELECT item, price from items_ordered where price > 10.00 ORDER BY price;

-- and,or
-- Select the customerid, order_date, and item from the items_ordered table for all items unless they are ‘Snow Shoes’ or if they are ‘Ear Muffs’. Display the rows as long as they are not either of these two items.
SELECT customerid, order_date, item from items_ordered WHERE not (item = 'Snow Shoes' or item = 'Ear Muffs');
SELECT customerid, order_date, item from items_ordered WHERE (item <> 'Snow Shoes' and item <> 'Ear Muffs');

-- Select the item and price of all items that start with the letters ‘S’, ‘P’, or ‘F’.
SELECT item, price from items_ordered where item LIKE 'S%' or item LIKE 'P%' or item LIke 'f%';

-- in, between
-- Select the date, item, and price from the items_ordered table for all of the rows that have a price value ranging from 10.00 to 80.00.
SELECT order_date, item, price from items_ordered where price BETWEEN 10.00 and 80.00;

-- Select the firstname, city, and state from the customers table for all of the rows where the state value is either: Arizona, Washington, Oklahoma, Colorado, or Hawaii.
SELECT firstname, city, state from customers where state in ('Arizona', 'washington', 'oklahoma', 'colorado', 'hawaii');

-- math
-- Select the item and per unit price for each item in the items_ordered table. Hint: Divide the price by the quantity.
SELECT item, sum(price) / sum(quantity) as 'unit price' from items_ordered group by item;

-- inner join
-- Write a query using a join to determine which items were ordered by each of the customers in the customers table. Select the customerid, firstname, lastname, order_date, item, and price for everything each customer purchased in the items_ordered table.
select items_ordered.customerid, customers.firstname, customers.lastname, items_ordered.order_date, items_ordered.item, items_ordered.price from customers INNER JOIN items_ordered ON customers.customerid = items_ordered.customerid;

SELECT customers.customerid, customers.firstname, customers.lastname, 
items_ordered.order_date, items_ordered.item, items_ordered.price 
FROM customers, items_ordered 
WHERE customers.customerid = items_ordered.customerid;

-- Repeat exercise #1, however display the results sorted by state in descending order.
SELECT customers.customerid, customers.firstname, customers.lastname, 
items_ordered.order_date, items_ordered.item, items_ordered.price 
FROM customers, items_ordered 
WHERE customers.customerid = items_ordered.customerid
order BY customers.state DESC;