create database windows;

use windows;

create table sample(
name varchar(30),
salary int );
insert into sample values ("a",1000),("b",2000),("c",3000),("d",4000),("e",4000);

select name,salary, rank() over(order by salary desc) as "rank" from sample;
select name,salary, dense_rank() over(order by salary desc) as "dense rank" from sample;
select name,salary, row_number() over(order by salary desc) as "row number" from sample;
select name,salary,avg(salary) over (partition by name) as "avg salary" from sample;
select name,salary,count(name) over (partition by name) as "count" from sample;
select name,salary,lag(salary) over(order by name) as "lag" from sample;
select name,salary,lead(salary) over(order by name) as "lead" from sample;