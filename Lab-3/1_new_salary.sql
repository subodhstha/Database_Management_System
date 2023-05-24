--The HR department needs a report to display the employee number, last name, salary, and
--salary increased by 15.5% (expressed as a whole number) for each employee. Label the
--column New Salary.
desc employees;
select last_name, salary, employee_id, round(salary *1.155) as "new salary"
from employees;
