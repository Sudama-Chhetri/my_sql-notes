use constraints;

-- Default constraints- This constraints is used to provide default values to columns.
-- Case1 : The table doesn't exists.
create table test_default(
EID int default 5,
First_Name varchar(256) default 'Rohit',
Last_Name varchar(256),
Age tinyint
);

select * from test_default;

insert into test_default values(1,'Nitin','Jain',23);

insert into  test_default(Last_Name,age) values('Singh',34);


-- Case2 : The table already exists.
alter table test_default
modify column age tinyint default 21;

insert into test_default(EID,First_Name,Last_Name) values(3,'Sudama','Chhetri');







