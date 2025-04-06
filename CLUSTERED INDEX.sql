create database Test_Index;

use test_index;

create table Students ( id int, name nvarchar(50), age int, gender varchar(20));

insert into Students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F');

select * from Students;

alter table students
add primary key(id);

alter table students
modify column age int primary key;

alter table students
drop primary key;

alter table students
add primary key(id desc);

alter table students
drop primary key;

CREATE INDEX idx_students_gender_age_desc
ON students(gender DESC, age DESC);




