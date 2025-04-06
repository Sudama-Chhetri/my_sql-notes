use test_db;

select * from employees;

create index ix_1 on employees(salary desc);

create index ix_2 on employees(firstname,lastname);

drop index ix_1 on employees;
