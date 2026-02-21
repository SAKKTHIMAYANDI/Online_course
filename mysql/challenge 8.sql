#1
use sakila;
select * from customer;
create view active_customer as select * from customer where store_id = 1 And active = 1;
select * from active_customer;
#2
use sakila;
select * from customer;
select * from city;
select * from address;
select c.customer_id,c.first_name,c.last_name,c.email,d.address,e.city from customer as c inner join address as d on c.address_id = d.address_id inner join city as e on e.city_id = d.city_id order by e.city asc;
create view malas as select c.customer_id,c.first_name,c.last_name,c.email,a.address,c1.city from customer as c inner join address as a on c.address_id = a.address_id inner join city as c1 on a.city_id = c1.city_id order by c1.city;
select * from malas;