-- Last_Value(lowest)- It retrieves the value from the last row of the window.

use window_fun;

select * from employeesalaries;

-- Incorrect Query
select *,
last_value(employeename) over(order by salary desc) as 'Emp.Lowest Salary'
from employeesalaries;

-- Correct Query
select *,
last_value(employeename) 
over(order by salary desc rows between unbounded preceding and unbounded following) as 'Emp.Lowest Salary'
from employeesalaries;

select *,
last_value(employeename) 
over(order by salary desc rows between unbounded preceding and unbounded following) as 'Emp.Lowest Salary',
last_value(salary) 
over(order by salary desc rows between unbounded preceding and unbounded following) as 'Lowest Salary'
from employeesalaries;

select *,
last_value(employeename) 
over(partition by department order by salary desc rows between unbounded preceding and unbounded following) 
as 'Emp.Lowest Salary',
last_value(salary)
over(partition by department order by salary desc rows between unbounded preceding and unbounded following) 
as 'Lowest Salary' 
from employeesalaries;

select *,
last_value(employeename) 
over(partition by department order by salary asc rows between unbounded preceding and unbounded following) 
as 'Emp.Highest Salary',
last_value(salary)
over(partition by department order by salary asc rows between unbounded preceding and unbounded following) 
as 'Highest Salary' 
from employeesalaries;

-- First value window function
select *,
first_value(employeename) over(partition by department order by salary desc) as 'Emp.Highest Salary',
first_value(salary) over(partition by department order by salary desc) as 'Highest Salary' 
from employeesalaries;


















