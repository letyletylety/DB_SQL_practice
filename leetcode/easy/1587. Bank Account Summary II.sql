select u.name,
    t.balance
from (
        SELECT account,
            sum(amount) as balance
        from transactions
        GROUP BY account
    ) as t,
    Users u
where balance > 10000 AND u.account = t.account;