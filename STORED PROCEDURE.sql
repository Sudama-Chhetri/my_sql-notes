create database test_DB;

USE test_db;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from employees;

delimiter $$

CREATE PROCEDURE sp_test()
BEGIN
    SELECT * FROM employees;
END 

delimiter ;

call sp_test();
	
-- Example2:
delimiter $$

create procedure sp_test_1()
begin
	select firstname, lastname from employees;
end $$

delimiter ;

call sp_test_1();

-- Modifying the procedure.
drop procedure sp_test_1;

delimiter $$
create procedure sp_test_1()
begin
	select employeeid,firstname, lastname from employees;
end $$
delimiter ;

call sp_test_1();
