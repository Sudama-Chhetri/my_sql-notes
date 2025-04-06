-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);

-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID

select * from employeerecords_1;

select * from employeerecords_1
order by employeeid,email;

create table emp as select distinct* from employeerecords_1;

select * from emp;

select * from emp
order by email;

delete from emp where employeeid = 6;

select * from emp;

-- Record with lower empid should remain
with cte as(
select *,
dense_rank() over(partition by email order by employeeid asc) as 'DR'
from emp
)
select employeeid,email from cte where dr != 2 ;

-- Retain the record with higher empid.
create table emp_1 as select distinct * from employeerecords_1;

select * from emp_1;

with cte1 as(
select *,
dense_rank() over(partition by email order by employeeid desc) as 'DR1'
from emp_1
)
select employeeid,email from cte1 where dr1 != 2;

select * from emp;-- employeeid 5 was retained

select * from emp_1;-- employeeid 6 was retained
