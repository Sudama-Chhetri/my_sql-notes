use sales_database;

select * from sales;

select min(quantity) as 'MinQuantity' from sales;

select min(saledate) as 'MinSaleDate' from sales;

select min(paymentmethod) as 'MinPaymentMethod' from sales;

-- Show minimum total amount for each storeid
select StoreId, min(totalamount) as 'MinTotalAmount' 
from sales
group by StoreId;
















