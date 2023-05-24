--lab9 creating a table using SQL DDL statement
--creating a table
--primary data type(char, varchar2, number, date)

--create table table name (f1, )
create table student_info
(
    Student_id char(4),
    Student_name varchar2(30),
    Course_fee number(5),
    Enrollmet_date date
);

create table books
(
    Book_id number(8) CONSTRAINT bid_pk primary key,
    Book_Name varchar(30) CONSTRAINT bname_nn not null,
    Auther_name varchar2(30),
    Book_cost   number(5) CONSTRAINT bcost_chk check(Book_cost > 1000)
);
select * 
from books;
describe books;

select table_name from tabs;

create table customers
(
    Customer_id number(10),
    Customer_name   varchar2(30)not null,
    Email_id    varchar2(30),
    Book_id number(10),
    CONSTRAINT cid_pk primary key (Customer_id),
    constraint cmail_unq unique(Email_id),
    constraint bid_fk foreign key(Book_id) REFERENCES books(Book_id)
);


create table emp
as
select first_name, last_name, salary
from employees
where salary > 12000;

select * from emp;

drop table emp;

create table rep1
as
select first_name || ' ' || last_name as Name, salary wages, job_id title
from employees
where job_id like '%rep%';

describe rep1;

--alter table (add, rename, modify, drop a field, add constraint)
--to add a new field to table
alter table customers
add contact_number number(14);

desc customers;

--rename a field
alter table customers
rename column contact_number to mobile_number;

desc customers;

--modified a column
alter table customers
modify mobile_number number(14);

desc customers;

--drop a field
alter table customers
drop column mobile_number;

desc customers;

--rename a table
alter table customers
rename to clients;

select * from clients;

--data manipulation
--insert records
--method I (explicit)
--insert into <table_name>(f1, f2, f3......fn) value(v1, v2, v3, ....vn);

describe clints
insert into clients(customer_name,customer_id,email_id)
values('az', 123,'az@gmail.com');

select * from clients;


--method II implicitely
describe books;
insert into books values (1,'dbms','az',15000);
insert into clients values (2, 'sita','sita@gmail.com',1);



commit;