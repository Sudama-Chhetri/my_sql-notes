use employee_details;

select*
from Employees;

CREATE TABLE employee_1 AS SELECT * FROM Employees; 

select *
from employee_1;

update employee_1
set department = 'HR'
where department is null;

update employee_1
set salary = 82000, hiredate = '2021-05-12'
where employeeid = 7;

select * 
from employee_1
where employeeid = 7;

update employee_1
set salary = 82000, hiredate = '2021-05-12'
where salary and hiredate is null;

create table employee_2 as select * from employees;

select*
from employee_2; 

update employee_2
set department = 'finance';










