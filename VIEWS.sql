use test_DB;

select * from employees;

create table test_backup as select * from employees;

select * from test_backup;

-- View- A view is a virtual table, it is a stored SQL query.
-- Advantage
-- 1)It helps in reducing the complexity of code
-- 2)It helps in implementing security
create view view_1 as(
select * from test_backup
);

select * from view_1;

update view_1 
set employeeid = 100;

create view view_2 as(
select employeeid,firstname,lastname,email,departmentid from employees
);

select * from view_2;

drop view view_2;

