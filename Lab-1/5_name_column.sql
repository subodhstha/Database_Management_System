--The HR department wants more descriptive column heading for its report on employees.
--Modify the Task_1_3 to Name the column heading EMP #, Employee, Job and Hire Date,
--respectively.
select employee_id as emp#, last_name as "Name", job_id as "Job", hire_date as "Hire Date"
from employees
order by hire_date;