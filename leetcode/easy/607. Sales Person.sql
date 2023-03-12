-- Write an SQL query to report the names of all the salespersons who did not have any orders related to the company with the name "RED".
-- select s.name
-- from SalesPerson s
-- where s.sales_id in (
--         select sales_id
--         from (
--                 (
--                     -- red 아닌 compnay
--                     select com_id,
--                         name
--                     from Company
--                     where not name like "%RED%"
--                 ) as Com
--                 inner JOIN Orders o on Com.com_id = o.com_id
--             )
--     );
SELECT name
from SalesPerson s
where sales_id not in (
        SELECT sales_id
        from Orders
        where com_id in (
                SELECT com_id
                from Company
                where name LIKE "%RED%"
            )
    );