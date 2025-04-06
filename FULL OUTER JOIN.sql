use sales_database;

select * from table1;

select * from table2;

/* Full outer join- it will include output of inner join,
                  it will also include whatever is present only in the left table and
                  it will also include whatever is present only in the right table.*/
                  
(select *
from table1 
left join table2 
on table1.c1 = table2.c1)
union
(select *
from table1 
right join table2 
on table1.c1 = table2.c1);




