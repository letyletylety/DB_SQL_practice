SELECT tt.product_id,
    product_name
from product
    inner join (
        SELECT distinct product_id
        from sales
        where not product_id in (
                SELECT product_id
                from sales
                where sale_date < '2019-01-01'
                    or sale_date > '2019-03-31'
            )
    ) as tt on tt.product_id = product.product_id;
-- SELECT s.product_id, product_name
-- FROM Sales s
-- LEFT JOIN Product p
-- ON s.product_id = p.product_id
-- GROUP BY s.product_id
-- HAVING MIN(sale_date) >= CAST('2019-01-01' AS DATE) AND
--        MAX(sale_date) <= CAST('2019-03-31' AS DATE)