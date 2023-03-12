SELECT sell_date,
    count(DISTINCT product) as num_sold,
    GROUP_CONCAT(DISTINCT product order BY product) as products
from Activities
GROUP BY sell_date
ORDER BY sell_date;