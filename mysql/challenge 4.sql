use sakila;
select *from film;
#1
select film_id,title, length(title),upper(description) from film ;
#2
select repeat(title,3) title from film;
#3
select film_id,title, left(description,13) Description from film;
#4
select title, repeat(reverse(title),2)  codeword from film;
#5
select *from actor;
select last_update, datediff(current_date,last_update) from actor;
#6
select *from customer;
select create_date, date(create_date)  Date, time(create_date) Time from customer;