use sales_database;

select * from table1;

select * from table2;

select * from table1 right join table2 on table1.c1 = table2.c1;

select * from table1 right outer join table2 on table1.c1 = table2.c1;s

select a.c1,a.c2,b.c3 from table1 as a right outer join table2 as b on a.c1 = b.c1;

select a.c1,a.c2,b.c3 from table1 as a right join table2 as b on a.c1 = b.c1;

 

