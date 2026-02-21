use employees;
DELIMITER //
create procedure emp() begin select * from employees; End //  DELIMITER ;
select * from employees;
call emp;
call salarysum;
call emp_m;
call count_m;
call avg_f;
call emp_title('10002','1986-06-26');
call empcount('M',@checks);
select @check;
set @test1= 'F';
call malacg(@test1,@test2);
select @test2;
call if_else('Technique Leader',@counts);
select @counts; 
call if_work('staff',@case_m);
select @case_m;
call if_work('techical leader',@case_m);
call loop_while(2);
select 3;
set @Firstname = "";
set @Lastname = "";
call actor_name(@Firstname,@Lastname);
select @Firstname as "First Name",@Lastname as "Last Name";

