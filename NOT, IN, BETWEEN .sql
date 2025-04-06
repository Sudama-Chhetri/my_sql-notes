use employee_details;

select * 
from employeerecords;

select * 
from employeerecords
where not firstname = 'john' and not salary = 60000;

select * 
from EmployeeRecords
where not lastname = 'miller' or not department = 'hr';

select * 
from EmployeeRecords
where  salary not between 75000 and 85000;

select * 
from EmployeeRecords
where not salary between 75000 and 85000;

select *
from EmployeeRecords
where Department = 'hr' or Department = 'it';

select *
from EmployeeRecords
where Department in ('hr','finance');

select *
from EmployeeRecords
where not Department in ('hr','finance');

select *
from EmployeeRecords
where Department not in ('hr','it');

















