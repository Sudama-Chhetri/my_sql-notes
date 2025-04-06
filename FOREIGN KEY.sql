use constraints;
/* Foreign Key- Values in foreign key is the subset of primary key.
			  - It should contain duplicate.
			  - It should contain null values.*/
              
-- Foreign Key constraint
-- Case1: When the new table has to be created.
create table test_primary_key(
ID int primary key,
Name varchar(256)
);

insert into test_primary_key values(1,'Sudama'),(2,'Raj'),(3,'Mayank');

drop table test_primary_key;

select * from test_primary_key;

create table test_foreign_key(
ID int,
foreign key(id) references test_primary_key(ID),
Course varchar(256)
); 

insert into test_foreign_key values(1,'A');

insert into test_foreign_key values(null,'B');

insert into test_foreign_key values(5,'C');

select * from test_foreign_key;

-- Case2: Table already exists
create table test_foreign_key_2(ID int,Course varchar(256));

alter table test_foreign_key_2
add foreign key(ID) references test_primary_key(id);

select * from test_foreign_key_2;

