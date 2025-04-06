use sales_database;

create table append1 (C1 int,C2 text ,C3 int);
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9);

create table append2 (C1 int,C2 text,C3 int);
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91);

select * from append1;

select * from append2;

/* NOTE- 1)Number of columns present in the select list have to be same.
		 2)Data Types of columns have to be same.
         3)Order in which columns are written have to be same.*/

-- Union All- if we use union all, all the duplicate record also be selected from all the table.
select c1,c2,c3 
from append1 
union all 
select c1,c2,c3 
from append2;

-- Union- if we use union, no duplicate record will be selected from the table .
select c1,c2,c3
from append1 
union 
select c1,c2,c3 
from append2;


-- Aliase name which are specified in 1st select statement will be asssigned to the columns.
select c1 as 'Column1',c2 as 'Column2',c3 as 'Column3'
from append1 
union 
select c1 as 'Col1',c2 as 'Col2',c3 as 'Col3' 
from append2;






































