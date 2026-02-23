create database joins;

use joins;

create table student(
student_id int primary key,
name varchar(20));
insert into student values (101,"adam"),(102,"bob"),(103,"casey");
select * from student;
create index myindex on student(student_id,name);
drop index myindex on student;

create table course(
student_id int primary key,
course varchar(20));
insert into course values (102,"english"),(105,"math"),(103,"science"),(107,"computer");
select * from course;

select * from student inner join course on student.student_id = course.student_id;
select * from student left join course on student.student_id=course.student_id;
select * from student right join course on student.student_id=course.student_id;

select * from student left join course on student.student_id=course.student_id
union
select * from student right join course on student.student_id=course.student_id;

select * from student left join course on student.student_id=course.student_id where course.student_id is null;
select * from student right join course on student.student_id=course.student_id where student.student_id is null;