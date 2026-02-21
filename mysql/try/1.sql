create database sakthi;
use sakthi;
select *from actor;
create table  actor(
actor_id int not null  primary key,
actor_name varchar(10) not null,
actor_spl_name varchar(25) not null,
actor_real_number decimal not null);
alter table actor add actor_fake_number decimal not null ;
alter table actor modify actor_spl_name varchar(15);
insert into actor( actor_id, actor_name, actor_spl_name, actor_real_number, actor_fake_number)
values('2', 'vijay', 'thalapthy', '9536714855', '9996257844'),
('3', 'vijaykumar', 'illayathalapthy', '9698745123', '9996255844'),
('4', 'madhan', 'sweetboy', '9536710077', '999451844'),
('5', 'vijaysethu', 'thalapthy', '9536714855', '9996257844');
desc actor;
USE SAKTHI;
select *from actor WHERE actor_name='VIJAY';
select distinct actor_spl_name from actor;
select *from actor;
desc actor;
UPDATE actor 
SET 
    first_name = 'sakthi mayandi,Ashok'
WHERE
    actor_id = 1;
SELECT 
    actor_id ID,
    actor_name NAMEES,
    actor_spl_name SPECIALNAME,
    actor_real_number REALNUMBER,
    actor_fake_number FAKENUMBER
FROM
    ACTOR;
 select 107 % 2 result;
 select pi()*0.1 result;
 select floor(-6.88);
 use sakthi;
create table test1 (i int);
 insert into test1 values(1),(2),(3),(4);
select rand(i) from test1;
 select *from test1;
 select power(7,6);
 select sin(15);
select cos(15);
select tan(15);
select asin(-0.1),acos(0.1);
select round(5.45),round(5.35,1);
select sqrt(-5.6),sqrt(5.6),sqrt(5);
select sign(-5.25),sign(5.6),sign(10);
use sakila;
select *from payment;
 select hex('sakthi');
select unhex(446174);
select insert('sakthi',3,4,'maya');
select locate('sakthi','mayandisakthi');
select instr('mayandisakthi','sakthi');
select left('sakthimayandi',6);
select lpad('sakthi',12,'mister');
select ltrim('   sakthi');
select rtrim('mayandi   ');
select space('5');
select substring('datascience',-6,4);
SELECT REPEAT('SAKTHI',2);
SELECT REPLACE('SAKTHIMAY','MAY','SAKTHIMAYANDI');
SELECT LEFT('SAKTHI',3);
SELECT reverse('SAKTHI');
SELECT TRIM(LEADING 'MA' FROM 'MAYANDI');
SELECT trim(TRAILING 'DI' FROM 'MAYANDI');
SELECT TRIM('  SAKTHI ');
SELECT TRIM(BOTH 'I' FROM 'SAKTHIII');
SELECT ADDDATE('2023-1-13',10);
SELECT addtime('2023-1-13 23:59:59.99','01:1:1.1');
 SELECT CONVERT_TZ('2023-04-29 10:00:00','+1:00','+5:00');
 SELECT current_time();
 select current_timestamp(),now();
 SELECT DATE(now()),datediff('2023-04-29 11:43:59','2023-01-23');
 SELECT DAYOFMONTH('2023-05-03'),DAY('2023-05-03'),DAYNAME('2023-05-03');
 SELECT DAYOFWEEK('2023-05-1');
 SELECT DAYOFYEAR('2023-04-29');
 SELECT extract(DAY FROM '2023-2-23');
 SELECT date_formate('2020-12-16 11:59:00','%a %b %c %D %f %I %j %k %I % M %s');
 select hour('11:44:56');
 select last_day('2023-05-01');
 select maketime(11,23,44);
 select makedate(2001,23);
 select to_seconds('2020-12-16');
 select to_days('2020-12-16');
 select sysdate();  
 select convert('20:20:20', time);
 select convert('200:10',decimal);
 select convert('2005.10',char(6));
 select convert(96.20,unsigned);