use test_index;

select * from students;

create index ix_2 on students(id);

-- More than one non clustered index can exist while that is not the case with clustered index

-- Clustered Index determines the physical order in which data is stored in a table while that is
-- not the case with non clustered index

-- Clustered index is faster than non clustered index because non clustered index needs to refer back to
-- table if selected column is not present in it

-- Non clustered index requires separate disc space for storage

