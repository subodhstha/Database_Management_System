--<> not equal to !=
select first_name, salary, hire_date
from employees
where salary < 5000;

select first_name, salary, hire_date
from employees
where salary <= 5000;

select first_name, salary, hire_date
from employees
where salary > 5000;

select first_name, salary, hire_date
from employees
where salary <= 5000;

select first_name, salary, hire_date
from employees
where salary = 5000;

select first_name, salary, hire_date
from employees
where first_name = neena;

select first_name, salary, hire_date
from employees
where first_name = 'neena';

select first_name, salary, hire_date
from employees
where first_name = 'Neena';

select first_name, salary, hire_date
from employees
where hire_date = '24-july-05'; --DD-MON-RR

select first_name, salary, hire_date
from employees
where salary BETWEEN 6000 AND 10000;

select first_name, salary, hire_date
from employees
where salary not BETWEEN 6000 AND 10000;

select first_name, salary, hire_date
from employees
where salary in(10000, 12000, 15000);

select first_name, salary, hire_date
from employees
where first_name in('Neena');

select first_name, salary, hire_date
from employees
where first_name is null;

select first_name, salary, hire_date
from employees
where Commission_pct is null;

select first_name, salary, hire_date
from employees
where Commission_pct is not null;

select first_name, salary, hire_date
from employees
where first_name like '%';

select first_name, salary, hire_date
from employees
where first_name like '%li';

select first_name, salary, hire_date
from employees
where first_name like '_a%';

select first_name, salary, hire_date
from employees
where first_name like 'N%';

select first_name, salary, hire_date
from employees
where first_name like '__a%';

select first_name, salary, hire_date
from employees
where first_name like '__a__';

select first_name, salary, hire_date
from employees
where first_name like '%a__';

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
or Job_id like '%MAN%'
order by salary;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and Job_id not like '%MAN%'
order by salary;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and (job_id like '%MAN%'
or job_id like '%REP%')
order by salary;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary, first_name;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary asc;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary desc;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by salary desc, first_name;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by first_name, salary desc;

select first_name, salary, hire_date,job_id
from employees
where salary > 10000
and job_id like '%MAN%'
or job_id like '%REP%'
order by first_name, job_id desc;

select &first_name, salary, &third_field
from employees;

select first_name, salary, hire_date,job_id
from employees
where employee_id = &staff_id;

select first_name, salary, hire_date,job_id
from employees
where &condition
order by salary;