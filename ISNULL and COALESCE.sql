-- isnull, coalesce functions
use profit_DB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

select * from customers;

-- is null-  if there is null in a column it will replace with some other value.
select customerid, email, phonenumber
from customers;

select customerid,
ifnull(email,'email NA') as email,
ifnull(phonenumber,'phonenumber NA') as phonenumber
from customers;

-- coalesce(non-null)
select customerid,coalesce(email,phonenumber,'contactna') as 'coalesce' 
from customers;

