use employeeDb;

select * from employee where salary is null;
select firstname from employee where department is null;
select * from employee where department is not null;
select * from employee where department and salary is not null; 
select * from employee where department is null or salary is null;
update employee set salary = 1000 where salary is null;
update employee set salary = null where employeeId in(6,7,8);
select count(*) as row from employee;
select count(department) from employee;  /* omits null value.*/
select count(firstname) from employee;
select count(firstname) as firstname from employee; /* Changing row name using as firstname */
select count(*) - count(department) as 'department missing' from employee;
select count(*) as 'department missing' from employee where department is null;
select count(*) as 'department missing' from employee where department = null; /* department = null can't be used.It gives wrong result. */
select count(department) as 'department missing' from employee where department is null; /* This is not even working */
select count(department) as 'departmen' from employee where department is not null;
select lastname, count(*) as amount from employee group by lastname;
select lastname, count(*) as amount from employee group by lastname order by amount;
select lastname, count(*) as amount from employee group by lastname order by amount desc;
select lastname, count(*) as amount from employee group by lastname having lastname in ('Jones','River');
select avg(salary) as average from employee;
select avg(salary) as average, min(salary) as minimum, max(salary) as maximum from employee;
select max(salary)-min(salary) as difference from employee;
select firstname, lastname, salary, case
    -> when salary > 6000 then 'Top Worker' else ' ' end as notes
    -> from employee order by salary desc, lastname, firstname;



