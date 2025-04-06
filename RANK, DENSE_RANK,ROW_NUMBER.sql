use student;

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);

INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);

select * from students;

-- Row_number()- If there is a tie row_numbers are assigned randomly.
select *, row_number() over(order by marks desc) as 'Row Number'
from students;

-- Rank Function- If there is a tie next rank/ranks will be skipped.
select *, rank() over(order by marks desc) as 'Rank Function'
from students;

-- Dense_Rank Function-  If there is a tie ranks will not be skipped.
select *, dense_rank() over(order by marks desc) as 'Dense Rank'
from students;





-- Row_number()- If there is a tie row_numbers are assigned randomly.
select *, row_number() over(order by marks) as 'Row Number'
from students;

-- Rank Function- If there is a tie next rank/ranks will be skipped.
select *, rank() over(order by marks) as 'Rank Function'
from students;

-- Dense_Rank Function-  If there is a tie ranks will not be skipped.
select *, dense_rank() over(order by marks) as 'Dense Rank'
from students;




