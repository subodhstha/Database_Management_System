--Display the last name and department number of all employees in departments 20 or 50 in
--ascending alphabetical order by name.
select last_name,department_id
from employees
where department_id  in (20,50)
order by last_name;