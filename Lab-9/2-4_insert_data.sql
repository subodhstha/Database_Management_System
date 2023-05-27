--Create an INSERT statement to add the rows of data to the my_employee table from the
--following sample data.
--ID    Last_name   First_name  UserID      Salary
--1     Patel       Ralph       Rpatel      895
--2     Dancs       Betty       Bdancs      860
--3     Biri        Ben         Bbiri       1100
--4     Newman      Chad        Cnewman     750
--5     Ropeburn    Audrey      Aropebur    1550

insert all
into my_employee (id, last_name, first_name, user_id, salary) values(1, 'Patel', 'Ralph', 'Rpatel', 895)
into my_employee (id, last_name, first_name, user_id, salary) values(2,  'Dances', 'Betty', 'Bdances', 860)
into my_employee (id, last_name, first_name, user_id, salary) values(3, 'Biri', 'Ben', 'Bbiri', 1100)
into my_employee (id, last_name, first_name, user_id, salary) values(4, 'Newman', 'Chad', 'Cnewman', 750)
into my_employee (id, last_name, first_name, user_id, salary) values(5, 'Ropeburn', 'Audrey', 'Aropeburn', 1550)
select 1 from dual;

--Confirm your addition to the table.
select * from my_employee;

--Make the data addition permanent.
commit;