--Write a query that displays the last name and department number for employee number 176.
select * from employees;
select last_name, department_id
from employees
where employee_id = 176;