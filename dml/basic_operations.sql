create database college;
use college;
create table student(
rollno int primary key,
name varchar(20),
marks int not null,
grade varchar(1),
city varchar(20));
insert into student (rollno,name,marks,grade,city) values
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"chetan",85,"b","mumbai"),
(104,"dhruv",96,"a","delhi"),
(105,"emanuel",12,"f","delhi"),
(106,"farah",82,"b","delhi");
select name, marks from student;
select distinct city from student;
select * from student where marks>=80;
select name from student where city="mumbai";
select * from student order by marks desc;
select max(marks) from student;
select count(name) from student;
select city, count(name), avg(marks) from student group by city order by avg(marks) desc;
select grade , count(name) from student group by grade order by grade;
select city, count(rollno) from student group by city having max(marks)>=95;
update student set grade ="o" where grade="a";
set sql_safe_updates=0;
select grade from student;
delete from student where marks <33;