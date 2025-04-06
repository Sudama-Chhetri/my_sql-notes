USE employee_details;

select *
from employees;

insert into employees
values(9,'Jay','','IT',73000,'2022-04-04');

insert into employees
values(10,'Nitin','Shamani','0',54000,'2021-02-22');

select * 
from Employees
where department = null;

select * 
from Employees
where department is null;

select *
from Employees
where not Department is null;

select *
from Employees
where  Department is not null;





