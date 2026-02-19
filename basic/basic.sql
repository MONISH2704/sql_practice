create database ddl;
use ddl;

create table employee(
id int primary key,
name text,
salary int);

insert into employee values (1,"adam",25000),(2, "bob",30000),(3,"casey",40000);

select * from employee;