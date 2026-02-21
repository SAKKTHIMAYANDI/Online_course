use alumni;
delimiter $$
create procedure get_name_collegeA (inout All_Name text(30000))
begin
declare finish int default 0;
declare All_Name_list varchar(15000) default "";
declare All_Name_details cursor for select name from college_a_hs union select name from college_a_se union select name from college_a_sj;
declare continue handler for not found set finish = 1;
open All_Name_details;
get_loop:
loop
fetch All_Name_details into All_Name_list;
if finish =1 then leave get_loop;
end if;
set All_Name = concat(All_Name_list,";",All_Name);
end loop get_loop;
close All_Name_details;
end 
$$ delimiter ;

set @All_Name = "";
call get_name_collegeA(@All_Name);
select @All_Name;