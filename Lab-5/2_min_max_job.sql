--Modify the query in task_5_1 to display the minimum, maximum, sum and average salary
--for each job type.
select job_id, max(salary) Maximum,
    min(salary) minimun, sum(salary) sum,
    round(avg(salary))
from employees
group by job_id;

