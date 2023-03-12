SELECT user_id,
    max(time_stamp) as last_stamp
from logins
WHERE '2020-01-01' <= time_stamp
    AND '2021-01-01' > time_stamp
GROUP by user_id;