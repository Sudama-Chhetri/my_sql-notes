use sales_database;

select *
from sales;

select *
from sales
where totalamount >= 161;

select ProductID, sum(TotalAmount) as 'SumOfAmount' from sales
group by productid
having sum(TotalAmount) < 700;

-- Where clause- It is used to filter out record from the main table that we have.
-- Having clause- It is used to filter out grouped record that we generated.

select ProductID, sum(TotalAmount) as 'SumOfSales' from sales 
where totalamount >= 161
group by productid
having sum(TotalAmount) >= 250
order by productid desc;

select ProductID, sum(TotalAmount) as 'SumOfSales' from sales 
where totalamount >= 161
group by productid
having sum(TotalAmount) >= 250
order by sum(TotalAmount) asc;



