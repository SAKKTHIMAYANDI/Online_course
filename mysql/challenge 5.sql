#1
use sakila;
 #1(a).
select payment_id,customer_id,staff_id,rental_id,amount from payment where customer_id in (10,20,30,40,50,60,70,80,90,100) ;
#1(b)..
select payment_id,customer_id,staff_id,rental_id,amount from payment where staff_id='2';
#2
select * from film;
select * from film order by rating desc;
#3 
select *from payment;
select payment_id,amount  update_amount from payment;
#3(a)
select amount>5.0 from payment;
#3(b)
select round(amount*2) update_amount from payment;
#4
#4(a)
select *from payment; 
select customer_id,sum(amount),avg(amount),stddev(amount),variance(amount) from payment group by customer_id;
#5
select *from city;
select *from country;
select city_id from city where country_id in (select country_id  from country where country like 'A%' or country like 'b%');