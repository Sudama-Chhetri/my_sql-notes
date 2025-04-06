use sales_database;

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

select * from products;

-- Example1- Add a column to categorize each product into categories high, medium and low.
select *,
case
	when price > 500 then 'High'
    when price >=200 and price <= 500 then 'Medium'
    else 
    'Low'
end as 'High/Medium/Low'
from products;

-- Example2- Provide priority to each category and sort the data according to priority.
select * from products
order by
case
	when category in ('Electronics') then 1
    when category in ('Furniture') then 2
    else
    3
end;

select * from products
order by
case
	when category in ('Electronics') then 1
    when category in ('Furniture') then 2
	when category in ('Accessories') then 3
end;

select * from products
order by
case
	when category = 'Electronics' then 1
    when category = 'Furniture' then 2
	when category = 'Accessories' then 3
end;











