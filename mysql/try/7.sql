delimiter $$
CREATE PROCEDURE cursor_part (inout firstname varchar(15000))
BEGIN
declare done double default 0;
declare firstnamelist varchar(400) default "";
declare firstnamedetails cursor for
select first_name from employees where gender = 'M' and hire_date < '1985-11-21';
declare continue handler for not found set done = 1;
open firstnamedetails;
loopstart:
loop
fetch firstnamedetails into firstnamelist;
if done = 1 then leave loopstart;
end if;
set loopstart = concat(firstnamelist," ; ",loopstart);
end loop loopstart;
close firstnamedetails;
END $$
delimiter ;

