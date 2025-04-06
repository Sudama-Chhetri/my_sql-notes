-- First value(minimum)- It retrieves the value from the first row of the window.


use window_fun;

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

select * from employeesalaries;

select *,
first_value(salary) over(order by salary asc) as 'Minimum Salary'
from employeesalaries;

select *,
first_value(employeename) over(order by salary asc) as 'Employee Minimum Salary'
from employeesalaries;

select *,
first_value(salary) over(order by salary asc) as 'Minimum Salary',
first_value(EmployeeName) over(order by salary asc) as 'Employee minimum Salary'
from employeesalaries;

select *,
first_value(employeeid) over(partition by Department order by salary asc) as 'First_value'
from employeesalaries;

select *,
first_value(salary) over(partition by Department order by salary asc) as 'First_value'
from employeesalaries;

select *,
first_value(employeeid) over(partition by Department order by salary desc) as 'First_value eid',
first_value(employeename) over(partition by Department order by salary desc) as 'First_value ename'
from employeesalaries;
















