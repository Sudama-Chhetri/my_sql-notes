-- drop table students_details;
-- drop database students;
-- drop table students_details;

create database student;

CREATE TABLE students_detail(
Student_Name text,
Gender char(1),
age tinyint,
event_date date,
distance decimal(5,2)
);

select * from students_detail;

insert into students_detail(Student_Name,Gender,age,event_date,distance)
values('Sudama Chhetri','M',21,'2024-08-03',123.11);

insert into students_detail
values('Yadash Chhetri','M','22','2025-11-29',150.12);





