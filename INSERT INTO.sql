use employee_details;

select *
from Employees;

insert into Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values(6,'Sudama','Chhetri','DataAnalyst',80000,'2025-11-29');

insert into Employees (employeeid,firstname,lastname)
values(7,'Yadash','Karki');

insert into employees
values(8,'Mahesh','Chhetri','HR',73000,'2024-01-21');

select * 
from information_schema.columns 
where table_name = 'employees';
