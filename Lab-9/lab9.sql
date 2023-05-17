--lab 8 -using set oprators
--set operators (union, union all, intersection, minus)
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;

select employee_id, job_id
from employees
union all
select employee_id, job_id
from job_history;

select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;

select employee_id, job_id
from employees
minus
select employee_id, job_id
from job_history;

select employee_id, job_id
from employees
union
select employee_id, null
from job_history;
