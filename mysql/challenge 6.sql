use sakila;
select *from city;
select *from country;
#1
select c.city_id, c.city, c1.country_id, c1.country from city c inner join country c1 on c.country_id= c1.country_id;
#2
select * from film;
select * from film_category;
select * from category;
select  f.film_id, f.title, f.description, c.category_id, c.name from film f inner join film_category  on f.film_id = film_category.film_id  inner join category c on film_category.category_id = c.category_id;
#3
select * from film;
select * from inventory;
select * from film_text;
select f.film_id, f.title, f.description, i.inventory_id,t.description from film f left join inventory i on f.film_id = i.film_id left join  film_text t on f.film_id = t.film_id ;
#4
select * from staff;
select * from payment;
select * from rental;
select s.staff_id,s.first_name,s.last_name,p.amount,p.payment_date,r.rental_date,r.return_date from staff s inner join payment p on s.staff_id = p.staff_id inner join rental r on p.rental_id = r.rental_id;