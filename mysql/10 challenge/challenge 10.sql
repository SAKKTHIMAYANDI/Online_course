delimiter $$
CREATE PROCEDURE get_address(inout faddress varchar(16000))
BEGIN
declare finish int default 0;
declare address_list varchar(500) default "";
declare addressdetail cursor for 
select address from address;
declare continue handler for not found set  finish = 1;
open addressdetail;
loopstart:
loop
fetch addressdetail into address_list;
if finish =1 then leave loopstart;
end if;
set faddress = concat(address_list,";",faddress);
end loop loopstart;
close addressdetail;
END $$
delimiter ;


set @addressname = "";
call get_address(@addressname);
select @addressname as Address;