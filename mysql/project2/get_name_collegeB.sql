
delimiter $$
CREATE PROCEDURE  get_name_collegeB (inout full_data text(30000))
BEGIN
declare finish int default 0;
declare full_datalist varchar(15000) default "";
declare full_datadetails cursor for select name from college_b_hs union  select name from college_b_se union select name from college_b_sj;
declare continue handler for not found set finish=1;
open full_datadetails;
loopstart:
loop
fetch full_datadetails into full_datalist;
if finish=1 then leave loopstart;
end if;
set full_data =concat(full_datalist,";",full_data);
end loop loopstart;
close full_datadetails;
END
$$ delimiter ;


set @full_data = "";
call get_name_collegeB(@full_data);
select @full_data;