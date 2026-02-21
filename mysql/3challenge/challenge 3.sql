use sakila;
#1
select *from customer;
#2
select customer_id  ID, first_name  FName, last_name  LName, email  EmailId  from  customer;
#3
select *from film  where title like 'A%r';
#4
select *from customer where customer_id limit 100;
#5
select payment_id, amount, round(amount),sqrt(amount) from payment;