--Find the highest, lowest, sum, and average salary of all employees. Label the columns
--Maximum, Minimum, Sum and Average respectively. Round your results to the nearest whole
--number.
select min(salary) Minimun, max(salary) maximum, round(avg(salary)) Average, sum(salary) sum
from employees;