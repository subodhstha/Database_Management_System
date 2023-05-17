--Lab-6: display data from multiple table
--joining table (Inner join, Outer join)
--
--inner join (using, on, where clause) recommend on
select *
from employees join departments
using (department_id);

select *
from employees e join departments d
on (e.department_id = d.department_id);

select e.first_name, e.salary, e.department_id, d.department_name
from employees e join departments d
on (e.department_id = d.department_id)
where e.salary > 12000;

--three level of join
select l.city, l.state_province, r.region_name
from locations l join countries c on (l.country_id = c.country_id)
join regions r on (r.region_id = c.region_id)
where r.region_name = 'Asia';

--outer join (left outer join, right outer join, full outer joins)
--self
select *
from employees e full outer join departments d
on (e.department_id = d.department_id);

select *
from employees e left outer join departments d
on (e.department_id = d.department_id);

select *
from employees e right outer join departments d
on (e.department_id = d.department_id);

