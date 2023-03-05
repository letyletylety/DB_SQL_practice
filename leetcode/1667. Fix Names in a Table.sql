-- concat, substring, upper, lower
select user_id,
    concat(
        upper(substring(name, 1, 1)),
        lower(substring(name, 2))
    ) as name
FROM users
ORDER BY user_id;