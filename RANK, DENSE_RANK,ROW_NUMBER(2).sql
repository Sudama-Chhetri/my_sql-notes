use student;

select * from students;

select *, row_number() over(partition by subject order by marks desc) as 'Row Number Desc'
from students;

select *, row_number() over(partition by subject order by marks asc) as 'Row Number Asc'
from students;

select *, row_number() over(partition by student_name order by marks desc) as 'Row Number Desc'
from students;

select *, rank() over(partition by student_name order by marks desc) as 'Rank Desc'
from students;

select *, rank() over(partition by subject order by marks desc) as 'Rank Desc'
from students;

select *,dense_rank() over(partition by subject order by marks desc) as 'Dense_Rank Desc'
from students;

select *,dense_rank() over(partition by student_name order by marks desc) as 'Dense_Rank Desc'
from students;

select *,dense_rank() over(partition by student_name order by marks asc) as 'Dense_Rank Asc'
from students;

