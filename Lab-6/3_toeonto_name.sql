--The HR department needs a report of employees in Toronto. Display the last name, job,
--department number, department name and city for all employees who work in Toronto.
select e.last_name, e.job_id, e.department_id, d.department_name
from employees e join departments d
on (e.department_id = d.department_id)
join locations l
on (d.location_id = l.location_id)
where lower(l.city) = 'toronto';