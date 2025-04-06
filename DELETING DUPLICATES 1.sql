use advanced_sql_questions;

-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

select * from employeerecords;

select * from employeerecords
order by employeeid,employeename,managerid;

select distinct * from employeerecords;

 -- or
 
create table emp_bkp as select distinct * from employeerecords;

select * from emp_bkp;

-- or
with cte as(
select *,
row_number() over(partition by employeename order by managerid) as 'rn'
from employeerecords
)
select employeeid,employeename,managerid from cte where rn!=2;

