CREATE DATABASE ADVANCED_SQL_QUESTIONS;

USE ADVANCED_SQL_QUESTIONS;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);

-- Using sub Query.
-- 2nd highest salary
select * from employees;

select salary 
from employees
where salary < (select max(salary) from employees)
order by salary desc
limit 1
offset 0;

select max(salary) as '2nd HighestSalary'
from employees
where salary < (select max(salary) from employees)
order by salary desc;

-- 3rd highest salary
select salary 
from employees
where salary < (select max(salary) from employees)
order by salary desc
limit 1
offset 1;

select max(salary) as '3rd HighestSalary' 
from employees 
where salary < ( select max(salary) from employees 
where salary < (select max(salary) from employees));

-- 4th highest salary
select salary 
from employees
where salary < (select max(salary) from employees)
order by salary desc
limit 1
offset 2;

select max(salary) as '4th HighestSalary' 
from employees
where salary < (select max(salary) from employees
where salary < ( select max(salary) from employees 
where salary < (select max(salary) from employees)));

-- 10th highest salary
select salary as '10th HighestSalary'
from employees
order by salary desc
limit 1
offset 9;

select salary as '10th HighestSalary'
from employees
order by salary desc
limit 10;

-- Using CTE
-- 2nd highest salary
with cte as (
select *,
dense_rank() over(order by salary desc) as 'DR'
from employees
)
select salary as '2nd HighestSalary' from cte where DR = 2;

-- 3rd HighestSalary
with cte as (
select *,
dense_rank() over(order by salary desc) as 'DR'
from employees
)
select salary as '3rd HighestSalary' from cte where DR = 3;

-- 4nd highest salary
with cte as (
select *,
dense_rank() over(order by salary desc) as 'DR'
from employees
)
select salary as '4th HighestSalary' from cte where DR = 4;

-- 10th highest salary
with cte as (
select *,
dense_rank() over(order by salary desc) as 'DR'
from employees
)
select salary as '2nd HighestSalary' from cte where DR = 10;

-- 10th highest salary
with cte as (
select *,
dense_rank() over(order by salary desc) as 'DR'
from employees
)
select * from cte
limit 10;

-- Sub query along with dense_rank()
-- 2nd highest salary
select salary as '2nd HighestSalary' from
(select *, 
dense_rank() over(order by salary desc) as 'DR' 
from employees) x
where dr = 2;

-- 3rd highest salary
select salary as '3rd HighestSalary' from
(select *, dense_rank() over(order by salary desc) as 'DR'
from employees) y
where dr = 3;

-- 4rd highest salary
select salary as '4th HighestSalary' from
(select *, dense_rank() over(order by salary desc) as 'DR'
from employees) y
where dr = 4;

-- 10th highest salary
select salary as '10th HighestSalary' from
(select *, dense_rank() over(order by salary desc) as 'DR'
from employees) y
where dr = 10;

select salary as '10th HighestSalary' from
(select *, dense_rank() over(order by salary desc) as 'DR'
from employees) y;

-- Sub query
-- 2nd HighestSalary
select salary as '2nd HighestSalary' from
(select distinct salary
from employees
order by salary desc
limit 2) a
order by salary asc
limit 1;

-- 3rd HighestSalary
select salary as '3rd HighestSalary' from
(select distinct salary 
from employees 
order by salary desc 
limit 3) x
order by salary asc
limit 1;

-- 4th HighestSalary
select salary as '4th HighestSalary' from
(select distinct salary 
from employees 
order by salary desc 
limit 4) x
order by salary asc
limit 1;

-- 10th HighestSalary
select salary as '10th HighestSalary' from 
(select distinct salary 
from employees
order by salary desc
limit 10) y
order by salary asc
limit 1;









