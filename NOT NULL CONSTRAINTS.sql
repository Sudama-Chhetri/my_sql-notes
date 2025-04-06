create database constraints;

use constraints;

-- Constraints
/*Condition that can be applied on the columns of table and these conditions are to be followed while 
 inserting records into table*/
 
-- Not Null constraint
-- Case1: We will have to create new table.
create table test_not_null(
EID int not null,
Age tinyint,
First_Name varchar(256)
);

select * from test_not_null;

select * 
from information_schema.columns 
where table_name like 'test_not_null';

insert into test_not_null values (1,23,'Mayank');
insert into test_not_null values (null,23,'Mayank');
insert into test_not_null values (2,null,'Raj');

-- Case2: The table already exists.
-- We want to make firstname column nullable

use constraints;

alter table test_not_null
modify column first_name varchar(256) not null;

insert into test_not_null 
values(21,34,null);

alter table test_not_null
modify column age tinyint not null;

-- Alter Practice
alter table test_not_null
rename column age to new_age;

alter table test_not_null
change new_age age tinyint;

select * from test_not_null;

alter table test_not_null
drop column age;

alter table test_not_null
add column Department varchar(256);








