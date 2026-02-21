#1
use sakila;
select *from payment;
select 'Total amount' as Parameter, sum(amount) as Value from payment union
select 'Average amount' as Parameter, avg(amount) as Value from payment union
select 'Minimum amount' as Parameter, min(amount) as Value  from payment union
select 'Maximum amount' as Parameter, max(amount) as Value  from payment union
select 'variance amount' as Parameter, variance(amount) as Value  from payment;
#2
use sakila;
select *from payment;
SET  sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select payment_id, customer_id, staff_id, sum(amount) over(partition by customer_id)as Total_amount, avg(amount) over(partition by customer_id)as Average_amount,min(amount) over(partition by customer_id)as Mimimum from payment;
#3
select *from city;
desc film_category; # there is film_category 'Null' values in  No only;
desc city; # there is city 'Null' values in No no only;
desc address; # there address more than 'Null' values having No but ('address2','postal_code') this two is having 'yes' null values;
desc store; # there is store 'Null' values in  No only;
desc film_actor;  # there is film_actor 'Null' values in  No only;
#4
select *from payment;
SET  sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
select payment_date,count(*)as currentcount,lag(count(*),1) over(order by payment_date)as previouscount, count(*)-lag(count(*),1) over (order by payment_date) as countdifferent from payment group by date(payment_date) order by payment_date;