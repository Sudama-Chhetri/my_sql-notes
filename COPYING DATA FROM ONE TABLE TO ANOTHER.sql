-- drop table new_table;
-- drop table nuw_table_3;

use sales_database;
-- Copying data from existing table to new table.

-- Case1: The new table simply doesn't exists.
-- Case2: The new table structure/new table exists.

-- Case1:
select * from sales;

-- All Columns were copied from existing table
/* This statement will result in the creation of new_table_1  which will be having structure and records
 both same as that of sales table */
 create table New_Table_1 as select * from sales;
 drop table new_table_1;
 
-- Certain columns to be copied.
create table new_table_1 as select productid,quantity from sales;

select * from new_table_1;

-- Case2: The new table structure/new table exists.
create table new_table_2 as select * from sales limit 0;

select * from new_table_2;

insert into new_table_2 select * from sales;

-- Copying certain columns
create table new_table_3 as select * from sales where 1=0;

select * from new_table_3;

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from sales;














 
 
 
 
 
 

