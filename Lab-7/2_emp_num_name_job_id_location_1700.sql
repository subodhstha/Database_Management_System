--Write a query that displays the employee number and last name of all employees who work
--in a department with any employee whose last name contains a u.
select employee_id, last_name, salary
from employees
where department_id in (select department_id
                        from employees
                        where last_name like '%u%')
and salary > (select avg(salary)
                from employees);
