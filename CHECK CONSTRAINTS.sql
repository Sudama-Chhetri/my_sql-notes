use constraints;
/*Check constraints- It checks for certain conditon that can be applied on the columns of a table, if this
					 condition is not fullfiled we will not be able to insert records into the table*/ 
-- Case1: The table doesn't exists.
create table test_check(
EID int,
First_Name varchar(256),
Age tinyint check(age >= 10)
);

select * from test_check;

insert into test_check values(1,'Mayank',20);

insert into test_check values(2,'Raj',9);

update test_check
set EID = 11
where EID = 1; 
-- Case2: The table exists 
alter table test_check
modify column eid int check(eid > 5);

alter table test_check
add check(eid > 5); 

insert into test_check values(3,'Nitin',34);

insert into test_check values(6,'Nitin',34);




