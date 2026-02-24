use college;
delimiter //
create procedure stu_list()
begin
	select * from student;
end//
delimiter ;

call stu_list();
drop procedure stu_list;
