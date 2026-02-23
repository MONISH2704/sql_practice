use college;
select * from student;

select avg(marks) from student;

select * from student where marks >= (select avg(marks) from student);
select * from student where rollno in (select rollno from student where rollno%2 = 0);