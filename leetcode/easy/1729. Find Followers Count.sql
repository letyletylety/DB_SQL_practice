-- # Write your MySQL query statement below
SELECT user_id,
    count(follower_id) as followers_count
from followers
GROUP by user_id ORDER BY user_id;