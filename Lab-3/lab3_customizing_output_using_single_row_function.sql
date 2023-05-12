--customizing output using single-row functions
--using case-maniuplation function
--lower, upper, initcap
select * from employees;

select first_name, salary
from employees
where upper(first_name) = 'NEENA';

select first_name, salary
from employees
where lower(first_name) = 'neena';


select upper(last_name) as "Last Name", lower(first_name) as "First name", salary
from employees;

select first_name, initcap(email) as "email with initial caps", salary 
from employees;

--character Manipulation  functions
--concat, length, substr, instr, trim, lpad, rpad
select first_name || ' ' || last_name as full_name, salary
from employees;

select concat(concat(first_name,' '), last_name) as 
full_name, salary
from employees;

select first_name, last_name, length(first_name) as length,
substr(last_name, 2, 3)
from employees;

select first_name, instr(lower(first_name), 'n') as position 
from employees
order by first_name;

select first_name, lpad(salary,10, '$') as lpad, rpad(salary, 10, '$') as rpad
from employees; 

select first_name, replace(lower(first_name),'a', 'u') as replace
from employees;

select first_name, trim('a' from lower(first_name)) as trim
from employees;

--number function (round, trunc, mod)
select round(46.2583,2), round(46.2583,0), round(46.2583, -1)
from dual;

select trunc(46.2583,2), trunc(46.2583,0), trunc(46.2583, -1)
from dual;

select first_name, salary, trunc(salary, -3)
from employees;

select first_name, salary, mod(salary,500) "status"
from employees;

select sysdate
from dual;

select first_name, hire_date,((sysdate)/360) as output
from employees;