use college;
select * from student;

select avg(marks) from student;

select * from student where marks >= (select avg(marks) from student);
select * from student where rollno in (select rollno from student where rollno%2 = 0);

with mycet as ( select avg(marks) from student)
select * from mycet;
with topstu as ( select rollno, name, marks from student where marks >90)
select * from topstu;
with avgmarks as (select avg(marks) as abc from student)
select * from student where marks >= (select abc from avgmarks);