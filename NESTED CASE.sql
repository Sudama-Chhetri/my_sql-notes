use sales_database;

select * from products;

/* We need to group the data based on columns category and price into different categories i.e affordable and
   premium*/
select 
*,
case 
	when Category = 'Electronics' then
		case when Price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end 
	when Category = 'Furniture' then
		case when Price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end 
else 
		case when Price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end 'Groups'
from products;



select 
*,
case 
	when Category = 'Electronics' then
		case when Price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end 
	when Category = 'Furniture' then
		case when Price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end 
    when Category in ('Accessories') then
		case when Price>=25 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end as 'Groups'
from products;