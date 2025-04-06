use employee_details;

select * 
from employeeRecords
where employeeid = 2;

select employeeid,firstname
from employeeRecords
where employeeid = 2;

select * from employeerecords;

select *
from employeerecords 
where salary >= 75000.00;
 
select *
from employeerecords 
where salary < 75000.00;
 
select  firstname,lastname,department,salary
from employeerecords 
where salary < 75000.00;
 
select distinct firstname,lastname,department,salary
from employeerecords 
where salary < 75000.00;
 
 
 
 
 
 
 
