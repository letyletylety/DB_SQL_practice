
-- if (cond, true_ret, false_ret) 를 써도 괜찮다.
SELECT employee_id, (salary) * (employee_id % 2 = 1) * (name not LIKE 'M%')  as 'bonus' from Employees ORDER BY employee_id;