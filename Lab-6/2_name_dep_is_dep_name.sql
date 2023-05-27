--The HR department need a report of all employees. Write a query to display the last name,
--department number, and department name for all employees.
select last_name, department_id, department_name
from employees
join departments
using (department_id);