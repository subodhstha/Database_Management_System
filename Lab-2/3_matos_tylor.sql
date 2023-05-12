--Run a query to display the last name, job ID, and start date for the employees whose last
--names are Matos and Taylor. Order the query in ascending order by start date.
select last_name, job_id, hire_date
from employees
where last_name = 'Totos' or last_name = 'Tylor';