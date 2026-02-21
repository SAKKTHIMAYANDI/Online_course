#1
use sakila;
create table product ( product_id int primary key, product_name varchar(50), preventive_maintenance json, repair_schedule json);
desc product
#2
select * from product;
insert into product values('101','Honda Amaze','{"Part":"Motor","EngineerName":"Astha","MaintenanceDate":"1989-02-16"}','{"repairDate":"1992-10-14","Expenditure":9000}'),
('102','Honda City','{"Part":"Stering","EngineerName":"Mayank","MaintenanceDate":"1985-04-16"}','{"repairDate":"1989-01-14","Expenditure":19000}'),
('103','Honda WR-V','{"Part":"Seat","EngineerName":"Neha","MaintenanceDate":"1993-03-12"}','{"repairDate":"1994-01-14","Expenditure":10000}'),
('104','Honda Jazz','{"Part":"Motor","EngineerName":"Ashita","MaintenanceDate":"1997-10-02"}','{"repairDate":"1996-01-12","Expenditure":5000}'),
('105','Honda BR-V','{"Part":"Clutch plate","EngineerName":"Sameer","MaintenanceDate":"2020-02-10"}','{"repairDate":"2020-01-03","Expenditure":45000}');
drop tables product; 

#3
use sakila;
select * from product;
select product_id, product_name, preventive_maintenance ->>'$.Part'as Part, preventive_maintenance ->>'$.MaintenanceDate'as MaintenanceDate, repair_schedule -> '$.Expenditure'as Expenditure from product;

#4
use sakila;
select * from product;
select product_id, product_name, preventive_maintenance ->>'$.EngineerName'as EngineerName, preventive_maintenance ->>'$.MaintenanceDate'as MaintenanceDate from product;
#5
use sakila;
select * from product;
select product_id, product_name, preventive_maintenance ->>'$.Part'as Part,preventive_maintenance ->>'$.EngineerName'as EngineerName, preventive_maintenance ->>'$.MaintenanceDate'as MaintenanceDate, repair_schedule ->>'$.repairDate'as repairDate ,repair_schedule -> '$.Expenditure'as Expenditure from product;

