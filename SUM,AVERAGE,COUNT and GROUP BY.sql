use sales_database;

select *from sales;

select sum(quantity) as 'TotalQuantity' from sales;

select sum(quantity) as 'TotalQuantity', sum(totalamount) as 'SumOfAmount' from sales;

select avg(quantity) as 'AvgQuantity' from sales;

select avg(quantity) as 'AvgQuantity', avg(totalamount) as 'AvgAmount' from sales;

-- sum of quantity, sum of total amount, average of quantity, average of total amount for each distinct product

select 
ProductID,
sum(quantity) as 'SumOfQuantity', 
sum(totalamount) as 'SumOfTotalAmount',
avg(quantity) as 'AvgQuantitySold',
avg(totalamount) as 'AvgTotalAmount'
from sales
group by ProductID;

/* Sum of quantity, sum of amount, average of quantity, average of amount for distinct combination of productid
 and storeid */
 
 select 
 ProductId,
 StoreId,
 sum(quantity) as 'SumOfQuantity',
 sum(totalamount) as 'SumOfTotalAmount',
 avg(quantity) as 'AvgQuatity',
 avg(totalamount) as 'AvgTotalAmount'
 from sales
 group by productid,storeid;
 
 select * from sales;
 
 select count(*) as 'NumberOfRows' from sales;
 
 select count(paymentmethod) as 'NumberOfRecords' from sales;
 
 select count(distinct productid) as 'DistinctProduct' from sales;
 
 select count(distinct paymentmethod) as 'DistinctPaymentMethod' from sales;
  
select paymentmethod, count(distinct paymentmethod) as 'DistinctPaymentMethod' 
from sales
group by paymentmethod;

 select paymentmethod, count(paymentmethod) as 'PaymentMethod' 
 from sales
 group by paymentmethod;
 
 select paymentmethod, count(*) as 'PaymentMethod' 
 from sales
 group by paymentmethod;
 
select * from sales;
 
 
 
  
  
 
 
 
 
 
 
 
 
 
 









