SELECT DISTINCT p1.email
from Person p1,
    Person p2
where p1.email = p2.email
    AND p1.id <> p2.id;