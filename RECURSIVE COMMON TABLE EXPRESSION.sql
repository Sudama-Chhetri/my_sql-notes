use employee_details;

-- Recursive CTE:
-- Factorial of given number(5).
with recursive cte as(
-- Anchor Query
select 1 as n
union all
-- Recursive Query
select n+1 from cte where n <= 2
)
select exp(sum(log(n))) as factorial from cte;

--

with recursive cte as(
-- Anchor Query
select 1 as n
union all
-- Recursive Query
select n+1 from cte where n <= 5
)
select * from cte;