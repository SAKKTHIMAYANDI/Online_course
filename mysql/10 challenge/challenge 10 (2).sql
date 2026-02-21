use sakila;
delimiter $$
CREATE PROCEDURE actor_name(inout f_lname varchar(16000),inout l_fname varchar(16000))
BEGIN
declare done int default 0;
declare actornamelist1 varchar(400) default "";
declare actornamelist2 varchar(400) default "";
declare actornamedetail cursor for 
select first_name,last_name from actor;
declare continue handler for not found set done = 2;
open actornamedetail;
loopstart:
loop
fetch actornamedetail into actornamelist1,actornamelist2;
if done = 2 then leave loopstart;
end if;
set f_lname = concat(actornamelist1,";",f_lname);
set l_fname = concat(actornamelist2,";",l_fname);
end loop loopstart;
close actornamedetail; 
END $$
delimiter ;

set @firstname = "";
set @lastname = "";
call actor_name(@firstname,@lastname);
select @firstname as "First_Name",@lastname as "Last_Name";