use employee_details;

SELECT * 
FROM Employees;

SELECT * 
FROM Employees
ORDER BY Department asc,Salary desc;

SELECT * 
FROM Employees
ORDER BY Department ,Salary desc;

SELECT *
FROM EmployeeRecords;


SELECT *
FROM EmployeeRecords
WHERE LastName = 'Miller' and  EmployeeID = 3;

SELECT *
FROM EmployeeRecords
WHERE LastName = 'Miller' and  EmployeeID = '3';

select * 
from employeerecords;

select * 
from employeerecords
where department = 'hr' or department = 'finance';

select * 
from employeerecords
where (department = 'hr' or department = 'finance') and salary = 60000;








