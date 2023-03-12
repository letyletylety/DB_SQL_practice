-- SELECT user_id as buyer_id,
--     join_date,
--     ifnull(oo.orders_in_2019, 0) as orders_in_2019
-- FROM (
--         SELECT buyer_id,
--             count(*) as orders_in_2019
--         from orders
--         WHERE order_date >= '2019-01-01'
--             AND order_date < '2020-01-01'
--         group by buyer_id
--     ) as oo
--     RIGHT JOIN Users u ON u.user_id = oo.buyer_id;
SELECT u.user_id AS buyer_id,
    join_date,
    IFNULL(COUNT(order_date), 0) AS orders_in_2019
FROM Users as u
    LEFT JOIN Orders as o ON u.user_id = o.buyer_id
    AND YEAR(order_date) = '2019'
GROUP BY u.user_id -- YEAR