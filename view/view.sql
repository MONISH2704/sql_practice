use college;

select * from student;

create view topper as 
select * from student order by marks desc limit 1; 

select * from topper;

drop view topper;