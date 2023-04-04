select * from hr.employees;

select first_name, last_name, salary from employees;

--Arthmatic operation (/, *, +, -)
--to overrid precendance use prenthesis
select first_name as Name, salary Monthly_salary, 12*salary
from employees;

select first_name as Name, salary Monthly_salary, 12*salary as annual_salary
from employees;

select first_name as Name, salary Monthly_salary, 12*salary as "Annual Salary"
from employees;


--salary + 10/100 * salary --> salary + 0.1 * salary --> salary * (1+0.1)-->salary
select first_name, salary as "Monthly_Salary", 1.1 * salary as new_salary
from employees;

select first_name, salary, (salary + 1000)*12 as new_salary
from employees;

--salary incremented by 12%
select first_name, salary, 1.12*salary as new_salary
from employees;

--tax amount
select first_name, salary, 0.13*salary as monthly_vat_amount
from employees;

select first_name, salary, (salary - 0.13*salary)*12 as annual_income
from employees;

--using null value with arthmatic operator
describe employees;

select first_name, salary, commission_pct
from employees;

select first_name, salary, commission_pct, salary+commission_pct*salary as actual_income
from employees;

select first_name, salary, commission_pct, salary+commission_pct*salary as actual_income
from employees;

--nvl(v1,v2) -> if v1= null
--    v1<-v2;
--if v1 != null
--    v1 = v1
select first_name, salary, commission_pct, salary*(1+nvl(commission_pct,0)) as actual_income
from employees;

--using concatenation operation (||) -- "+" MSsql server
select first_name || last_name as full_name, salary
from employees;

select first_name || last_name as full_name, salary
from employees;

select 'The salary of '||first_name||' is '||salary as "Discriptive salary"
from employees;

select 'The email address of employee id '||employee_id||' is '||email as "Email Info"
from employees
order by salary; --to sort by salary

--using Distinct function
select Department_id from employees;
select distinct(Department_id) from employees;