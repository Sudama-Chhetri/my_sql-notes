use employee_details;

select * from employees;

create table temp_2 as select * from employees;

select * from temp_2;

-- Example1:
with cte1 as(
select * from temp_2 where employeeid in (1,2)
),cte2 as(
select * from temp_2 where employeeid in (3,4)
)

select * from cte1 union all select * from cte2;

-- Example2:
with cte3 as(
select employeeid,firstname from temp_2 where employeeid = 1
),cte4 as(
select employeeid,firstname from temp_2 where employeeid in (3)
)
create table temp_3 as select * from cte3 union all select * from cte4;

-- Example3:
with cte3 as(
select employeeid,firstname from temp_2 where employeeid = 1
),cte4 as(
select employeeid,firstname from temp_2 where employeeid in (3)
)
insert into temp_2 select * from (select * from cte3 union all select * from cte4);

-- Example4:
with cte5 as(
select employeeid,firstname,salary from temp_2 where employeeid = 2
),cte6 as(
select employeeid,firstname,salary from temp_2 where employeeid in (4)
)

delete from temp_2 where employeeid in (select distinct employeeid from cte5
union all select distinct employeeid from cte6);

select * from temp_2;

-- Example5:
with cte5 as(
select employeeid,firstname,salary from temp_2 where employeeid = 9
),cte6 as(
select employeeid,firstname,salary from temp_2 where employeeid in (10)
)

update temp_2 set employeeid = 100 where employeeid  not in (select distinct employeeid from cte5
union all select distinct employeeid from cte6);

select * from temp_2;

