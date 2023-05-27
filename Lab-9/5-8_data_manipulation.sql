 -- 5. Change the last name of employee 3 to Drexler.
 update my_employee
 set last_name = 'Drexler'
 where id =3;
 
 -- 6. Change the salary to $1,000 for all employees with a salary less than $ 900.
 update my_employee
 set salary = 1000
 where salary <900;
 
 -- 7. Delete Betty Dancs from the my_employee table
 delete 
 from my_employee
 where first_name = 'Betty';
 
 -- 8. commit all pending changes
 commit;
