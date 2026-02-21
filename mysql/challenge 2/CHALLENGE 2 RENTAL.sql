USE SAKILA;
SELECT *FROM RENTAL;
INSERT INTO RENTAL( rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
 VALUES('16050', '2005-08-23 22:50:12', '3266', '393', '2005-08-30 01:01:12', '2', '2006-02-15 21:30:53'),
 (16051, '2005-07-31 17:51:23', '781', '22', '2005-08-03 19:12:25', '1', '2006-02-15 21:30:56');
DESC RENTAL;

# rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update

