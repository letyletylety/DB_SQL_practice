(
    SELECT s.employee_id
    from salaries s,
        employees e
    where not s.employee_id  in (
            SELECT employee_id
            from employees
        )
)
UNION
(
    SELECT e.employee_id
    from salaries s,
        employees e
        WHERE not e.employee_id in (
            SELECT employee_id
            from salaries
        )
)
ORDER BY employee_id