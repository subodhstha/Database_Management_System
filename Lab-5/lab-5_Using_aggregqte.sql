--using aggregate (i.e Group) Functions
--(MIN, MAX, SUM, AVG, COUNT)

select min(salary) min, max(salary) max, round(avg(salary),2) mean, sum(salary) sum, count(*) total
from employees;

select avg(commission_pct) mean1, count(*)
from employees;

select round(avg(commission_pct),2) mean1,
round(avg(nvl(commission_pct,0)),2) mean2, count(*)
from employees;

--using group by clause
select department_id, round(avg(salary),2) mean_salary, count(*)
from employees
group by department_id
order by department_id;

--using having clause (like where clause)
select department_id, avg(salary), count(*)
from employees
having avg(salary) > 10000
group by department_id
order by department_id;

