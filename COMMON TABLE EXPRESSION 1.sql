/*
A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

use employee_details;

select  * from employees;

create table temp_1 as select * from employees;
drop table temp1;

select * from temp_1;

-- Example1: CTE
with cte as(
select * from temp_1
)
select * from cte;

-- Example2:
with test_cte as(
select employeeid,firstname 
from temp_1 
where employeeid in (2,3)
) 
select * from test_cte;

-- Example3:
with cte1 as(
select * from employees where employeeid in (1,2,3)
)
create table temp_2 as select * from employee ;

-- Example4:
with cte2 as(
select * from temp_1 where employeeid in (2,4,6)
)
update temp_1 set employeeid = 101 where employeeid in(select distinct employeeid from cte2);

select * from temp_1;

-- Example5:
with cte3 as(
select * from temp_1 where employeeid = 1
)
delete from temp_1 where employeeid in(select distinct employeeid from cte3);

select * from temp_1;

-- Example6:
with cte4 as(
select * from temp_1 where employeeid = 101
)
insert into temp1 select * from cte4;











