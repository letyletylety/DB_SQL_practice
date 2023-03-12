# Write your MySQL query statement below
# as, not in
select customers.name as 'Customers' 
from Customers
where customers.id not in
(
    select customerId from orders
)