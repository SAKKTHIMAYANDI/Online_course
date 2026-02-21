create database maya;
use maya;
create table happiness( happiness_index int not null);
select *from happiness;
select *from happiness_city;
update happiness_city inner join happiness on  happiness_city.happiness_index = happiness.happiness_index set happiness_city.happiness_index = happiness_city.happiness_index+1;
select * from happiness_city h1 inner join happiness_city h2  on h1.happiness_index = h2.happiness_index ; 
select * from happiness_city h1 left join happiness_city h2  on h1.happiness_index = h2.happiness_index ; 
select * from happiness_city h1 right join happiness_city h2  on h1.happiness_index = h2.happiness_index ; 
select h.happiness_index,h1.happiness_index from happiness_city h, happiness_city h1 where h.city = h1.city order by h.city ;
insert into happiness (happiness_index) values ('0'),('1'),('2'),('3'),('4'),('5'),('6'),('7');
insert into happiness (happiness_index) values ('8'),('9'),('10');
create table happiness_city ( city varchar(20) not null , happiness_index int not null);  
insert into happiness_city (city,happiness_index) values ('Salem','5'), ('Chennai','1'), ('Erode','5'),('Tiruchengode','6');
select happiness_index from happiness where happiness_index =  (select happiness_index from happiness_city where city like 'c%' or city like 'E%');
select count(*) from happiness cross join happiness_city;
select * from happiness_city right join happiness ON  happiness.happiness_index = happiness_city.happiness_index;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY NOT NULL,
    emp_name VARCHAR(25) NOT NULL,
    job_desc VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    branch_id INT NOT NULL
);
alter table employees modify branch_id int null;
alter table employees rename column  brach_id to branch_id ;
insert into employees( emp_id,emp_name,job_desc,salary,branch_id) values ('1','LOGARAJ','MCA','200000','2'),
('2','SANDEEP RAJ','MCA','200000','2'),('3','VIJAY','B.Tech ','100000','1'),('4','ARUN','B.E','200000','1'),
('5','DEEPIKA','ENGINEER','300000','1'),('6',' HARISH KUMAR','ARTS','200000','1'),('7','KAVIN RAJ','MCA','200000','1'),
('8','SURYA','ADMIN','300000','2'),('9','MEIYARASAN','ENGINEER','150000','1'),('10','YOGESH','ENGINEER','120000','2'),
('11','SURUTHI','ENGINEER','120000','1'),('12','RAAGHAVI','ENGINEER','120000','2'),('13','SHALINI','ADMIN','220000','1'),
('14','RAJA','ENGINEER','120000','1'),('15','BALAJI','MCA','200000','2');
update employees set branch_id = null where emp_id = 5;
show tables;
select *from employees;
show index from employees;
create index index_name on employees(emp_name);
select emp_id,ifnull(branch_id,'NA') from employees;
select *from branch;
select emp_id from employees where branch_id in ( select branch_id from branch where br_name like 'c%');
CREATE TABLE branch(
    branch_id INT PRIMARY KEY NOT NULL,
    br_name VARCHAR(25) NOT NULL,
    br_address VARCHAR(50) NOT NULL
);

insert into branch(branch_id, br_name, br_address) values ('1','chennai','16 B block 2nd floor chennai'), ('2','bangolre','16th B block 5nd floor banglore side'), ('3','delhi','16th street H block 1nd floor delhi'), ('4','kerala','');
insert into branch(branch_id, br_name, br_address) values('5','bombay',' ');
update branch set br_address = not null  where br_name = 'bombay';
SELECT e.emp_id, e.emp_name, e.job_desc, e.salary, b.br_name FROM employees  e  cross JOIN branch  b ON e.branch_id = b.branch_id order by e.emp_id;
SELECT employees.emp_id, employees.emp_name, employees.job_desc, employees.salary, branch.br_name FROM employees inner JOIN branch ON employees.branch_id = branch.branch_id order by employees.emp_id;
SELECT employees.emp_id, employees.emp_name, employees.job_desc, employees.salary, branch.br_name FROM employees left JOIN branch ON employees.branch_id = branch.branch_id order by employees.emp_id;
SELECT employees.emp_id, employees.emp_name, employees.job_desc, employees.salary, branch.br_name FROM employees right JOIN branch ON employees.branch_id = branch.branch_id order by employees.emp_id;
select * from employees where branch_id in ( select branch_id from branch where br_name like 'c%'); # sub-quary function.
select count(*) from employees;
select count(*) from branch;
select count(*) from happiness;
select e1.emp_id, e2.emp_id  from  employees e1, employees e2  where e1.emp_name = e2.emp_name ;
SELECT employees.emp_id, employees.emp_name, employees.job_desc, employees.salary, branch.br_name FROM employees cross JOIN branch on employees.branch_id = branch.branch_id ;
SELECT * FROM employees right join branch ON employees.branch_id = branch.branch_id order by employees.emp_id;
select b.br_name,count(e.emp_id) from employees e join branch b on e.branch_id = b.branch_id group by e.branch_id;
delete e,b from employees e inner join  branch b on e.branch_id = b.branch_id where e.emp_id = '4'; 
select emp_id from employees union select br_name from branch;
update branch set branch_id = 1, br_name= chennai, br_address = '15/6 nagar street chennai-6368707' where branch ;
select * from employees cross join branch cross join happiness;
select count(*) from employees cross join branch cross join happiness;
select 15*5*11;
use sakila;
select * from city inner join country;
select *from salaries;
start transaction;
insert into employees(emp_id,emp_name,job_desc,salary,branch_id) values ('16','vasanth','B.E','2500000','4');
commit;
savepoint s1;
select *from employees;
rollback To s1;
insert into employees values('17','santhi','B.E','25000','4');
commit;
savepoint s1;
rollback;
use employees;
select * from salaries;
select emp_no, avg(salary) from salaries group by emp_no ;
use employees;
select title,count(title) from titles group by title;
select count(first_name) from employees where gender = 'M' and hire_date < '1985-03-01';