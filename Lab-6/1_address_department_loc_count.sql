--Write a query for the HR department to produce the addresses of all the departments. Use
--the LOCATIONS and COUNTRIES tables. Show the location Id, street address, city, state
--or province and country in the output. Using inner join.
select location_id, street_address, city, state_province, country_name
from locations
natural join countries;


select l.location_id, l.street_address, l.city, l.state_province, c.country_name
from locations l join countries c
on(l.country_id = c.country_id);