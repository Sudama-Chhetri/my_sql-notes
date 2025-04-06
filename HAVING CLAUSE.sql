use sales_database;

select * 
from sales;

-- Total sales, average sales, total quantity, average quantity for each distinct product
select 
productid,
sum(TotalAmount) as 'SumOfSales',
avg(TotalAmount) as 'AvgTotalAmount',
sum(Quantity) as 'TotalQuantity',
avg(Quantity) as 'AvgQuantity'
from sales 
group by productid
having sum(TotalAmount)<700 and sum(Quantity) = 21;



 
