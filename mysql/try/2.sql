use sakthi;
show tables;
show database;
select *from actress;
create table actress(
actress_id int primary key not null, 
actress_name varchar(20) not null,
actress_phone decimal not null);
use sakila;
select *from actor;
UPDATE actor 
SET 
    first_name = 'sak\'thi'
WHERE
    actor_id = 2;
SELECT 
    first_name, LENGTH(first_name)
FROM
    actor
WHERE
    actor_id = 3;
select first_name,length(first_name) ,lower(first_name) from actor;
select char(81,82,83,84,85,86) result;
select first_name, ASCII(first_name) from actor;
SELECT first_name, length(first_name),BIT_LENGTH(first_name), ascii(first_name) FROM ACTOR;
SELECT ASCII('S');
select first_name, concat_ws(',',first_name,first_name )from actor;
select field('sa','ba','baba','sa');
select elt('2','sa','ba','baba','sa');
use sakila;
select *from payment;
 select payment_id,amount from payment where amount = 2.99;
 select 100<=>null,100>100,null<=>null;
 select payment_id,amount from payment where amount not between 4.99 and 5.99;
 select greatest(500,20000,not null) greatest;
 select coalesce(500,null,20000)  coalesce;
 select least(amount);
select payment_id,amount from payment where amount in (2.99,4.99,5.99) and payment_id;
select payment_id,amount from payment where amount in (2.99,4.99,5.99) or payment_id;
 select payment_id,amount from payment where amount not in (2.99,4.99,5.99) or payment_id;
select payment_id,amount from payment where amount in (2.99,4.99,5.99) xor payment_id;
select 100 and 100 , 100 xor , 100 or 100;
 select 00 is false, 1 is true, not null is unknown;
use actor;
use sakthi1;
show tables;
desc payment;
select from actor_list;
select group_concat(title order by title desc separator'  !  ') from film;
select count(COUNTRY_ID) from city;
select count(distinct country_id) from city;
select group_concat(title) from film;
select avg(rental_id), sum(rental_id), min(rental_id), count(rental_id) from payment ;
SELECT staff_id FROM PAYMENT group by staff_id ;
select *from payment group by staff_id; 
select staff_id from payment group  by staff_id ;
select *from payment order by PAYMENT_ID desc,staff_id asc;
select rental_id,rental_date,inventory_id,customer_id,return_date,staff_id,last_update from rental order by rental_date,last_update asc ;
select  payment_id, stddev(amount), stddev_samp(amount), stddev_pop(amount) from payment;
 select 'apple','mango','dangor fruit' union select 'orange','cat' union select 'baba','sairam';
select *from customer  union select *from film ;
select *from actor_list where actor_id = (select actor_id from actor_list where actor_id= '5' and actor_spl_name = 'thalapathy' );