--The HR department wants you to create SQL statements to insert, update and delete employee
--data. As a prototype, you use the MY_EMPLOYEE Table, before giving statements to the HR
--department
--Create a table MY_EMPLOYEE table to use for lab.
--
--Field         Data type           Constraint type
--id            number (4)          PRIMARY KEY, NOT NULL
--last_name     varchar2 (25)
--first_name    varchar2 (25)       NOT NULL
--user_id       varchar2 (25)       UNIQUE
--salary        number (9,2)

create table my_employee
(id number(4) constraint my_employee_id_num not null,
last_name varchar2(25),
first_name varchar2(25) constraint fname not null,
user_id varchar2(25) constraint user_id  unique,
salary number(9, 2));

--to delete permently
DROP TABLE my_employee PURGE;
