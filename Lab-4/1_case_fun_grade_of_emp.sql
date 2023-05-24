--Using CASE function, write a query that displays the grade of all employees based on the
--value of the column JOB_ID, using the following data:
--Job                   Grade
--AD_PRES               A
--ST_MAN                B
--IT_PROG               C
--SA_REP                D
--ST_CLERK              E
--None of the above     0

select last_name, job_id,
case job_id
    when 'ST_PRES' then 'A'
    when 'ST_MAN' then 'B'
    when 'IT_PROG' then 'C'
    when 'SA_REP' then 'D'
    when 'ST_CLERK' then 'E'
    else 'O'
end as grade
from employees;
