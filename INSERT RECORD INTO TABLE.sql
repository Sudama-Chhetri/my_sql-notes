USE STUDENT;

SELECT * FROM STUDENTS_DETAIL;

INSERT INTO STUDENTS_DETAIL
VALUES('Mayank','M',18,'2024-02-02',115.35),
('Mahesh','M',34,'2023-11-08',324.66);

select * from information_schema.columns where table_name like 'students_detail';

insert into students_detail(Student_name,gender)
values('Priya','F');

insert into students_detail(age,event_date)
values(34,'2023-10-04'),
(43,'2019-01-01'),
(19,'2022-08-08');

select * from information_schema.columns where table_name like 'students_detail';

insert into students_detail(age)
values(25);







