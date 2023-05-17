--case field
--    when c1 then r1
--    when c2 then r2
--    else rd
--end as alias
--decode(field, c1, r1, c2, r2, rd) as alias

select first_name, salary, job_id,
case job_id
    when 'IT_PROG' then salary*1.1
    when 'SA_REP' then salary*1.2
    when 'MK_MAN' then salary*1.3
    else salary
end as "Updated Salary"
from employees;

select * 
from employees;
select first_name, salary, job_id,department_id,
case department_id
    when 10 then salary*1.1
    when 20 then salary*1.2
    when 30 then salary*1.3
    else salary
end as "Updated Salary"
from employees;

select first_name, salary, job_id, department_id,
decode(department_id,10,salary*1.1,20,salary*1.2,30,salary*1.30,salary)
as "Updated Salary"
from employees;

