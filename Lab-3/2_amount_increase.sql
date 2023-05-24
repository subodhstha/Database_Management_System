--Modify your task_03_01.sql query to add a column that subtracts the old salary from the new
--salary. Label the column Increase.
desc employees;
select last_name, salary, employee_id, round(salary *1.155) as new_salary, 
round(salary *1.155) - salary as increase
from employees;