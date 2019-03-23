use bank;

select * from client where FirstName<6;

select * from department where DepartmentCity='Lviv';

select * from client where Education='high';

SELECT * FROM client where Education='high' ORDER BY LastName;

SELECT * FROM application order by CreditState desc limit 5;

select * from client where LastName like '%ov' or '%ova';

SELECT * FROM client where City='Kyiv';

select FirstName, Passport from client  order by FirstName;

SELECT * FROM application where Sum>5000;

SELECT FirstName, LastName from client join application a on client.idClient = a.Client_idClient
where Sum>5000;

SELECT COUNT(*) FROM client;
SELECT COUNT(*) FROM client where City='lviv';

SELECT count(distinct City) as count from client;

SELECT FirstName, MAX(Sum) as max from client join application a on client.idClient = a.Client_idClient
group by FirstName;

SELECT FirstName, COUNT(CreditState) as count from application
  join client c on application.Client_idClient = c.idClient group by FirstName order by count;

SELECT Firstname, MAX(Sum) as max, Firstname, MIN(Sum) as min from application
  join client c on application.Client_idClient = c.idClient;

SELECT count(CreditState) as numberOfcredits from application join client c on application.Client_idClient = c.idClient
where  Education ='high';

select FirstName, Client_idClient, avg(Sum) as avg_sum from application join client c on application.Client_idClient = c.idClient
 group by FirstName, Client_idClient
order by avg_sum desc
limit 1;

select City, count(sum) as count from application join client c on application.Client_idClient = c.idClient
group by City order by count desc;

select City, sum(sum) as sum from application join client c on application.Client_idClient = c.idClient
group by City order by sum desc
limit 1;

select * from client where city =
                           (select City from client where idClient=
                                                          (select Client_idClient from application
                                                            group by Client_idClient
                                                            order by count(idApplication) desc limit 1));

select City, max(sum) as sum from application join client c on application.Client_idClient = c.idClient
group by City order by sum desc
limit 1;

update application set sum=6000 where Client_idClient in(
                                    select idClient from client where Education='high');

update client set City='Kyiv' where Department_idDepartment in(
  select idDepartment from department where DepartmentCity='Kyiv');

delete from application where CreditState='returned';

select idDepartment, DepartmentCity, SUM(application.Sum) as credits_sum from application join client c on application.Client_idClient = c.idClient
  join department d on c.Department_idDepartment = d.idDepartment group by idDepartment, DepartmentCity having DepartmentCity='Lviv' and credits_sum > 5000;

