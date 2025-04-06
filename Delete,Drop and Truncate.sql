use employee_details;

select *
from Employees;

create table employee_3 as select * from Employees;

select * from employee_3;

delete 
from employee_3
where lastname = '' or department = '0';

create table employee_4 as select * from employees;

select * from employee_4;

delete from employee_4;

truncate table employee_3;

drop table empl0yee_3;

-- Delete- It is used to delete certain records from the table. If we use delete without where conditon,
--         all record from the table will be deleted, but the table structure remain same.

-- Truncate- It is used to delete all the records from the table, but the structure of table remains intact.

-- Drop- It is used to delete all the records plus table structure will be removed.













