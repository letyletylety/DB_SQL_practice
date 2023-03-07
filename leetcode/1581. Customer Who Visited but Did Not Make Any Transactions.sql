-- Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
SELECT customer_id,
    COUNT(visit_id) as count_no_trans
FROM Visits v
WHERE NOT EXISTS (
        SELECT visit_id
        FROM Transactions t
        WHERE t.visit_id = v.visit_id
    )
GROUP BY customer_id