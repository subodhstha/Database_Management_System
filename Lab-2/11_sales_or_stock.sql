-- Display the last name, job and salary for all employees whose job is either that of a sales
--representative (SA_REP) or a stock clerk (ST_CLERK), and whose salary is not equal to
--$2,500, $3,500, or $7,000.
select last_name, job_id, salary
from employees
where (job_id = 'SA_REP' or job_id = 'ST_CLERK')
and salary not in (2500, 3500, 7000);
