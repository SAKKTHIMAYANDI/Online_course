USE SAKILA;
SELECT *FROM CUSTOMER;
INSERT INTO CUSTOMER( customer_id, store_id, first_name, last_name, email, address_id, active, create_date, last_update)
VALUES('1000', '1', 'JOHN', 'WALL', 'JOHN.WALL@sakilacustomer.org', '600', '0', '2006-02-14 22:04:36', '2006-02-15 04:57:20'),
('1001', '1', 'VASA', 'THARA', 'VASA.THARA@sakilacustomer.org', '601', '1', '2006-02-14 22:04:36', '2006-02-15 04:57:20');