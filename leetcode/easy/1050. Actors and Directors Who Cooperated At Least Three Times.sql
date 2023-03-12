SELECT actor_id,
    director_id
from actordirector
GROUP BY actor_id,
    director_id
HAVING count(actor_id) >= 3;