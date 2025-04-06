use constraints;

-- Unique Constraints- It ensures that column consists of unique values
-- Case1: when table already exists
-- Case2: We need to create the table 

-- Case2:
create table test_unique(
SID int unique,
Age tinyint not null,
First_Name varchar(256) not null unique,
Last_Name varchar(256)
);

select * from test_unique;


insert into test_unique
values(
1,22,'Mayank','Mehera'
);

insert into test_unique
values(
1,24,'Rohit','Singh'
);

insert into test_unique
values(
null,34,'Akhilesh','Jain'
);

insert into test_unique
values(
null,54,'Nitin','Singh'
);

truncate table test_unique;

-- Case1:
alter table test_unique
modify column last_name varchar(256) unique;

alter table test_unique
add unique(last_name);










