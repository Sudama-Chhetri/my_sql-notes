use sales_database;

select *
from sales;

select PaymentMethod, sum(totalamount) as 'SumTotalAmount' 
from SALES
group by PaymentMethod;

select
ProductId, 
PaymentMethod, 
sum(TotalAmount) as 'SumOfSales'
from sales
group by productid, paymentmethod
order by productid asc;



