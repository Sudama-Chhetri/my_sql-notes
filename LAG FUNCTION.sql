use profit_DB;

select * from profitdata;

-- To add new column that shows previous month's profit for each product.
select*,
lag(profit) over(partition by product order by monthnumber) as 'PreviousMonthProfit'
from profitdata;

/*We don't want product column in the output, but we want each month total profit to be shown by 
 monthnumber and monthname, also a new column should be added to show previous month total profit.*/
 select 
	MonthNumber,
	MonthName, 
    sum(profit) as 'TotalProfit',
	lag(sum(profit)) over(order by monthnumber asc) as 'PreviousMonthTotalProfit'
 from profitdata 
 group by MonthNumber,MonthName
 order by monthnumber;
 
 --
 
 with cte as
 (
 select 
	MonthNumber,
	MonthName, 
    sum(profit) as 'TotalProfit',
	lag(sum(profit)) over(order by monthnumber asc) as 'PreviousMonthTotalProfit'
 from profitdata 
 group by MonthNumber,MonthName
 order by monthnumber
 )
 select * from cte
 where totalprofit < previousmonthtotalprofit;
 
 
 